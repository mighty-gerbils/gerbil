(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1712124235)
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
       (let ((_%verbosity130032130034%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity130032130034%_
             (let* ((_%verbosity130037%_ _%verbosity130032130034%_)
                    (_%$e130039%_ (string->number _%verbosity130037%_)))
               (if _%$e130039%_ _%$e130039%_ _%verbosity130037%_))
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
      (let ((__tmp130094 (list)) (__tmp130093 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp130094
         '(gensyms bindings)
         __tmp130093
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args130030%_
        (apply make-instance gxc#symbol-table::t _%$args130030%_)))
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
      (lambda (_%self130017%_)
        (let ()
          (let ((_%self130020%_ _%self130017%_))
            (let ()
              (if (let ((__tmp130095
                         (let ()
                           (declare (not safe))
                           (##structure-length _%self130020%_))))
                    (declare (not safe))
                    (##fx< '2 __tmp130095))
                  (begin
                    (let ((__tmp130096
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (declare (not safe))
                      (##unchecked-structure-set!
                       _%self130020%_
                       __tmp130096
                       '1
                       '#f
                       '#f))
                    (let ((__tmp130097
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (declare (not safe))
                      (##unchecked-structure-set!
                       _%self130020%_
                       __tmp130097
                       '2
                       '#f
                       '#f))
                    '#!void)
                  (let ((__tmp130098
                         (let ()
                           (declare (not safe))
                           (##vector-length _%self130020%_))))
                    (declare (not safe))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self130020%_
                           '2
                           __tmp130098))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message129886%_ _%stx129887%_ . _%details129888%_)
        (let ((_%ctx129893%_
               (let ((_%$e129890%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e129890%_ _%$e129890%_ 'compile))))
          (apply gx#raise-syntax-error
                 _%ctx129893%_
                 _%message129886%_
                 _%stx129887%_
                 _%details129888%_))))
    (define gxc#verbose
      (lambda _%args129883%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp130099 (lambda () (apply displayln _%args129883%_))))
              (declare (not safe))
              (__with-lock gxc#+verbose-mutex+ __tmp130099))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id129865%_)
        (let* ((_%str129867%_
                (if (let () (declare (not safe)) (symbol? _%id129865%_))
                    (symbol->string _%id129865%_)
                    _%id129865%_))
               (_%len129869%_ (string-length _%str129867%_))
               (_%res129871%_
                (let () (declare (not safe)) (##make-string _%len129869%_))))
          (let _%lp129874%_ ((_%i129876%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i129876%_ _%len129869%_))
                (let* ((_%char129878%_ (string-ref _%str129867%_ _%i129876%_))
                       (_%xchar129880%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char129878%_))
                            '#\_
                            _%char129878%_)))
                  (string-set! _%res129871%_ _%i129876%_ _%xchar129880%_)
                  (let ((__tmp130100
                         (let () (declare (not safe)) (##fx+ _%i129876%_ '1))))
                    (declare (not safe))
                    (_%lp129874%_ __tmp130100)))
                _%res129871%_)))))
    (define gxc#map*
      (lambda (_%proc129807%_ _%maybe-improper-list129808%_)
        (let _%recur129810%_ ((_%rest129812%_ _%maybe-improper-list129808%_))
          (let* ((_%rest129813129824%_ _%rest129812%_)
                 (_%E129817129828%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest129813129824%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K129820129853%_
                   (lambda (_%rest129850%_ _%hd129851%_)
                     (cons (_%proc129807%_ _%hd129851%_)
                           (let ()
                             (declare (not safe))
                             (_%recur129810%_ _%rest129850%_)))))
                  (_%K129819129844%_ (lambda () '()))
                  (_%K129818129834%_
                   (lambda (_%tail129832%_) (_%proc129807%_ _%tail129832%_))))
              (let ((_%try-match129815129847%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest129813129824%_))
                           (let () (declare (not safe)) (_%K129819129844%_))
                           (let ((_%tail129837%_ _%rest129813129824%_))
                             (declare (not safe))
                             (_%proc129807%_ _%tail129837%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest129813129824%_))
                    (let ((_%tl129822129858%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest129813129824%_)))
                          (_%hd129821129856%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest129813129824%_))))
                      (let ((_%hd129861%_ _%hd129821129856%_)
                            (_%rest129863%_ _%tl129822129858%_))
                        (let ()
                          (declare (not safe))
                          (_%K129820129853%_ _%rest129863%_ _%hd129861%_))))
                    (let ()
                      (declare (not safe))
                      (_%try-match129815129847%_)))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym129802%_)
        (let ((_%$e129804%_
               (let ((__tmp130101
                      (let ()
                        (declare (not safe))
                        (gxc#gensym-reference? _%sym129802%_))))
                 (declare (not safe))
                 (not __tmp130101))))
          (if _%$e129804%_
              _%$e129804%_
              (memq _%sym129802%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym129798%_)
        (let ((_%str129800%_ (symbol->string _%sym129798%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str129800%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str129800%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id129769%_)
        (let ((_%$e129771%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id129769%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id129769%_))
                   '#f)))
          (if _%$e129771%_
              ((lambda (_%bind129774%_)
                 (let ((_%eid129776%_
                        (##structure-ref _%bind129774%_ '1 gx#binding::t '#f))
                       (_%ht129777%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid129776%_))
                       (let () _%eid129776%_)
                       (let ((_%$e129780%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht129777%_ _%eid129776%_))))
                         (if _%$e129780%_
                             _%$e129780%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind129774%_
                                    'gx#local-binding::t))
                                 (let ()
                                   (let ((_%gid129784%_
                                          (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-gensym-reference__0
                                             _%eid129776%_))))
                                     (let ()
                                       (declare (not safe))
                                       (hash-put!
                                        _%ht129777%_
                                        _%eid129776%_
                                        _%gid129784%_))
                                     _%gid129784%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind129774%_
                                        'gx#module-binding::t))
                                     (let ()
                                       (let ((_%gid129793%_
                                              (let ((_%$e129787%_
                                                     (##structure-ref
                                                      (##structure-ref
                                                       _%bind129774%_
                                                       '4
                                                       gx#module-binding::t
                                                       '#f)
                                                      '6
                                                      gx#module-context::t
                                                      '#f)))
                                                (if _%$e129787%_
                                                    ((lambda (_%ns129790%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (make-symbol__1
                                                          _%ns129790%_
                                                          '"#"
                                                          _%eid129776%_)))
                                                     _%$e129787%_)
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#generate-runtime-gensym-reference__0
                                                         _%eid129776%_)))))))
                                         (let ()
                                           (declare (not safe))
                                           (hash-put!
                                            _%ht129777%_
                                            _%eid129776%_
                                            _%gid129793%_))
                                         _%gid129793%_))
                                     (let ()
                                       (let ()
                                         (declare (not safe))
                                         (gxc#raise-compile-error
                                          '"Cannot compile reference to uninterned binding"
                                          _%id129769%_
                                          _%eid129776%_
                                          _%bind129774%_))))))))))
               _%$e129771%_)
              (if (let ((__tmp130102
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id129769%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp130102))
                  (let ()
                    (let () (declare (not safe)) (gx#stx-e _%id129769%_)))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Cannot compile reference to uninterned identifier"
                       _%id129769%_))))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id129767%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id129767%_))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _%id129767%_))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-temporary__0)))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top129754%_)
        (if _%top129754%_
            (let ((_%ns129756%_
                   (##structure-ref
                    (let ((__tmp130103
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp130103))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi129757%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns129756%_
                  (if (fxpositive? _%phi129757%_)
                      (let ((__tmp130105 (number->string _%phi129757%_))
                            (__tmp130104
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns129756%_
                         '"["
                         __tmp130105
                         '"]#_"
                         __tmp130104
                         '"_"))
                      (let ((__tmp130106
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns129756%_ '"#_" __tmp130106 '"_")))
                  (if (fxpositive? _%phi129757%_)
                      (let ((__tmp130108 (number->string _%phi129757%_))
                            (__tmp130107
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp130108
                         '"]#_"
                         __tmp130107
                         '"_"))
                      (let ((__tmp130109
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp130109 '"_")))))
            (let ((__tmp130110 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp130110 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top129763%_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-temporary__% _%top129763%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g130112_
        (let ((_g130111_ (let () (declare (not safe)) (##length _g130112_))))
          (cond ((let () (declare (not safe)) (##fx= _g130111_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-temporary__0)))
                        _g130112_))
                ((let () (declare (not safe)) (##fx= _g130111_ 1))
                 (apply (lambda (_%top129765%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-temporary__% _%top129765%_)))
                        _g130112_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g130112_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym129732%_ _%quote?129733%_)
        (let* ((_%ht129735%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e129737%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht129735%_ _%sym129732%_))))
          (if _%$e129737%_
              _%$e129737%_
              (let ()
                (let ((_%g129741%_
                       (if _%quote?129733%_
                           (let ((__tmp130113
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-timestamp))))
                             (declare (not safe))
                             (make-symbol__1
                              '"__"
                              _%sym129732%_
                              '"__"
                              __tmp130113))
                           (let ()
                             (declare (not safe))
                             (make-symbol__1 '"_%" _%sym129732%_ '"%_")))))
                  (let ()
                    (declare (not safe))
                    (hash-put! _%ht129735%_ _%sym129732%_ _%g129741%_))
                  _%g129741%_))))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym129746%_)
        (let ((_%quote?129748%_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-gensym-reference__%
           _%sym129746%_
           _%quote?129748%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g130115_
        (let ((_g130114_ (let () (declare (not safe)) (##length _g130115_))))
          (cond ((let () (declare (not safe)) (##fx= _g130114_ 1))
                 (apply (lambda (_%sym129746%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-gensym-reference__0
                             _%sym129746%_)))
                        _g130115_))
                ((let () (declare (not safe)) (##fx= _g130114_ 2))
                 (apply (lambda (_%sym129750%_ _%quote?129751%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-gensym-reference__%
                             _%sym129750%_
                             _%quote?129751%_)))
                        _g130115_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g130115_))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1129724%_ _%id2129725%_)
        (letrec ((_%symbol-e129727%_
                  (lambda (_%id129729%_)
                    (if (let () (declare (not safe)) (symbol? _%id129729%_))
                        _%id129729%_
                        (let ()
                          (declare (not safe))
                          (gxc#generate-runtime-binding-id _%id129729%_))))))
          (eq? (let () (declare (not safe)) (_%symbol-e129727%_ _%id1129724%_))
               (let ()
                 (declare (not safe))
                 (_%symbol-e129727%_ _%id2129725%_))))))
    (define gxc#identifier-symbol
      (lambda (_%stx129722%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx129722%_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _%stx129722%_))
            (let () (declare (not safe)) (gx#stx-e _%stx129722%_)))))))
