(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1770333055)
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
       (let ((_%verbosity157865157867%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity157865157867%_
             (let* ((_%verbosity157869%_ _%verbosity157865157867%_)
                    (_%$e157871%_ (string->number _%verbosity157869%_)))
               (if _%$e157871%_ _%$e157871%_ _%verbosity157869%_))
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
        (letrec ((_%hash-e157862%_
                  (lambda (_%id157864%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id157864%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e157862%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#current-compile-local-env (make-parameter '()))
    (define gxc#symbol-table::t
      (let ((__tmp157926 (list)) (__tmp157925 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp157926
         '(gensyms bindings)
         __tmp157925
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args157858%_
        (apply make-instance gxc#symbol-table::t _%$args157858%_)))
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
      (lambda (_%self157845%_)
        (let ((_%self157848%_ _%self157845%_))
          (if (let ((__tmp157927
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self157848%_))))
                (declare (not safe))
                (##fx< '2 __tmp157927))
              (begin
                (let ((__tmp157928
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self157848%_
                   __tmp157928
                   '1
                   '#f
                   '#f))
                (let ((__tmp157929
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self157848%_
                   __tmp157929
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp157930
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self157848%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self157848%_
                       '2
                       __tmp157930))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message157714%_ _%stx157715%_ . _%details157716%_)
        (let ((_%ctx157721%_
               (let ((_%$e157718%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e157718%_ _%$e157718%_ '(compile)))))
          (apply gx#raise-syntax-error
                 _%ctx157721%_
                 _%message157714%_
                 _%stx157715%_
                 _%details157716%_))))
    (define gxc#verbose
      (lambda _%args157711%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp157931
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args157711%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp157931))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id157693%_)
        (let* ((_%str157695%_
                (if (symbol? _%id157693%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id157693%_))
                    _%id157693%_))
               (_%len157697%_ (string-length _%str157695%_))
               (_%res157699%_
                (let () (declare (not safe)) (##make-string _%len157697%_))))
          (let _%lp157702%_ ((_%i157704%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i157704%_ _%len157697%_))
                (let* ((_%char157706%_ (string-ref _%str157695%_ _%i157704%_))
                       (_%xchar157708%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char157706%_))
                            '#\_
                            _%char157706%_)))
                  (string-set! _%res157699%_ _%i157704%_ _%xchar157708%_)
                  (_%lp157702%_
                   (let () (declare (not safe)) (##fx+ _%i157704%_ '1))))
                _%res157699%_)))))
    (define gxc#map*
      (lambda (_%proc157635%_ _%maybe-improper-list157636%_)
        (let _%recur157638%_ ((_%rest157640%_ _%maybe-improper-list157636%_))
          (let* ((_%rest157641157652%_ _%rest157640%_)
                 (_%E157645157656%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest157641157652%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K157648157681%_
                   (lambda (_%rest157678%_ _%hd157679%_)
                     (cons (_%proc157635%_ _%hd157679%_)
                           (_%recur157638%_ _%rest157678%_))))
                  (_%K157647157672%_ (lambda () '()))
                  (_%K157646157662%_
                   (lambda (_%tail157660%_) (_%proc157635%_ _%tail157660%_))))
              (let ((_%try-match157643157675%_
                     (lambda ()
                       (if (null? _%rest157641157652%_)
                           (_%K157647157672%_)
                           (let ((_%tail157665%_ _%rest157641157652%_))
                             (declare (not safe))
                             (_%proc157635%_ _%tail157665%_))))))
                (if (pair? _%rest157641157652%_)
                    (let ((_%tl157650157686%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest157641157652%_)))
                          (_%hd157649157684%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest157641157652%_))))
                      (let ((_%hd157689%_ _%hd157649157684%_)
                            (_%rest157691%_ _%tl157650157686%_))
                        (_%K157648157681%_ _%rest157691%_ _%hd157689%_)))
                    (_%try-match157643157675%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym157630%_)
        (let ((_%$e157632%_ (not (gxc#gensym-reference? _%sym157630%_))))
          (if _%$e157632%_
              _%$e157632%_
              (memq _%sym157630%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym157626%_)
        (let ((_%str157628%_ (symbol->string _%sym157626%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str157628%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str157628%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id157597%_)
        (let ((_%$e157599%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id157597%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id157597%_))
                   '#f)))
          (if _%$e157599%_
              ((lambda (_%bind157602%_)
                 (let ((_%eid157604%_
                        (##structure-ref _%bind157602%_ '1 gx#binding::t '#f))
                       (_%ht157605%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid157604%_))
                       _%eid157604%_
                       (let ((_%$e157608%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht157605%_ _%eid157604%_))))
                         (if _%$e157608%_
                             _%$e157608%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind157602%_
                                    'gx#local-binding::t))
                                 (let ((_%gid157612%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid157604%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht157605%_
                                      _%eid157604%_
                                      _%gid157612%_))
                                   _%gid157612%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind157602%_
                                        'gx#module-binding::t))
                                     (let ((_%gid157621%_
                                            (let ((_%$e157615%_
                                                   (##structure-ref
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%bind157602%_
                                                       '7
                                                       '#f
                                                       '#f))
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e157615%_
                                                  ((lambda (_%ns157618%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns157618%_
                                                        '"#"
                                                        _%eid157604%_)))
                                                   _%$e157615%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid157604%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht157605%_
                                          _%eid157604%_
                                          _%gid157621%_))
                                       _%gid157621%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id157597%_
                                      _%eid157604%_
                                      _%bind157602%_))))))))
               _%$e157599%_)
              (if (let ((__tmp157932
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id157597%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp157932))
                  (let () (declare (not safe)) (gx#stx-e _%id157597%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id157597%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id157595%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id157595%_))
            (gxc#generate-runtime-binding-id _%id157595%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top157582%_)
        (if _%top157582%_
            (let ((_%ns157584%_
                   (##structure-ref
                    (let ((__tmp157933
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp157933))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi157585%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns157584%_
                  (if (fxpositive? _%phi157585%_)
                      (let ((__tmp157935 (number->string _%phi157585%_))
                            (__tmp157934
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns157584%_
                         '"["
                         __tmp157935
                         '"]#_"
                         __tmp157934
                         '"_"))
                      (let ((__tmp157936
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns157584%_ '"#_" __tmp157936 '"_")))
                  (if (fxpositive? _%phi157585%_)
                      (let ((__tmp157938 (number->string _%phi157585%_))
                            (__tmp157937
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp157938
                         '"]#_"
                         __tmp157937
                         '"_"))
                      (let ((__tmp157939
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp157939 '"_")))))
            (let ((__tmp157940 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp157940 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top157591%_ '#f))
          (gxc#generate-runtime-temporary__% _%top157591%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g157941_
        (let ((_g157942_ (let () (declare (not safe)) (##length _g157941_))))
          (cond ((let () (declare (not safe)) (##fx= _g157942_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g157941_))
                ((let () (declare (not safe)) (##fx= _g157942_ 1))
                 (apply gxc#generate-runtime-temporary__% _g157941_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g157941_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym157560%_ _%quote?157561%_)
        (let* ((_%ht157563%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e157565%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht157563%_ _%sym157560%_))))
          (if _%$e157565%_
              _%$e157565%_
              (let ((_%g157569%_
                     (if _%quote?157561%_
                         (let ((__tmp157943
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym157560%_
                            '"__"
                            __tmp157943))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym157560%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht157563%_ _%sym157560%_ _%g157569%_))
                _%g157569%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym157574%_)
        (let ((_%quote?157576%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym157574%_
           _%quote?157576%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g157944_
        (let ((_g157945_ (let () (declare (not safe)) (##length _g157944_))))
          (cond ((let () (declare (not safe)) (##fx= _g157945_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g157944_))
                ((let () (declare (not safe)) (##fx= _g157945_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g157944_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g157944_))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id157557%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id157557%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key157512%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key157512%_))
            _%key157512%_
            (if (uninterned-symbol? _%key157512%_)
                (gxc#generate-runtime-gensym-reference__0 _%key157512%_)
                (let* ((_%key157516157523%_ _%key157512%_)
                       (_%E157518157527%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key157516157523%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K157519157545%_
                        (lambda (_%mark157530%_ _%eid157531%_)
                          (let ((_%$e157533%_
                                 (##structure-ref
                                  _%mark157530%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e157533%_
                                ((lambda (_%ht157536%_)
                                   (let ((_%$e157538%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht157536%_
                                             _%eid157531%_))))
                                     (if _%$e157538%_
                                         ((lambda (_%id157541%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id157541%_))
                                                _%id157541%_
                                                (gxc#generate-runtime-gensym-reference__0
                                                 _%id157541%_)))
                                          _%$e157538%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid157531%_))))
                                 _%$e157533%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid157531%_))))))
                  (if (pair? _%key157516157523%_)
                      (let ((_%hd157520157548%_
                             (let ()
                               (declare (not safe))
                               (##car _%key157516157523%_)))
                            (_%tl157521157550%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key157516157523%_))))
                        (let* ((_%eid157553%_ _%hd157520157548%_)
                               (_%mark157555%_ _%tl157521157550%_))
                          (_%K157519157545%_ _%mark157555%_ _%eid157553%_)))
                      (_%E157518157527%_)))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1157505%_ _%id2157506%_)
        (letrec ((_%symbol-e157508%_
                  (lambda (_%id157510%_)
                    (if (symbol? _%id157510%_)
                        _%id157510%_
                        (gxc#generate-runtime-binding-id _%id157510%_)))))
          (eq? (_%symbol-e157508%_ _%id1157505%_)
               (_%symbol-e157508%_ _%id2157506%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx157503%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx157503%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx157503%_)
            (let () (declare (not safe)) (gx#stx-e _%stx157503%_)))))
    (define gxc#runtime-identifier-properties
      (lambda (_%id157419%_)
        (let* ((_%bind157421%_
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id157419%_)))
               (_%runtime-props157456%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%bind157421%_
                       'gx#runtime-binding::t))
                    (let* ((_%props157436%_
                            (let ((_%$e157424%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind157421%_
                                      '6
                                      '#f
                                      '#f))))
                              (if _%$e157424%_
                                  ((lambda (_%macro-id157427%_)
                                     (let ((_%$e157429%_
                                            (let ((__tmp157946
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#current-compile-identifiers))))
                                              (declare (not safe))
                                              (hash-get
                                               __tmp157946
                                               _%id157419%_))))
                                       (if _%$e157429%_
                                           ((lambda (_%stxq157432%_)
                                              (cons 'macro:
                                                    (cons _%stxq157432%_ '())))
                                            _%$e157429%_)
                                           (gxc#raise-compile-error
                                            '"no syntax quote object for macro"
                                            _%id157419%_
                                            _%macro-id157427%_))))
                                   _%$e157424%_)
                                  '())))
                           (_%props157452%_
                            (let ((_%$e157438%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind157421%_
                                      '5
                                      '#f
                                      '#f))))
                              (if _%$e157438%_
                                  ((lambda (_%type157441%_)
                                     (let ((_%$e157443%_
                                            (let ()
                                              (declare (not safe))
                                              (__method-ref
                                               _%type157441%_
                                               ':repr))))
                                       (if _%$e157443%_
                                           ((lambda (_%method157446%_)
                                              (let ((_%repr157448%_
                                                     (_%method157446%_
                                                      _%type157441%_)))
                                                (cons 'type:
                                                      (cons _%repr157448%_
                                                            _%props157436%_))))
                                            _%$e157443%_)
                                           (gxc#raise-compile-error
                                            '"unrepresentable type"
                                            _%id157419%_
                                            _%type157441%_))))
                                   _%$e157438%_)
                                  _%props157436%_))))
                      _%props157452%_)
                    '()))
               (_%$e157459%_
                (##structure-ref _%bind157421%_ '4 gx#binding::t '#f)))
          (if _%$e157459%_
              ((lambda (_%props157462%_)
                 (let ((__tmp157947
                        (lambda (_%prop157464%_ _%props157465%_)
                          (let* ((_%prop157466157473%_ _%prop157464%_)
                                 (_%E157468157476%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (error '"No clause matching"
                                             _%prop157466157473%_
                                             '([key . value])))
                                    '#!void))
                                 (_%K157469157490%_
                                  (lambda (_%value157479%_ _%key157480%_)
                                    (let ((_%$e157482%_
                                           (let ()
                                             (declare (not safe))
                                             (__method-ref
                                              _%value157479%_
                                              ':repr))))
                                      (if _%$e157482%_
                                          ((lambda (_%method157485%_)
                                             (let ((_%repr157487%_
                                                    (_%method157485%_
                                                     _%value157479%_)))
                                               (cons _%key157480%_
                                                     (cons _%repr157487%_
                                                           _%props157465%_))))
                                           _%$e157482%_)
                                          (cons _%key157480%_
                                                (cons (cons 'quote
                                                            (cons _%value157479%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%props157465%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (pair? _%prop157466157473%_)
                                (let ((_%hd157470157493%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%prop157466157473%_)))
                                      (_%tl157471157495%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%prop157466157473%_))))
                                  (let* ((_%key157498%_ _%hd157470157493%_)
                                         (_%value157500%_ _%tl157471157495%_))
                                    (_%K157469157490%_
                                     _%value157500%_
                                     _%key157498%_)))
                                (_%E157468157476%_))))))
                   (declare (not safe))
                   (__foldl1
                    __tmp157947
                    _%runtime-props157456%_
                    _%props157462%_)))
               _%$e157459%_)
              _%runtime-props157456%_))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk157404%_ _%name157405%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job157407%_
               (gxc#make-compile-job _%thunk157404%_ _%name157405%_)))
          (set! gxc#__compile-jobs (cons _%job157407%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk157412%_)
        (let ((_%name157414%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk157412%_ _%name157414%_))))
    (define gxc#add-compile-job!
      (lambda _g157948_
        (let ((_g157949_ (let () (declare (not safe)) (##length _g157948_))))
          (cond ((let () (declare (not safe)) (##fx= _g157949_ 1))
                 (apply gxc#add-compile-job!__0 _g157948_))
                ((let () (declare (not safe)) (##fx= _g157949_ 2))
                 (apply gxc#add-compile-job!__% _g157948_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g157948_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result157401%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result157401%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop157395%_ ()
          (let ((_%pending157398%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending157398%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending157398%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending157398%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk157384%_ _%name157385%_)
        (make-thread
         (lambda ()
           (let _%loop157388%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp157950
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name157385%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp157950))
                   (let ((__tmp157952 (lambda () (_%thunk157384%_)))
                         (__tmp157951
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp157952 __tmp157951)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop157388%_)))))
         _%name157385%_)))
    (define gxc#join!
      (lambda (_%thread157379%_)
        (let ((__tmp157954
               (lambda (_%exn157381%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn157381%_))
                     (let ((__tmp157955
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn157381%_))))
                       (declare (not safe))
                       (raise __tmp157955))
                     (let () (declare (not safe)) (raise _%exn157381%_)))))
              (__tmp157953 (lambda () (thread-join! _%thread157379%_))))
          (declare (not safe))
          (__with-catch __tmp157954 __tmp157953))))))
