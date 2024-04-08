(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1712573431)
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
       (let ((_%verbosity129727129729%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity129727129729%_
             (let* ((_%verbosity129732%_ _%verbosity129727129729%_)
                    (_%$e129734%_ (string->number _%verbosity129732%_)))
               (if _%$e129734%_ _%$e129734%_ _%verbosity129732%_))
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
      (let ((__tmp129789 (list)) (__tmp129788 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp129789
         '(gensyms bindings)
         __tmp129788
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args129725%_
        (apply make-instance gxc#symbol-table::t _%$args129725%_)))
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
      (lambda (_%self129712%_)
        (let ((_%self129715%_ _%self129712%_))
          (if (let ((__tmp129790
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self129715%_))))
                (declare (not safe))
                (##fx< '2 __tmp129790))
              (begin
                (let ((__tmp129791
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self129715%_
                   __tmp129791
                   '1
                   '#f
                   '#f))
                (let ((__tmp129792
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self129715%_
                   __tmp129792
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp129793
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self129715%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self129715%_
                       '2
                       __tmp129793))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message129581%_ _%stx129582%_ . _%details129583%_)
        (let ((_%ctx129588%_
               (let ((_%$e129585%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e129585%_ _%$e129585%_ 'compile))))
          (apply gx#raise-syntax-error
                 _%ctx129588%_
                 _%message129581%_
                 _%stx129582%_
                 _%details129583%_))))
    (define gxc#verbose
      (lambda _%args129578%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp129794 (lambda () (apply displayln _%args129578%_))))
              (declare (not safe))
              (__with-lock gxc#+verbose-mutex+ __tmp129794))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id129560%_)
        (let* ((_%str129562%_
                (if (symbol? _%id129560%_)
                    (symbol->string _%id129560%_)
                    _%id129560%_))
               (_%len129564%_ (string-length _%str129562%_))
               (_%res129566%_
                (let () (declare (not safe)) (##make-string _%len129564%_))))
          (let _%lp129569%_ ((_%i129571%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i129571%_ _%len129564%_))
                (let* ((_%char129573%_ (string-ref _%str129562%_ _%i129571%_))
                       (_%xchar129575%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char129573%_))
                            '#\_
                            _%char129573%_)))
                  (string-set! _%res129566%_ _%i129571%_ _%xchar129575%_)
                  (_%lp129569%_
                   (let () (declare (not safe)) (##fx+ _%i129571%_ '1))))
                _%res129566%_)))))
    (define gxc#map*
      (lambda (_%proc129502%_ _%maybe-improper-list129503%_)
        (let _%recur129505%_ ((_%rest129507%_ _%maybe-improper-list129503%_))
          (let* ((_%rest129508129519%_ _%rest129507%_)
                 (_%E129512129523%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest129508129519%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K129515129548%_
                   (lambda (_%rest129545%_ _%hd129546%_)
                     (cons (_%proc129502%_ _%hd129546%_)
                           (_%recur129505%_ _%rest129545%_))))
                  (_%K129514129539%_ (lambda () '()))
                  (_%K129513129529%_
                   (lambda (_%tail129527%_) (_%proc129502%_ _%tail129527%_))))
              (let ((_%try-match129510129542%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest129508129519%_))
                           (_%K129514129539%_)
                           (let ((_%tail129532%_ _%rest129508129519%_))
                             (declare (not safe))
                             (_%proc129502%_ _%tail129532%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest129508129519%_))
                    (let ((_%tl129517129553%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest129508129519%_)))
                          (_%hd129516129551%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest129508129519%_))))
                      (let ((_%hd129556%_ _%hd129516129551%_)
                            (_%rest129558%_ _%tl129517129553%_))
                        (_%K129515129548%_ _%rest129558%_ _%hd129556%_)))
                    (_%try-match129510129542%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym129497%_)
        (let ((_%$e129499%_ (not (gxc#gensym-reference? _%sym129497%_))))
          (if _%$e129499%_
              _%$e129499%_
              (memq _%sym129497%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym129493%_)
        (let ((_%str129495%_ (symbol->string _%sym129493%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str129495%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str129495%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id129464%_)
        (let ((_%$e129466%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id129464%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id129464%_))
                   '#f)))
          (if _%$e129466%_
              ((lambda (_%bind129469%_)
                 (let ((_%eid129471%_
                        (##structure-ref _%bind129469%_ '1 gx#binding::t '#f))
                       (_%ht129472%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid129471%_))
                       _%eid129471%_
                       (let ((_%$e129475%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht129472%_ _%eid129471%_))))
                         (if _%$e129475%_
                             _%$e129475%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind129469%_
                                    'gx#local-binding::t))
                                 (let ((_%gid129479%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid129471%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht129472%_
                                      _%eid129471%_
                                      _%gid129479%_))
                                   _%gid129479%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind129469%_
                                        'gx#module-binding::t))
                                     (let ((_%gid129488%_
                                            (let ((_%$e129482%_
                                                   (##structure-ref
                                                    (##structure-ref
                                                     _%bind129469%_
                                                     '4
                                                     gx#module-binding::t
                                                     '#f)
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e129482%_
                                                  ((lambda (_%ns129485%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns129485%_
                                                        '"#"
                                                        _%eid129471%_)))
                                                   _%$e129482%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid129471%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht129472%_
                                          _%eid129471%_
                                          _%gid129488%_))
                                       _%gid129488%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id129464%_
                                      _%eid129471%_
                                      _%bind129469%_))))))))
               _%$e129466%_)
              (if (let ((__tmp129795
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id129464%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp129795))
                  (let () (declare (not safe)) (gx#stx-e _%id129464%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id129464%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id129462%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id129462%_))
            (gxc#generate-runtime-binding-id _%id129462%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top129449%_)
        (if _%top129449%_
            (let ((_%ns129451%_
                   (##structure-ref
                    (let ((__tmp129796
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp129796))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi129452%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns129451%_
                  (if (fxpositive? _%phi129452%_)
                      (let ((__tmp129798 (number->string _%phi129452%_))
                            (__tmp129797
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns129451%_
                         '"["
                         __tmp129798
                         '"]#_"
                         __tmp129797
                         '"_"))
                      (let ((__tmp129799
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns129451%_ '"#_" __tmp129799 '"_")))
                  (if (fxpositive? _%phi129452%_)
                      (let ((__tmp129801 (number->string _%phi129452%_))
                            (__tmp129800
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp129801
                         '"]#_"
                         __tmp129800
                         '"_"))
                      (let ((__tmp129802
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp129802 '"_")))))
            (let ((__tmp129803 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp129803 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top129458%_ '#f))
          (gxc#generate-runtime-temporary__% _%top129458%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g129805_
        (let ((_g129804_ (let () (declare (not safe)) (##length _g129805_))))
          (cond ((let () (declare (not safe)) (##fx= _g129804_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g129805_))
                ((let () (declare (not safe)) (##fx= _g129804_ 1))
                 (apply gxc#generate-runtime-temporary__% _g129805_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g129805_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym129427%_ _%quote?129428%_)
        (let* ((_%ht129430%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e129432%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht129430%_ _%sym129427%_))))
          (if _%$e129432%_
              _%$e129432%_
              (let ((_%g129436%_
                     (if _%quote?129428%_
                         (let ((__tmp129806
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym129427%_
                            '"__"
                            __tmp129806))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym129427%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht129430%_ _%sym129427%_ _%g129436%_))
                _%g129436%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym129441%_)
        (let ((_%quote?129443%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym129441%_
           _%quote?129443%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g129808_
        (let ((_g129807_ (let () (declare (not safe)) (##length _g129808_))))
          (cond ((let () (declare (not safe)) (##fx= _g129807_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g129808_))
                ((let () (declare (not safe)) (##fx= _g129807_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g129808_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g129808_))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1129419%_ _%id2129420%_)
        (letrec ((_%symbol-e129422%_
                  (lambda (_%id129424%_)
                    (if (symbol? _%id129424%_)
                        _%id129424%_
                        (gxc#generate-runtime-binding-id _%id129424%_)))))
          (eq? (_%symbol-e129422%_ _%id1129419%_)
               (_%symbol-e129422%_ _%id2129420%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx129417%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx129417%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx129417%_)
            (let () (declare (not safe)) (gx#stx-e _%stx129417%_)))))))
