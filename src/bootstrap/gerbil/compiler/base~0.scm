(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1781138356)
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
       (let ((_%$%verbosity193124193126%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%$%verbosity193124193126%_
             (let* ((_%verbosity193128%_ _%$%verbosity193124193126%_)
                    (_%$e193130%_ (string->number _%verbosity193128%_)))
               (if _%$e193130%_ _%$e193130%_ _%verbosity193128%_))
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
        (letrec ((_%hash-e193121%_
                  (lambda (_%id193123%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id193123%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e193121%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#current-compile-local-env (make-parameter '()))
    (define gxc#symbol-table::t
      (let ((__tmp193185 (list)) (__tmp193184 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp193185
         '(gensyms bindings)
         __tmp193184
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args193117%_
        (apply make-instance gxc#symbol-table::t _%$args193117%_)))
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
      (lambda (_%self193104%_)
        (let ((_%self193107%_ _%self193104%_))
          (if (let ((__tmp193186
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self193107%_))))
                (declare (not safe))
                (##fx< '2 __tmp193186))
              (begin
                (let ((__tmp193187
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self193107%_
                   __tmp193187
                   '1
                   '#f
                   '#f))
                (let ((__tmp193188
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self193107%_
                   __tmp193188
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp193189
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self193107%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self193107%_
                       '2
                       __tmp193189))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message192973%_ _%stx192974%_ . _%details192975%_)
        (let ((_%ctx192980%_
               (let ((_%$e192977%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e192977%_ _%$e192977%_ '(compile)))))
          (apply gx#raise-syntax-error
                 _%ctx192980%_
                 _%message192973%_
                 _%stx192974%_
                 _%details192975%_))))
    (define gxc#verbose
      (lambda _%args192970%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp193190
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args192970%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp193190))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id192952%_)
        (let* ((_%str192954%_
                (if (symbol? _%id192952%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id192952%_))
                    _%id192952%_))
               (_%len192956%_ (string-length _%str192954%_))
               (_%res192958%_
                (let () (declare (not safe)) (##make-string _%len192956%_))))
          (let _%lp192961%_ ((_%i192963%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i192963%_ _%len192956%_))
                (let* ((_%char192965%_ (string-ref _%str192954%_ _%i192963%_))
                       (_%xchar192967%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char192965%_))
                            '#\_
                            _%char192965%_)))
                  (string-set! _%res192958%_ _%i192963%_ _%xchar192967%_)
                  (_%lp192961%_
                   (let () (declare (not safe)) (##fx+ _%i192963%_ '1))))
                _%res192958%_)))))
    (define gxc#map*
      (lambda (_%proc192894%_ _%maybe-improper-list192895%_)
        (let _%recur192897%_ ((_%rest192899%_ _%maybe-improper-list192895%_))
          (let* ((_%$%rest192900192911%_ _%rest192899%_)
                 (_%$%E192904192915%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%$%rest192900192911%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%$%K192907192940%_
                   (lambda (_%rest192937%_ _%hd192938%_)
                     (cons (_%proc192894%_ _%hd192938%_)
                           (_%recur192897%_ _%rest192937%_))))
                  (_%$%K192906192931%_ (lambda () '()))
                  (_%$%K192905192921%_
                   (lambda (_%tail192919%_) (_%proc192894%_ _%tail192919%_))))
              (let ((_%$%try-match192902192934%_
                     (lambda ()
                       (if (null? _%$%rest192900192911%_)
                           (_%$%K192906192931%_)
                           (let ((_%tail192924%_ _%$%rest192900192911%_))
                             (declare (not safe))
                             (_%proc192894%_ _%tail192924%_))))))
                (if (pair? _%$%rest192900192911%_)
                    (let ((_%$%tl192909192945%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest192900192911%_)))
                          (_%$%hd192908192943%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest192900192911%_))))
                      (let ((_%hd192948%_ _%$%hd192908192943%_)
                            (_%rest192950%_ _%$%tl192909192945%_))
                        (_%$%K192907192940%_ _%rest192950%_ _%hd192948%_)))
                    (_%$%try-match192902192934%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym192889%_)
        (let ((_%$e192891%_ (not (gxc#gensym-reference? _%sym192889%_))))
          (if _%$e192891%_
              _%$e192891%_
              (memq _%sym192889%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym192885%_)
        (let ((_%str192887%_ (symbol->string _%sym192885%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str192887%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str192887%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id192856%_)
        (let ((_%$e192858%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id192856%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id192856%_))
                   '#f)))
          (if _%$e192858%_
              (let ((_%eid192863%_
                     (##structure-ref _%$e192858%_ '1 gx#binding::t '#f))
                    (_%ht192864%_
                     (##structure-ref
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-symbol-table))
                      '2
                      gxc#symbol-table::t
                      '#f)))
                (if (let ()
                      (declare (not safe))
                      (interned-symbol? _%eid192863%_))
                    _%eid192863%_
                    (let ((_%$e192867%_
                           (let ()
                             (declare (not safe))
                             (hash-get _%ht192864%_ _%eid192863%_))))
                      (if _%$e192867%_
                          _%$e192867%_
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%$e192858%_
                                 'gx#local-binding::t))
                              (let ((_%gid192871%_
                                     (gxc#generate-runtime-gensym-reference__0
                                      _%eid192863%_)))
                                (let ()
                                  (declare (not safe))
                                  (hash-put!
                                   _%ht192864%_
                                   _%eid192863%_
                                   _%gid192871%_))
                                _%gid192871%_)
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-instance-of?
                                     _%$e192858%_
                                     'gx#module-binding::t))
                                  (let ((_%gid192880%_
                                         (let ((_%$e192874%_
                                                (##structure-ref
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%$e192858%_
                                                    '7
                                                    '#f
                                                    '#f))
                                                 '6
                                                 gx#module-context::t
                                                 '#f)))
                                           (if _%$e192874%_
                                               (let ()
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  _%$e192874%_
                                                  '"#"
                                                  _%eid192863%_))
                                               (gxc#generate-runtime-gensym-reference__0
                                                _%eid192863%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (hash-put!
                                       _%ht192864%_
                                       _%eid192863%_
                                       _%gid192880%_))
                                    _%gid192880%_)
                                  (gxc#raise-compile-error
                                   '"Cannot compile reference to uninterned binding"
                                   _%id192856%_
                                   _%eid192863%_
                                   _%$e192858%_)))))))
              (if (let ((__tmp193191
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id192856%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp193191))
                  (let () (declare (not safe)) (gx#stx-e _%id192856%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id192856%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id192854%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id192854%_))
            (gxc#generate-runtime-binding-id _%id192854%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top192841%_)
        (if _%top192841%_
            (let ((_%ns192843%_
                   (##structure-ref
                    (let ((__tmp193192
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp193192))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi192844%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns192843%_
                  (if (fxpositive? _%phi192844%_)
                      (let ((__tmp193194 (number->string _%phi192844%_))
                            (__tmp193193
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns192843%_
                         '"["
                         __tmp193194
                         '"]#_"
                         __tmp193193
                         '"_"))
                      (let ((__tmp193195
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns192843%_ '"#_" __tmp193195 '"_")))
                  (if (fxpositive? _%phi192844%_)
                      (let ((__tmp193197 (number->string _%phi192844%_))
                            (__tmp193196
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp193197
                         '"]#_"
                         __tmp193196
                         '"_"))
                      (let ((__tmp193198
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp193198 '"_")))))
            (let ((__tmp193199 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp193199 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top192850%_ '#f))
          (gxc#generate-runtime-temporary__% _%top192850%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g193200_
        (let ((_g193201_ (let () (declare (not safe)) (##length _g193200_))))
          (cond ((let () (declare (not safe)) (##fx= _g193201_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g193200_))
                ((let () (declare (not safe)) (##fx= _g193201_ 1))
                 (apply gxc#generate-runtime-temporary__% _g193200_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g193200_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym192819%_ _%quote?192820%_)
        (let* ((_%ht192822%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e192824%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht192822%_ _%sym192819%_))))
          (if _%$e192824%_
              _%$e192824%_
              (let ((_%g192828%_
                     (if _%quote?192820%_
                         (let ((__tmp193202
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym192819%_
                            '"__"
                            __tmp193202))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym192819%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht192822%_ _%sym192819%_ _%g192828%_))
                _%g192828%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym192833%_)
        (let ((_%quote?192835%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym192833%_
           _%quote?192835%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g193203_
        (let ((_g193204_ (let () (declare (not safe)) (##length _g193203_))))
          (cond ((let () (declare (not safe)) (##fx= _g193204_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g193203_))
                ((let () (declare (not safe)) (##fx= _g193204_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g193203_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g193203_))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id192816%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id192816%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key192771%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key192771%_))
            _%key192771%_
            (if (uninterned-symbol? _%key192771%_)
                (gxc#generate-runtime-gensym-reference__0 _%key192771%_)
                (let* ((_%$%key192775192782%_ _%key192771%_)
                       (_%$%E192777192786%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%$%key192775192782%_
                                   '([eid . mark])))
                          '#!void))
                       (_%$%K192778192804%_
                        (lambda (_%mark192789%_ _%eid192790%_)
                          (let ((_%$e192792%_
                                 (##structure-ref
                                  _%mark192789%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e192792%_
                                (let ((_%$e192797%_
                                       (let ()
                                         (declare (not safe))
                                         (hash-get
                                          _%$e192792%_
                                          _%eid192790%_))))
                                  (if _%$e192797%_
                                      (if (let ()
                                            (declare (not safe))
                                            (interned-symbol? _%$e192797%_))
                                          _%$e192797%_
                                          (gxc#generate-runtime-gensym-reference__0
                                           _%$e192797%_))
                                      (gxc#generate-runtime-identifier-key
                                       _%eid192790%_)))
                                (gxc#generate-runtime-identifier-key
                                 _%eid192790%_))))))
                  (if (pair? _%$%key192775192782%_)
                      (let ((_%$%hd192779192807%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%key192775192782%_)))
                            (_%$%tl192780192809%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%key192775192782%_))))
                        (let* ((_%eid192812%_ _%$%hd192779192807%_)
                               (_%mark192814%_ _%$%tl192780192809%_))
                          (_%$%K192778192804%_ _%mark192814%_ _%eid192812%_)))
                      (_%$%E192777192786%_)))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1192764%_ _%id2192765%_)
        (letrec ((_%symbol-e192767%_
                  (lambda (_%id192769%_)
                    (if (symbol? _%id192769%_)
                        _%id192769%_
                        (gxc#generate-runtime-binding-id _%id192769%_)))))
          (eq? (_%symbol-e192767%_ _%id1192764%_)
               (_%symbol-e192767%_ _%id2192765%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx192762%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx192762%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx192762%_)
            (let () (declare (not safe)) (gx#stx-e _%stx192762%_)))))
    (define gxc#runtime-identifier-properties
      (lambda (_%id192684%_)
        (let* ((_%bind192686%_
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id192684%_)))
               (_%runtime-props192715%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%bind192686%_
                       'gx#runtime-binding::t))
                    (let* ((_%props192695%_
                            (let ((_%$e192689%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind192686%_
                                      '6
                                      '#f
                                      '#f))))
                              (if _%$e192689%_
                                  (cons 'macro:
                                        (cons (gxc#generate-runtime-identifier
                                               _%$e192689%_)
                                              '()))
                                  '())))
                           (_%props192711%_
                            (let ((_%$e192697%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind192686%_
                                      '5
                                      '#f
                                      '#f))))
                              (if _%$e192697%_
                                  (let ((_%$e192702%_
                                         (let ()
                                           (declare (not safe))
                                           (__method-ref
                                            _%$e192697%_
                                            ':repr))))
                                    (if _%$e192702%_
                                        (let ((_%repr192707%_
                                               (_%$e192702%_ _%$e192697%_)))
                                          (cons 'type:
                                                (cons _%repr192707%_
                                                      _%props192695%_)))
                                        (gxc#raise-compile-error
                                         '"unrepresentable type"
                                         _%id192684%_
                                         _%$e192697%_)))
                                  _%props192695%_))))
                      _%props192711%_)
                    '()))
               (_%$e192718%_
                (##structure-ref _%bind192686%_ '4 gx#binding::t '#f)))
          (if _%$e192718%_
              (let ((__tmp193205
                     (lambda (_%prop192723%_ _%props192724%_)
                       (let* ((_%$%prop192725192732%_ _%prop192723%_)
                              (_%$%E192727192735%_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (error '"No clause matching"
                                          _%$%prop192725192732%_
                                          '([key . value])))
                                 '#!void))
                              (_%$%K192728192749%_
                               (lambda (_%value192738%_ _%key192739%_)
                                 (let ((_%$e192741%_
                                        (let ()
                                          (declare (not safe))
                                          (__method-ref
                                           _%value192738%_
                                           ':repr))))
                                   (if _%$e192741%_
                                       (let ((_%repr192746%_
                                              (_%$e192741%_ _%value192738%_)))
                                         (cons _%key192739%_
                                               (cons _%repr192746%_
                                                     _%props192724%_)))
                                       (cons _%key192739%_
                                             (cons (cons 'quote
                                                         (cons _%value192738%_
                                                               '()))
                                                   _%props192724%_)))))))
                         (if (pair? _%$%prop192725192732%_)
                             (let ((_%$%hd192729192752%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%prop192725192732%_)))
                                   (_%$%tl192730192754%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%prop192725192732%_))))
                               (let* ((_%key192757%_ _%$%hd192729192752%_)
                                      (_%value192759%_ _%$%tl192730192754%_))
                                 (_%$%K192728192749%_
                                  _%value192759%_
                                  _%key192757%_)))
                             (_%$%E192727192735%_))))))
                (declare (not safe))
                (foldl__0 __tmp193205 _%runtime-props192715%_ _%$e192718%_))
              _%runtime-props192715%_))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk192669%_ _%name192670%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job192672%_
               (gxc#make-compile-job _%thunk192669%_ _%name192670%_)))
          (set! gxc#__compile-jobs (cons _%job192672%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk192677%_)
        (let ((_%name192679%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk192677%_ _%name192679%_))))
    (define gxc#add-compile-job!
      (lambda _g193206_
        (let ((_g193207_ (let () (declare (not safe)) (##length _g193206_))))
          (cond ((let () (declare (not safe)) (##fx= _g193207_ 1))
                 (apply gxc#add-compile-job!__0 _g193206_))
                ((let () (declare (not safe)) (##fx= _g193207_ 2))
                 (apply gxc#add-compile-job!__% _g193206_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g193206_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result192666%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result192666%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop192660%_ ()
          (let ((_%pending192663%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending192663%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending192663%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending192663%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk192649%_ _%name192650%_)
        (make-thread
         (lambda ()
           (let _%loop192653%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp193208
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name192650%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp193208))
                   (let ((__tmp193210 (lambda () (_%thunk192649%_)))
                         (__tmp193209
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp193210 __tmp193209)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop192653%_)))))
         _%name192650%_)))
    (define gxc#join!
      (lambda (_%thread192644%_)
        (let ((__tmp193212
               (lambda (_%exn192646%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn192646%_))
                     (let ((__tmp193213
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn192646%_))))
                       (declare (not safe))
                       (raise __tmp193213))
                     (let () (declare (not safe)) (raise _%exn192646%_)))))
              (__tmp193211 (lambda () (thread-join! _%thread192644%_))))
          (declare (not safe))
          (__with-catch __tmp193212 __tmp193211))))))
