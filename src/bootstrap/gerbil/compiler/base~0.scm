(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1712121899)
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
       (let ((_%verbosity129997129999%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity129997129999%_
             (let* ((_%verbosity130002%_ _%verbosity129997129999%_)
                    (_%$e130004%_ (string->number _%verbosity130002%_)))
               (if _%$e130004%_ _%$e130004%_ _%verbosity130002%_))
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
      (let ((__tmp130059 (list)) (__tmp130058 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp130059
         '(gensyms bindings)
         __tmp130058
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args129995%_
        (apply make-instance gxc#symbol-table::t _%$args129995%_)))
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
      (lambda (_%self129982%_)
        (let ()
          (let ((_%self129985%_ _%self129982%_))
            (let ()
              (if (let ((__tmp130060
                         (let ()
                           (declare (not safe))
                           (##structure-length _%self129985%_))))
                    (declare (not safe))
                    (##fx< '2 __tmp130060))
                  (begin
                    (let ((__tmp130061
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (declare (not safe))
                      (##unchecked-structure-set!
                       _%self129985%_
                       __tmp130061
                       '1
                       '#f
                       '#f))
                    (let ((__tmp130062
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (declare (not safe))
                      (##unchecked-structure-set!
                       _%self129985%_
                       __tmp130062
                       '2
                       '#f
                       '#f))
                    '#!void)
                  (let ((__tmp130063
                         (let ()
                           (declare (not safe))
                           (##vector-length _%self129985%_))))
                    (declare (not safe))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self129985%_
                           '2
                           __tmp130063))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message129851%_ _%stx129852%_ . _%details129853%_)
        (let ((_%ctx129858%_
               (let ((_%$e129855%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e129855%_ _%$e129855%_ 'compile))))
          (apply gx#raise-syntax-error
                 _%ctx129858%_
                 _%message129851%_
                 _%stx129852%_
                 _%details129853%_))))
    (define gxc#verbose
      (lambda _%args129848%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp130064 (lambda () (apply displayln _%args129848%_))))
              (declare (not safe))
              (__with-lock gxc#+verbose-mutex+ __tmp130064))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id129830%_)
        (let* ((_%str129832%_
                (if (let () (declare (not safe)) (symbol? _%id129830%_))
                    (symbol->string _%id129830%_)
                    _%id129830%_))
               (_%len129834%_ (string-length _%str129832%_))
               (_%res129836%_
                (let () (declare (not safe)) (##make-string _%len129834%_))))
          (let _%lp129839%_ ((_%i129841%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i129841%_ _%len129834%_))
                (let* ((_%char129843%_ (string-ref _%str129832%_ _%i129841%_))
                       (_%xchar129845%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char129843%_))
                            '#\_
                            _%char129843%_)))
                  (string-set! _%res129836%_ _%i129841%_ _%xchar129845%_)
                  (let ((__tmp130065
                         (let () (declare (not safe)) (##fx+ _%i129841%_ '1))))
                    (declare (not safe))
                    (_%lp129839%_ __tmp130065)))
                _%res129836%_)))))
    (define gxc#map*
      (lambda (_%proc129772%_ _%maybe-improper-list129773%_)
        (let _%recur129775%_ ((_%rest129777%_ _%maybe-improper-list129773%_))
          (let* ((_%rest129778129789%_ _%rest129777%_)
                 (_%E129782129793%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest129778129789%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K129785129818%_
                   (lambda (_%rest129815%_ _%hd129816%_)
                     (cons (_%proc129772%_ _%hd129816%_)
                           (let ()
                             (declare (not safe))
                             (_%recur129775%_ _%rest129815%_)))))
                  (_%K129784129809%_ (lambda () '()))
                  (_%K129783129799%_
                   (lambda (_%tail129797%_) (_%proc129772%_ _%tail129797%_))))
              (let ((_%try-match129780129812%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest129778129789%_))
                           (let () (declare (not safe)) (_%K129784129809%_))
                           (let ((_%tail129802%_ _%rest129778129789%_))
                             (declare (not safe))
                             (_%proc129772%_ _%tail129802%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest129778129789%_))
                    (let ((_%tl129787129823%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest129778129789%_)))
                          (_%hd129786129821%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest129778129789%_))))
                      (let ((_%hd129826%_ _%hd129786129821%_)
                            (_%rest129828%_ _%tl129787129823%_))
                        (let ()
                          (declare (not safe))
                          (_%K129785129818%_ _%rest129828%_ _%hd129826%_))))
                    (let ()
                      (declare (not safe))
                      (_%try-match129780129812%_)))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym129767%_)
        (let ((_%$e129769%_
               (let ((__tmp130066
                      (let ()
                        (declare (not safe))
                        (gxc#gensym-reference? _%sym129767%_))))
                 (declare (not safe))
                 (not __tmp130066))))
          (if _%$e129769%_
              _%$e129769%_
              (memq _%sym129767%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym129763%_)
        (let ((_%str129765%_ (symbol->string _%sym129763%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str129765%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str129765%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id129734%_)
        (let ((_%$e129736%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id129734%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id129734%_))
                   '#f)))
          (if _%$e129736%_
              ((lambda (_%bind129739%_)
                 (let ((_%eid129741%_
                        (##structure-ref _%bind129739%_ '1 gx#binding::t '#f))
                       (_%ht129742%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid129741%_))
                       (let () _%eid129741%_)
                       (let ((_%$e129745%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht129742%_ _%eid129741%_))))
                         (if _%$e129745%_
                             _%$e129745%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind129739%_
                                    'gx#local-binding::t))
                                 (let ()
                                   (let ((_%gid129749%_
                                          (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-gensym-reference__0
                                             _%eid129741%_))))
                                     (let ()
                                       (declare (not safe))
                                       (hash-put!
                                        _%ht129742%_
                                        _%eid129741%_
                                        _%gid129749%_))
                                     _%gid129749%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind129739%_
                                        'gx#module-binding::t))
                                     (let ()
                                       (let ((_%gid129758%_
                                              (let ((_%$e129752%_
                                                     (##structure-ref
                                                      (##structure-ref
                                                       _%bind129739%_
                                                       '4
                                                       gx#module-binding::t
                                                       '#f)
                                                      '6
                                                      gx#module-context::t
                                                      '#f)))
                                                (if _%$e129752%_
                                                    ((lambda (_%ns129755%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (make-symbol__1
                                                          _%ns129755%_
                                                          '"#"
                                                          _%eid129741%_)))
                                                     _%$e129752%_)
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#generate-runtime-gensym-reference__0
                                                         _%eid129741%_)))))))
                                         (let ()
                                           (declare (not safe))
                                           (hash-put!
                                            _%ht129742%_
                                            _%eid129741%_
                                            _%gid129758%_))
                                         _%gid129758%_))
                                     (let ()
                                       (let ()
                                         (declare (not safe))
                                         (gxc#raise-compile-error
                                          '"Cannot compile reference to uninterned binding"
                                          _%id129734%_
                                          _%eid129741%_
                                          _%bind129739%_))))))))))
               _%$e129736%_)
              (if (let ((__tmp130067
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id129734%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp130067))
                  (let ()
                    (let () (declare (not safe)) (gx#stx-e _%id129734%_)))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Cannot compile reference to uninterned identifier"
                       _%id129734%_))))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id129732%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id129732%_))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _%id129732%_))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-temporary__0)))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top129719%_)
        (if _%top129719%_
            (let ((_%ns129721%_
                   (##structure-ref
                    (let ((__tmp130068
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp130068))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi129722%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns129721%_
                  (if (fxpositive? _%phi129722%_)
                      (let ((__tmp130070 (number->string _%phi129722%_))
                            (__tmp130069
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns129721%_
                         '"["
                         __tmp130070
                         '"]#_"
                         __tmp130069
                         '"_"))
                      (let ((__tmp130071
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns129721%_ '"#_" __tmp130071 '"_")))
                  (if (fxpositive? _%phi129722%_)
                      (let ((__tmp130073 (number->string _%phi129722%_))
                            (__tmp130072
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp130073
                         '"]#_"
                         __tmp130072
                         '"_"))
                      (let ((__tmp130074
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp130074 '"_")))))
            (let ((__tmp130075 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp130075 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top129728%_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-temporary__% _%top129728%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g130077_
        (let ((_g130076_ (let () (declare (not safe)) (##length _g130077_))))
          (cond ((let () (declare (not safe)) (##fx= _g130076_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-temporary__0)))
                        _g130077_))
                ((let () (declare (not safe)) (##fx= _g130076_ 1))
                 (apply (lambda (_%top129730%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-temporary__% _%top129730%_)))
                        _g130077_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g130077_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym129697%_ _%quote?129698%_)
        (let* ((_%ht129700%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e129702%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht129700%_ _%sym129697%_))))
          (if _%$e129702%_
              _%$e129702%_
              (let ()
                (let ((_%g129706%_
                       (if _%quote?129698%_
                           (let ((__tmp130078
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-timestamp))))
                             (declare (not safe))
                             (make-symbol__1
                              '"__"
                              _%sym129697%_
                              '"__"
                              __tmp130078))
                           (let ()
                             (declare (not safe))
                             (make-symbol__1 '"_%" _%sym129697%_ '"%_")))))
                  (let ()
                    (declare (not safe))
                    (hash-put! _%ht129700%_ _%sym129697%_ _%g129706%_))
                  _%g129706%_))))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym129711%_)
        (let ((_%quote?129713%_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-gensym-reference__%
           _%sym129711%_
           _%quote?129713%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g130080_
        (let ((_g130079_ (let () (declare (not safe)) (##length _g130080_))))
          (cond ((let () (declare (not safe)) (##fx= _g130079_ 1))
                 (apply (lambda (_%sym129711%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-gensym-reference__0
                             _%sym129711%_)))
                        _g130080_))
                ((let () (declare (not safe)) (##fx= _g130079_ 2))
                 (apply (lambda (_%sym129715%_ _%quote?129716%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-gensym-reference__%
                             _%sym129715%_
                             _%quote?129716%_)))
                        _g130080_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g130080_))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1129689%_ _%id2129690%_)
        (letrec ((_%symbol-e129692%_
                  (lambda (_%id129694%_)
                    (if (let () (declare (not safe)) (symbol? _%id129694%_))
                        _%id129694%_
                        (let ()
                          (declare (not safe))
                          (gxc#generate-runtime-binding-id _%id129694%_))))))
          (eq? (let () (declare (not safe)) (_%symbol-e129692%_ _%id1129689%_))
               (let ()
                 (declare (not safe))
                 (_%symbol-e129692%_ _%id2129690%_))))))
    (define gxc#identifier-symbol
      (lambda (_%stx129687%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx129687%_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _%stx129687%_))
            (let () (declare (not safe)) (gx#stx-e _%stx129687%_)))))))
