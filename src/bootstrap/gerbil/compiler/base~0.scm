(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1734215270)
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
       (let ((_%verbosity134141134143%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity134141134143%_
             (let* ((_%verbosity134146%_ _%verbosity134141134143%_)
                    (_%$e134148%_ (string->number _%verbosity134146%_)))
               (if _%$e134148%_ _%$e134148%_ _%verbosity134146%_))
             '#f))))
    (define gxc#current-compile-optimize (make-parameter '#f))
    (define gxc#current-compile-debug (make-parameter '#f))
    (define gxc#current-compile-generate-ssxi (make-parameter '#f))
    (define gxc#current-compile-static (make-parameter '#f))
    (define gxc#current-compile-timestamp (make-parameter '#f))
    (define gxc#current-compile-decls (make-parameter '#f))
    (define gxc#current-compile-context (make-parameter '#f))
    (define gxc#current-compile-parallel (make-parameter '#f))
    (define gxc#current-compile-local-env (make-parameter '()))
    (define gxc#symbol-table::t
      (let ((__tmp134203 (list)) (__tmp134202 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp134203
         '(gensyms bindings)
         __tmp134202
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args134139%_
        (apply make-instance gxc#symbol-table::t _%$args134139%_)))
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
      (lambda (_%self133661134124%_)
        (let* ((_%self134127%_ _%self133661134124%_)
               (_%self134129%_ _%self134127%_))
          (if (let ((__tmp134204
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self134129%_))))
                (declare (not safe))
                (##fx< '2 __tmp134204))
              (begin
                (let ((__tmp134205
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self134129%_
                   __tmp134205
                   '1
                   '#f
                   '#f))
                (let ((__tmp134206
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self134129%_
                   __tmp134206
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp134207
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self134129%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self134129%_
                       '2
                       __tmp134207))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message133993%_ _%stx133994%_ . _%details133995%_)
        (let ((_%ctx134000%_
               (let ((_%$e133997%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e133997%_ _%$e133997%_ 'compile))))
          (apply gx#raise-syntax-error
                 _%ctx134000%_
                 _%message133993%_
                 _%stx133994%_
                 _%details133995%_))))
    (define gxc#verbose
      (lambda _%args133990%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp134208
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args133990%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp134208))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id133972%_)
        (let* ((_%str133974%_
                (if (symbol? _%id133972%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id133972%_))
                    _%id133972%_))
               (_%len133976%_ (string-length _%str133974%_))
               (_%res133978%_
                (let () (declare (not safe)) (##make-string _%len133976%_))))
          (let _%lp133981%_ ((_%i133983%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i133983%_ _%len133976%_))
                (let* ((_%char133985%_ (string-ref _%str133974%_ _%i133983%_))
                       (_%xchar133987%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char133985%_))
                            '#\_
                            _%char133985%_)))
                  (string-set! _%res133978%_ _%i133983%_ _%xchar133987%_)
                  (_%lp133981%_
                   (let () (declare (not safe)) (##fx+ _%i133983%_ '1))))
                _%res133978%_)))))
    (define gxc#map*
      (lambda (_%proc133914%_ _%maybe-improper-list133915%_)
        (let _%recur133917%_ ((_%rest133919%_ _%maybe-improper-list133915%_))
          (let* ((_%rest133920133931%_ _%rest133919%_)
                 (_%E133924133935%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest133920133931%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K133927133960%_
                   (lambda (_%rest133957%_ _%hd133958%_)
                     (cons (_%proc133914%_ _%hd133958%_)
                           (_%recur133917%_ _%rest133957%_))))
                  (_%K133926133951%_ (lambda () '()))
                  (_%K133925133941%_
                   (lambda (_%tail133939%_) (_%proc133914%_ _%tail133939%_))))
              (let ((_%try-match133922133954%_
                     (lambda ()
                       (if (null? _%rest133920133931%_)
                           (_%K133926133951%_)
                           (let ((_%tail133944%_ _%rest133920133931%_))
                             (declare (not safe))
                             (_%proc133914%_ _%tail133944%_))))))
                (if (pair? _%rest133920133931%_)
                    (let ((_%tl133929133965%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest133920133931%_)))
                          (_%hd133928133963%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest133920133931%_))))
                      (let ((_%hd133968%_ _%hd133928133963%_)
                            (_%rest133970%_ _%tl133929133965%_))
                        (_%K133927133960%_ _%rest133970%_ _%hd133968%_)))
                    (_%try-match133922133954%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym133909%_)
        (let ((_%$e133911%_ (not (gxc#gensym-reference? _%sym133909%_))))
          (if _%$e133911%_
              _%$e133911%_
              (memq _%sym133909%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym133905%_)
        (let ((_%str133907%_ (symbol->string _%sym133905%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str133907%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str133907%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id133876%_)
        (let ((_%$e133878%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id133876%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id133876%_))
                   '#f)))
          (if _%$e133878%_
              ((lambda (_%bind133881%_)
                 (let ((_%eid133883%_
                        (##structure-ref _%bind133881%_ '1 gx#binding::t '#f))
                       (_%ht133884%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid133883%_))
                       _%eid133883%_
                       (let ((_%$e133887%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht133884%_ _%eid133883%_))))
                         (if _%$e133887%_
                             _%$e133887%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind133881%_
                                    'gx#local-binding::t))
                                 (let ((_%gid133891%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid133883%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht133884%_
                                      _%eid133883%_
                                      _%gid133891%_))
                                   _%gid133891%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind133881%_
                                        'gx#module-binding::t))
                                     (let ((_%gid133900%_
                                            (let ((_%$e133894%_
                                                   (##structure-ref
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%bind133881%_
                                                       '4
                                                       '#f
                                                       '#f))
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e133894%_
                                                  ((lambda (_%ns133897%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns133897%_
                                                        '"#"
                                                        _%eid133883%_)))
                                                   _%$e133894%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid133883%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht133884%_
                                          _%eid133883%_
                                          _%gid133900%_))
                                       _%gid133900%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id133876%_
                                      _%eid133883%_
                                      _%bind133881%_))))))))
               _%$e133878%_)
              (if (let ((__tmp134209
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id133876%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp134209))
                  (let () (declare (not safe)) (gx#stx-e _%id133876%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id133876%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id133874%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id133874%_))
            (gxc#generate-runtime-binding-id _%id133874%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top133861%_)
        (if _%top133861%_
            (let ((_%ns133863%_
                   (##structure-ref
                    (let ((__tmp134210
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp134210))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi133864%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns133863%_
                  (if (fxpositive? _%phi133864%_)
                      (let ((__tmp134212 (number->string _%phi133864%_))
                            (__tmp134211
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns133863%_
                         '"["
                         __tmp134212
                         '"]#_"
                         __tmp134211
                         '"_"))
                      (let ((__tmp134213
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns133863%_ '"#_" __tmp134213 '"_")))
                  (if (fxpositive? _%phi133864%_)
                      (let ((__tmp134215 (number->string _%phi133864%_))
                            (__tmp134214
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp134215
                         '"]#_"
                         __tmp134214
                         '"_"))
                      (let ((__tmp134216
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp134216 '"_")))))
            (let ((__tmp134217 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp134217 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top133870%_ '#f))
          (gxc#generate-runtime-temporary__% _%top133870%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g134219_
        (let ((_g134218_ (let () (declare (not safe)) (##length _g134219_))))
          (cond ((let () (declare (not safe)) (##fx= _g134218_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g134219_))
                ((let () (declare (not safe)) (##fx= _g134218_ 1))
                 (apply gxc#generate-runtime-temporary__% _g134219_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g134219_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym133839%_ _%quote?133840%_)
        (let* ((_%ht133842%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e133844%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht133842%_ _%sym133839%_))))
          (if _%$e133844%_
              _%$e133844%_
              (let ((_%g133848%_
                     (if _%quote?133840%_
                         (let ((__tmp134220
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym133839%_
                            '"__"
                            __tmp134220))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym133839%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht133842%_ _%sym133839%_ _%g133848%_))
                _%g133848%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym133853%_)
        (let ((_%quote?133855%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym133853%_
           _%quote?133855%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g134222_
        (let ((_g134221_ (let () (declare (not safe)) (##length _g134222_))))
          (cond ((let () (declare (not safe)) (##fx= _g134221_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g134222_))
                ((let () (declare (not safe)) (##fx= _g134221_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g134222_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g134222_))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1133831%_ _%id2133832%_)
        (letrec ((_%symbol-e133834%_
                  (lambda (_%id133836%_)
                    (if (symbol? _%id133836%_)
                        _%id133836%_
                        (gxc#generate-runtime-binding-id _%id133836%_)))))
          (eq? (_%symbol-e133834%_ _%id1133831%_)
               (_%symbol-e133834%_ _%id2133832%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx133829%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx133829%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx133829%_)
            (let () (declare (not safe)) (gx#stx-e _%stx133829%_)))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk133814%_ _%name133815%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job133817%_
               (gxc#make-compile-job _%thunk133814%_ _%name133815%_)))
          (set! gxc#__compile-jobs (cons _%job133817%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk133822%_)
        (let ((_%name133824%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk133822%_ _%name133824%_))))
    (define gxc#add-compile-job!
      (lambda _g134224_
        (let ((_g134223_ (let () (declare (not safe)) (##length _g134224_))))
          (cond ((let () (declare (not safe)) (##fx= _g134223_ 1))
                 (apply gxc#add-compile-job!__0 _g134224_))
                ((let () (declare (not safe)) (##fx= _g134223_ 2))
                 (apply gxc#add-compile-job!__% _g134224_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g134224_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result133811%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result133811%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop133805%_ ()
          (let ((_%pending133808%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending133808%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending133808%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending133808%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk133794%_ _%name133795%_)
        (make-thread
         (lambda ()
           (let _%loop133798%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp134225
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name133795%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp134225))
                   (let ((__tmp134227 (lambda () (_%thunk133794%_)))
                         (__tmp134226
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp134227 __tmp134226)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop133798%_)))))
         _%name133795%_)))
    (define gxc#join!
      (lambda (_%thread133789%_)
        (let ((__tmp134229
               (lambda (_%exn133791%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn133791%_))
                     (let ((__tmp134230
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn133791%_))))
                       (declare (not safe))
                       (raise __tmp134230))
                     (let () (declare (not safe)) (raise _%exn133791%_)))))
              (__tmp134228 (lambda () (thread-join! _%thread133789%_))))
          (declare (not safe))
          (__with-catch __tmp134229 __tmp134228))))))
