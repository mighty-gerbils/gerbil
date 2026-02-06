(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1770342300)
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
       (let ((_%verbosity157862157864%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity157862157864%_
             (let* ((_%verbosity157866%_ _%verbosity157862157864%_)
                    (_%$e157868%_ (string->number _%verbosity157866%_)))
               (if _%$e157868%_ _%$e157868%_ _%verbosity157866%_))
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
        (letrec ((_%hash-e157859%_
                  (lambda (_%id157861%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id157861%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e157859%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#current-compile-local-env (make-parameter '()))
    (define gxc#symbol-table::t
      (let ((__tmp157923 (list)) (__tmp157922 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp157923
         '(gensyms bindings)
         __tmp157922
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args157855%_
        (apply make-instance gxc#symbol-table::t _%$args157855%_)))
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
      (lambda (_%self157842%_)
        (let ((_%self157845%_ _%self157842%_))
          (if (let ((__tmp157924
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self157845%_))))
                (declare (not safe))
                (##fx< '2 __tmp157924))
              (begin
                (let ((__tmp157925
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self157845%_
                   __tmp157925
                   '1
                   '#f
                   '#f))
                (let ((__tmp157926
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self157845%_
                   __tmp157926
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp157927
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self157845%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self157845%_
                       '2
                       __tmp157927))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message157711%_ _%stx157712%_ . _%details157713%_)
        (let ((_%ctx157718%_
               (let ((_%$e157715%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e157715%_ _%$e157715%_ '(compile)))))
          (apply gx#raise-syntax-error
                 _%ctx157718%_
                 _%message157711%_
                 _%stx157712%_
                 _%details157713%_))))
    (define gxc#verbose
      (lambda _%args157708%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp157928
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args157708%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp157928))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id157690%_)
        (let* ((_%str157692%_
                (if (symbol? _%id157690%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id157690%_))
                    _%id157690%_))
               (_%len157694%_ (string-length _%str157692%_))
               (_%res157696%_
                (let () (declare (not safe)) (##make-string _%len157694%_))))
          (let _%lp157699%_ ((_%i157701%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i157701%_ _%len157694%_))
                (let* ((_%char157703%_ (string-ref _%str157692%_ _%i157701%_))
                       (_%xchar157705%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char157703%_))
                            '#\_
                            _%char157703%_)))
                  (string-set! _%res157696%_ _%i157701%_ _%xchar157705%_)
                  (_%lp157699%_
                   (let () (declare (not safe)) (##fx+ _%i157701%_ '1))))
                _%res157696%_)))))
    (define gxc#map*
      (lambda (_%proc157632%_ _%maybe-improper-list157633%_)
        (let _%recur157635%_ ((_%rest157637%_ _%maybe-improper-list157633%_))
          (let* ((_%rest157638157649%_ _%rest157637%_)
                 (_%E157642157653%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest157638157649%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K157645157678%_
                   (lambda (_%rest157675%_ _%hd157676%_)
                     (cons (_%proc157632%_ _%hd157676%_)
                           (_%recur157635%_ _%rest157675%_))))
                  (_%K157644157669%_ (lambda () '()))
                  (_%K157643157659%_
                   (lambda (_%tail157657%_) (_%proc157632%_ _%tail157657%_))))
              (let ((_%try-match157640157672%_
                     (lambda ()
                       (if (null? _%rest157638157649%_)
                           (_%K157644157669%_)
                           (let ((_%tail157662%_ _%rest157638157649%_))
                             (declare (not safe))
                             (_%proc157632%_ _%tail157662%_))))))
                (if (pair? _%rest157638157649%_)
                    (let ((_%tl157647157683%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest157638157649%_)))
                          (_%hd157646157681%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest157638157649%_))))
                      (let ((_%hd157686%_ _%hd157646157681%_)
                            (_%rest157688%_ _%tl157647157683%_))
                        (_%K157645157678%_ _%rest157688%_ _%hd157686%_)))
                    (_%try-match157640157672%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym157627%_)
        (let ((_%$e157629%_ (not (gxc#gensym-reference? _%sym157627%_))))
          (if _%$e157629%_
              _%$e157629%_
              (memq _%sym157627%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym157623%_)
        (let ((_%str157625%_ (symbol->string _%sym157623%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str157625%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str157625%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id157594%_)
        (let ((_%$e157596%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id157594%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id157594%_))
                   '#f)))
          (if _%$e157596%_
              ((lambda (_%bind157599%_)
                 (let ((_%eid157601%_
                        (##structure-ref _%bind157599%_ '1 gx#binding::t '#f))
                       (_%ht157602%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid157601%_))
                       _%eid157601%_
                       (let ((_%$e157605%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht157602%_ _%eid157601%_))))
                         (if _%$e157605%_
                             _%$e157605%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind157599%_
                                    'gx#local-binding::t))
                                 (let ((_%gid157609%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid157601%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht157602%_
                                      _%eid157601%_
                                      _%gid157609%_))
                                   _%gid157609%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind157599%_
                                        'gx#module-binding::t))
                                     (let ((_%gid157618%_
                                            (let ((_%$e157612%_
                                                   (##structure-ref
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%bind157599%_
                                                       '7
                                                       '#f
                                                       '#f))
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e157612%_
                                                  ((lambda (_%ns157615%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns157615%_
                                                        '"#"
                                                        _%eid157601%_)))
                                                   _%$e157612%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid157601%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht157602%_
                                          _%eid157601%_
                                          _%gid157618%_))
                                       _%gid157618%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id157594%_
                                      _%eid157601%_
                                      _%bind157599%_))))))))
               _%$e157596%_)
              (if (let ((__tmp157929
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id157594%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp157929))
                  (let () (declare (not safe)) (gx#stx-e _%id157594%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id157594%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id157592%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id157592%_))
            (gxc#generate-runtime-binding-id _%id157592%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top157579%_)
        (if _%top157579%_
            (let ((_%ns157581%_
                   (##structure-ref
                    (let ((__tmp157930
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp157930))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi157582%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns157581%_
                  (if (fxpositive? _%phi157582%_)
                      (let ((__tmp157932 (number->string _%phi157582%_))
                            (__tmp157931
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns157581%_
                         '"["
                         __tmp157932
                         '"]#_"
                         __tmp157931
                         '"_"))
                      (let ((__tmp157933
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns157581%_ '"#_" __tmp157933 '"_")))
                  (if (fxpositive? _%phi157582%_)
                      (let ((__tmp157935 (number->string _%phi157582%_))
                            (__tmp157934
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp157935
                         '"]#_"
                         __tmp157934
                         '"_"))
                      (let ((__tmp157936
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp157936 '"_")))))
            (let ((__tmp157937 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp157937 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top157588%_ '#f))
          (gxc#generate-runtime-temporary__% _%top157588%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g157938_
        (let ((_g157939_ (let () (declare (not safe)) (##length _g157938_))))
          (cond ((let () (declare (not safe)) (##fx= _g157939_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g157938_))
                ((let () (declare (not safe)) (##fx= _g157939_ 1))
                 (apply gxc#generate-runtime-temporary__% _g157938_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g157938_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym157557%_ _%quote?157558%_)
        (let* ((_%ht157560%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e157562%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht157560%_ _%sym157557%_))))
          (if _%$e157562%_
              _%$e157562%_
              (let ((_%g157566%_
                     (if _%quote?157558%_
                         (let ((__tmp157940
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym157557%_
                            '"__"
                            __tmp157940))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym157557%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht157560%_ _%sym157557%_ _%g157566%_))
                _%g157566%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym157571%_)
        (let ((_%quote?157573%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym157571%_
           _%quote?157573%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g157941_
        (let ((_g157942_ (let () (declare (not safe)) (##length _g157941_))))
          (cond ((let () (declare (not safe)) (##fx= _g157942_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g157941_))
                ((let () (declare (not safe)) (##fx= _g157942_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g157941_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g157941_))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id157554%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id157554%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key157509%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key157509%_))
            _%key157509%_
            (if (uninterned-symbol? _%key157509%_)
                (gxc#generate-runtime-gensym-reference__0 _%key157509%_)
                (let* ((_%key157513157520%_ _%key157509%_)
                       (_%E157515157524%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key157513157520%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K157516157542%_
                        (lambda (_%mark157527%_ _%eid157528%_)
                          (let ((_%$e157530%_
                                 (##structure-ref
                                  _%mark157527%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e157530%_
                                ((lambda (_%ht157533%_)
                                   (let ((_%$e157535%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht157533%_
                                             _%eid157528%_))))
                                     (if _%$e157535%_
                                         ((lambda (_%id157538%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id157538%_))
                                                _%id157538%_
                                                (gxc#generate-runtime-gensym-reference__0
                                                 _%id157538%_)))
                                          _%$e157535%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid157528%_))))
                                 _%$e157530%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid157528%_))))))
                  (if (pair? _%key157513157520%_)
                      (let ((_%hd157517157545%_
                             (let ()
                               (declare (not safe))
                               (##car _%key157513157520%_)))
                            (_%tl157518157547%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key157513157520%_))))
                        (let* ((_%eid157550%_ _%hd157517157545%_)
                               (_%mark157552%_ _%tl157518157547%_))
                          (_%K157516157542%_ _%mark157552%_ _%eid157550%_)))
                      (_%E157515157524%_)))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1157502%_ _%id2157503%_)
        (letrec ((_%symbol-e157505%_
                  (lambda (_%id157507%_)
                    (if (symbol? _%id157507%_)
                        _%id157507%_
                        (gxc#generate-runtime-binding-id _%id157507%_)))))
          (eq? (_%symbol-e157505%_ _%id1157502%_)
               (_%symbol-e157505%_ _%id2157503%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx157500%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx157500%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx157500%_)
            (let () (declare (not safe)) (gx#stx-e _%stx157500%_)))))
    (define gxc#runtime-identifier-properties
      (lambda (_%id157422%_)
        (let* ((_%bind157424%_
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id157422%_)))
               (_%runtime-props157453%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%bind157424%_
                       'gx#runtime-binding::t))
                    (let* ((_%props157433%_
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
                                     (cons 'macro:
                                           (cons (gxc#generate-runtime-identifier
                                                  _%macro-id157430%_)
                                                 '())))
                                   _%$e157427%_)
                                  '())))
                           (_%props157449%_
                            (let ((_%$e157435%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind157424%_
                                      '5
                                      '#f
                                      '#f))))
                              (if _%$e157435%_
                                  ((lambda (_%type157438%_)
                                     (let ((_%$e157440%_
                                            (let ()
                                              (declare (not safe))
                                              (__method-ref
                                               _%type157438%_
                                               ':repr))))
                                       (if _%$e157440%_
                                           ((lambda (_%method157443%_)
                                              (let ((_%repr157445%_
                                                     (_%method157443%_
                                                      _%type157438%_)))
                                                (cons 'type:
                                                      (cons _%repr157445%_
                                                            _%props157433%_))))
                                            _%$e157440%_)
                                           (gxc#raise-compile-error
                                            '"unrepresentable type"
                                            _%id157422%_
                                            _%type157438%_))))
                                   _%$e157435%_)
                                  _%props157433%_))))
                      _%props157449%_)
                    '()))
               (_%$e157456%_
                (##structure-ref _%bind157424%_ '4 gx#binding::t '#f)))
          (if _%$e157456%_
              ((lambda (_%props157459%_)
                 (let ((__tmp157943
                        (lambda (_%prop157461%_ _%props157462%_)
                          (let* ((_%prop157463157470%_ _%prop157461%_)
                                 (_%E157465157473%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (error '"No clause matching"
                                             _%prop157463157470%_
                                             '([key . value])))
                                    '#!void))
                                 (_%K157466157487%_
                                  (lambda (_%value157476%_ _%key157477%_)
                                    (let ((_%$e157479%_
                                           (let ()
                                             (declare (not safe))
                                             (__method-ref
                                              _%value157476%_
                                              ':repr))))
                                      (if _%$e157479%_
                                          ((lambda (_%method157482%_)
                                             (let ((_%repr157484%_
                                                    (_%method157482%_
                                                     _%value157476%_)))
                                               (cons _%key157477%_
                                                     (cons _%repr157484%_
                                                           _%props157462%_))))
                                           _%$e157479%_)
                                          (cons _%key157477%_
                                                (cons (cons 'quote
                                                            (cons _%value157476%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%props157462%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (pair? _%prop157463157470%_)
                                (let ((_%hd157467157490%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%prop157463157470%_)))
                                      (_%tl157468157492%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%prop157463157470%_))))
                                  (let* ((_%key157495%_ _%hd157467157490%_)
                                         (_%value157497%_ _%tl157468157492%_))
                                    (_%K157466157487%_
                                     _%value157497%_
                                     _%key157495%_)))
                                (_%E157465157473%_))))))
                   (declare (not safe))
                   (__foldl1
                    __tmp157943
                    _%runtime-props157453%_
                    _%props157459%_)))
               _%$e157456%_)
              _%runtime-props157453%_))))
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
      (lambda _g157944_
        (let ((_g157945_ (let () (declare (not safe)) (##length _g157944_))))
          (cond ((let () (declare (not safe)) (##fx= _g157945_ 1))
                 (apply gxc#add-compile-job!__0 _g157944_))
                ((let () (declare (not safe)) (##fx= _g157945_ 2))
                 (apply gxc#add-compile-job!__% _g157944_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g157944_))))))
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
                   (let ((__tmp157946
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name157388%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp157946))
                   (let ((__tmp157948 (lambda () (_%thunk157387%_)))
                         (__tmp157947
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp157948 __tmp157947)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop157391%_)))))
         _%name157388%_)))
    (define gxc#join!
      (lambda (_%thread157382%_)
        (let ((__tmp157950
               (lambda (_%exn157384%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn157384%_))
                     (let ((__tmp157951
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn157384%_))))
                       (declare (not safe))
                       (raise __tmp157951))
                     (let () (declare (not safe)) (raise _%exn157384%_)))))
              (__tmp157949 (lambda () (thread-join! _%thread157382%_))))
          (declare (not safe))
          (__with-catch __tmp157950 __tmp157949))))))
