(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1712246556)
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
       (let ((_%verbosity130630130632%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity130630130632%_
             (let* ((_%verbosity130635%_ _%verbosity130630130632%_)
                    (_%$e130637%_ (string->number _%verbosity130635%_)))
               (if _%$e130637%_ _%$e130637%_ _%verbosity130635%_))
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
      (let ((__tmp130692 (list)) (__tmp130691 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp130692
         '(gensyms bindings)
         __tmp130691
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args130628%_
        (apply make-instance gxc#symbol-table::t _%$args130628%_)))
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
      (lambda (_%self130615%_)
        (let ((_%self130618%_ _%self130615%_))
          (if (let ((__tmp130693
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self130618%_))))
                (declare (not safe))
                (##fx< '2 __tmp130693))
              (begin
                (let ((__tmp130694
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self130618%_
                   __tmp130694
                   '1
                   '#f
                   '#f))
                (let ((__tmp130695
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self130618%_
                   __tmp130695
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp130696
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self130618%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self130618%_
                       '2
                       __tmp130696))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message130484%_ _%stx130485%_ . _%details130486%_)
        (let ((_%ctx130491%_
               (let ((_%$e130488%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e130488%_ _%$e130488%_ 'compile))))
          (apply gx#raise-syntax-error
                 _%ctx130491%_
                 _%message130484%_
                 _%stx130485%_
                 _%details130486%_))))
    (define gxc#verbose
      (lambda _%args130481%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp130697 (lambda () (apply displayln _%args130481%_))))
              (declare (not safe))
              (__with-lock gxc#+verbose-mutex+ __tmp130697))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id130463%_)
        (let* ((_%str130465%_
                (if (let () (declare (not safe)) (symbol? _%id130463%_))
                    (symbol->string _%id130463%_)
                    _%id130463%_))
               (_%len130467%_ (string-length _%str130465%_))
               (_%res130469%_
                (let () (declare (not safe)) (##make-string _%len130467%_))))
          (let _%lp130472%_ ((_%i130474%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i130474%_ _%len130467%_))
                (let* ((_%char130476%_ (string-ref _%str130465%_ _%i130474%_))
                       (_%xchar130478%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char130476%_))
                            '#\_
                            _%char130476%_)))
                  (string-set! _%res130469%_ _%i130474%_ _%xchar130478%_)
                  (let ((__tmp130698
                         (let () (declare (not safe)) (##fx+ _%i130474%_ '1))))
                    (declare (not safe))
                    (_%lp130472%_ __tmp130698)))
                _%res130469%_)))))
    (define gxc#map*
      (lambda (_%proc130405%_ _%maybe-improper-list130406%_)
        (let _%recur130408%_ ((_%rest130410%_ _%maybe-improper-list130406%_))
          (let* ((_%rest130411130422%_ _%rest130410%_)
                 (_%E130415130426%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest130411130422%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K130418130451%_
                   (lambda (_%rest130448%_ _%hd130449%_)
                     (cons (_%proc130405%_ _%hd130449%_)
                           (let ()
                             (declare (not safe))
                             (_%recur130408%_ _%rest130448%_)))))
                  (_%K130417130442%_ (lambda () '()))
                  (_%K130416130432%_
                   (lambda (_%tail130430%_) (_%proc130405%_ _%tail130430%_))))
              (let ((_%try-match130413130445%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest130411130422%_))
                           (let () (declare (not safe)) (_%K130417130442%_))
                           (let ((_%tail130435%_ _%rest130411130422%_))
                             (declare (not safe))
                             (_%proc130405%_ _%tail130435%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest130411130422%_))
                    (let ((_%tl130420130456%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest130411130422%_)))
                          (_%hd130419130454%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest130411130422%_))))
                      (let ((_%hd130459%_ _%hd130419130454%_)
                            (_%rest130461%_ _%tl130420130456%_))
                        (let ()
                          (declare (not safe))
                          (_%K130418130451%_ _%rest130461%_ _%hd130459%_))))
                    (let ()
                      (declare (not safe))
                      (_%try-match130413130445%_)))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym130400%_)
        (let ((_%$e130402%_
               (let ((__tmp130699
                      (let ()
                        (declare (not safe))
                        (gxc#gensym-reference? _%sym130400%_))))
                 (declare (not safe))
                 (not __tmp130699))))
          (if _%$e130402%_
              _%$e130402%_
              (memq _%sym130400%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym130396%_)
        (let ((_%str130398%_ (symbol->string _%sym130396%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str130398%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str130398%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id130367%_)
        (let ((_%$e130369%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id130367%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id130367%_))
                   '#f)))
          (if _%$e130369%_
              ((lambda (_%bind130372%_)
                 (let ((_%eid130374%_
                        (##structure-ref _%bind130372%_ '1 gx#binding::t '#f))
                       (_%ht130375%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid130374%_))
                       (let () _%eid130374%_)
                       (let ((_%$e130378%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht130375%_ _%eid130374%_))))
                         (if _%$e130378%_
                             _%$e130378%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind130372%_
                                    'gx#local-binding::t))
                                 (let ((_%gid130382%_
                                        (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-gensym-reference__0
                                           _%eid130374%_))))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht130375%_
                                      _%eid130374%_
                                      _%gid130382%_))
                                   _%gid130382%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind130372%_
                                        'gx#module-binding::t))
                                     (let ((_%gid130391%_
                                            (let ((_%$e130385%_
                                                   (##structure-ref
                                                    (##structure-ref
                                                     _%bind130372%_
                                                     '4
                                                     gx#module-binding::t
                                                     '#f)
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e130385%_
                                                  ((lambda (_%ns130388%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns130388%_
                                                        '"#"
                                                        _%eid130374%_)))
                                                   _%$e130385%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-gensym-reference__0
                                                     _%eid130374%_))))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht130375%_
                                          _%eid130374%_
                                          _%gid130391%_))
                                       _%gid130391%_)
                                     (let ()
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Cannot compile reference to uninterned binding"
                                        _%id130367%_
                                        _%eid130374%_
                                        _%bind130372%_)))))))))
               _%$e130369%_)
              (if (let ((__tmp130700
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id130367%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp130700))
                  (let () (declare (not safe)) (gx#stx-e _%id130367%_))
                  (let ()
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Cannot compile reference to uninterned identifier"
                     _%id130367%_)))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id130365%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id130365%_))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _%id130365%_))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-temporary__0)))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top130352%_)
        (if _%top130352%_
            (let ((_%ns130354%_
                   (##structure-ref
                    (let ((__tmp130701
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp130701))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi130355%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns130354%_
                  (if (fxpositive? _%phi130355%_)
                      (let ((__tmp130703 (number->string _%phi130355%_))
                            (__tmp130702
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns130354%_
                         '"["
                         __tmp130703
                         '"]#_"
                         __tmp130702
                         '"_"))
                      (let ((__tmp130704
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns130354%_ '"#_" __tmp130704 '"_")))
                  (if (fxpositive? _%phi130355%_)
                      (let ((__tmp130706 (number->string _%phi130355%_))
                            (__tmp130705
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp130706
                         '"]#_"
                         __tmp130705
                         '"_"))
                      (let ((__tmp130707
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp130707 '"_")))))
            (let ((__tmp130708 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp130708 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top130361%_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-temporary__% _%top130361%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g130710_
        (let ((_g130709_ (let () (declare (not safe)) (##length _g130710_))))
          (cond ((let () (declare (not safe)) (##fx= _g130709_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-temporary__0)))
                        _g130710_))
                ((let () (declare (not safe)) (##fx= _g130709_ 1))
                 (apply (lambda (_%top130363%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-temporary__% _%top130363%_)))
                        _g130710_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g130710_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym130330%_ _%quote?130331%_)
        (let* ((_%ht130333%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e130335%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht130333%_ _%sym130330%_))))
          (if _%$e130335%_
              _%$e130335%_
              (let ((_%g130339%_
                     (if _%quote?130331%_
                         (let ((__tmp130711
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym130330%_
                            '"__"
                            __tmp130711))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym130330%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht130333%_ _%sym130330%_ _%g130339%_))
                _%g130339%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym130344%_)
        (let ((_%quote?130346%_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-gensym-reference__%
           _%sym130344%_
           _%quote?130346%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g130713_
        (let ((_g130712_ (let () (declare (not safe)) (##length _g130713_))))
          (cond ((let () (declare (not safe)) (##fx= _g130712_ 1))
                 (apply (lambda (_%sym130344%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-gensym-reference__0
                             _%sym130344%_)))
                        _g130713_))
                ((let () (declare (not safe)) (##fx= _g130712_ 2))
                 (apply (lambda (_%sym130348%_ _%quote?130349%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-gensym-reference__%
                             _%sym130348%_
                             _%quote?130349%_)))
                        _g130713_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g130713_))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1130322%_ _%id2130323%_)
        (letrec ((_%symbol-e130325%_
                  (lambda (_%id130327%_)
                    (if (let () (declare (not safe)) (symbol? _%id130327%_))
                        _%id130327%_
                        (let ()
                          (declare (not safe))
                          (gxc#generate-runtime-binding-id _%id130327%_))))))
          (eq? (let () (declare (not safe)) (_%symbol-e130325%_ _%id1130322%_))
               (let ()
                 (declare (not safe))
                 (_%symbol-e130325%_ _%id2130323%_))))))
    (define gxc#identifier-symbol
      (lambda (_%stx130320%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx130320%_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _%stx130320%_))
            (let () (declare (not safe)) (gx#stx-e _%stx130320%_)))))))
