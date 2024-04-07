(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1712533290)
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
       (let ((_%verbosity130540130542%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity130540130542%_
             (let* ((_%verbosity130545%_ _%verbosity130540130542%_)
                    (_%$e130547%_ (string->number _%verbosity130545%_)))
               (if _%$e130547%_ _%$e130547%_ _%verbosity130545%_))
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
      (let ((__tmp130602 (list)) (__tmp130601 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp130602
         '(gensyms bindings)
         __tmp130601
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args130538%_
        (apply make-instance gxc#symbol-table::t _%$args130538%_)))
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
      (lambda (_%self130525%_)
        (let ((_%self130528%_ _%self130525%_))
          (if (let ((__tmp130603
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self130528%_))))
                (declare (not safe))
                (##fx< '2 __tmp130603))
              (begin
                (let ((__tmp130604
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self130528%_
                   __tmp130604
                   '1
                   '#f
                   '#f))
                (let ((__tmp130605
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self130528%_
                   __tmp130605
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp130606
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self130528%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self130528%_
                       '2
                       __tmp130606))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message130394%_ _%stx130395%_ . _%details130396%_)
        (let ((_%ctx130401%_
               (let ((_%$e130398%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e130398%_ _%$e130398%_ 'compile))))
          (apply gx#raise-syntax-error
                 _%ctx130401%_
                 _%message130394%_
                 _%stx130395%_
                 _%details130396%_))))
    (define gxc#verbose
      (lambda _%args130391%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp130607 (lambda () (apply displayln _%args130391%_))))
              (declare (not safe))
              (__with-lock gxc#+verbose-mutex+ __tmp130607))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id130373%_)
        (let* ((_%str130375%_
                (if (let () (declare (not safe)) (symbol? _%id130373%_))
                    (symbol->string _%id130373%_)
                    _%id130373%_))
               (_%len130377%_ (string-length _%str130375%_))
               (_%res130379%_
                (let () (declare (not safe)) (##make-string _%len130377%_))))
          (let _%lp130382%_ ((_%i130384%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i130384%_ _%len130377%_))
                (let* ((_%char130386%_ (string-ref _%str130375%_ _%i130384%_))
                       (_%xchar130388%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char130386%_))
                            '#\_
                            _%char130386%_)))
                  (string-set! _%res130379%_ _%i130384%_ _%xchar130388%_)
                  (let ((__tmp130608
                         (let () (declare (not safe)) (##fx+ _%i130384%_ '1))))
                    (declare (not safe))
                    (_%lp130382%_ __tmp130608)))
                _%res130379%_)))))
    (define gxc#map*
      (lambda (_%proc130315%_ _%maybe-improper-list130316%_)
        (let _%recur130318%_ ((_%rest130320%_ _%maybe-improper-list130316%_))
          (let* ((_%rest130321130332%_ _%rest130320%_)
                 (_%E130325130336%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest130321130332%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K130328130361%_
                   (lambda (_%rest130358%_ _%hd130359%_)
                     (cons (_%proc130315%_ _%hd130359%_)
                           (let ()
                             (declare (not safe))
                             (_%recur130318%_ _%rest130358%_)))))
                  (_%K130327130352%_ (lambda () '()))
                  (_%K130326130342%_
                   (lambda (_%tail130340%_) (_%proc130315%_ _%tail130340%_))))
              (let ((_%try-match130323130355%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest130321130332%_))
                           (let () (declare (not safe)) (_%K130327130352%_))
                           (let ((_%tail130345%_ _%rest130321130332%_))
                             (declare (not safe))
                             (_%proc130315%_ _%tail130345%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest130321130332%_))
                    (let ((_%tl130330130366%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest130321130332%_)))
                          (_%hd130329130364%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest130321130332%_))))
                      (let ((_%hd130369%_ _%hd130329130364%_)
                            (_%rest130371%_ _%tl130330130366%_))
                        (let ()
                          (declare (not safe))
                          (_%K130328130361%_ _%rest130371%_ _%hd130369%_))))
                    (let ()
                      (declare (not safe))
                      (_%try-match130323130355%_)))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym130310%_)
        (let ((_%$e130312%_
               (let ((__tmp130609
                      (let ()
                        (declare (not safe))
                        (gxc#gensym-reference? _%sym130310%_))))
                 (declare (not safe))
                 (not __tmp130609))))
          (if _%$e130312%_
              _%$e130312%_
              (memq _%sym130310%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym130306%_)
        (let ((_%str130308%_ (symbol->string _%sym130306%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str130308%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str130308%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id130277%_)
        (let ((_%$e130279%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id130277%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id130277%_))
                   '#f)))
          (if _%$e130279%_
              ((lambda (_%bind130282%_)
                 (let ((_%eid130284%_
                        (##structure-ref _%bind130282%_ '1 gx#binding::t '#f))
                       (_%ht130285%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid130284%_))
                       (let () _%eid130284%_)
                       (let ((_%$e130288%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht130285%_ _%eid130284%_))))
                         (if _%$e130288%_
                             _%$e130288%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind130282%_
                                    'gx#local-binding::t))
                                 (let ((_%gid130292%_
                                        (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-gensym-reference__0
                                           _%eid130284%_))))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht130285%_
                                      _%eid130284%_
                                      _%gid130292%_))
                                   _%gid130292%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind130282%_
                                        'gx#module-binding::t))
                                     (let ((_%gid130301%_
                                            (let ((_%$e130295%_
                                                   (##structure-ref
                                                    (##structure-ref
                                                     _%bind130282%_
                                                     '4
                                                     gx#module-binding::t
                                                     '#f)
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e130295%_
                                                  ((lambda (_%ns130298%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns130298%_
                                                        '"#"
                                                        _%eid130284%_)))
                                                   _%$e130295%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-gensym-reference__0
                                                     _%eid130284%_))))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht130285%_
                                          _%eid130284%_
                                          _%gid130301%_))
                                       _%gid130301%_)
                                     (let ()
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Cannot compile reference to uninterned binding"
                                        _%id130277%_
                                        _%eid130284%_
                                        _%bind130282%_)))))))))
               _%$e130279%_)
              (if (let ((__tmp130610
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id130277%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp130610))
                  (let () (declare (not safe)) (gx#stx-e _%id130277%_))
                  (let ()
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Cannot compile reference to uninterned identifier"
                     _%id130277%_)))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id130275%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id130275%_))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _%id130275%_))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-temporary__0)))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top130262%_)
        (if _%top130262%_
            (let ((_%ns130264%_
                   (##structure-ref
                    (let ((__tmp130611
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp130611))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi130265%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns130264%_
                  (if (fxpositive? _%phi130265%_)
                      (let ((__tmp130613 (number->string _%phi130265%_))
                            (__tmp130612
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns130264%_
                         '"["
                         __tmp130613
                         '"]#_"
                         __tmp130612
                         '"_"))
                      (let ((__tmp130614
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns130264%_ '"#_" __tmp130614 '"_")))
                  (if (fxpositive? _%phi130265%_)
                      (let ((__tmp130616 (number->string _%phi130265%_))
                            (__tmp130615
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp130616
                         '"]#_"
                         __tmp130615
                         '"_"))
                      (let ((__tmp130617
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp130617 '"_")))))
            (let ((__tmp130618 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp130618 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top130271%_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-temporary__% _%top130271%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g130620_
        (let ((_g130619_ (let () (declare (not safe)) (##length _g130620_))))
          (cond ((let () (declare (not safe)) (##fx= _g130619_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-temporary__0)))
                        _g130620_))
                ((let () (declare (not safe)) (##fx= _g130619_ 1))
                 (apply (lambda (_%top130273%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-temporary__% _%top130273%_)))
                        _g130620_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g130620_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym130240%_ _%quote?130241%_)
        (let* ((_%ht130243%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e130245%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht130243%_ _%sym130240%_))))
          (if _%$e130245%_
              _%$e130245%_
              (let ((_%g130249%_
                     (if _%quote?130241%_
                         (let ((__tmp130621
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym130240%_
                            '"__"
                            __tmp130621))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym130240%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht130243%_ _%sym130240%_ _%g130249%_))
                _%g130249%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym130254%_)
        (let ((_%quote?130256%_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-gensym-reference__%
           _%sym130254%_
           _%quote?130256%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g130623_
        (let ((_g130622_ (let () (declare (not safe)) (##length _g130623_))))
          (cond ((let () (declare (not safe)) (##fx= _g130622_ 1))
                 (apply (lambda (_%sym130254%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-gensym-reference__0
                             _%sym130254%_)))
                        _g130623_))
                ((let () (declare (not safe)) (##fx= _g130622_ 2))
                 (apply (lambda (_%sym130258%_ _%quote?130259%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-gensym-reference__%
                             _%sym130258%_
                             _%quote?130259%_)))
                        _g130623_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g130623_))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1130232%_ _%id2130233%_)
        (letrec ((_%symbol-e130235%_
                  (lambda (_%id130237%_)
                    (if (let () (declare (not safe)) (symbol? _%id130237%_))
                        _%id130237%_
                        (let ()
                          (declare (not safe))
                          (gxc#generate-runtime-binding-id _%id130237%_))))))
          (eq? (let () (declare (not safe)) (_%symbol-e130235%_ _%id1130232%_))
               (let ()
                 (declare (not safe))
                 (_%symbol-e130235%_ _%id2130233%_))))))
    (define gxc#identifier-symbol
      (lambda (_%stx130230%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx130230%_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _%stx130230%_))
            (let () (declare (not safe)) (gx#stx-e _%stx130230%_)))))))
