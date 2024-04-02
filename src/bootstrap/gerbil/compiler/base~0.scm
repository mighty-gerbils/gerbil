(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1712084996)
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
       (let ((_%verbosity129891129893%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity129891129893%_
             (let* ((_%verbosity129896%_ _%verbosity129891129893%_)
                    (_%$e129898%_ (string->number _%verbosity129896%_)))
               (if _%$e129898%_ _%$e129898%_ _%verbosity129896%_))
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
      (let ((__tmp129953 (list)) (__tmp129952 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp129953
         '(gensyms bindings)
         __tmp129952
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args129889%_
        (apply make-instance gxc#symbol-table::t _%$args129889%_)))
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
      (lambda (_%self129876%_)
        (let ()
          (let ((_%self129879%_ _%self129876%_))
            (let ()
              (if (let ((__tmp129954
                         (let ()
                           (declare (not safe))
                           (##structure-length _%self129879%_))))
                    (declare (not safe))
                    (##fx< '2 __tmp129954))
                  (begin
                    (let ((__tmp129955
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (declare (not safe))
                      (##unchecked-structure-set!
                       _%self129879%_
                       __tmp129955
                       '1
                       '#f
                       '#f))
                    (let ((__tmp129956
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (declare (not safe))
                      (##unchecked-structure-set!
                       _%self129879%_
                       __tmp129956
                       '2
                       '#f
                       '#f))
                    '#!void)
                  (let ((__tmp129957
                         (let ()
                           (declare (not safe))
                           (##vector-length _%self129879%_))))
                    (declare (not safe))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self129879%_
                           '2
                           __tmp129957))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message129745%_ _%stx129746%_ . _%details129747%_)
        (let ((_%ctx129752%_
               (let ((_%$e129749%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e129749%_ _%$e129749%_ 'compile))))
          (apply gx#raise-syntax-error
                 _%ctx129752%_
                 _%message129745%_
                 _%stx129746%_
                 _%details129747%_))))
    (define gxc#verbose
      (lambda _%args129742%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp129958 (lambda () (apply displayln _%args129742%_))))
              (declare (not safe))
              (__with-lock gxc#+verbose-mutex+ __tmp129958))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id129724%_)
        (let* ((_%str129726%_
                (if (let () (declare (not safe)) (symbol? _%id129724%_))
                    (symbol->string _%id129724%_)
                    _%id129724%_))
               (_%len129728%_ (string-length _%str129726%_))
               (_%res129730%_
                (let () (declare (not safe)) (##make-string _%len129728%_))))
          (let _%lp129733%_ ((_%i129735%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i129735%_ _%len129728%_))
                (let* ((_%char129737%_ (string-ref _%str129726%_ _%i129735%_))
                       (_%xchar129739%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char129737%_))
                            '#\_
                            _%char129737%_)))
                  (string-set! _%res129730%_ _%i129735%_ _%xchar129739%_)
                  (let ((__tmp129959
                         (let () (declare (not safe)) (##fx+ _%i129735%_ '1))))
                    (declare (not safe))
                    (_%lp129733%_ __tmp129959)))
                _%res129730%_)))))
    (define gxc#map*
      (lambda (_%proc129666%_ _%maybe-improper-list129667%_)
        (let _%recur129669%_ ((_%rest129671%_ _%maybe-improper-list129667%_))
          (let* ((_%rest129672129683%_ _%rest129671%_)
                 (_%E129676129687%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest129672129683%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K129679129712%_
                   (lambda (_%rest129709%_ _%hd129710%_)
                     (cons (_%proc129666%_ _%hd129710%_)
                           (let ()
                             (declare (not safe))
                             (_%recur129669%_ _%rest129709%_)))))
                  (_%K129678129703%_ (lambda () '()))
                  (_%K129677129693%_
                   (lambda (_%tail129691%_) (_%proc129666%_ _%tail129691%_))))
              (let ((_%try-match129674129706%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest129672129683%_))
                           (let () (declare (not safe)) (_%K129678129703%_))
                           (let ((_%tail129696%_ _%rest129672129683%_))
                             (declare (not safe))
                             (_%proc129666%_ _%tail129696%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest129672129683%_))
                    (let ((_%tl129681129717%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest129672129683%_)))
                          (_%hd129680129715%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest129672129683%_))))
                      (let ((_%hd129720%_ _%hd129680129715%_)
                            (_%rest129722%_ _%tl129681129717%_))
                        (let ()
                          (declare (not safe))
                          (_%K129679129712%_ _%rest129722%_ _%hd129720%_))))
                    (let ()
                      (declare (not safe))
                      (_%try-match129674129706%_)))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym129661%_)
        (let ((_%$e129663%_
               (let ((__tmp129960
                      (let ()
                        (declare (not safe))
                        (gxc#gensym-reference? _%sym129661%_))))
                 (declare (not safe))
                 (not __tmp129960))))
          (if _%$e129663%_
              _%$e129663%_
              (memq _%sym129661%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym129657%_)
        (let ((_%str129659%_ (symbol->string _%sym129657%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str129659%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str129659%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id129628%_)
        (let ((_%$e129630%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id129628%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id129628%_))
                   '#f)))
          (if _%$e129630%_
              ((lambda (_%bind129633%_)
                 (let ((_%eid129635%_
                        (##structure-ref _%bind129633%_ '1 gx#binding::t '#f))
                       (_%ht129636%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid129635%_))
                       (let () _%eid129635%_)
                       (let ((_%$e129639%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht129636%_ _%eid129635%_))))
                         (if _%$e129639%_
                             _%$e129639%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind129633%_
                                    'gx#local-binding::t))
                                 (let ()
                                   (let ((_%gid129643%_
                                          (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-gensym-reference__0
                                             _%eid129635%_))))
                                     (let ()
                                       (declare (not safe))
                                       (hash-put!
                                        _%ht129636%_
                                        _%eid129635%_
                                        _%gid129643%_))
                                     _%gid129643%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind129633%_
                                        'gx#module-binding::t))
                                     (let ()
                                       (let ((_%gid129652%_
                                              (let ((_%$e129646%_
                                                     (##structure-ref
                                                      (##structure-ref
                                                       _%bind129633%_
                                                       '4
                                                       gx#module-binding::t
                                                       '#f)
                                                      '6
                                                      gx#module-context::t
                                                      '#f)))
                                                (if _%$e129646%_
                                                    ((lambda (_%ns129649%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (make-symbol__1
                                                          _%ns129649%_
                                                          '"#"
                                                          _%eid129635%_)))
                                                     _%$e129646%_)
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#generate-runtime-gensym-reference__0
                                                         _%eid129635%_)))))))
                                         (let ()
                                           (declare (not safe))
                                           (hash-put!
                                            _%ht129636%_
                                            _%eid129635%_
                                            _%gid129652%_))
                                         _%gid129652%_))
                                     (let ()
                                       (let ()
                                         (declare (not safe))
                                         (gxc#raise-compile-error
                                          '"Cannot compile reference to uninterned binding"
                                          _%id129628%_
                                          _%eid129635%_
                                          _%bind129633%_))))))))))
               _%$e129630%_)
              (if (let ((__tmp129961
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id129628%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp129961))
                  (let ()
                    (let () (declare (not safe)) (gx#stx-e _%id129628%_)))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Cannot compile reference to uninterned identifier"
                       _%id129628%_))))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id129626%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id129626%_))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _%id129626%_))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-temporary__0)))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top129613%_)
        (if _%top129613%_
            (let ((_%ns129615%_
                   (##structure-ref
                    (let ((__tmp129962
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp129962))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi129616%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns129615%_
                  (if (fxpositive? _%phi129616%_)
                      (let ((__tmp129964 (number->string _%phi129616%_))
                            (__tmp129963
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns129615%_
                         '"["
                         __tmp129964
                         '"]#_"
                         __tmp129963
                         '"_"))
                      (let ((__tmp129965
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns129615%_ '"#_" __tmp129965 '"_")))
                  (if (fxpositive? _%phi129616%_)
                      (let ((__tmp129967 (number->string _%phi129616%_))
                            (__tmp129966
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp129967
                         '"]#_"
                         __tmp129966
                         '"_"))
                      (let ((__tmp129968
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp129968 '"_")))))
            (let ((__tmp129969 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp129969 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top129622%_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-temporary__% _%top129622%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g129971_
        (let ((_g129970_ (let () (declare (not safe)) (##length _g129971_))))
          (cond ((let () (declare (not safe)) (##fx= _g129970_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-temporary__0)))
                        _g129971_))
                ((let () (declare (not safe)) (##fx= _g129970_ 1))
                 (apply (lambda (_%top129624%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-temporary__% _%top129624%_)))
                        _g129971_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g129971_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym129591%_ _%quote?129592%_)
        (let* ((_%ht129594%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e129596%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht129594%_ _%sym129591%_))))
          (if _%$e129596%_
              _%$e129596%_
              (let ()
                (let ((_%g129600%_
                       (if _%quote?129592%_
                           (let ((__tmp129972
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-timestamp))))
                             (declare (not safe))
                             (make-symbol__1
                              '"__"
                              _%sym129591%_
                              '"__"
                              __tmp129972))
                           (let ()
                             (declare (not safe))
                             (make-symbol__1 '"_%" _%sym129591%_ '"%_")))))
                  (let ()
                    (declare (not safe))
                    (hash-put! _%ht129594%_ _%sym129591%_ _%g129600%_))
                  _%g129600%_))))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym129605%_)
        (let ((_%quote?129607%_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-gensym-reference__%
           _%sym129605%_
           _%quote?129607%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g129974_
        (let ((_g129973_ (let () (declare (not safe)) (##length _g129974_))))
          (cond ((let () (declare (not safe)) (##fx= _g129973_ 1))
                 (apply (lambda (_%sym129605%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-gensym-reference__0
                             _%sym129605%_)))
                        _g129974_))
                ((let () (declare (not safe)) (##fx= _g129973_ 2))
                 (apply (lambda (_%sym129609%_ _%quote?129610%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-gensym-reference__%
                             _%sym129609%_
                             _%quote?129610%_)))
                        _g129974_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g129974_))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1129583%_ _%id2129584%_)
        (letrec ((_%symbol-e129586%_
                  (lambda (_%id129588%_)
                    (if (let () (declare (not safe)) (symbol? _%id129588%_))
                        _%id129588%_
                        (let ()
                          (declare (not safe))
                          (gxc#generate-runtime-binding-id _%id129588%_))))))
          (eq? (let () (declare (not safe)) (_%symbol-e129586%_ _%id1129583%_))
               (let ()
                 (declare (not safe))
                 (_%symbol-e129586%_ _%id2129584%_))))))
    (define gxc#identifier-symbol
      (lambda (_%stx129581%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx129581%_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _%stx129581%_))
            (let () (declare (not safe)) (gx#stx-e _%stx129581%_)))))))
