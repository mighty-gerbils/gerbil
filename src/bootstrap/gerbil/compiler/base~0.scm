(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1783878478)
  (begin
    (define gxc#__DEBUG-COMPILE
      (if (string? __DEBUG)
          (let ()
            (declare (not safe))
            (##string-contains __DEBUG '"compilation"))
          '#f))
    (define gxc#current-compile-symbol-table (make-parameter '#f))
    (define gxc#current-compile-runtime-sections (make-parameter '#f))
    (define gxc#current-compile-runtime-names (make-parameter '#f))
    (define gxc#current-compile-output-dir (make-parameter '#f))
    (define gxc#current-compile-invoke-gsc (make-parameter '#f))
    (define gxc#current-compile-gsc-options (make-parameter '#f))
    (define gxc#current-compile-keep-scm (make-parameter '#f))
    (define gxc#current-compile-verbose
      (make-parameter
       (let ((_%$%verbosity197160197162%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%$%verbosity197160197162%_
             (let* ((_%verbosity197164%_ _%$%verbosity197160197162%_)
                    (_%$e197166%_ (string->number _%verbosity197164%_)))
               (if _%$e197166%_ _%$e197166%_ _%verbosity197164%_))
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
        (letrec ((_%hash-e197157%_
                  (lambda (_%id197159%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id197159%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e197157%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#current-compile-local-env (make-parameter '()))
    (define gxc#symbol-table::t
      (let ((__tmp197221 (list)) (__tmp197220 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp197221
         '(gensyms bindings)
         __tmp197220
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args197153%_
        (apply make-instance gxc#symbol-table::t _%$args197153%_)))
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
      (lambda (_%self197140%_)
        (let ((_%self197143%_ _%self197140%_))
          (if (let ((__tmp197222
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self197143%_))))
                (declare (not safe))
                (##fx< '2 __tmp197222))
              (begin
                (let ((__tmp197223
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self197143%_
                   __tmp197223
                   '1
                   '#f
                   '#f))
                (let ((__tmp197224
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self197143%_
                   __tmp197224
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp197225
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self197143%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self197143%_
                       '2
                       __tmp197225))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message197009%_ _%stx197010%_ . _%details197011%_)
        (let ((_%ctx197016%_
               (let ((_%$e197013%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e197013%_ _%$e197013%_ '(compile)))))
          (apply gx#raise-syntax-error
                 _%ctx197016%_
                 _%message197009%_
                 _%stx197010%_
                 _%details197011%_))))
    (define gxc#verbose
      (lambda _%args197006%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp197226
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args197006%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp197226))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id196988%_)
        (let* ((_%str196990%_
                (if (symbol? _%id196988%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id196988%_))
                    _%id196988%_))
               (_%len196992%_ (string-length _%str196990%_))
               (_%res196994%_
                (let () (declare (not safe)) (##make-string _%len196992%_))))
          (let _%lp196997%_ ((_%i196999%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i196999%_ _%len196992%_))
                (let* ((_%char197001%_ (string-ref _%str196990%_ _%i196999%_))
                       (_%xchar197003%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char197001%_))
                            '#\_
                            _%char197001%_)))
                  (string-set! _%res196994%_ _%i196999%_ _%xchar197003%_)
                  (_%lp196997%_
                   (let () (declare (not safe)) (##fx+ _%i196999%_ '1))))
                _%res196994%_)))))
    (define gxc#map*
      (lambda (_%proc196930%_ _%maybe-improper-list196931%_)
        (let _%recur196933%_ ((_%rest196935%_ _%maybe-improper-list196931%_))
          (let* ((_%$%rest196936196947%_ _%rest196935%_)
                 (_%$%E196940196951%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%$%rest196936196947%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%$%K196943196976%_
                   (lambda (_%rest196973%_ _%hd196974%_)
                     (cons (_%proc196930%_ _%hd196974%_)
                           (_%recur196933%_ _%rest196973%_))))
                  (_%$%K196942196967%_ (lambda () '()))
                  (_%$%K196941196957%_
                   (lambda (_%tail196955%_) (_%proc196930%_ _%tail196955%_))))
              (let ((_%$%try-match196938196970%_
                     (lambda ()
                       (if (null? _%$%rest196936196947%_)
                           (_%$%K196942196967%_)
                           (let ((_%tail196960%_ _%$%rest196936196947%_))
                             (declare (not safe))
                             (_%proc196930%_ _%tail196960%_))))))
                (if (pair? _%$%rest196936196947%_)
                    (let ((_%$%tl196945196981%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest196936196947%_)))
                          (_%$%hd196944196979%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest196936196947%_))))
                      (let ((_%hd196984%_ _%$%hd196944196979%_)
                            (_%rest196986%_ _%$%tl196945196981%_))
                        (_%$%K196943196976%_ _%rest196986%_ _%hd196984%_)))
                    (_%$%try-match196938196970%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym196925%_)
        (let ((_%$e196927%_ (not (gxc#gensym-reference? _%sym196925%_))))
          (if _%$e196927%_
              _%$e196927%_
              (memq _%sym196925%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym196921%_)
        (let ((_%str196923%_ (symbol->string _%sym196921%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str196923%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str196923%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id196892%_)
        (let ((_%$e196894%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id196892%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id196892%_))
                   '#f)))
          (if _%$e196894%_
              (let ((_%eid196899%_
                     (##structure-ref _%$e196894%_ '1 gx#binding::t '#f))
                    (_%ht196900%_
                     (##structure-ref
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-symbol-table))
                      '2
                      gxc#symbol-table::t
                      '#f)))
                (if (let ()
                      (declare (not safe))
                      (interned-symbol? _%eid196899%_))
                    _%eid196899%_
                    (let ((_%$e196903%_
                           (let ()
                             (declare (not safe))
                             (hash-get _%ht196900%_ _%eid196899%_))))
                      (if _%$e196903%_
                          _%$e196903%_
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%$e196894%_
                                 'gx#local-binding::t))
                              (let ((_%gid196907%_
                                     (gxc#generate-runtime-gensym-reference__0
                                      _%eid196899%_)))
                                (let ()
                                  (declare (not safe))
                                  (hash-put!
                                   _%ht196900%_
                                   _%eid196899%_
                                   _%gid196907%_))
                                _%gid196907%_)
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-instance-of?
                                     _%$e196894%_
                                     'gx#module-binding::t))
                                  (let ((_%gid196916%_
                                         (let ((_%$e196910%_
                                                (##structure-ref
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%$e196894%_
                                                    '7
                                                    '#f
                                                    '#f))
                                                 '6
                                                 gx#module-context::t
                                                 '#f)))
                                           (if _%$e196910%_
                                               (let ()
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  _%$e196910%_
                                                  '"#"
                                                  _%eid196899%_))
                                               (gxc#generate-runtime-gensym-reference__0
                                                _%eid196899%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (hash-put!
                                       _%ht196900%_
                                       _%eid196899%_
                                       _%gid196916%_))
                                    _%gid196916%_)
                                  (gxc#raise-compile-error
                                   '"Cannot compile reference to uninterned binding"
                                   _%id196892%_
                                   _%eid196899%_
                                   _%$e196894%_)))))))
              (if (let ((__tmp197227
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id196892%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp197227))
                  (let () (declare (not safe)) (gx#stx-e _%id196892%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id196892%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id196890%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id196890%_))
            (gxc#generate-runtime-binding-id _%id196890%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top196877%_)
        (if _%top196877%_
            (let ((_%ns196879%_
                   (##structure-ref
                    (let ((__tmp197228
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp197228))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi196880%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns196879%_
                  (if (fxpositive? _%phi196880%_)
                      (let ((__tmp197230 (number->string _%phi196880%_))
                            (__tmp197229
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns196879%_
                         '"["
                         __tmp197230
                         '"]#_"
                         __tmp197229
                         '"_"))
                      (let ((__tmp197231
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns196879%_ '"#_" __tmp197231 '"_")))
                  (if (fxpositive? _%phi196880%_)
                      (let ((__tmp197233 (number->string _%phi196880%_))
                            (__tmp197232
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp197233
                         '"]#_"
                         __tmp197232
                         '"_"))
                      (let ((__tmp197234
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp197234 '"_")))))
            (let ((__tmp197235 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp197235 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top196886%_ '#f))
          (gxc#generate-runtime-temporary__% _%top196886%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g197236_
        (let ((_g197237_ (let () (declare (not safe)) (##length _g197236_))))
          (cond ((let () (declare (not safe)) (##fx= _g197237_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g197236_))
                ((let () (declare (not safe)) (##fx= _g197237_ 1))
                 (apply gxc#generate-runtime-temporary__% _g197236_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g197236_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym196855%_ _%quote?196856%_)
        (let* ((_%ht196858%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e196860%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht196858%_ _%sym196855%_))))
          (if _%$e196860%_
              _%$e196860%_
              (let ((_%g196864%_
                     (if _%quote?196856%_
                         (let ((__tmp197238
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym196855%_
                            '"__"
                            __tmp197238))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym196855%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht196858%_ _%sym196855%_ _%g196864%_))
                _%g196864%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym196869%_)
        (let ((_%quote?196871%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym196869%_
           _%quote?196871%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g197239_
        (let ((_g197240_ (let () (declare (not safe)) (##length _g197239_))))
          (cond ((let () (declare (not safe)) (##fx= _g197240_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g197239_))
                ((let () (declare (not safe)) (##fx= _g197240_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g197239_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g197239_))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id196852%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id196852%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key196807%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key196807%_))
            _%key196807%_
            (if (uninterned-symbol? _%key196807%_)
                (gxc#generate-runtime-gensym-reference__0 _%key196807%_)
                (let* ((_%$%key196811196818%_ _%key196807%_)
                       (_%$%E196813196822%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%$%key196811196818%_
                                   '([eid . mark])))
                          '#!void))
                       (_%$%K196814196840%_
                        (lambda (_%mark196825%_ _%eid196826%_)
                          (let ((_%$e196828%_
                                 (##structure-ref
                                  _%mark196825%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e196828%_
                                (let ((_%$e196833%_
                                       (let ()
                                         (declare (not safe))
                                         (hash-get
                                          _%$e196828%_
                                          _%eid196826%_))))
                                  (if _%$e196833%_
                                      (if (let ()
                                            (declare (not safe))
                                            (interned-symbol? _%$e196833%_))
                                          _%$e196833%_
                                          (gxc#generate-runtime-gensym-reference__0
                                           _%$e196833%_))
                                      (gxc#generate-runtime-identifier-key
                                       _%eid196826%_)))
                                (gxc#generate-runtime-identifier-key
                                 _%eid196826%_))))))
                  (if (pair? _%$%key196811196818%_)
                      (let ((_%$%hd196815196843%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%key196811196818%_)))
                            (_%$%tl196816196845%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%key196811196818%_))))
                        (let* ((_%eid196848%_ _%$%hd196815196843%_)
                               (_%mark196850%_ _%$%tl196816196845%_))
                          (_%$%K196814196840%_ _%mark196850%_ _%eid196848%_)))
                      (_%$%E196813196822%_)))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1196800%_ _%id2196801%_)
        (letrec ((_%symbol-e196803%_
                  (lambda (_%id196805%_)
                    (if (symbol? _%id196805%_)
                        _%id196805%_
                        (gxc#generate-runtime-binding-id _%id196805%_)))))
          (eq? (_%symbol-e196803%_ _%id1196800%_)
               (_%symbol-e196803%_ _%id2196801%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx196798%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx196798%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx196798%_)
            (let () (declare (not safe)) (gx#stx-e _%stx196798%_)))))
    (define gxc#runtime-identifier-properties
      (lambda (_%id196720%_)
        (let* ((_%bind196722%_
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id196720%_)))
               (_%runtime-props196751%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%bind196722%_
                       'gx#runtime-binding::t))
                    (let* ((_%props196731%_
                            (let ((_%$e196725%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind196722%_
                                      '6
                                      '#f
                                      '#f))))
                              (if _%$e196725%_
                                  (cons 'macro:
                                        (cons (gxc#generate-runtime-identifier
                                               _%$e196725%_)
                                              '()))
                                  '())))
                           (_%props196747%_
                            (let ((_%$e196733%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind196722%_
                                      '5
                                      '#f
                                      '#f))))
                              (if _%$e196733%_
                                  (let ((_%$e196738%_
                                         (let ()
                                           (declare (not safe))
                                           (__method-ref
                                            _%$e196733%_
                                            ':repr))))
                                    (if _%$e196738%_
                                        (let ((_%repr196743%_
                                               (_%$e196738%_ _%$e196733%_)))
                                          (cons 'type:
                                                (cons _%repr196743%_
                                                      _%props196731%_)))
                                        (gxc#raise-compile-error
                                         '"unrepresentable type"
                                         _%id196720%_
                                         _%$e196733%_)))
                                  _%props196731%_))))
                      _%props196747%_)
                    '()))
               (_%$e196754%_
                (##structure-ref _%bind196722%_ '4 gx#binding::t '#f)))
          (if _%$e196754%_
              (let ((__tmp197241
                     (lambda (_%prop196759%_ _%props196760%_)
                       (let* ((_%$%prop196761196768%_ _%prop196759%_)
                              (_%$%E196763196771%_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (error '"No clause matching"
                                          _%$%prop196761196768%_
                                          '([key . value])))
                                 '#!void))
                              (_%$%K196764196785%_
                               (lambda (_%value196774%_ _%key196775%_)
                                 (let ((_%$e196777%_
                                        (let ()
                                          (declare (not safe))
                                          (__method-ref
                                           _%value196774%_
                                           ':repr))))
                                   (if _%$e196777%_
                                       (let ((_%repr196782%_
                                              (_%$e196777%_ _%value196774%_)))
                                         (cons _%key196775%_
                                               (cons _%repr196782%_
                                                     _%props196760%_)))
                                       (cons _%key196775%_
                                             (cons (cons 'quote
                                                         (cons _%value196774%_
                                                               '()))
                                                   _%props196760%_)))))))
                         (if (pair? _%$%prop196761196768%_)
                             (let ((_%$%hd196765196788%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%prop196761196768%_)))
                                   (_%$%tl196766196790%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%prop196761196768%_))))
                               (let* ((_%key196793%_ _%$%hd196765196788%_)
                                      (_%value196795%_ _%$%tl196766196790%_))
                                 (_%$%K196764196785%_
                                  _%value196795%_
                                  _%key196793%_)))
                             (_%$%E196763196771%_))))))
                (declare (not safe))
                (foldl__0 __tmp197241 _%runtime-props196751%_ _%$e196754%_))
              _%runtime-props196751%_))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk196705%_ _%name196706%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job196708%_
               (gxc#make-compile-job _%thunk196705%_ _%name196706%_)))
          (set! gxc#__compile-jobs (cons _%job196708%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk196713%_)
        (let ((_%name196715%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk196713%_ _%name196715%_))))
    (define gxc#add-compile-job!
      (lambda _g197242_
        (let ((_g197243_ (let () (declare (not safe)) (##length _g197242_))))
          (cond ((let () (declare (not safe)) (##fx= _g197243_ 1))
                 (apply gxc#add-compile-job!__0 _g197242_))
                ((let () (declare (not safe)) (##fx= _g197243_ 2))
                 (apply gxc#add-compile-job!__% _g197242_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g197242_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result196702%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result196702%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop196696%_ ()
          (let ((_%pending196699%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending196699%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending196699%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending196699%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk196685%_ _%name196686%_)
        (make-thread
         (lambda ()
           (let _%loop196689%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp197244
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name196686%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp197244))
                   (let ((__tmp197246 (lambda () (_%thunk196685%_)))
                         (__tmp197245
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp197246 __tmp197245)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop196689%_)))))
         _%name196686%_)))
    (define gxc#join!
      (lambda (_%thread196680%_)
        (let ((__tmp197248
               (lambda (_%exn196682%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn196682%_))
                     (let ((__tmp197249
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn196682%_))))
                       (declare (not safe))
                       (raise __tmp197249))
                     (let () (declare (not safe)) (raise _%exn196682%_)))))
              (__tmp197247 (lambda () (thread-join! _%thread196680%_))))
          (declare (not safe))
          (__with-catch __tmp197248 __tmp197247))))))
