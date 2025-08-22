(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1755903077)
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
       (let ((_%verbosity138514138516%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity138514138516%_
             (let* ((_%verbosity138519%_ _%verbosity138514138516%_)
                    (_%$e138521%_ (string->number _%verbosity138519%_)))
               (if _%$e138521%_ _%$e138521%_ _%verbosity138519%_))
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
      (let ((__tmp138576 (list)) (__tmp138575 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp138576
         '(gensyms bindings)
         __tmp138575
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args138512%_
        (apply make-instance gxc#symbol-table::t _%$args138512%_)))
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
      (lambda (_%self138034138497%_)
        (let* ((_%self138500%_ _%self138034138497%_)
               (_%self138502%_ _%self138500%_))
          (if (let ((__tmp138577
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self138502%_))))
                (declare (not safe))
                (##fx< '2 __tmp138577))
              (begin
                (let ((__tmp138578
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self138502%_
                   __tmp138578
                   '1
                   '#f
                   '#f))
                (let ((__tmp138579
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self138502%_
                   __tmp138579
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp138580
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self138502%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self138502%_
                       '2
                       __tmp138580))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message138366%_ _%stx138367%_ . _%details138368%_)
        (let ((_%ctx138373%_
               (let ((_%$e138370%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e138370%_ _%$e138370%_ 'compile))))
          (apply gx#raise-syntax-error
                 _%ctx138373%_
                 _%message138366%_
                 _%stx138367%_
                 _%details138368%_))))
    (define gxc#verbose
      (lambda _%args138363%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp138581
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args138363%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp138581))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id138345%_)
        (let* ((_%str138347%_
                (if (symbol? _%id138345%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id138345%_))
                    _%id138345%_))
               (_%len138349%_ (string-length _%str138347%_))
               (_%res138351%_
                (let () (declare (not safe)) (##make-string _%len138349%_))))
          (let _%lp138354%_ ((_%i138356%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i138356%_ _%len138349%_))
                (let* ((_%char138358%_ (string-ref _%str138347%_ _%i138356%_))
                       (_%xchar138360%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char138358%_))
                            '#\_
                            _%char138358%_)))
                  (string-set! _%res138351%_ _%i138356%_ _%xchar138360%_)
                  (_%lp138354%_
                   (let () (declare (not safe)) (##fx+ _%i138356%_ '1))))
                _%res138351%_)))))
    (define gxc#map*
      (lambda (_%proc138287%_ _%maybe-improper-list138288%_)
        (let _%recur138290%_ ((_%rest138292%_ _%maybe-improper-list138288%_))
          (let* ((_%rest138293138304%_ _%rest138292%_)
                 (_%E138297138308%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest138293138304%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K138300138333%_
                   (lambda (_%rest138330%_ _%hd138331%_)
                     (cons (_%proc138287%_ _%hd138331%_)
                           (_%recur138290%_ _%rest138330%_))))
                  (_%K138299138324%_ (lambda () '()))
                  (_%K138298138314%_
                   (lambda (_%tail138312%_) (_%proc138287%_ _%tail138312%_))))
              (let ((_%try-match138295138327%_
                     (lambda ()
                       (if (null? _%rest138293138304%_)
                           (_%K138299138324%_)
                           (let ((_%tail138317%_ _%rest138293138304%_))
                             (declare (not safe))
                             (_%proc138287%_ _%tail138317%_))))))
                (if (pair? _%rest138293138304%_)
                    (let ((_%tl138302138338%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest138293138304%_)))
                          (_%hd138301138336%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest138293138304%_))))
                      (let ((_%hd138341%_ _%hd138301138336%_)
                            (_%rest138343%_ _%tl138302138338%_))
                        (_%K138300138333%_ _%rest138343%_ _%hd138341%_)))
                    (_%try-match138295138327%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym138282%_)
        (let ((_%$e138284%_ (not (gxc#gensym-reference? _%sym138282%_))))
          (if _%$e138284%_
              _%$e138284%_
              (memq _%sym138282%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym138278%_)
        (let ((_%str138280%_ (symbol->string _%sym138278%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str138280%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str138280%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id138249%_)
        (let ((_%$e138251%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id138249%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id138249%_))
                   '#f)))
          (if _%$e138251%_
              ((lambda (_%bind138254%_)
                 (let ((_%eid138256%_
                        (##structure-ref _%bind138254%_ '1 gx#binding::t '#f))
                       (_%ht138257%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid138256%_))
                       _%eid138256%_
                       (let ((_%$e138260%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht138257%_ _%eid138256%_))))
                         (if _%$e138260%_
                             _%$e138260%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind138254%_
                                    'gx#local-binding::t))
                                 (let ((_%gid138264%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid138256%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht138257%_
                                      _%eid138256%_
                                      _%gid138264%_))
                                   _%gid138264%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind138254%_
                                        'gx#module-binding::t))
                                     (let ((_%gid138273%_
                                            (let ((_%$e138267%_
                                                   (##structure-ref
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%bind138254%_
                                                       '4
                                                       '#f
                                                       '#f))
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e138267%_
                                                  ((lambda (_%ns138270%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns138270%_
                                                        '"#"
                                                        _%eid138256%_)))
                                                   _%$e138267%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid138256%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht138257%_
                                          _%eid138256%_
                                          _%gid138273%_))
                                       _%gid138273%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id138249%_
                                      _%eid138256%_
                                      _%bind138254%_))))))))
               _%$e138251%_)
              (if (let ((__tmp138582
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id138249%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp138582))
                  (let () (declare (not safe)) (gx#stx-e _%id138249%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id138249%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id138247%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id138247%_))
            (gxc#generate-runtime-binding-id _%id138247%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top138234%_)
        (if _%top138234%_
            (let ((_%ns138236%_
                   (##structure-ref
                    (let ((__tmp138583
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp138583))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi138237%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns138236%_
                  (if (fxpositive? _%phi138237%_)
                      (let ((__tmp138585 (number->string _%phi138237%_))
                            (__tmp138584
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns138236%_
                         '"["
                         __tmp138585
                         '"]#_"
                         __tmp138584
                         '"_"))
                      (let ((__tmp138586
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns138236%_ '"#_" __tmp138586 '"_")))
                  (if (fxpositive? _%phi138237%_)
                      (let ((__tmp138588 (number->string _%phi138237%_))
                            (__tmp138587
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp138588
                         '"]#_"
                         __tmp138587
                         '"_"))
                      (let ((__tmp138589
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp138589 '"_")))))
            (let ((__tmp138590 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp138590 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top138243%_ '#f))
          (gxc#generate-runtime-temporary__% _%top138243%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g138591_
        (let ((_g138592_ (let () (declare (not safe)) (##length _g138591_))))
          (cond ((let () (declare (not safe)) (##fx= _g138592_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g138591_))
                ((let () (declare (not safe)) (##fx= _g138592_ 1))
                 (apply gxc#generate-runtime-temporary__% _g138591_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g138591_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym138212%_ _%quote?138213%_)
        (let* ((_%ht138215%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e138217%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht138215%_ _%sym138212%_))))
          (if _%$e138217%_
              _%$e138217%_
              (let ((_%g138221%_
                     (if _%quote?138213%_
                         (let ((__tmp138593
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym138212%_
                            '"__"
                            __tmp138593))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym138212%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht138215%_ _%sym138212%_ _%g138221%_))
                _%g138221%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym138226%_)
        (let ((_%quote?138228%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym138226%_
           _%quote?138228%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g138594_
        (let ((_g138595_ (let () (declare (not safe)) (##length _g138594_))))
          (cond ((let () (declare (not safe)) (##fx= _g138595_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g138594_))
                ((let () (declare (not safe)) (##fx= _g138595_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g138594_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g138594_))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1138204%_ _%id2138205%_)
        (letrec ((_%symbol-e138207%_
                  (lambda (_%id138209%_)
                    (if (symbol? _%id138209%_)
                        _%id138209%_
                        (gxc#generate-runtime-binding-id _%id138209%_)))))
          (eq? (_%symbol-e138207%_ _%id1138204%_)
               (_%symbol-e138207%_ _%id2138205%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx138202%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx138202%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx138202%_)
            (let () (declare (not safe)) (gx#stx-e _%stx138202%_)))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk138187%_ _%name138188%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job138190%_
               (gxc#make-compile-job _%thunk138187%_ _%name138188%_)))
          (set! gxc#__compile-jobs (cons _%job138190%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk138195%_)
        (let ((_%name138197%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk138195%_ _%name138197%_))))
    (define gxc#add-compile-job!
      (lambda _g138596_
        (let ((_g138597_ (let () (declare (not safe)) (##length _g138596_))))
          (cond ((let () (declare (not safe)) (##fx= _g138597_ 1))
                 (apply gxc#add-compile-job!__0 _g138596_))
                ((let () (declare (not safe)) (##fx= _g138597_ 2))
                 (apply gxc#add-compile-job!__% _g138596_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g138596_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result138184%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result138184%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop138178%_ ()
          (let ((_%pending138181%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending138181%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending138181%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending138181%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk138167%_ _%name138168%_)
        (make-thread
         (lambda ()
           (let _%loop138171%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp138598
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name138168%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp138598))
                   (let ((__tmp138600 (lambda () (_%thunk138167%_)))
                         (__tmp138599
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp138600 __tmp138599)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop138171%_)))))
         _%name138168%_)))
    (define gxc#join!
      (lambda (_%thread138162%_)
        (let ((__tmp138602
               (lambda (_%exn138164%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn138164%_))
                     (let ((__tmp138603
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn138164%_))))
                       (declare (not safe))
                       (raise __tmp138603))
                     (let () (declare (not safe)) (raise _%exn138164%_)))))
              (__tmp138601 (lambda () (thread-join! _%thread138162%_))))
          (declare (not safe))
          (__with-catch __tmp138602 __tmp138601))))))
