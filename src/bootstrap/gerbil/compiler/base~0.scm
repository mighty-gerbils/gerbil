(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1712269046)
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
       (let ((_%verbosity130539130541%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity130539130541%_
             (let* ((_%verbosity130544%_ _%verbosity130539130541%_)
                    (_%$e130546%_ (string->number _%verbosity130544%_)))
               (if _%$e130546%_ _%$e130546%_ _%verbosity130544%_))
             '#f))))
    (define gxc#current-compile-optimize (make-parameter '#f))
    (define gxc#current-compile-debug (make-parameter '#f))
    (define gxc#current-compile-generate-ssxi (make-parameter '#f))
    (define gxc#current-compile-static (make-parameter '#f))
    (define gxc#current-compile-timestamp (make-parameter '#f))
    (define gxc#current-compile-decls (make-parameter '#f))
    (define gxc#current-compile-context (make-parameter '#f))
    (define gxc#current-compile-local-env (make-parameter '()))
    (define gxc#symbol-table::t
      (let ((__tmp130601 (list)) (__tmp130600 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp130601
         '(gensyms bindings)
         __tmp130600
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args130537%_
        (apply make-instance gxc#symbol-table::t _%$args130537%_)))
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
      (lambda (_%self130524%_)
        (let ((_%self130527%_ _%self130524%_))
          (if (let ((__tmp130602
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self130527%_))))
                (declare (not safe))
                (##fx< '2 __tmp130602))
              (begin
                (let ((__tmp130603
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self130527%_
                   __tmp130603
                   '1
                   '#f
                   '#f))
                (let ((__tmp130604
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self130527%_
                   __tmp130604
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp130605
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self130527%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self130527%_
                       '2
                       __tmp130605))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message130393%_ _%stx130394%_ . _%details130395%_)
        (let ((_%ctx130400%_
               (let ((_%$e130397%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e130397%_ _%$e130397%_ 'compile))))
          (apply gx#raise-syntax-error
                 _%ctx130400%_
                 _%message130393%_
                 _%stx130394%_
                 _%details130395%_))))
    (define gxc#verbose
      (lambda _%args130390%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp130606 (lambda () (apply displayln _%args130390%_))))
              (declare (not safe))
              (__with-lock gxc#+verbose-mutex+ __tmp130606))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id130372%_)
        (let* ((_%str130374%_
                (if (let () (declare (not safe)) (symbol? _%id130372%_))
                    (symbol->string _%id130372%_)
                    _%id130372%_))
               (_%len130376%_ (string-length _%str130374%_))
               (_%res130378%_
                (let () (declare (not safe)) (##make-string _%len130376%_))))
          (let _%lp130381%_ ((_%i130383%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i130383%_ _%len130376%_))
                (let* ((_%char130385%_ (string-ref _%str130374%_ _%i130383%_))
                       (_%xchar130387%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char130385%_))
                            '#\_
                            _%char130385%_)))
                  (string-set! _%res130378%_ _%i130383%_ _%xchar130387%_)
                  (let ((__tmp130607
                         (let () (declare (not safe)) (##fx+ _%i130383%_ '1))))
                    (declare (not safe))
                    (_%lp130381%_ __tmp130607)))
                _%res130378%_)))))
    (define gxc#map*
      (lambda (_%proc130314%_ _%maybe-improper-list130315%_)
        (let _%recur130317%_ ((_%rest130319%_ _%maybe-improper-list130315%_))
          (let* ((_%rest130320130331%_ _%rest130319%_)
                 (_%E130324130335%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest130320130331%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K130327130360%_
                   (lambda (_%rest130357%_ _%hd130358%_)
                     (cons (_%proc130314%_ _%hd130358%_)
                           (let ()
                             (declare (not safe))
                             (_%recur130317%_ _%rest130357%_)))))
                  (_%K130326130351%_ (lambda () '()))
                  (_%K130325130341%_
                   (lambda (_%tail130339%_) (_%proc130314%_ _%tail130339%_))))
              (let ((_%try-match130322130354%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest130320130331%_))
                           (let () (declare (not safe)) (_%K130326130351%_))
                           (let ((_%tail130344%_ _%rest130320130331%_))
                             (declare (not safe))
                             (_%proc130314%_ _%tail130344%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest130320130331%_))
                    (let ((_%tl130329130365%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest130320130331%_)))
                          (_%hd130328130363%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest130320130331%_))))
                      (let ((_%hd130368%_ _%hd130328130363%_)
                            (_%rest130370%_ _%tl130329130365%_))
                        (let ()
                          (declare (not safe))
                          (_%K130327130360%_ _%rest130370%_ _%hd130368%_))))
                    (let ()
                      (declare (not safe))
                      (_%try-match130322130354%_)))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym130309%_)
        (let ((_%$e130311%_
               (let ((__tmp130608
                      (let ()
                        (declare (not safe))
                        (gxc#gensym-reference? _%sym130309%_))))
                 (declare (not safe))
                 (not __tmp130608))))
          (if _%$e130311%_
              _%$e130311%_
              (memq _%sym130309%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym130305%_)
        (let ((_%str130307%_ (symbol->string _%sym130305%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str130307%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str130307%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id130276%_)
        (let ((_%$e130278%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id130276%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id130276%_))
                   '#f)))
          (if _%$e130278%_
              ((lambda (_%bind130281%_)
                 (let ((_%eid130283%_
                        (##structure-ref _%bind130281%_ '1 gx#binding::t '#f))
                       (_%ht130284%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid130283%_))
                       (let () _%eid130283%_)
                       (let ((_%$e130287%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht130284%_ _%eid130283%_))))
                         (if _%$e130287%_
                             _%$e130287%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind130281%_
                                    'gx#local-binding::t))
                                 (let ((_%gid130291%_
                                        (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-gensym-reference__0
                                           _%eid130283%_))))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht130284%_
                                      _%eid130283%_
                                      _%gid130291%_))
                                   _%gid130291%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind130281%_
                                        'gx#module-binding::t))
                                     (let ((_%gid130300%_
                                            (let ((_%$e130294%_
                                                   (##structure-ref
                                                    (##structure-ref
                                                     _%bind130281%_
                                                     '4
                                                     gx#module-binding::t
                                                     '#f)
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e130294%_
                                                  ((lambda (_%ns130297%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns130297%_
                                                        '"#"
                                                        _%eid130283%_)))
                                                   _%$e130294%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-gensym-reference__0
                                                     _%eid130283%_))))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht130284%_
                                          _%eid130283%_
                                          _%gid130300%_))
                                       _%gid130300%_)
                                     (let ()
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Cannot compile reference to uninterned binding"
                                        _%id130276%_
                                        _%eid130283%_
                                        _%bind130281%_)))))))))
               _%$e130278%_)
              (if (let ((__tmp130609
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id130276%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp130609))
                  (let () (declare (not safe)) (gx#stx-e _%id130276%_))
                  (let ()
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Cannot compile reference to uninterned identifier"
                     _%id130276%_)))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id130274%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id130274%_))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _%id130274%_))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-temporary__0)))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top130261%_)
        (if _%top130261%_
            (let ((_%ns130263%_
                   (##structure-ref
                    (let ((__tmp130610
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp130610))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi130264%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns130263%_
                  (if (fxpositive? _%phi130264%_)
                      (let ((__tmp130612 (number->string _%phi130264%_))
                            (__tmp130611
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns130263%_
                         '"["
                         __tmp130612
                         '"]#_"
                         __tmp130611
                         '"_"))
                      (let ((__tmp130613
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns130263%_ '"#_" __tmp130613 '"_")))
                  (if (fxpositive? _%phi130264%_)
                      (let ((__tmp130615 (number->string _%phi130264%_))
                            (__tmp130614
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp130615
                         '"]#_"
                         __tmp130614
                         '"_"))
                      (let ((__tmp130616
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp130616 '"_")))))
            (let ((__tmp130617 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp130617 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top130270%_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-temporary__% _%top130270%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g130619_
        (let ((_g130618_ (let () (declare (not safe)) (##length _g130619_))))
          (cond ((let () (declare (not safe)) (##fx= _g130618_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-temporary__0)))
                        _g130619_))
                ((let () (declare (not safe)) (##fx= _g130618_ 1))
                 (apply (lambda (_%top130272%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-temporary__% _%top130272%_)))
                        _g130619_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g130619_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym130239%_ _%quote?130240%_)
        (let* ((_%ht130242%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e130244%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht130242%_ _%sym130239%_))))
          (if _%$e130244%_
              _%$e130244%_
              (let ((_%g130248%_
                     (if _%quote?130240%_
                         (let ((__tmp130620
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym130239%_
                            '"__"
                            __tmp130620))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym130239%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht130242%_ _%sym130239%_ _%g130248%_))
                _%g130248%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym130253%_)
        (let ((_%quote?130255%_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-gensym-reference__%
           _%sym130253%_
           _%quote?130255%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g130622_
        (let ((_g130621_ (let () (declare (not safe)) (##length _g130622_))))
          (cond ((let () (declare (not safe)) (##fx= _g130621_ 1))
                 (apply (lambda (_%sym130253%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-gensym-reference__0
                             _%sym130253%_)))
                        _g130622_))
                ((let () (declare (not safe)) (##fx= _g130621_ 2))
                 (apply (lambda (_%sym130257%_ _%quote?130258%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-gensym-reference__%
                             _%sym130257%_
                             _%quote?130258%_)))
                        _g130622_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g130622_))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1130231%_ _%id2130232%_)
        (letrec ((_%symbol-e130234%_
                  (lambda (_%id130236%_)
                    (if (let () (declare (not safe)) (symbol? _%id130236%_))
                        _%id130236%_
                        (let ()
                          (declare (not safe))
                          (gxc#generate-runtime-binding-id _%id130236%_))))))
          (eq? (let () (declare (not safe)) (_%symbol-e130234%_ _%id1130231%_))
               (let ()
                 (declare (not safe))
                 (_%symbol-e130234%_ _%id2130232%_))))))
    (define gxc#identifier-symbol
      (lambda (_%stx130229%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx130229%_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _%stx130229%_))
            (let () (declare (not safe)) (gx#stx-e _%stx130229%_)))))))
