(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1770513297)
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
       (let ((_%verbosity187687187689%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity187687187689%_
             (let* ((_%verbosity187691%_ _%verbosity187687187689%_)
                    (_%$e187693%_ (string->number _%verbosity187691%_)))
               (if _%$e187693%_ _%$e187693%_ _%verbosity187691%_))
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
        (letrec ((_%hash-e187684%_
                  (lambda (_%id187686%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id187686%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e187684%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#current-compile-local-env (make-parameter '()))
    (define gxc#symbol-table::t
      (let ((__tmp187748 (list)) (__tmp187747 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp187748
         '(gensyms bindings)
         __tmp187747
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args187680%_
        (apply make-instance gxc#symbol-table::t _%$args187680%_)))
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
      (lambda (_%self187667%_)
        (let ((_%self187670%_ _%self187667%_))
          (if (let ((__tmp187749
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self187670%_))))
                (declare (not safe))
                (##fx< '2 __tmp187749))
              (begin
                (let ((__tmp187750
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self187670%_
                   __tmp187750
                   '1
                   '#f
                   '#f))
                (let ((__tmp187751
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self187670%_
                   __tmp187751
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp187752
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self187670%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self187670%_
                       '2
                       __tmp187752))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message187536%_ _%stx187537%_ . _%details187538%_)
        (let ((_%ctx187543%_
               (let ((_%$e187540%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e187540%_ _%$e187540%_ '(compile)))))
          (apply gx#raise-syntax-error
                 _%ctx187543%_
                 _%message187536%_
                 _%stx187537%_
                 _%details187538%_))))
    (define gxc#verbose
      (lambda _%args187533%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp187753
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args187533%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp187753))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id187515%_)
        (let* ((_%str187517%_
                (if (symbol? _%id187515%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id187515%_))
                    _%id187515%_))
               (_%len187519%_ (string-length _%str187517%_))
               (_%res187521%_
                (let () (declare (not safe)) (##make-string _%len187519%_))))
          (let _%lp187524%_ ((_%i187526%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i187526%_ _%len187519%_))
                (let* ((_%char187528%_ (string-ref _%str187517%_ _%i187526%_))
                       (_%xchar187530%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char187528%_))
                            '#\_
                            _%char187528%_)))
                  (string-set! _%res187521%_ _%i187526%_ _%xchar187530%_)
                  (_%lp187524%_
                   (let () (declare (not safe)) (##fx+ _%i187526%_ '1))))
                _%res187521%_)))))
    (define gxc#map*
      (lambda (_%proc187457%_ _%maybe-improper-list187458%_)
        (let _%recur187460%_ ((_%rest187462%_ _%maybe-improper-list187458%_))
          (let* ((_%rest187463187474%_ _%rest187462%_)
                 (_%E187467187478%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest187463187474%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K187470187503%_
                   (lambda (_%rest187500%_ _%hd187501%_)
                     (cons (_%proc187457%_ _%hd187501%_)
                           (_%recur187460%_ _%rest187500%_))))
                  (_%K187469187494%_ (lambda () '()))
                  (_%K187468187484%_
                   (lambda (_%tail187482%_) (_%proc187457%_ _%tail187482%_))))
              (let ((_%try-match187465187497%_
                     (lambda ()
                       (if (null? _%rest187463187474%_)
                           (_%K187469187494%_)
                           (let ((_%tail187487%_ _%rest187463187474%_))
                             (declare (not safe))
                             (_%proc187457%_ _%tail187487%_))))))
                (if (pair? _%rest187463187474%_)
                    (let ((_%tl187472187508%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest187463187474%_)))
                          (_%hd187471187506%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest187463187474%_))))
                      (let ((_%hd187511%_ _%hd187471187506%_)
                            (_%rest187513%_ _%tl187472187508%_))
                        (_%K187470187503%_ _%rest187513%_ _%hd187511%_)))
                    (_%try-match187465187497%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym187452%_)
        (let ((_%$e187454%_ (not (gxc#gensym-reference? _%sym187452%_))))
          (if _%$e187454%_
              _%$e187454%_
              (memq _%sym187452%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym187448%_)
        (let ((_%str187450%_ (symbol->string _%sym187448%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str187450%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str187450%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id187419%_)
        (let ((_%$e187421%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id187419%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id187419%_))
                   '#f)))
          (if _%$e187421%_
              ((lambda (_%bind187424%_)
                 (let ((_%eid187426%_
                        (##structure-ref _%bind187424%_ '1 gx#binding::t '#f))
                       (_%ht187427%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid187426%_))
                       _%eid187426%_
                       (let ((_%$e187430%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht187427%_ _%eid187426%_))))
                         (if _%$e187430%_
                             _%$e187430%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind187424%_
                                    'gx#local-binding::t))
                                 (let ((_%gid187434%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid187426%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht187427%_
                                      _%eid187426%_
                                      _%gid187434%_))
                                   _%gid187434%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind187424%_
                                        'gx#module-binding::t))
                                     (let ((_%gid187443%_
                                            (let ((_%$e187437%_
                                                   (##structure-ref
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%bind187424%_
                                                       '7
                                                       '#f
                                                       '#f))
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e187437%_
                                                  ((lambda (_%ns187440%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns187440%_
                                                        '"#"
                                                        _%eid187426%_)))
                                                   _%$e187437%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid187426%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht187427%_
                                          _%eid187426%_
                                          _%gid187443%_))
                                       _%gid187443%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id187419%_
                                      _%eid187426%_
                                      _%bind187424%_))))))))
               _%$e187421%_)
              (if (let ((__tmp187754
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id187419%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp187754))
                  (let () (declare (not safe)) (gx#stx-e _%id187419%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id187419%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id187417%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id187417%_))
            (gxc#generate-runtime-binding-id _%id187417%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top187404%_)
        (if _%top187404%_
            (let ((_%ns187406%_
                   (##structure-ref
                    (let ((__tmp187755
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp187755))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi187407%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns187406%_
                  (if (fxpositive? _%phi187407%_)
                      (let ((__tmp187757 (number->string _%phi187407%_))
                            (__tmp187756
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns187406%_
                         '"["
                         __tmp187757
                         '"]#_"
                         __tmp187756
                         '"_"))
                      (let ((__tmp187758
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns187406%_ '"#_" __tmp187758 '"_")))
                  (if (fxpositive? _%phi187407%_)
                      (let ((__tmp187760 (number->string _%phi187407%_))
                            (__tmp187759
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp187760
                         '"]#_"
                         __tmp187759
                         '"_"))
                      (let ((__tmp187761
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp187761 '"_")))))
            (let ((__tmp187762 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp187762 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top187413%_ '#f))
          (gxc#generate-runtime-temporary__% _%top187413%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g187763_
        (let ((_g187764_ (let () (declare (not safe)) (##length _g187763_))))
          (cond ((let () (declare (not safe)) (##fx= _g187764_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g187763_))
                ((let () (declare (not safe)) (##fx= _g187764_ 1))
                 (apply gxc#generate-runtime-temporary__% _g187763_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g187763_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym187382%_ _%quote?187383%_)
        (let* ((_%ht187385%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e187387%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht187385%_ _%sym187382%_))))
          (if _%$e187387%_
              _%$e187387%_
              (let ((_%g187391%_
                     (if _%quote?187383%_
                         (let ((__tmp187765
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym187382%_
                            '"__"
                            __tmp187765))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym187382%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht187385%_ _%sym187382%_ _%g187391%_))
                _%g187391%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym187396%_)
        (let ((_%quote?187398%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym187396%_
           _%quote?187398%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g187766_
        (let ((_g187767_ (let () (declare (not safe)) (##length _g187766_))))
          (cond ((let () (declare (not safe)) (##fx= _g187767_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g187766_))
                ((let () (declare (not safe)) (##fx= _g187767_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g187766_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g187766_))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id187379%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id187379%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key187334%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key187334%_))
            _%key187334%_
            (if (uninterned-symbol? _%key187334%_)
                (gxc#generate-runtime-gensym-reference__0 _%key187334%_)
                (let* ((_%key187338187345%_ _%key187334%_)
                       (_%E187340187349%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key187338187345%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K187341187367%_
                        (lambda (_%mark187352%_ _%eid187353%_)
                          (let ((_%$e187355%_
                                 (##structure-ref
                                  _%mark187352%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e187355%_
                                ((lambda (_%ht187358%_)
                                   (let ((_%$e187360%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht187358%_
                                             _%eid187353%_))))
                                     (if _%$e187360%_
                                         ((lambda (_%id187363%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id187363%_))
                                                _%id187363%_
                                                (gxc#generate-runtime-gensym-reference__0
                                                 _%id187363%_)))
                                          _%$e187360%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid187353%_))))
                                 _%$e187355%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid187353%_))))))
                  (if (pair? _%key187338187345%_)
                      (let ((_%hd187342187370%_
                             (let ()
                               (declare (not safe))
                               (##car _%key187338187345%_)))
                            (_%tl187343187372%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key187338187345%_))))
                        (let* ((_%eid187375%_ _%hd187342187370%_)
                               (_%mark187377%_ _%tl187343187372%_))
                          (_%K187341187367%_ _%mark187377%_ _%eid187375%_)))
                      (_%E187340187349%_)))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1187327%_ _%id2187328%_)
        (letrec ((_%symbol-e187330%_
                  (lambda (_%id187332%_)
                    (if (symbol? _%id187332%_)
                        _%id187332%_
                        (gxc#generate-runtime-binding-id _%id187332%_)))))
          (eq? (_%symbol-e187330%_ _%id1187327%_)
               (_%symbol-e187330%_ _%id2187328%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx187325%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx187325%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx187325%_)
            (let () (declare (not safe)) (gx#stx-e _%stx187325%_)))))
    (define gxc#runtime-identifier-properties
      (lambda (_%id187247%_)
        (let* ((_%bind187249%_
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id187247%_)))
               (_%runtime-props187278%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%bind187249%_
                       'gx#runtime-binding::t))
                    (let* ((_%props187258%_
                            (let ((_%$e187252%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind187249%_
                                      '6
                                      '#f
                                      '#f))))
                              (if _%$e187252%_
                                  ((lambda (_%macro-id187255%_)
                                     (cons 'macro:
                                           (cons (gxc#generate-runtime-identifier
                                                  _%macro-id187255%_)
                                                 '())))
                                   _%$e187252%_)
                                  '())))
                           (_%props187274%_
                            (let ((_%$e187260%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind187249%_
                                      '5
                                      '#f
                                      '#f))))
                              (if _%$e187260%_
                                  ((lambda (_%type187263%_)
                                     (let ((_%$e187265%_
                                            (let ()
                                              (declare (not safe))
                                              (__method-ref
                                               _%type187263%_
                                               ':repr))))
                                       (if _%$e187265%_
                                           ((lambda (_%method187268%_)
                                              (let ((_%repr187270%_
                                                     (_%method187268%_
                                                      _%type187263%_)))
                                                (cons 'type:
                                                      (cons _%repr187270%_
                                                            _%props187258%_))))
                                            _%$e187265%_)
                                           (gxc#raise-compile-error
                                            '"unrepresentable type"
                                            _%id187247%_
                                            _%type187263%_))))
                                   _%$e187260%_)
                                  _%props187258%_))))
                      _%props187274%_)
                    '()))
               (_%$e187281%_
                (##structure-ref _%bind187249%_ '4 gx#binding::t '#f)))
          (if _%$e187281%_
              ((lambda (_%props187284%_)
                 (let ((__tmp187768
                        (lambda (_%prop187286%_ _%props187287%_)
                          (let* ((_%prop187288187295%_ _%prop187286%_)
                                 (_%E187290187298%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (error '"No clause matching"
                                             _%prop187288187295%_
                                             '([key . value])))
                                    '#!void))
                                 (_%K187291187312%_
                                  (lambda (_%value187301%_ _%key187302%_)
                                    (let ((_%$e187304%_
                                           (let ()
                                             (declare (not safe))
                                             (__method-ref
                                              _%value187301%_
                                              ':repr))))
                                      (if _%$e187304%_
                                          ((lambda (_%method187307%_)
                                             (let ((_%repr187309%_
                                                    (_%method187307%_
                                                     _%value187301%_)))
                                               (cons _%key187302%_
                                                     (cons _%repr187309%_
                                                           _%props187287%_))))
                                           _%$e187304%_)
                                          (cons _%key187302%_
                                                (cons (cons 'quote
                                                            (cons _%value187301%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%props187287%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (pair? _%prop187288187295%_)
                                (let ((_%hd187292187315%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%prop187288187295%_)))
                                      (_%tl187293187317%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%prop187288187295%_))))
                                  (let* ((_%key187320%_ _%hd187292187315%_)
                                         (_%value187322%_ _%tl187293187317%_))
                                    (_%K187291187312%_
                                     _%value187322%_
                                     _%key187320%_)))
                                (_%E187290187298%_))))))
                   (declare (not safe))
                   (foldl__0
                    __tmp187768
                    _%runtime-props187278%_
                    _%props187284%_)))
               _%$e187281%_)
              _%runtime-props187278%_))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk187232%_ _%name187233%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job187235%_
               (gxc#make-compile-job _%thunk187232%_ _%name187233%_)))
          (set! gxc#__compile-jobs (cons _%job187235%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk187240%_)
        (let ((_%name187242%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk187240%_ _%name187242%_))))
    (define gxc#add-compile-job!
      (lambda _g187769_
        (let ((_g187770_ (let () (declare (not safe)) (##length _g187769_))))
          (cond ((let () (declare (not safe)) (##fx= _g187770_ 1))
                 (apply gxc#add-compile-job!__0 _g187769_))
                ((let () (declare (not safe)) (##fx= _g187770_ 2))
                 (apply gxc#add-compile-job!__% _g187769_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g187769_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result187229%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result187229%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop187223%_ ()
          (let ((_%pending187226%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending187226%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending187226%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending187226%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk187212%_ _%name187213%_)
        (make-thread
         (lambda ()
           (let _%loop187216%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp187771
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name187213%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp187771))
                   (let ((__tmp187773 (lambda () (_%thunk187212%_)))
                         (__tmp187772
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp187773 __tmp187772)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop187216%_)))))
         _%name187213%_)))
    (define gxc#join!
      (lambda (_%thread187207%_)
        (let ((__tmp187775
               (lambda (_%exn187209%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn187209%_))
                     (let ((__tmp187776
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn187209%_))))
                       (declare (not safe))
                       (raise __tmp187776))
                     (let () (declare (not safe)) (raise _%exn187209%_)))))
              (__tmp187774 (lambda () (thread-join! _%thread187207%_))))
          (declare (not safe))
          (__with-catch __tmp187775 __tmp187774))))))
