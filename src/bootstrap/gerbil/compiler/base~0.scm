(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1771030482)
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
       (let ((_%verbosity190068190070%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity190068190070%_
             (let* ((_%verbosity190072%_ _%verbosity190068190070%_)
                    (_%$e190074%_ (string->number _%verbosity190072%_)))
               (if _%$e190074%_ _%$e190074%_ _%verbosity190072%_))
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
        (letrec ((_%hash-e190065%_
                  (lambda (_%id190067%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id190067%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e190065%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#current-compile-local-env (make-parameter '()))
    (define gxc#symbol-table::t
      (let ((__tmp190129 (list)) (__tmp190128 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp190129
         '(gensyms bindings)
         __tmp190128
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args190061%_
        (apply make-instance gxc#symbol-table::t _%$args190061%_)))
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
      (lambda (_%self190048%_)
        (let ((_%self190051%_ _%self190048%_))
          (if (let ((__tmp190130
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self190051%_))))
                (declare (not safe))
                (##fx< '2 __tmp190130))
              (begin
                (let ((__tmp190131
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self190051%_
                   __tmp190131
                   '1
                   '#f
                   '#f))
                (let ((__tmp190132
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self190051%_
                   __tmp190132
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp190133
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self190051%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self190051%_
                       '2
                       __tmp190133))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message189917%_ _%stx189918%_ . _%details189919%_)
        (let ((_%ctx189924%_
               (let ((_%$e189921%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e189921%_ _%$e189921%_ '(compile)))))
          (apply gx#raise-syntax-error
                 _%ctx189924%_
                 _%message189917%_
                 _%stx189918%_
                 _%details189919%_))))
    (define gxc#verbose
      (lambda _%args189914%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp190134
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args189914%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp190134))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id189896%_)
        (let* ((_%str189898%_
                (if (symbol? _%id189896%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id189896%_))
                    _%id189896%_))
               (_%len189900%_ (string-length _%str189898%_))
               (_%res189902%_
                (let () (declare (not safe)) (##make-string _%len189900%_))))
          (let _%lp189905%_ ((_%i189907%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i189907%_ _%len189900%_))
                (let* ((_%char189909%_ (string-ref _%str189898%_ _%i189907%_))
                       (_%xchar189911%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char189909%_))
                            '#\_
                            _%char189909%_)))
                  (string-set! _%res189902%_ _%i189907%_ _%xchar189911%_)
                  (_%lp189905%_
                   (let () (declare (not safe)) (##fx+ _%i189907%_ '1))))
                _%res189902%_)))))
    (define gxc#map*
      (lambda (_%proc189838%_ _%maybe-improper-list189839%_)
        (let _%recur189841%_ ((_%rest189843%_ _%maybe-improper-list189839%_))
          (let* ((_%rest189844189855%_ _%rest189843%_)
                 (_%E189848189859%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest189844189855%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K189851189884%_
                   (lambda (_%rest189881%_ _%hd189882%_)
                     (cons (_%proc189838%_ _%hd189882%_)
                           (_%recur189841%_ _%rest189881%_))))
                  (_%K189850189875%_ (lambda () '()))
                  (_%K189849189865%_
                   (lambda (_%tail189863%_) (_%proc189838%_ _%tail189863%_))))
              (let ((_%try-match189846189878%_
                     (lambda ()
                       (if (null? _%rest189844189855%_)
                           (_%K189850189875%_)
                           (let ((_%tail189868%_ _%rest189844189855%_))
                             (declare (not safe))
                             (_%proc189838%_ _%tail189868%_))))))
                (if (pair? _%rest189844189855%_)
                    (let ((_%tl189853189889%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest189844189855%_)))
                          (_%hd189852189887%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest189844189855%_))))
                      (let ((_%hd189892%_ _%hd189852189887%_)
                            (_%rest189894%_ _%tl189853189889%_))
                        (_%K189851189884%_ _%rest189894%_ _%hd189892%_)))
                    (_%try-match189846189878%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym189833%_)
        (let ((_%$e189835%_ (not (gxc#gensym-reference? _%sym189833%_))))
          (if _%$e189835%_
              _%$e189835%_
              (memq _%sym189833%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym189829%_)
        (let ((_%str189831%_ (symbol->string _%sym189829%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str189831%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str189831%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id189800%_)
        (let ((_%$e189802%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id189800%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id189800%_))
                   '#f)))
          (if _%$e189802%_
              ((lambda (_%bind189805%_)
                 (let ((_%eid189807%_
                        (##structure-ref _%bind189805%_ '1 gx#binding::t '#f))
                       (_%ht189808%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid189807%_))
                       _%eid189807%_
                       (let ((_%$e189811%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht189808%_ _%eid189807%_))))
                         (if _%$e189811%_
                             _%$e189811%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind189805%_
                                    'gx#local-binding::t))
                                 (let ((_%gid189815%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid189807%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht189808%_
                                      _%eid189807%_
                                      _%gid189815%_))
                                   _%gid189815%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind189805%_
                                        'gx#module-binding::t))
                                     (let ((_%gid189824%_
                                            (let ((_%$e189818%_
                                                   (##structure-ref
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%bind189805%_
                                                       '7
                                                       '#f
                                                       '#f))
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e189818%_
                                                  ((lambda (_%ns189821%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns189821%_
                                                        '"#"
                                                        _%eid189807%_)))
                                                   _%$e189818%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid189807%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht189808%_
                                          _%eid189807%_
                                          _%gid189824%_))
                                       _%gid189824%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id189800%_
                                      _%eid189807%_
                                      _%bind189805%_))))))))
               _%$e189802%_)
              (if (let ((__tmp190135
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id189800%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp190135))
                  (let () (declare (not safe)) (gx#stx-e _%id189800%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id189800%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id189798%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id189798%_))
            (gxc#generate-runtime-binding-id _%id189798%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top189785%_)
        (if _%top189785%_
            (let ((_%ns189787%_
                   (##structure-ref
                    (let ((__tmp190136
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp190136))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi189788%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns189787%_
                  (if (fxpositive? _%phi189788%_)
                      (let ((__tmp190138 (number->string _%phi189788%_))
                            (__tmp190137
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns189787%_
                         '"["
                         __tmp190138
                         '"]#_"
                         __tmp190137
                         '"_"))
                      (let ((__tmp190139
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns189787%_ '"#_" __tmp190139 '"_")))
                  (if (fxpositive? _%phi189788%_)
                      (let ((__tmp190141 (number->string _%phi189788%_))
                            (__tmp190140
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp190141
                         '"]#_"
                         __tmp190140
                         '"_"))
                      (let ((__tmp190142
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp190142 '"_")))))
            (let ((__tmp190143 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp190143 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top189794%_ '#f))
          (gxc#generate-runtime-temporary__% _%top189794%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g190144_
        (let ((_g190145_ (let () (declare (not safe)) (##length _g190144_))))
          (cond ((let () (declare (not safe)) (##fx= _g190145_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g190144_))
                ((let () (declare (not safe)) (##fx= _g190145_ 1))
                 (apply gxc#generate-runtime-temporary__% _g190144_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g190144_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym189763%_ _%quote?189764%_)
        (let* ((_%ht189766%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e189768%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht189766%_ _%sym189763%_))))
          (if _%$e189768%_
              _%$e189768%_
              (let ((_%g189772%_
                     (if _%quote?189764%_
                         (let ((__tmp190146
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym189763%_
                            '"__"
                            __tmp190146))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym189763%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht189766%_ _%sym189763%_ _%g189772%_))
                _%g189772%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym189777%_)
        (let ((_%quote?189779%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym189777%_
           _%quote?189779%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g190147_
        (let ((_g190148_ (let () (declare (not safe)) (##length _g190147_))))
          (cond ((let () (declare (not safe)) (##fx= _g190148_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g190147_))
                ((let () (declare (not safe)) (##fx= _g190148_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g190147_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g190147_))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id189760%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id189760%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key189715%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key189715%_))
            _%key189715%_
            (if (uninterned-symbol? _%key189715%_)
                (gxc#generate-runtime-gensym-reference__0 _%key189715%_)
                (let* ((_%key189719189726%_ _%key189715%_)
                       (_%E189721189730%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key189719189726%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K189722189748%_
                        (lambda (_%mark189733%_ _%eid189734%_)
                          (let ((_%$e189736%_
                                 (##structure-ref
                                  _%mark189733%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e189736%_
                                ((lambda (_%ht189739%_)
                                   (let ((_%$e189741%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht189739%_
                                             _%eid189734%_))))
                                     (if _%$e189741%_
                                         ((lambda (_%id189744%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id189744%_))
                                                _%id189744%_
                                                (gxc#generate-runtime-gensym-reference__0
                                                 _%id189744%_)))
                                          _%$e189741%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid189734%_))))
                                 _%$e189736%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid189734%_))))))
                  (if (pair? _%key189719189726%_)
                      (let ((_%hd189723189751%_
                             (let ()
                               (declare (not safe))
                               (##car _%key189719189726%_)))
                            (_%tl189724189753%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key189719189726%_))))
                        (let* ((_%eid189756%_ _%hd189723189751%_)
                               (_%mark189758%_ _%tl189724189753%_))
                          (_%K189722189748%_ _%mark189758%_ _%eid189756%_)))
                      (_%E189721189730%_)))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1189708%_ _%id2189709%_)
        (letrec ((_%symbol-e189711%_
                  (lambda (_%id189713%_)
                    (if (symbol? _%id189713%_)
                        _%id189713%_
                        (gxc#generate-runtime-binding-id _%id189713%_)))))
          (eq? (_%symbol-e189711%_ _%id1189708%_)
               (_%symbol-e189711%_ _%id2189709%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx189706%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx189706%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx189706%_)
            (let () (declare (not safe)) (gx#stx-e _%stx189706%_)))))
    (define gxc#runtime-identifier-properties
      (lambda (_%id189628%_)
        (let* ((_%bind189630%_
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id189628%_)))
               (_%runtime-props189659%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%bind189630%_
                       'gx#runtime-binding::t))
                    (let* ((_%props189639%_
                            (let ((_%$e189633%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind189630%_
                                      '6
                                      '#f
                                      '#f))))
                              (if _%$e189633%_
                                  ((lambda (_%macro-id189636%_)
                                     (cons 'macro:
                                           (cons (gxc#generate-runtime-identifier
                                                  _%macro-id189636%_)
                                                 '())))
                                   _%$e189633%_)
                                  '())))
                           (_%props189655%_
                            (let ((_%$e189641%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind189630%_
                                      '5
                                      '#f
                                      '#f))))
                              (if _%$e189641%_
                                  ((lambda (_%type189644%_)
                                     (let ((_%$e189646%_
                                            (let ()
                                              (declare (not safe))
                                              (__method-ref
                                               _%type189644%_
                                               ':repr))))
                                       (if _%$e189646%_
                                           ((lambda (_%method189649%_)
                                              (let ((_%repr189651%_
                                                     (_%method189649%_
                                                      _%type189644%_)))
                                                (cons 'type:
                                                      (cons _%repr189651%_
                                                            _%props189639%_))))
                                            _%$e189646%_)
                                           (gxc#raise-compile-error
                                            '"unrepresentable type"
                                            _%id189628%_
                                            _%type189644%_))))
                                   _%$e189641%_)
                                  _%props189639%_))))
                      _%props189655%_)
                    '()))
               (_%$e189662%_
                (##structure-ref _%bind189630%_ '4 gx#binding::t '#f)))
          (if _%$e189662%_
              ((lambda (_%props189665%_)
                 (let ((__tmp190149
                        (lambda (_%prop189667%_ _%props189668%_)
                          (let* ((_%prop189669189676%_ _%prop189667%_)
                                 (_%E189671189679%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (error '"No clause matching"
                                             _%prop189669189676%_
                                             '([key . value])))
                                    '#!void))
                                 (_%K189672189693%_
                                  (lambda (_%value189682%_ _%key189683%_)
                                    (let ((_%$e189685%_
                                           (let ()
                                             (declare (not safe))
                                             (__method-ref
                                              _%value189682%_
                                              ':repr))))
                                      (if _%$e189685%_
                                          ((lambda (_%method189688%_)
                                             (let ((_%repr189690%_
                                                    (_%method189688%_
                                                     _%value189682%_)))
                                               (cons _%key189683%_
                                                     (cons _%repr189690%_
                                                           _%props189668%_))))
                                           _%$e189685%_)
                                          (cons _%key189683%_
                                                (cons (cons 'quote
                                                            (cons _%value189682%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%props189668%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (pair? _%prop189669189676%_)
                                (let ((_%hd189673189696%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%prop189669189676%_)))
                                      (_%tl189674189698%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%prop189669189676%_))))
                                  (let* ((_%key189701%_ _%hd189673189696%_)
                                         (_%value189703%_ _%tl189674189698%_))
                                    (_%K189672189693%_
                                     _%value189703%_
                                     _%key189701%_)))
                                (_%E189671189679%_))))))
                   (declare (not safe))
                   (foldl__0
                    __tmp190149
                    _%runtime-props189659%_
                    _%props189665%_)))
               _%$e189662%_)
              _%runtime-props189659%_))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk189613%_ _%name189614%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job189616%_
               (gxc#make-compile-job _%thunk189613%_ _%name189614%_)))
          (set! gxc#__compile-jobs (cons _%job189616%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk189621%_)
        (let ((_%name189623%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk189621%_ _%name189623%_))))
    (define gxc#add-compile-job!
      (lambda _g190150_
        (let ((_g190151_ (let () (declare (not safe)) (##length _g190150_))))
          (cond ((let () (declare (not safe)) (##fx= _g190151_ 1))
                 (apply gxc#add-compile-job!__0 _g190150_))
                ((let () (declare (not safe)) (##fx= _g190151_ 2))
                 (apply gxc#add-compile-job!__% _g190150_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g190150_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result189610%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result189610%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop189604%_ ()
          (let ((_%pending189607%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending189607%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending189607%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending189607%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk189593%_ _%name189594%_)
        (make-thread
         (lambda ()
           (let _%loop189597%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp190152
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name189594%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp190152))
                   (let ((__tmp190154 (lambda () (_%thunk189593%_)))
                         (__tmp190153
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp190154 __tmp190153)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop189597%_)))))
         _%name189594%_)))
    (define gxc#join!
      (lambda (_%thread189588%_)
        (let ((__tmp190156
               (lambda (_%exn189590%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn189590%_))
                     (let ((__tmp190157
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn189590%_))))
                       (declare (not safe))
                       (raise __tmp190157))
                     (let () (declare (not safe)) (raise _%exn189590%_)))))
              (__tmp190155 (lambda () (thread-join! _%thread189588%_))))
          (declare (not safe))
          (__with-catch __tmp190156 __tmp190155))))))
