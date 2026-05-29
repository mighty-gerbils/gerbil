(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1779967244)
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
       (let ((_%verbosity193028193030%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity193028193030%_
             (let* ((_%verbosity193032%_ _%verbosity193028193030%_)
                    (_%$e193034%_ (string->number _%verbosity193032%_)))
               (if _%$e193034%_ _%$e193034%_ _%verbosity193032%_))
             '#f))))
    (define gxc#current-compile-optimize (make-parameter '#f))
    (define gxc#current-compile-debug (make-parameter '#f))
    (define gxc#current-compile-generate-ssxi (make-parameter '#f))
    (define gxc#current-compile-static (make-parameter '#f))
    (define gxc#current-compile-timestamp (make-parameter '#f))
    (define gxc#current-compile-decls (make-parameter '#f))
    (define gxc#current-compile-context (make-parameter '#f))
    (define gxc#current-compile-parallel (make-parameter '#f))
    (define gxc#current-compile-lift (make-parameter '#f))
    (define gxc#current-compile-marks (make-parameter '#f))
    (define gxc#current-compile-identifiers (make-parameter '#f))
    (define gxc#current-compile-boolean-context (make-parameter '#f))
    (define gxc#make-bound-identifier-table
      (lambda ()
        (letrec ((_%hash-e193025%_
                  (lambda (_%id193027%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id193027%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e193025%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#current-compile-local-env (make-parameter '()))
    (define gxc#symbol-table::t
      (let ((__tmp193089 (list)) (__tmp193088 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp193089
         '(gensyms bindings)
         __tmp193088
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args193021%_
        (apply make-instance gxc#symbol-table::t _%$args193021%_)))
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
      (lambda (_%self193008%_)
        (let ((_%self193011%_ _%self193008%_))
          (if (let ((__tmp193090
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self193011%_))))
                (declare (not safe))
                (##fx< '2 __tmp193090))
              (begin
                (let ((__tmp193091
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self193011%_
                   __tmp193091
                   '1
                   '#f
                   '#f))
                (let ((__tmp193092
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self193011%_
                   __tmp193092
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp193093
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self193011%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self193011%_
                       '2
                       __tmp193093))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message192877%_ _%stx192878%_ . _%details192879%_)
        (let ((_%ctx192884%_
               (let ((_%$e192881%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e192881%_ _%$e192881%_ '(compile)))))
          (apply gx#raise-syntax-error
                 _%ctx192884%_
                 _%message192877%_
                 _%stx192878%_
                 _%details192879%_))))
    (define gxc#verbose
      (lambda _%args192874%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp193094
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args192874%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp193094))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id192856%_)
        (let* ((_%str192858%_
                (if (symbol? _%id192856%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id192856%_))
                    _%id192856%_))
               (_%len192860%_ (string-length _%str192858%_))
               (_%res192862%_
                (let () (declare (not safe)) (##make-string _%len192860%_))))
          (let _%lp192865%_ ((_%i192867%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i192867%_ _%len192860%_))
                (let* ((_%char192869%_ (string-ref _%str192858%_ _%i192867%_))
                       (_%xchar192871%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char192869%_))
                            '#\_
                            _%char192869%_)))
                  (string-set! _%res192862%_ _%i192867%_ _%xchar192871%_)
                  (_%lp192865%_
                   (let () (declare (not safe)) (##fx+ _%i192867%_ '1))))
                _%res192862%_)))))
    (define gxc#map*
      (lambda (_%proc192798%_ _%maybe-improper-list192799%_)
        (let _%recur192801%_ ((_%rest192803%_ _%maybe-improper-list192799%_))
          (let* ((_%rest192804192815%_ _%rest192803%_)
                 (_%E192808192819%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest192804192815%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K192811192844%_
                   (lambda (_%rest192841%_ _%hd192842%_)
                     (cons (_%proc192798%_ _%hd192842%_)
                           (_%recur192801%_ _%rest192841%_))))
                  (_%K192810192835%_ (lambda () '()))
                  (_%K192809192825%_
                   (lambda (_%tail192823%_) (_%proc192798%_ _%tail192823%_))))
              (let ((_%try-match192806192838%_
                     (lambda ()
                       (if (null? _%rest192804192815%_)
                           (_%K192810192835%_)
                           (let ((_%tail192828%_ _%rest192804192815%_))
                             (declare (not safe))
                             (_%proc192798%_ _%tail192828%_))))))
                (if (pair? _%rest192804192815%_)
                    (let ((_%tl192813192849%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest192804192815%_)))
                          (_%hd192812192847%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest192804192815%_))))
                      (let ((_%hd192852%_ _%hd192812192847%_)
                            (_%rest192854%_ _%tl192813192849%_))
                        (_%K192811192844%_ _%rest192854%_ _%hd192852%_)))
                    (_%try-match192806192838%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym192793%_)
        (let ((_%$e192795%_ (not (gxc#gensym-reference? _%sym192793%_))))
          (if _%$e192795%_
              _%$e192795%_
              (memq _%sym192793%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym192789%_)
        (let ((_%str192791%_ (symbol->string _%sym192789%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str192791%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str192791%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id192760%_)
        (let ((_%$e192762%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id192760%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id192760%_))
                   '#f)))
          (if _%$e192762%_
              (let ((_%eid192767%_
                     (##structure-ref _%$e192762%_ '1 gx#binding::t '#f))
                    (_%ht192768%_
                     (##structure-ref
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-symbol-table))
                      '2
                      gxc#symbol-table::t
                      '#f)))
                (if (let ()
                      (declare (not safe))
                      (interned-symbol? _%eid192767%_))
                    _%eid192767%_
                    (let ((_%$e192771%_
                           (let ()
                             (declare (not safe))
                             (hash-get _%ht192768%_ _%eid192767%_))))
                      (if _%$e192771%_
                          _%$e192771%_
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%$e192762%_
                                 'gx#local-binding::t))
                              (let ((_%gid192775%_
                                     (gxc#generate-runtime-gensym-reference__0
                                      _%eid192767%_)))
                                (let ()
                                  (declare (not safe))
                                  (hash-put!
                                   _%ht192768%_
                                   _%eid192767%_
                                   _%gid192775%_))
                                _%gid192775%_)
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-instance-of?
                                     _%$e192762%_
                                     'gx#module-binding::t))
                                  (let ((_%gid192784%_
                                         (let ((_%$e192778%_
                                                (##structure-ref
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%$e192762%_
                                                    '7
                                                    '#f
                                                    '#f))
                                                 '6
                                                 gx#module-context::t
                                                 '#f)))
                                           (if _%$e192778%_
                                               (let ()
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  _%$e192778%_
                                                  '"#"
                                                  _%eid192767%_))
                                               (gxc#generate-runtime-gensym-reference__0
                                                _%eid192767%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (hash-put!
                                       _%ht192768%_
                                       _%eid192767%_
                                       _%gid192784%_))
                                    _%gid192784%_)
                                  (gxc#raise-compile-error
                                   '"Cannot compile reference to uninterned binding"
                                   _%id192760%_
                                   _%eid192767%_
                                   _%$e192762%_)))))))
              (if (let ((__tmp193095
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id192760%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp193095))
                  (let () (declare (not safe)) (gx#stx-e _%id192760%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id192760%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id192758%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id192758%_))
            (gxc#generate-runtime-binding-id _%id192758%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top192745%_)
        (if _%top192745%_
            (let ((_%ns192747%_
                   (##structure-ref
                    (let ((__tmp193096
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp193096))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi192748%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns192747%_
                  (if (fxpositive? _%phi192748%_)
                      (let ((__tmp193098 (number->string _%phi192748%_))
                            (__tmp193097
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns192747%_
                         '"["
                         __tmp193098
                         '"]#_"
                         __tmp193097
                         '"_"))
                      (let ((__tmp193099
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns192747%_ '"#_" __tmp193099 '"_")))
                  (if (fxpositive? _%phi192748%_)
                      (let ((__tmp193101 (number->string _%phi192748%_))
                            (__tmp193100
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp193101
                         '"]#_"
                         __tmp193100
                         '"_"))
                      (let ((__tmp193102
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp193102 '"_")))))
            (let ((__tmp193103 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp193103 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top192754%_ '#f))
          (gxc#generate-runtime-temporary__% _%top192754%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g193104_
        (let ((_g193105_ (let () (declare (not safe)) (##length _g193104_))))
          (cond ((let () (declare (not safe)) (##fx= _g193105_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g193104_))
                ((let () (declare (not safe)) (##fx= _g193105_ 1))
                 (apply gxc#generate-runtime-temporary__% _g193104_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g193104_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym192723%_ _%quote?192724%_)
        (let* ((_%ht192726%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e192728%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht192726%_ _%sym192723%_))))
          (if _%$e192728%_
              _%$e192728%_
              (let ((_%g192732%_
                     (if _%quote?192724%_
                         (let ((__tmp193106
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym192723%_
                            '"__"
                            __tmp193106))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym192723%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht192726%_ _%sym192723%_ _%g192732%_))
                _%g192732%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym192737%_)
        (let ((_%quote?192739%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym192737%_
           _%quote?192739%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g193107_
        (let ((_g193108_ (let () (declare (not safe)) (##length _g193107_))))
          (cond ((let () (declare (not safe)) (##fx= _g193108_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g193107_))
                ((let () (declare (not safe)) (##fx= _g193108_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g193107_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g193107_))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id192720%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id192720%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key192675%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key192675%_))
            _%key192675%_
            (if (uninterned-symbol? _%key192675%_)
                (gxc#generate-runtime-gensym-reference__0 _%key192675%_)
                (let* ((_%key192679192686%_ _%key192675%_)
                       (_%E192681192690%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key192679192686%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K192682192708%_
                        (lambda (_%mark192693%_ _%eid192694%_)
                          (let ((_%$e192696%_
                                 (##structure-ref
                                  _%mark192693%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e192696%_
                                (let ((_%$e192701%_
                                       (let ()
                                         (declare (not safe))
                                         (hash-get
                                          _%$e192696%_
                                          _%eid192694%_))))
                                  (if _%$e192701%_
                                      (if (let ()
                                            (declare (not safe))
                                            (interned-symbol? _%$e192701%_))
                                          _%$e192701%_
                                          (gxc#generate-runtime-gensym-reference__0
                                           _%$e192701%_))
                                      (gxc#generate-runtime-identifier-key
                                       _%eid192694%_)))
                                (gxc#generate-runtime-identifier-key
                                 _%eid192694%_))))))
                  (if (pair? _%key192679192686%_)
                      (let ((_%hd192683192711%_
                             (let ()
                               (declare (not safe))
                               (##car _%key192679192686%_)))
                            (_%tl192684192713%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key192679192686%_))))
                        (let* ((_%eid192716%_ _%hd192683192711%_)
                               (_%mark192718%_ _%tl192684192713%_))
                          (_%K192682192708%_ _%mark192718%_ _%eid192716%_)))
                      (_%E192681192690%_)))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1192668%_ _%id2192669%_)
        (letrec ((_%symbol-e192671%_
                  (lambda (_%id192673%_)
                    (if (symbol? _%id192673%_)
                        _%id192673%_
                        (gxc#generate-runtime-binding-id _%id192673%_)))))
          (eq? (_%symbol-e192671%_ _%id1192668%_)
               (_%symbol-e192671%_ _%id2192669%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx192666%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx192666%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx192666%_)
            (let () (declare (not safe)) (gx#stx-e _%stx192666%_)))))
    (define gxc#runtime-identifier-properties
      (lambda (_%id192588%_)
        (let* ((_%bind192590%_
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id192588%_)))
               (_%runtime-props192619%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%bind192590%_
                       'gx#runtime-binding::t))
                    (let* ((_%props192599%_
                            (let ((_%$e192593%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind192590%_
                                      '6
                                      '#f
                                      '#f))))
                              (if _%$e192593%_
                                  (cons 'macro:
                                        (cons (gxc#generate-runtime-identifier
                                               _%$e192593%_)
                                              '()))
                                  '())))
                           (_%props192615%_
                            (let ((_%$e192601%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind192590%_
                                      '5
                                      '#f
                                      '#f))))
                              (if _%$e192601%_
                                  (let ((_%$e192606%_
                                         (let ()
                                           (declare (not safe))
                                           (__method-ref
                                            _%$e192601%_
                                            ':repr))))
                                    (if _%$e192606%_
                                        (let ((_%repr192611%_
                                               (_%$e192606%_ _%$e192601%_)))
                                          (cons 'type:
                                                (cons _%repr192611%_
                                                      _%props192599%_)))
                                        (gxc#raise-compile-error
                                         '"unrepresentable type"
                                         _%id192588%_
                                         _%$e192601%_)))
                                  _%props192599%_))))
                      _%props192615%_)
                    '()))
               (_%$e192622%_
                (##structure-ref _%bind192590%_ '4 gx#binding::t '#f)))
          (if _%$e192622%_
              (let ((__tmp193109
                     (lambda (_%prop192627%_ _%props192628%_)
                       (let* ((_%prop192629192636%_ _%prop192627%_)
                              (_%E192631192639%_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (error '"No clause matching"
                                          _%prop192629192636%_
                                          '([key . value])))
                                 '#!void))
                              (_%K192632192653%_
                               (lambda (_%value192642%_ _%key192643%_)
                                 (let ((_%$e192645%_
                                        (let ()
                                          (declare (not safe))
                                          (__method-ref
                                           _%value192642%_
                                           ':repr))))
                                   (if _%$e192645%_
                                       (let ((_%repr192650%_
                                              (_%$e192645%_ _%value192642%_)))
                                         (cons _%key192643%_
                                               (cons _%repr192650%_
                                                     _%props192628%_)))
                                       (cons _%key192643%_
                                             (cons (cons 'quote
                                                         (cons _%value192642%_
                                                               '()))
                                                   _%props192628%_)))))))
                         (if (pair? _%prop192629192636%_)
                             (let ((_%hd192633192656%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%prop192629192636%_)))
                                   (_%tl192634192658%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%prop192629192636%_))))
                               (let* ((_%key192661%_ _%hd192633192656%_)
                                      (_%value192663%_ _%tl192634192658%_))
                                 (_%K192632192653%_
                                  _%value192663%_
                                  _%key192661%_)))
                             (_%E192631192639%_))))))
                (declare (not safe))
                (foldl__0 __tmp193109 _%runtime-props192619%_ _%$e192622%_))
              _%runtime-props192619%_))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk192573%_ _%name192574%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job192576%_
               (gxc#make-compile-job _%thunk192573%_ _%name192574%_)))
          (set! gxc#__compile-jobs (cons _%job192576%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk192581%_)
        (let ((_%name192583%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk192581%_ _%name192583%_))))
    (define gxc#add-compile-job!
      (lambda _g193110_
        (let ((_g193111_ (let () (declare (not safe)) (##length _g193110_))))
          (cond ((let () (declare (not safe)) (##fx= _g193111_ 1))
                 (apply gxc#add-compile-job!__0 _g193110_))
                ((let () (declare (not safe)) (##fx= _g193111_ 2))
                 (apply gxc#add-compile-job!__% _g193110_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g193110_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result192570%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result192570%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop192564%_ ()
          (let ((_%pending192567%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending192567%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending192567%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending192567%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk192553%_ _%name192554%_)
        (make-thread
         (lambda ()
           (let _%loop192557%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp193112
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name192554%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp193112))
                   (let ((__tmp193114 (lambda () (_%thunk192553%_)))
                         (__tmp193113
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp193114 __tmp193113)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop192557%_)))))
         _%name192554%_)))
    (define gxc#join!
      (lambda (_%thread192548%_)
        (let ((__tmp193116
               (lambda (_%exn192550%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn192550%_))
                     (let ((__tmp193117
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn192550%_))))
                       (declare (not safe))
                       (raise __tmp193117))
                     (let () (declare (not safe)) (raise _%exn192550%_)))))
              (__tmp193115 (lambda () (thread-join! _%thread192548%_))))
          (declare (not safe))
          (__with-catch __tmp193116 __tmp193115))))))
