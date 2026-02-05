(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1770327921)
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
       (let ((_%verbosity157791157793%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity157791157793%_
             (let* ((_%verbosity157795%_ _%verbosity157791157793%_)
                    (_%$e157797%_ (string->number _%verbosity157795%_)))
               (if _%$e157797%_ _%$e157797%_ _%verbosity157795%_))
             '#f))))
    (define gxc#current-compile-optimize (make-parameter '#f))
    (define gxc#current-compile-debug (make-parameter '#f))
    (define gxc#current-compile-generate-ssxi (make-parameter '#f))
    (define gxc#current-compile-static (make-parameter '#f))
    (define gxc#current-compile-timestamp (make-parameter '#f))
    (define gxc#current-compile-decls (make-parameter '#f))
    (define gxc#current-compile-context (make-parameter '#f))
    (define gxc#current-compile-parallel (make-parameter '#f))
    (define gxc#current-compile-local-env (make-parameter '()))
    (define gxc#symbol-table::t
      (let ((__tmp157852 (list)) (__tmp157851 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp157852
         '(gensyms bindings)
         __tmp157851
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args157789%_
        (apply make-instance gxc#symbol-table::t _%$args157789%_)))
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
      (lambda (_%self157776%_)
        (let ((_%self157779%_ _%self157776%_))
          (if (let ((__tmp157853
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self157779%_))))
                (declare (not safe))
                (##fx< '2 __tmp157853))
              (begin
                (let ((__tmp157854
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self157779%_
                   __tmp157854
                   '1
                   '#f
                   '#f))
                (let ((__tmp157855
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self157779%_
                   __tmp157855
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp157856
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self157779%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self157779%_
                       '2
                       __tmp157856))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message157645%_ _%stx157646%_ . _%details157647%_)
        (let ((_%ctx157652%_
               (let ((_%$e157649%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e157649%_ _%$e157649%_ '(compile)))))
          (apply gx#raise-syntax-error
                 _%ctx157652%_
                 _%message157645%_
                 _%stx157646%_
                 _%details157647%_))))
    (define gxc#verbose
      (lambda _%args157642%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp157857
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args157642%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp157857))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id157624%_)
        (let* ((_%str157626%_
                (if (symbol? _%id157624%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id157624%_))
                    _%id157624%_))
               (_%len157628%_ (string-length _%str157626%_))
               (_%res157630%_
                (let () (declare (not safe)) (##make-string _%len157628%_))))
          (let _%lp157633%_ ((_%i157635%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i157635%_ _%len157628%_))
                (let* ((_%char157637%_ (string-ref _%str157626%_ _%i157635%_))
                       (_%xchar157639%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char157637%_))
                            '#\_
                            _%char157637%_)))
                  (string-set! _%res157630%_ _%i157635%_ _%xchar157639%_)
                  (_%lp157633%_
                   (let () (declare (not safe)) (##fx+ _%i157635%_ '1))))
                _%res157630%_)))))
    (define gxc#map*
      (lambda (_%proc157566%_ _%maybe-improper-list157567%_)
        (let _%recur157569%_ ((_%rest157571%_ _%maybe-improper-list157567%_))
          (let* ((_%rest157572157583%_ _%rest157571%_)
                 (_%E157576157587%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest157572157583%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K157579157612%_
                   (lambda (_%rest157609%_ _%hd157610%_)
                     (cons (_%proc157566%_ _%hd157610%_)
                           (_%recur157569%_ _%rest157609%_))))
                  (_%K157578157603%_ (lambda () '()))
                  (_%K157577157593%_
                   (lambda (_%tail157591%_) (_%proc157566%_ _%tail157591%_))))
              (let ((_%try-match157574157606%_
                     (lambda ()
                       (if (null? _%rest157572157583%_)
                           (_%K157578157603%_)
                           (let ((_%tail157596%_ _%rest157572157583%_))
                             (declare (not safe))
                             (_%proc157566%_ _%tail157596%_))))))
                (if (pair? _%rest157572157583%_)
                    (let ((_%tl157581157617%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest157572157583%_)))
                          (_%hd157580157615%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest157572157583%_))))
                      (let ((_%hd157620%_ _%hd157580157615%_)
                            (_%rest157622%_ _%tl157581157617%_))
                        (_%K157579157612%_ _%rest157622%_ _%hd157620%_)))
                    (_%try-match157574157606%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym157561%_)
        (let ((_%$e157563%_ (not (gxc#gensym-reference? _%sym157561%_))))
          (if _%$e157563%_
              _%$e157563%_
              (memq _%sym157561%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym157557%_)
        (let ((_%str157559%_ (symbol->string _%sym157557%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str157559%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str157559%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id157528%_)
        (let ((_%$e157530%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id157528%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id157528%_))
                   '#f)))
          (if _%$e157530%_
              ((lambda (_%bind157533%_)
                 (let ((_%eid157535%_
                        (##structure-ref _%bind157533%_ '1 gx#binding::t '#f))
                       (_%ht157536%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid157535%_))
                       _%eid157535%_
                       (let ((_%$e157539%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht157536%_ _%eid157535%_))))
                         (if _%$e157539%_
                             _%$e157539%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind157533%_
                                    'gx#local-binding::t))
                                 (let ((_%gid157543%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid157535%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht157536%_
                                      _%eid157535%_
                                      _%gid157543%_))
                                   _%gid157543%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind157533%_
                                        'gx#module-binding::t))
                                     (let ((_%gid157552%_
                                            (let ((_%$e157546%_
                                                   (##structure-ref
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%bind157533%_
                                                       '7
                                                       '#f
                                                       '#f))
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e157546%_
                                                  ((lambda (_%ns157549%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns157549%_
                                                        '"#"
                                                        _%eid157535%_)))
                                                   _%$e157546%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid157535%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht157536%_
                                          _%eid157535%_
                                          _%gid157552%_))
                                       _%gid157552%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id157528%_
                                      _%eid157535%_
                                      _%bind157533%_))))))))
               _%$e157530%_)
              (if (let ((__tmp157858
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id157528%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp157858))
                  (let () (declare (not safe)) (gx#stx-e _%id157528%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id157528%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id157526%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id157526%_))
            (gxc#generate-runtime-binding-id _%id157526%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top157513%_)
        (if _%top157513%_
            (let ((_%ns157515%_
                   (##structure-ref
                    (let ((__tmp157859
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp157859))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi157516%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns157515%_
                  (if (fxpositive? _%phi157516%_)
                      (let ((__tmp157861 (number->string _%phi157516%_))
                            (__tmp157860
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns157515%_
                         '"["
                         __tmp157861
                         '"]#_"
                         __tmp157860
                         '"_"))
                      (let ((__tmp157862
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns157515%_ '"#_" __tmp157862 '"_")))
                  (if (fxpositive? _%phi157516%_)
                      (let ((__tmp157864 (number->string _%phi157516%_))
                            (__tmp157863
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp157864
                         '"]#_"
                         __tmp157863
                         '"_"))
                      (let ((__tmp157865
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp157865 '"_")))))
            (let ((__tmp157866 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp157866 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top157522%_ '#f))
          (gxc#generate-runtime-temporary__% _%top157522%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g157867_
        (let ((_g157868_ (let () (declare (not safe)) (##length _g157867_))))
          (cond ((let () (declare (not safe)) (##fx= _g157868_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g157867_))
                ((let () (declare (not safe)) (##fx= _g157868_ 1))
                 (apply gxc#generate-runtime-temporary__% _g157867_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g157867_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym157491%_ _%quote?157492%_)
        (let* ((_%ht157494%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e157496%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht157494%_ _%sym157491%_))))
          (if _%$e157496%_
              _%$e157496%_
              (let ((_%g157500%_
                     (if _%quote?157492%_
                         (let ((__tmp157869
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym157491%_
                            '"__"
                            __tmp157869))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym157491%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht157494%_ _%sym157491%_ _%g157500%_))
                _%g157500%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym157505%_)
        (let ((_%quote?157507%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym157505%_
           _%quote?157507%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g157870_
        (let ((_g157871_ (let () (declare (not safe)) (##length _g157870_))))
          (cond ((let () (declare (not safe)) (##fx= _g157871_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g157870_))
                ((let () (declare (not safe)) (##fx= _g157871_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g157870_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g157870_))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1157483%_ _%id2157484%_)
        (letrec ((_%symbol-e157486%_
                  (lambda (_%id157488%_)
                    (if (symbol? _%id157488%_)
                        _%id157488%_
                        (gxc#generate-runtime-binding-id _%id157488%_)))))
          (eq? (_%symbol-e157486%_ _%id1157483%_)
               (_%symbol-e157486%_ _%id2157484%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx157481%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx157481%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx157481%_)
            (let () (declare (not safe)) (gx#stx-e _%stx157481%_)))))
    (define gxc#runtime-identifier-properties
      (lambda (_%id157403%_)
        (let* ((_%bind157405%_
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id157403%_)))
               (_%runtime-props157434%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%bind157405%_
                       'gx#runtime-binding::t))
                    (let* ((_%props157414%_
                            (let ((_%$e157408%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind157405%_
                                      '6
                                      '#f
                                      '#f))))
                              (if _%$e157408%_
                                  ((lambda (_%macro157411%_)
                                     (cons 'macro: (cons _%macro157411%_ '())))
                                   _%$e157408%_)
                                  '())))
                           (_%props157430%_
                            (let ((_%$e157416%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind157405%_
                                      '5
                                      '#f
                                      '#f))))
                              (if _%$e157416%_
                                  ((lambda (_%type157419%_)
                                     (let ((_%$e157421%_
                                            (let ()
                                              (declare (not safe))
                                              (__method-ref
                                               _%type157419%_
                                               ':repr))))
                                       (if _%$e157421%_
                                           ((lambda (_%method157424%_)
                                              (let ((_%repr157426%_
                                                     (_%method157424%_
                                                      _%type157419%_)))
                                                (cons 'type:
                                                      (cons _%repr157426%_
                                                            _%props157414%_))))
                                            _%$e157421%_)
                                           (gxc#raise-compile-error
                                            '"unrepresentable type"
                                            _%id157403%_
                                            _%type157419%_))))
                                   _%$e157416%_)
                                  _%props157414%_))))
                      _%props157430%_)
                    '()))
               (_%$e157437%_
                (##structure-ref _%bind157405%_ '4 gx#binding::t '#f)))
          (if _%$e157437%_
              ((lambda (_%props157440%_)
                 (let ((__tmp157872
                        (lambda (_%prop157442%_ _%props157443%_)
                          (let* ((_%prop157444157451%_ _%prop157442%_)
                                 (_%E157446157454%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (error '"No clause matching"
                                             _%prop157444157451%_
                                             '([key . value])))
                                    '#!void))
                                 (_%K157447157468%_
                                  (lambda (_%value157457%_ _%key157458%_)
                                    (let ((_%$e157460%_
                                           (let ()
                                             (declare (not safe))
                                             (__method-ref
                                              _%value157457%_
                                              ':repr))))
                                      (if _%$e157460%_
                                          ((lambda (_%method157463%_)
                                             (let ((_%repr157465%_
                                                    (_%method157463%_
                                                     _%value157457%_)))
                                               (cons _%key157458%_
                                                     (cons _%repr157465%_
                                                           _%props157443%_))))
                                           _%$e157460%_)
                                          (cons _%key157458%_
                                                (cons (cons 'quote
                                                            (cons _%value157457%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%props157443%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (pair? _%prop157444157451%_)
                                (let ((_%hd157448157471%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%prop157444157451%_)))
                                      (_%tl157449157473%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%prop157444157451%_))))
                                  (let* ((_%key157476%_ _%hd157448157471%_)
                                         (_%value157478%_ _%tl157449157473%_))
                                    (_%K157447157468%_
                                     _%value157478%_
                                     _%key157476%_)))
                                (_%E157446157454%_))))))
                   (declare (not safe))
                   (__foldl1
                    __tmp157872
                    _%runtime-props157434%_
                    _%props157440%_)))
               _%$e157437%_)
              _%runtime-props157434%_))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk157388%_ _%name157389%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job157391%_
               (gxc#make-compile-job _%thunk157388%_ _%name157389%_)))
          (set! gxc#__compile-jobs (cons _%job157391%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk157396%_)
        (let ((_%name157398%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk157396%_ _%name157398%_))))
    (define gxc#add-compile-job!
      (lambda _g157873_
        (let ((_g157874_ (let () (declare (not safe)) (##length _g157873_))))
          (cond ((let () (declare (not safe)) (##fx= _g157874_ 1))
                 (apply gxc#add-compile-job!__0 _g157873_))
                ((let () (declare (not safe)) (##fx= _g157874_ 2))
                 (apply gxc#add-compile-job!__% _g157873_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g157873_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result157385%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result157385%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop157379%_ ()
          (let ((_%pending157382%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending157382%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending157382%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending157382%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk157368%_ _%name157369%_)
        (make-thread
         (lambda ()
           (let _%loop157372%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp157875
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name157369%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp157875))
                   (let ((__tmp157877 (lambda () (_%thunk157368%_)))
                         (__tmp157876
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp157877 __tmp157876)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop157372%_)))))
         _%name157369%_)))
    (define gxc#join!
      (lambda (_%thread157363%_)
        (let ((__tmp157879
               (lambda (_%exn157365%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn157365%_))
                     (let ((__tmp157880
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn157365%_))))
                       (declare (not safe))
                       (raise __tmp157880))
                     (let () (declare (not safe)) (raise _%exn157365%_)))))
              (__tmp157878 (lambda () (thread-join! _%thread157363%_))))
          (declare (not safe))
          (__with-catch __tmp157879 __tmp157878))))))
