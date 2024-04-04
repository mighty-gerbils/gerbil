(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1712251112)
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
       (let ((_%verbosity130605130607%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity130605130607%_
             (let* ((_%verbosity130610%_ _%verbosity130605130607%_)
                    (_%$e130612%_ (string->number _%verbosity130610%_)))
               (if _%$e130612%_ _%$e130612%_ _%verbosity130610%_))
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
      (let ((__tmp130667 (list)) (__tmp130666 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp130667
         '(gensyms bindings)
         __tmp130666
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args130603%_
        (apply make-instance gxc#symbol-table::t _%$args130603%_)))
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
      (lambda (_%self130590%_)
        (let ((_%self130593%_ _%self130590%_))
          (if (let ((__tmp130668
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self130593%_))))
                (declare (not safe))
                (##fx< '2 __tmp130668))
              (begin
                (let ((__tmp130669
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self130593%_
                   __tmp130669
                   '1
                   '#f
                   '#f))
                (let ((__tmp130670
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self130593%_
                   __tmp130670
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp130671
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self130593%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self130593%_
                       '2
                       __tmp130671))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message130459%_ _%stx130460%_ . _%details130461%_)
        (let ((_%ctx130466%_
               (let ((_%$e130463%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e130463%_ _%$e130463%_ 'compile))))
          (apply gx#raise-syntax-error
                 _%ctx130466%_
                 _%message130459%_
                 _%stx130460%_
                 _%details130461%_))))
    (define gxc#verbose
      (lambda _%args130456%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp130672 (lambda () (apply displayln _%args130456%_))))
              (declare (not safe))
              (__with-lock gxc#+verbose-mutex+ __tmp130672))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id130438%_)
        (let* ((_%str130440%_
                (if (let () (declare (not safe)) (symbol? _%id130438%_))
                    (symbol->string _%id130438%_)
                    _%id130438%_))
               (_%len130442%_ (string-length _%str130440%_))
               (_%res130444%_
                (let () (declare (not safe)) (##make-string _%len130442%_))))
          (let _%lp130447%_ ((_%i130449%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i130449%_ _%len130442%_))
                (let* ((_%char130451%_ (string-ref _%str130440%_ _%i130449%_))
                       (_%xchar130453%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char130451%_))
                            '#\_
                            _%char130451%_)))
                  (string-set! _%res130444%_ _%i130449%_ _%xchar130453%_)
                  (let ((__tmp130673
                         (let () (declare (not safe)) (##fx+ _%i130449%_ '1))))
                    (declare (not safe))
                    (_%lp130447%_ __tmp130673)))
                _%res130444%_)))))
    (define gxc#map*
      (lambda (_%proc130380%_ _%maybe-improper-list130381%_)
        (let _%recur130383%_ ((_%rest130385%_ _%maybe-improper-list130381%_))
          (let* ((_%rest130386130397%_ _%rest130385%_)
                 (_%E130390130401%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest130386130397%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K130393130426%_
                   (lambda (_%rest130423%_ _%hd130424%_)
                     (cons (_%proc130380%_ _%hd130424%_)
                           (let ()
                             (declare (not safe))
                             (_%recur130383%_ _%rest130423%_)))))
                  (_%K130392130417%_ (lambda () '()))
                  (_%K130391130407%_
                   (lambda (_%tail130405%_) (_%proc130380%_ _%tail130405%_))))
              (let ((_%try-match130388130420%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest130386130397%_))
                           (let () (declare (not safe)) (_%K130392130417%_))
                           (let ((_%tail130410%_ _%rest130386130397%_))
                             (declare (not safe))
                             (_%proc130380%_ _%tail130410%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest130386130397%_))
                    (let ((_%tl130395130431%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest130386130397%_)))
                          (_%hd130394130429%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest130386130397%_))))
                      (let ((_%hd130434%_ _%hd130394130429%_)
                            (_%rest130436%_ _%tl130395130431%_))
                        (let ()
                          (declare (not safe))
                          (_%K130393130426%_ _%rest130436%_ _%hd130434%_))))
                    (let ()
                      (declare (not safe))
                      (_%try-match130388130420%_)))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym130375%_)
        (let ((_%$e130377%_
               (let ((__tmp130674
                      (let ()
                        (declare (not safe))
                        (gxc#gensym-reference? _%sym130375%_))))
                 (declare (not safe))
                 (not __tmp130674))))
          (if _%$e130377%_
              _%$e130377%_
              (memq _%sym130375%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym130371%_)
        (let ((_%str130373%_ (symbol->string _%sym130371%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str130373%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str130373%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id130342%_)
        (let ((_%$e130344%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id130342%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id130342%_))
                   '#f)))
          (if _%$e130344%_
              ((lambda (_%bind130347%_)
                 (let ((_%eid130349%_
                        (##structure-ref _%bind130347%_ '1 gx#binding::t '#f))
                       (_%ht130350%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid130349%_))
                       (let () _%eid130349%_)
                       (let ((_%$e130353%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht130350%_ _%eid130349%_))))
                         (if _%$e130353%_
                             _%$e130353%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind130347%_
                                    'gx#local-binding::t))
                                 (let ((_%gid130357%_
                                        (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-gensym-reference__0
                                           _%eid130349%_))))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht130350%_
                                      _%eid130349%_
                                      _%gid130357%_))
                                   _%gid130357%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind130347%_
                                        'gx#module-binding::t))
                                     (let ((_%gid130366%_
                                            (let ((_%$e130360%_
                                                   (##structure-ref
                                                    (##structure-ref
                                                     _%bind130347%_
                                                     '4
                                                     gx#module-binding::t
                                                     '#f)
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e130360%_
                                                  ((lambda (_%ns130363%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns130363%_
                                                        '"#"
                                                        _%eid130349%_)))
                                                   _%$e130360%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-gensym-reference__0
                                                     _%eid130349%_))))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht130350%_
                                          _%eid130349%_
                                          _%gid130366%_))
                                       _%gid130366%_)
                                     (let ()
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Cannot compile reference to uninterned binding"
                                        _%id130342%_
                                        _%eid130349%_
                                        _%bind130347%_)))))))))
               _%$e130344%_)
              (if (let ((__tmp130675
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id130342%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp130675))
                  (let () (declare (not safe)) (gx#stx-e _%id130342%_))
                  (let ()
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Cannot compile reference to uninterned identifier"
                     _%id130342%_)))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id130340%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id130340%_))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _%id130340%_))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-temporary__0)))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top130327%_)
        (if _%top130327%_
            (let ((_%ns130329%_
                   (##structure-ref
                    (let ((__tmp130676
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp130676))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi130330%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns130329%_
                  (if (fxpositive? _%phi130330%_)
                      (let ((__tmp130678 (number->string _%phi130330%_))
                            (__tmp130677
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns130329%_
                         '"["
                         __tmp130678
                         '"]#_"
                         __tmp130677
                         '"_"))
                      (let ((__tmp130679
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns130329%_ '"#_" __tmp130679 '"_")))
                  (if (fxpositive? _%phi130330%_)
                      (let ((__tmp130681 (number->string _%phi130330%_))
                            (__tmp130680
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp130681
                         '"]#_"
                         __tmp130680
                         '"_"))
                      (let ((__tmp130682
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp130682 '"_")))))
            (let ((__tmp130683 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp130683 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top130336%_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-temporary__% _%top130336%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g130685_
        (let ((_g130684_ (let () (declare (not safe)) (##length _g130685_))))
          (cond ((let () (declare (not safe)) (##fx= _g130684_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-temporary__0)))
                        _g130685_))
                ((let () (declare (not safe)) (##fx= _g130684_ 1))
                 (apply (lambda (_%top130338%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-temporary__% _%top130338%_)))
                        _g130685_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g130685_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym130305%_ _%quote?130306%_)
        (let* ((_%ht130308%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e130310%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht130308%_ _%sym130305%_))))
          (if _%$e130310%_
              _%$e130310%_
              (let ((_%g130314%_
                     (if _%quote?130306%_
                         (let ((__tmp130686
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym130305%_
                            '"__"
                            __tmp130686))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym130305%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht130308%_ _%sym130305%_ _%g130314%_))
                _%g130314%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym130319%_)
        (let ((_%quote?130321%_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-gensym-reference__%
           _%sym130319%_
           _%quote?130321%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g130688_
        (let ((_g130687_ (let () (declare (not safe)) (##length _g130688_))))
          (cond ((let () (declare (not safe)) (##fx= _g130687_ 1))
                 (apply (lambda (_%sym130319%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-gensym-reference__0
                             _%sym130319%_)))
                        _g130688_))
                ((let () (declare (not safe)) (##fx= _g130687_ 2))
                 (apply (lambda (_%sym130323%_ _%quote?130324%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-gensym-reference__%
                             _%sym130323%_
                             _%quote?130324%_)))
                        _g130688_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g130688_))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1130297%_ _%id2130298%_)
        (letrec ((_%symbol-e130300%_
                  (lambda (_%id130302%_)
                    (if (let () (declare (not safe)) (symbol? _%id130302%_))
                        _%id130302%_
                        (let ()
                          (declare (not safe))
                          (gxc#generate-runtime-binding-id _%id130302%_))))))
          (eq? (let () (declare (not safe)) (_%symbol-e130300%_ _%id1130297%_))
               (let ()
                 (declare (not safe))
                 (_%symbol-e130300%_ _%id2130298%_))))))
    (define gxc#identifier-symbol
      (lambda (_%stx130295%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx130295%_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _%stx130295%_))
            (let () (declare (not safe)) (gx#stx-e _%stx130295%_)))))))
