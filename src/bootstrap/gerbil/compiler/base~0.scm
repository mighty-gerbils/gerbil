(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1712262514)
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
       (let ((_%verbosity130613130615%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity130613130615%_
             (let* ((_%verbosity130618%_ _%verbosity130613130615%_)
                    (_%$e130620%_ (string->number _%verbosity130618%_)))
               (if _%$e130620%_ _%$e130620%_ _%verbosity130618%_))
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
      (let ((__tmp130675 (list)) (__tmp130674 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp130675
         '(gensyms bindings)
         __tmp130674
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args130611%_
        (apply make-instance gxc#symbol-table::t _%$args130611%_)))
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
      (lambda (_%self130598%_)
        (let ((_%self130601%_ _%self130598%_))
          (if (let ((__tmp130676
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self130601%_))))
                (declare (not safe))
                (##fx< '2 __tmp130676))
              (begin
                (let ((__tmp130677
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self130601%_
                   __tmp130677
                   '1
                   '#f
                   '#f))
                (let ((__tmp130678
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self130601%_
                   __tmp130678
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp130679
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self130601%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self130601%_
                       '2
                       __tmp130679))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message130467%_ _%stx130468%_ . _%details130469%_)
        (let ((_%ctx130474%_
               (let ((_%$e130471%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e130471%_ _%$e130471%_ 'compile))))
          (apply gx#raise-syntax-error
                 _%ctx130474%_
                 _%message130467%_
                 _%stx130468%_
                 _%details130469%_))))
    (define gxc#verbose
      (lambda _%args130464%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp130680 (lambda () (apply displayln _%args130464%_))))
              (declare (not safe))
              (__with-lock gxc#+verbose-mutex+ __tmp130680))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id130446%_)
        (let* ((_%str130448%_
                (if (let () (declare (not safe)) (symbol? _%id130446%_))
                    (symbol->string _%id130446%_)
                    _%id130446%_))
               (_%len130450%_ (string-length _%str130448%_))
               (_%res130452%_
                (let () (declare (not safe)) (##make-string _%len130450%_))))
          (let _%lp130455%_ ((_%i130457%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i130457%_ _%len130450%_))
                (let* ((_%char130459%_ (string-ref _%str130448%_ _%i130457%_))
                       (_%xchar130461%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char130459%_))
                            '#\_
                            _%char130459%_)))
                  (string-set! _%res130452%_ _%i130457%_ _%xchar130461%_)
                  (let ((__tmp130681
                         (let () (declare (not safe)) (##fx+ _%i130457%_ '1))))
                    (declare (not safe))
                    (_%lp130455%_ __tmp130681)))
                _%res130452%_)))))
    (define gxc#map*
      (lambda (_%proc130388%_ _%maybe-improper-list130389%_)
        (let _%recur130391%_ ((_%rest130393%_ _%maybe-improper-list130389%_))
          (let* ((_%rest130394130405%_ _%rest130393%_)
                 (_%E130398130409%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest130394130405%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K130401130434%_
                   (lambda (_%rest130431%_ _%hd130432%_)
                     (cons (_%proc130388%_ _%hd130432%_)
                           (let ()
                             (declare (not safe))
                             (_%recur130391%_ _%rest130431%_)))))
                  (_%K130400130425%_ (lambda () '()))
                  (_%K130399130415%_
                   (lambda (_%tail130413%_) (_%proc130388%_ _%tail130413%_))))
              (let ((_%try-match130396130428%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest130394130405%_))
                           (let () (declare (not safe)) (_%K130400130425%_))
                           (let ((_%tail130418%_ _%rest130394130405%_))
                             (declare (not safe))
                             (_%proc130388%_ _%tail130418%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest130394130405%_))
                    (let ((_%tl130403130439%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest130394130405%_)))
                          (_%hd130402130437%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest130394130405%_))))
                      (let ((_%hd130442%_ _%hd130402130437%_)
                            (_%rest130444%_ _%tl130403130439%_))
                        (let ()
                          (declare (not safe))
                          (_%K130401130434%_ _%rest130444%_ _%hd130442%_))))
                    (let ()
                      (declare (not safe))
                      (_%try-match130396130428%_)))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym130383%_)
        (let ((_%$e130385%_
               (let ((__tmp130682
                      (let ()
                        (declare (not safe))
                        (gxc#gensym-reference? _%sym130383%_))))
                 (declare (not safe))
                 (not __tmp130682))))
          (if _%$e130385%_
              _%$e130385%_
              (memq _%sym130383%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym130379%_)
        (let ((_%str130381%_ (symbol->string _%sym130379%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str130381%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str130381%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id130350%_)
        (let ((_%$e130352%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id130350%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id130350%_))
                   '#f)))
          (if _%$e130352%_
              ((lambda (_%bind130355%_)
                 (let ((_%eid130357%_
                        (##structure-ref _%bind130355%_ '1 gx#binding::t '#f))
                       (_%ht130358%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid130357%_))
                       (let () _%eid130357%_)
                       (let ((_%$e130361%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht130358%_ _%eid130357%_))))
                         (if _%$e130361%_
                             _%$e130361%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind130355%_
                                    'gx#local-binding::t))
                                 (let ((_%gid130365%_
                                        (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-gensym-reference__0
                                           _%eid130357%_))))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht130358%_
                                      _%eid130357%_
                                      _%gid130365%_))
                                   _%gid130365%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind130355%_
                                        'gx#module-binding::t))
                                     (let ((_%gid130374%_
                                            (let ((_%$e130368%_
                                                   (##structure-ref
                                                    (##structure-ref
                                                     _%bind130355%_
                                                     '4
                                                     gx#module-binding::t
                                                     '#f)
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e130368%_
                                                  ((lambda (_%ns130371%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns130371%_
                                                        '"#"
                                                        _%eid130357%_)))
                                                   _%$e130368%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-gensym-reference__0
                                                     _%eid130357%_))))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht130358%_
                                          _%eid130357%_
                                          _%gid130374%_))
                                       _%gid130374%_)
                                     (let ()
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Cannot compile reference to uninterned binding"
                                        _%id130350%_
                                        _%eid130357%_
                                        _%bind130355%_)))))))))
               _%$e130352%_)
              (if (let ((__tmp130683
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id130350%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp130683))
                  (let () (declare (not safe)) (gx#stx-e _%id130350%_))
                  (let ()
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Cannot compile reference to uninterned identifier"
                     _%id130350%_)))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id130348%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id130348%_))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _%id130348%_))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-temporary__0)))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top130335%_)
        (if _%top130335%_
            (let ((_%ns130337%_
                   (##structure-ref
                    (let ((__tmp130684
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp130684))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi130338%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns130337%_
                  (if (fxpositive? _%phi130338%_)
                      (let ((__tmp130686 (number->string _%phi130338%_))
                            (__tmp130685
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns130337%_
                         '"["
                         __tmp130686
                         '"]#_"
                         __tmp130685
                         '"_"))
                      (let ((__tmp130687
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns130337%_ '"#_" __tmp130687 '"_")))
                  (if (fxpositive? _%phi130338%_)
                      (let ((__tmp130689 (number->string _%phi130338%_))
                            (__tmp130688
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp130689
                         '"]#_"
                         __tmp130688
                         '"_"))
                      (let ((__tmp130690
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp130690 '"_")))))
            (let ((__tmp130691 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp130691 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top130344%_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-temporary__% _%top130344%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g130693_
        (let ((_g130692_ (let () (declare (not safe)) (##length _g130693_))))
          (cond ((let () (declare (not safe)) (##fx= _g130692_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-temporary__0)))
                        _g130693_))
                ((let () (declare (not safe)) (##fx= _g130692_ 1))
                 (apply (lambda (_%top130346%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-temporary__% _%top130346%_)))
                        _g130693_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g130693_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym130313%_ _%quote?130314%_)
        (let* ((_%ht130316%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e130318%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht130316%_ _%sym130313%_))))
          (if _%$e130318%_
              _%$e130318%_
              (let ((_%g130322%_
                     (if _%quote?130314%_
                         (let ((__tmp130694
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym130313%_
                            '"__"
                            __tmp130694))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym130313%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht130316%_ _%sym130313%_ _%g130322%_))
                _%g130322%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym130327%_)
        (let ((_%quote?130329%_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-gensym-reference__%
           _%sym130327%_
           _%quote?130329%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g130696_
        (let ((_g130695_ (let () (declare (not safe)) (##length _g130696_))))
          (cond ((let () (declare (not safe)) (##fx= _g130695_ 1))
                 (apply (lambda (_%sym130327%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-gensym-reference__0
                             _%sym130327%_)))
                        _g130696_))
                ((let () (declare (not safe)) (##fx= _g130695_ 2))
                 (apply (lambda (_%sym130331%_ _%quote?130332%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-gensym-reference__%
                             _%sym130331%_
                             _%quote?130332%_)))
                        _g130696_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g130696_))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1130305%_ _%id2130306%_)
        (letrec ((_%symbol-e130308%_
                  (lambda (_%id130310%_)
                    (if (let () (declare (not safe)) (symbol? _%id130310%_))
                        _%id130310%_
                        (let ()
                          (declare (not safe))
                          (gxc#generate-runtime-binding-id _%id130310%_))))))
          (eq? (let () (declare (not safe)) (_%symbol-e130308%_ _%id1130305%_))
               (let ()
                 (declare (not safe))
                 (_%symbol-e130308%_ _%id2130306%_))))))
    (define gxc#identifier-symbol
      (lambda (_%stx130303%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx130303%_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _%stx130303%_))
            (let () (declare (not safe)) (gx#stx-e _%stx130303%_)))))))
