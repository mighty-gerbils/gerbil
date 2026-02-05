(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1770325972)
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
       (let ((_%verbosity157673157675%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity157673157675%_
             (let* ((_%verbosity157677%_ _%verbosity157673157675%_)
                    (_%$e157679%_ (string->number _%verbosity157677%_)))
               (if _%$e157679%_ _%$e157679%_ _%verbosity157677%_))
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
      (let ((__tmp157734 (list)) (__tmp157733 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp157734
         '(gensyms bindings)
         __tmp157733
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args157671%_
        (apply make-instance gxc#symbol-table::t _%$args157671%_)))
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
      (lambda (_%self157658%_)
        (let ((_%self157661%_ _%self157658%_))
          (if (let ((__tmp157735
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self157661%_))))
                (declare (not safe))
                (##fx< '2 __tmp157735))
              (begin
                (let ((__tmp157736
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self157661%_
                   __tmp157736
                   '1
                   '#f
                   '#f))
                (let ((__tmp157737
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self157661%_
                   __tmp157737
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp157738
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self157661%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self157661%_
                       '2
                       __tmp157738))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message157527%_ _%stx157528%_ . _%details157529%_)
        (let ((_%ctx157534%_
               (let ((_%$e157531%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e157531%_ _%$e157531%_ '(compile)))))
          (apply gx#raise-syntax-error
                 _%ctx157534%_
                 _%message157527%_
                 _%stx157528%_
                 _%details157529%_))))
    (define gxc#verbose
      (lambda _%args157524%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp157739
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args157524%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp157739))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id157506%_)
        (let* ((_%str157508%_
                (if (symbol? _%id157506%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id157506%_))
                    _%id157506%_))
               (_%len157510%_ (string-length _%str157508%_))
               (_%res157512%_
                (let () (declare (not safe)) (##make-string _%len157510%_))))
          (let _%lp157515%_ ((_%i157517%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i157517%_ _%len157510%_))
                (let* ((_%char157519%_ (string-ref _%str157508%_ _%i157517%_))
                       (_%xchar157521%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char157519%_))
                            '#\_
                            _%char157519%_)))
                  (string-set! _%res157512%_ _%i157517%_ _%xchar157521%_)
                  (_%lp157515%_
                   (let () (declare (not safe)) (##fx+ _%i157517%_ '1))))
                _%res157512%_)))))
    (define gxc#map*
      (lambda (_%proc157448%_ _%maybe-improper-list157449%_)
        (let _%recur157451%_ ((_%rest157453%_ _%maybe-improper-list157449%_))
          (let* ((_%rest157454157465%_ _%rest157453%_)
                 (_%E157458157469%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest157454157465%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K157461157494%_
                   (lambda (_%rest157491%_ _%hd157492%_)
                     (cons (_%proc157448%_ _%hd157492%_)
                           (_%recur157451%_ _%rest157491%_))))
                  (_%K157460157485%_ (lambda () '()))
                  (_%K157459157475%_
                   (lambda (_%tail157473%_) (_%proc157448%_ _%tail157473%_))))
              (let ((_%try-match157456157488%_
                     (lambda ()
                       (if (null? _%rest157454157465%_)
                           (_%K157460157485%_)
                           (let ((_%tail157478%_ _%rest157454157465%_))
                             (declare (not safe))
                             (_%proc157448%_ _%tail157478%_))))))
                (if (pair? _%rest157454157465%_)
                    (let ((_%tl157463157499%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest157454157465%_)))
                          (_%hd157462157497%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest157454157465%_))))
                      (let ((_%hd157502%_ _%hd157462157497%_)
                            (_%rest157504%_ _%tl157463157499%_))
                        (_%K157461157494%_ _%rest157504%_ _%hd157502%_)))
                    (_%try-match157456157488%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym157443%_)
        (let ((_%$e157445%_ (not (gxc#gensym-reference? _%sym157443%_))))
          (if _%$e157445%_
              _%$e157445%_
              (memq _%sym157443%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym157439%_)
        (let ((_%str157441%_ (symbol->string _%sym157439%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str157441%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str157441%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id157410%_)
        (let ((_%$e157412%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id157410%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id157410%_))
                   '#f)))
          (if _%$e157412%_
              ((lambda (_%bind157415%_)
                 (let ((_%eid157417%_
                        (##structure-ref _%bind157415%_ '1 gx#binding::t '#f))
                       (_%ht157418%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid157417%_))
                       _%eid157417%_
                       (let ((_%$e157421%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht157418%_ _%eid157417%_))))
                         (if _%$e157421%_
                             _%$e157421%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind157415%_
                                    'gx#local-binding::t))
                                 (let ((_%gid157425%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid157417%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht157418%_
                                      _%eid157417%_
                                      _%gid157425%_))
                                   _%gid157425%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind157415%_
                                        'gx#module-binding::t))
                                     (let ((_%gid157434%_
                                            (let ((_%$e157428%_
                                                   (##structure-ref
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%bind157415%_
                                                       '7
                                                       '#f
                                                       '#f))
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e157428%_
                                                  ((lambda (_%ns157431%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns157431%_
                                                        '"#"
                                                        _%eid157417%_)))
                                                   _%$e157428%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid157417%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht157418%_
                                          _%eid157417%_
                                          _%gid157434%_))
                                       _%gid157434%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id157410%_
                                      _%eid157417%_
                                      _%bind157415%_))))))))
               _%$e157412%_)
              (if (let ((__tmp157740
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id157410%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp157740))
                  (let () (declare (not safe)) (gx#stx-e _%id157410%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id157410%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id157408%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id157408%_))
            (gxc#generate-runtime-binding-id _%id157408%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top157395%_)
        (if _%top157395%_
            (let ((_%ns157397%_
                   (##structure-ref
                    (let ((__tmp157741
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp157741))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi157398%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns157397%_
                  (if (fxpositive? _%phi157398%_)
                      (let ((__tmp157743 (number->string _%phi157398%_))
                            (__tmp157742
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns157397%_
                         '"["
                         __tmp157743
                         '"]#_"
                         __tmp157742
                         '"_"))
                      (let ((__tmp157744
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns157397%_ '"#_" __tmp157744 '"_")))
                  (if (fxpositive? _%phi157398%_)
                      (let ((__tmp157746 (number->string _%phi157398%_))
                            (__tmp157745
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp157746
                         '"]#_"
                         __tmp157745
                         '"_"))
                      (let ((__tmp157747
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp157747 '"_")))))
            (let ((__tmp157748 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp157748 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top157404%_ '#f))
          (gxc#generate-runtime-temporary__% _%top157404%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g157749_
        (let ((_g157750_ (let () (declare (not safe)) (##length _g157749_))))
          (cond ((let () (declare (not safe)) (##fx= _g157750_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g157749_))
                ((let () (declare (not safe)) (##fx= _g157750_ 1))
                 (apply gxc#generate-runtime-temporary__% _g157749_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g157749_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym157373%_ _%quote?157374%_)
        (let* ((_%ht157376%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e157378%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht157376%_ _%sym157373%_))))
          (if _%$e157378%_
              _%$e157378%_
              (let ((_%g157382%_
                     (if _%quote?157374%_
                         (let ((__tmp157751
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym157373%_
                            '"__"
                            __tmp157751))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym157373%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht157376%_ _%sym157373%_ _%g157382%_))
                _%g157382%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym157387%_)
        (let ((_%quote?157389%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym157387%_
           _%quote?157389%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g157752_
        (let ((_g157753_ (let () (declare (not safe)) (##length _g157752_))))
          (cond ((let () (declare (not safe)) (##fx= _g157753_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g157752_))
                ((let () (declare (not safe)) (##fx= _g157753_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g157752_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g157752_))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1157365%_ _%id2157366%_)
        (letrec ((_%symbol-e157368%_
                  (lambda (_%id157370%_)
                    (if (symbol? _%id157370%_)
                        _%id157370%_
                        (gxc#generate-runtime-binding-id _%id157370%_)))))
          (eq? (_%symbol-e157368%_ _%id1157365%_)
               (_%symbol-e157368%_ _%id2157366%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx157363%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx157363%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx157363%_)
            (let () (declare (not safe)) (gx#stx-e _%stx157363%_)))))
    (define gxc#runtime-identifier-properties
      (lambda (_%id157285%_)
        (let* ((_%bind157287%_
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id157285%_)))
               (_%runtime-props157316%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%bind157287%_
                       'gx#runtime-binding::t))
                    (let* ((_%props157296%_
                            (let ((_%$e157290%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind157287%_
                                      '6
                                      '#f
                                      '#f))))
                              (if _%$e157290%_
                                  ((lambda (_%macro157293%_)
                                     (cons 'macro: (cons _%macro157293%_ '())))
                                   _%$e157290%_)
                                  '())))
                           (_%props157312%_
                            (let ((_%$e157298%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind157287%_
                                      '5
                                      '#f
                                      '#f))))
                              (if _%$e157298%_
                                  ((lambda (_%type157301%_)
                                     (let ((_%$e157303%_
                                            (let ()
                                              (declare (not safe))
                                              (__method-ref
                                               _%type157301%_
                                               ':repr))))
                                       (if _%$e157303%_
                                           ((lambda (_%method157306%_)
                                              (let ((_%repr157308%_
                                                     (_%method157306%_
                                                      _%type157301%_)))
                                                (cons 'type:
                                                      (cons _%repr157308%_
                                                            _%props157296%_))))
                                            _%$e157303%_)
                                           (gxc#raise-compile-error
                                            '"unrepresentable type"
                                            _%id157285%_
                                            _%type157301%_))))
                                   _%$e157298%_)
                                  _%props157296%_))))
                      _%props157312%_)
                    '()))
               (_%$e157319%_
                (##structure-ref _%bind157287%_ '4 gx#binding::t '#f)))
          (if _%$e157319%_
              ((lambda (_%props157322%_)
                 (let ((__tmp157754
                        (lambda (_%prop157324%_ _%props157325%_)
                          (let* ((_%prop157326157333%_ _%prop157324%_)
                                 (_%E157328157336%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (error '"No clause matching"
                                             _%prop157326157333%_
                                             '([key . value])))
                                    '#!void))
                                 (_%K157329157350%_
                                  (lambda (_%value157339%_ _%key157340%_)
                                    (let ((_%$e157342%_
                                           (let ()
                                             (declare (not safe))
                                             (__method-ref
                                              _%value157339%_
                                              ':repr))))
                                      (if _%$e157342%_
                                          ((lambda (_%method157345%_)
                                             (let ((_%repr157347%_
                                                    (_%method157345%_
                                                     _%value157339%_)))
                                               (cons _%key157340%_
                                                     (cons _%repr157347%_
                                                           _%props157325%_))))
                                           _%$e157342%_)
                                          (cons _%key157340%_
                                                (cons (cons 'quote
                                                            (cons _%value157339%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%props157325%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (pair? _%prop157326157333%_)
                                (let ((_%hd157330157353%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%prop157326157333%_)))
                                      (_%tl157331157355%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%prop157326157333%_))))
                                  (let* ((_%key157358%_ _%hd157330157353%_)
                                         (_%value157360%_ _%tl157331157355%_))
                                    (_%K157329157350%_
                                     _%value157360%_
                                     _%key157358%_)))
                                (_%E157328157336%_))))))
                   (declare (not safe))
                   (__foldl1
                    __tmp157754
                    _%runtime-props157316%_
                    _%props157322%_)))
               _%$e157319%_)
              _%runtime-props157316%_))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk157270%_ _%name157271%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job157273%_
               (gxc#make-compile-job _%thunk157270%_ _%name157271%_)))
          (set! gxc#__compile-jobs (cons _%job157273%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk157278%_)
        (let ((_%name157280%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk157278%_ _%name157280%_))))
    (define gxc#add-compile-job!
      (lambda _g157755_
        (let ((_g157756_ (let () (declare (not safe)) (##length _g157755_))))
          (cond ((let () (declare (not safe)) (##fx= _g157756_ 1))
                 (apply gxc#add-compile-job!__0 _g157755_))
                ((let () (declare (not safe)) (##fx= _g157756_ 2))
                 (apply gxc#add-compile-job!__% _g157755_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g157755_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result157267%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result157267%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop157261%_ ()
          (let ((_%pending157264%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending157264%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending157264%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending157264%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk157250%_ _%name157251%_)
        (make-thread
         (lambda ()
           (let _%loop157254%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp157757
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name157251%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp157757))
                   (let ((__tmp157759 (lambda () (_%thunk157250%_)))
                         (__tmp157758
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp157759 __tmp157758)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop157254%_)))))
         _%name157251%_)))
    (define gxc#join!
      (lambda (_%thread157245%_)
        (let ((__tmp157761
               (lambda (_%exn157247%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn157247%_))
                     (let ((__tmp157762
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn157247%_))))
                       (declare (not safe))
                       (raise __tmp157762))
                     (let () (declare (not safe)) (raise _%exn157247%_)))))
              (__tmp157760 (lambda () (thread-join! _%thread157245%_))))
          (declare (not safe))
          (__with-catch __tmp157761 __tmp157760))))))
