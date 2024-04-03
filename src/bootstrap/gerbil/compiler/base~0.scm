(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1712161241)
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
       (let ((_%verbosity130025130027%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity130025130027%_
             (let* ((_%verbosity130030%_ _%verbosity130025130027%_)
                    (_%$e130032%_ (string->number _%verbosity130030%_)))
               (if _%$e130032%_ _%$e130032%_ _%verbosity130030%_))
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
      (let ((__tmp130087 (list)) (__tmp130086 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp130087
         '(gensyms bindings)
         __tmp130086
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args130023%_
        (apply make-instance gxc#symbol-table::t _%$args130023%_)))
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
      (lambda (_%self130010%_)
        (let ((_%self130013%_ _%self130010%_))
          (if (let ((__tmp130088
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self130013%_))))
                (declare (not safe))
                (##fx< '2 __tmp130088))
              (begin
                (let ((__tmp130089
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self130013%_
                   __tmp130089
                   '1
                   '#f
                   '#f))
                (let ((__tmp130090
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self130013%_
                   __tmp130090
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp130091
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self130013%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self130013%_
                       '2
                       __tmp130091))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message129879%_ _%stx129880%_ . _%details129881%_)
        (let ((_%ctx129886%_
               (let ((_%$e129883%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e129883%_ _%$e129883%_ 'compile))))
          (apply gx#raise-syntax-error
                 _%ctx129886%_
                 _%message129879%_
                 _%stx129880%_
                 _%details129881%_))))
    (define gxc#verbose
      (lambda _%args129876%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp130092 (lambda () (apply displayln _%args129876%_))))
              (declare (not safe))
              (__with-lock gxc#+verbose-mutex+ __tmp130092))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id129858%_)
        (let* ((_%str129860%_
                (if (let () (declare (not safe)) (symbol? _%id129858%_))
                    (symbol->string _%id129858%_)
                    _%id129858%_))
               (_%len129862%_ (string-length _%str129860%_))
               (_%res129864%_
                (let () (declare (not safe)) (##make-string _%len129862%_))))
          (let _%lp129867%_ ((_%i129869%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i129869%_ _%len129862%_))
                (let* ((_%char129871%_ (string-ref _%str129860%_ _%i129869%_))
                       (_%xchar129873%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char129871%_))
                            '#\_
                            _%char129871%_)))
                  (string-set! _%res129864%_ _%i129869%_ _%xchar129873%_)
                  (let ((__tmp130093
                         (let () (declare (not safe)) (##fx+ _%i129869%_ '1))))
                    (declare (not safe))
                    (_%lp129867%_ __tmp130093)))
                _%res129864%_)))))
    (define gxc#map*
      (lambda (_%proc129800%_ _%maybe-improper-list129801%_)
        (let _%recur129803%_ ((_%rest129805%_ _%maybe-improper-list129801%_))
          (let* ((_%rest129806129817%_ _%rest129805%_)
                 (_%E129810129821%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest129806129817%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K129813129846%_
                   (lambda (_%rest129843%_ _%hd129844%_)
                     (cons (_%proc129800%_ _%hd129844%_)
                           (let ()
                             (declare (not safe))
                             (_%recur129803%_ _%rest129843%_)))))
                  (_%K129812129837%_ (lambda () '()))
                  (_%K129811129827%_
                   (lambda (_%tail129825%_) (_%proc129800%_ _%tail129825%_))))
              (let ((_%try-match129808129840%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest129806129817%_))
                           (let () (declare (not safe)) (_%K129812129837%_))
                           (let ((_%tail129830%_ _%rest129806129817%_))
                             (declare (not safe))
                             (_%proc129800%_ _%tail129830%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest129806129817%_))
                    (let ((_%tl129815129851%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest129806129817%_)))
                          (_%hd129814129849%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest129806129817%_))))
                      (let ((_%hd129854%_ _%hd129814129849%_)
                            (_%rest129856%_ _%tl129815129851%_))
                        (let ()
                          (declare (not safe))
                          (_%K129813129846%_ _%rest129856%_ _%hd129854%_))))
                    (let ()
                      (declare (not safe))
                      (_%try-match129808129840%_)))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym129795%_)
        (let ((_%$e129797%_
               (let ((__tmp130094
                      (let ()
                        (declare (not safe))
                        (gxc#gensym-reference? _%sym129795%_))))
                 (declare (not safe))
                 (not __tmp130094))))
          (if _%$e129797%_
              _%$e129797%_
              (memq _%sym129795%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym129791%_)
        (let ((_%str129793%_ (symbol->string _%sym129791%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str129793%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str129793%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id129762%_)
        (let ((_%$e129764%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id129762%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id129762%_))
                   '#f)))
          (if _%$e129764%_
              ((lambda (_%bind129767%_)
                 (let ((_%eid129769%_
                        (##structure-ref _%bind129767%_ '1 gx#binding::t '#f))
                       (_%ht129770%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid129769%_))
                       (let () _%eid129769%_)
                       (let ((_%$e129773%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht129770%_ _%eid129769%_))))
                         (if _%$e129773%_
                             _%$e129773%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind129767%_
                                    'gx#local-binding::t))
                                 (let ((_%gid129777%_
                                        (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-gensym-reference__0
                                           _%eid129769%_))))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht129770%_
                                      _%eid129769%_
                                      _%gid129777%_))
                                   _%gid129777%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind129767%_
                                        'gx#module-binding::t))
                                     (let ((_%gid129786%_
                                            (let ((_%$e129780%_
                                                   (##structure-ref
                                                    (##structure-ref
                                                     _%bind129767%_
                                                     '4
                                                     gx#module-binding::t
                                                     '#f)
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e129780%_
                                                  ((lambda (_%ns129783%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns129783%_
                                                        '"#"
                                                        _%eid129769%_)))
                                                   _%$e129780%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-gensym-reference__0
                                                     _%eid129769%_))))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht129770%_
                                          _%eid129769%_
                                          _%gid129786%_))
                                       _%gid129786%_)
                                     (let ()
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Cannot compile reference to uninterned binding"
                                        _%id129762%_
                                        _%eid129769%_
                                        _%bind129767%_)))))))))
               _%$e129764%_)
              (if (let ((__tmp130095
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id129762%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp130095))
                  (let () (declare (not safe)) (gx#stx-e _%id129762%_))
                  (let ()
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Cannot compile reference to uninterned identifier"
                     _%id129762%_)))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id129760%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id129760%_))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _%id129760%_))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-temporary__0)))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top129747%_)
        (if _%top129747%_
            (let ((_%ns129749%_
                   (##structure-ref
                    (let ((__tmp130096
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp130096))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi129750%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns129749%_
                  (if (fxpositive? _%phi129750%_)
                      (let ((__tmp130098 (number->string _%phi129750%_))
                            (__tmp130097
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns129749%_
                         '"["
                         __tmp130098
                         '"]#_"
                         __tmp130097
                         '"_"))
                      (let ((__tmp130099
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns129749%_ '"#_" __tmp130099 '"_")))
                  (if (fxpositive? _%phi129750%_)
                      (let ((__tmp130101 (number->string _%phi129750%_))
                            (__tmp130100
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp130101
                         '"]#_"
                         __tmp130100
                         '"_"))
                      (let ((__tmp130102
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp130102 '"_")))))
            (let ((__tmp130103 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp130103 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top129756%_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-temporary__% _%top129756%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g130105_
        (let ((_g130104_ (let () (declare (not safe)) (##length _g130105_))))
          (cond ((let () (declare (not safe)) (##fx= _g130104_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-temporary__0)))
                        _g130105_))
                ((let () (declare (not safe)) (##fx= _g130104_ 1))
                 (apply (lambda (_%top129758%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-temporary__% _%top129758%_)))
                        _g130105_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g130105_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym129725%_ _%quote?129726%_)
        (let* ((_%ht129728%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e129730%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht129728%_ _%sym129725%_))))
          (if _%$e129730%_
              _%$e129730%_
              (let ((_%g129734%_
                     (if _%quote?129726%_
                         (let ((__tmp130106
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym129725%_
                            '"__"
                            __tmp130106))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym129725%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht129728%_ _%sym129725%_ _%g129734%_))
                _%g129734%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym129739%_)
        (let ((_%quote?129741%_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-gensym-reference__%
           _%sym129739%_
           _%quote?129741%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g130108_
        (let ((_g130107_ (let () (declare (not safe)) (##length _g130108_))))
          (cond ((let () (declare (not safe)) (##fx= _g130107_ 1))
                 (apply (lambda (_%sym129739%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-gensym-reference__0
                             _%sym129739%_)))
                        _g130108_))
                ((let () (declare (not safe)) (##fx= _g130107_ 2))
                 (apply (lambda (_%sym129743%_ _%quote?129744%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-gensym-reference__%
                             _%sym129743%_
                             _%quote?129744%_)))
                        _g130108_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g130108_))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1129717%_ _%id2129718%_)
        (letrec ((_%symbol-e129720%_
                  (lambda (_%id129722%_)
                    (if (let () (declare (not safe)) (symbol? _%id129722%_))
                        _%id129722%_
                        (let ()
                          (declare (not safe))
                          (gxc#generate-runtime-binding-id _%id129722%_))))))
          (eq? (let () (declare (not safe)) (_%symbol-e129720%_ _%id1129717%_))
               (let ()
                 (declare (not safe))
                 (_%symbol-e129720%_ _%id2129718%_))))))
    (define gxc#identifier-symbol
      (lambda (_%stx129715%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx129715%_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _%stx129715%_))
            (let () (declare (not safe)) (gx#stx-e _%stx129715%_)))))))
