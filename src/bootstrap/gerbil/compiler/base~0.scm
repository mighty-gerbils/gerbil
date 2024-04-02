(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1712093477)
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
       (let ((_%verbosity130086130088%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity130086130088%_
             (let* ((_%verbosity130091%_ _%verbosity130086130088%_)
                    (_%$e130093%_ (string->number _%verbosity130091%_)))
               (if _%$e130093%_ _%$e130093%_ _%verbosity130091%_))
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
      (let ((__tmp130148 (list)) (__tmp130147 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp130148
         '(gensyms bindings)
         __tmp130147
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args130084%_
        (apply make-instance gxc#symbol-table::t _%$args130084%_)))
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
      (lambda (_%self130071%_)
        (let ()
          (let ((_%self130074%_ _%self130071%_))
            (let ()
              (if (let ((__tmp130149
                         (let ()
                           (declare (not safe))
                           (##structure-length _%self130074%_))))
                    (declare (not safe))
                    (##fx< '2 __tmp130149))
                  (begin
                    (let ((__tmp130150
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (declare (not safe))
                      (##unchecked-structure-set!
                       _%self130074%_
                       __tmp130150
                       '1
                       '#f
                       '#f))
                    (let ((__tmp130151
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (declare (not safe))
                      (##unchecked-structure-set!
                       _%self130074%_
                       __tmp130151
                       '2
                       '#f
                       '#f))
                    '#!void)
                  (let ((__tmp130152
                         (let ()
                           (declare (not safe))
                           (##vector-length _%self130074%_))))
                    (declare (not safe))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self130074%_
                           '2
                           __tmp130152))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message129940%_ _%stx129941%_ . _%details129942%_)
        (let ((_%ctx129947%_
               (let ((_%$e129944%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e129944%_ _%$e129944%_ 'compile))))
          (apply gx#raise-syntax-error
                 _%ctx129947%_
                 _%message129940%_
                 _%stx129941%_
                 _%details129942%_))))
    (define gxc#verbose
      (lambda _%args129937%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp130153 (lambda () (apply displayln _%args129937%_))))
              (declare (not safe))
              (__with-lock gxc#+verbose-mutex+ __tmp130153))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id129919%_)
        (let* ((_%str129921%_
                (if (let () (declare (not safe)) (symbol? _%id129919%_))
                    (symbol->string _%id129919%_)
                    _%id129919%_))
               (_%len129923%_ (string-length _%str129921%_))
               (_%res129925%_
                (let () (declare (not safe)) (##make-string _%len129923%_))))
          (let _%lp129928%_ ((_%i129930%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i129930%_ _%len129923%_))
                (let* ((_%char129932%_ (string-ref _%str129921%_ _%i129930%_))
                       (_%xchar129934%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char129932%_))
                            '#\_
                            _%char129932%_)))
                  (string-set! _%res129925%_ _%i129930%_ _%xchar129934%_)
                  (let ((__tmp130154
                         (let () (declare (not safe)) (##fx+ _%i129930%_ '1))))
                    (declare (not safe))
                    (_%lp129928%_ __tmp130154)))
                _%res129925%_)))))
    (define gxc#map*
      (lambda (_%proc129861%_ _%maybe-improper-list129862%_)
        (let _%recur129864%_ ((_%rest129866%_ _%maybe-improper-list129862%_))
          (let* ((_%rest129867129878%_ _%rest129866%_)
                 (_%E129871129882%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest129867129878%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K129874129907%_
                   (lambda (_%rest129904%_ _%hd129905%_)
                     (cons (_%proc129861%_ _%hd129905%_)
                           (let ()
                             (declare (not safe))
                             (_%recur129864%_ _%rest129904%_)))))
                  (_%K129873129898%_ (lambda () '()))
                  (_%K129872129888%_
                   (lambda (_%tail129886%_) (_%proc129861%_ _%tail129886%_))))
              (let ((_%try-match129869129901%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest129867129878%_))
                           (let () (declare (not safe)) (_%K129873129898%_))
                           (let ((_%tail129891%_ _%rest129867129878%_))
                             (declare (not safe))
                             (_%proc129861%_ _%tail129891%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest129867129878%_))
                    (let ((_%tl129876129912%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest129867129878%_)))
                          (_%hd129875129910%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest129867129878%_))))
                      (let ((_%hd129915%_ _%hd129875129910%_)
                            (_%rest129917%_ _%tl129876129912%_))
                        (let ()
                          (declare (not safe))
                          (_%K129874129907%_ _%rest129917%_ _%hd129915%_))))
                    (let ()
                      (declare (not safe))
                      (_%try-match129869129901%_)))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym129856%_)
        (let ((_%$e129858%_
               (let ((__tmp130155
                      (let ()
                        (declare (not safe))
                        (gxc#gensym-reference? _%sym129856%_))))
                 (declare (not safe))
                 (not __tmp130155))))
          (if _%$e129858%_
              _%$e129858%_
              (memq _%sym129856%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym129852%_)
        (let ((_%str129854%_ (symbol->string _%sym129852%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str129854%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str129854%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id129823%_)
        (let ((_%$e129825%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id129823%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id129823%_))
                   '#f)))
          (if _%$e129825%_
              ((lambda (_%bind129828%_)
                 (let ((_%eid129830%_
                        (##structure-ref _%bind129828%_ '1 gx#binding::t '#f))
                       (_%ht129831%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid129830%_))
                       (let () _%eid129830%_)
                       (let ((_%$e129834%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht129831%_ _%eid129830%_))))
                         (if _%$e129834%_
                             _%$e129834%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind129828%_
                                    'gx#local-binding::t))
                                 (let ()
                                   (let ((_%gid129838%_
                                          (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-gensym-reference__0
                                             _%eid129830%_))))
                                     (let ()
                                       (declare (not safe))
                                       (hash-put!
                                        _%ht129831%_
                                        _%eid129830%_
                                        _%gid129838%_))
                                     _%gid129838%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind129828%_
                                        'gx#module-binding::t))
                                     (let ()
                                       (let ((_%gid129847%_
                                              (let ((_%$e129841%_
                                                     (##structure-ref
                                                      (##structure-ref
                                                       _%bind129828%_
                                                       '4
                                                       gx#module-binding::t
                                                       '#f)
                                                      '6
                                                      gx#module-context::t
                                                      '#f)))
                                                (if _%$e129841%_
                                                    ((lambda (_%ns129844%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (make-symbol__1
                                                          _%ns129844%_
                                                          '"#"
                                                          _%eid129830%_)))
                                                     _%$e129841%_)
                                                    (let ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#generate-runtime-gensym-reference__0
                                                         _%eid129830%_)))))))
                                         (let ()
                                           (declare (not safe))
                                           (hash-put!
                                            _%ht129831%_
                                            _%eid129830%_
                                            _%gid129847%_))
                                         _%gid129847%_))
                                     (let ()
                                       (let ()
                                         (declare (not safe))
                                         (gxc#raise-compile-error
                                          '"Cannot compile reference to uninterned binding"
                                          _%id129823%_
                                          _%eid129830%_
                                          _%bind129828%_))))))))))
               _%$e129825%_)
              (if (let ((__tmp130156
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id129823%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp130156))
                  (let ()
                    (let () (declare (not safe)) (gx#stx-e _%id129823%_)))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Cannot compile reference to uninterned identifier"
                       _%id129823%_))))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id129821%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id129821%_))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _%id129821%_))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-temporary__0)))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top129808%_)
        (if _%top129808%_
            (let ((_%ns129810%_
                   (##structure-ref
                    (let ((__tmp130157
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp130157))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi129811%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns129810%_
                  (if (fxpositive? _%phi129811%_)
                      (let ((__tmp130159 (number->string _%phi129811%_))
                            (__tmp130158
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns129810%_
                         '"["
                         __tmp130159
                         '"]#_"
                         __tmp130158
                         '"_"))
                      (let ((__tmp130160
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns129810%_ '"#_" __tmp130160 '"_")))
                  (if (fxpositive? _%phi129811%_)
                      (let ((__tmp130162 (number->string _%phi129811%_))
                            (__tmp130161
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp130162
                         '"]#_"
                         __tmp130161
                         '"_"))
                      (let ((__tmp130163
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp130163 '"_")))))
            (let ((__tmp130164 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp130164 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top129817%_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-temporary__% _%top129817%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g130166_
        (let ((_g130165_ (let () (declare (not safe)) (##length _g130166_))))
          (cond ((let () (declare (not safe)) (##fx= _g130165_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-temporary__0)))
                        _g130166_))
                ((let () (declare (not safe)) (##fx= _g130165_ 1))
                 (apply (lambda (_%top129819%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-temporary__% _%top129819%_)))
                        _g130166_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g130166_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym129786%_ _%quote?129787%_)
        (let* ((_%ht129789%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e129791%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht129789%_ _%sym129786%_))))
          (if _%$e129791%_
              _%$e129791%_
              (let ()
                (let ((_%g129795%_
                       (if _%quote?129787%_
                           (let ((__tmp130167
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-timestamp))))
                             (declare (not safe))
                             (make-symbol__1
                              '"__"
                              _%sym129786%_
                              '"__"
                              __tmp130167))
                           (let ()
                             (declare (not safe))
                             (make-symbol__1 '"_%" _%sym129786%_ '"%_")))))
                  (let ()
                    (declare (not safe))
                    (hash-put! _%ht129789%_ _%sym129786%_ _%g129795%_))
                  _%g129795%_))))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym129800%_)
        (let ((_%quote?129802%_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-gensym-reference__%
           _%sym129800%_
           _%quote?129802%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g130169_
        (let ((_g130168_ (let () (declare (not safe)) (##length _g130169_))))
          (cond ((let () (declare (not safe)) (##fx= _g130168_ 1))
                 (apply (lambda (_%sym129800%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-gensym-reference__0
                             _%sym129800%_)))
                        _g130169_))
                ((let () (declare (not safe)) (##fx= _g130168_ 2))
                 (apply (lambda (_%sym129804%_ _%quote?129805%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-gensym-reference__%
                             _%sym129804%_
                             _%quote?129805%_)))
                        _g130169_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g130169_))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1129778%_ _%id2129779%_)
        (letrec ((_%symbol-e129781%_
                  (lambda (_%id129783%_)
                    (if (let () (declare (not safe)) (symbol? _%id129783%_))
                        _%id129783%_
                        (let ()
                          (declare (not safe))
                          (gxc#generate-runtime-binding-id _%id129783%_))))))
          (eq? (let () (declare (not safe)) (_%symbol-e129781%_ _%id1129778%_))
               (let ()
                 (declare (not safe))
                 (_%symbol-e129781%_ _%id2129779%_))))))
    (define gxc#identifier-symbol
      (lambda (_%stx129776%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx129776%_
               'gx#syntax-quote::t))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _%stx129776%_))
            (let () (declare (not safe)) (gx#stx-e _%stx129776%_)))))))
