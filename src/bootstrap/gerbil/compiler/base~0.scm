(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1742223873)
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
       (let ((_%verbosity135114135116%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity135114135116%_
             (let* ((_%verbosity135119%_ _%verbosity135114135116%_)
                    (_%$e135121%_ (string->number _%verbosity135119%_)))
               (if _%$e135121%_ _%$e135121%_ _%verbosity135119%_))
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
      (let ((__tmp135176 (list)) (__tmp135175 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp135176
         '(gensyms bindings)
         __tmp135175
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args135112%_
        (apply make-instance gxc#symbol-table::t _%$args135112%_)))
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
      (lambda (_%self134634135097%_)
        (let* ((_%self135100%_ _%self134634135097%_)
               (_%self135102%_ _%self135100%_))
          (if (let ((__tmp135177
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self135102%_))))
                (declare (not safe))
                (##fx< '2 __tmp135177))
              (begin
                (let ((__tmp135178
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self135102%_
                   __tmp135178
                   '1
                   '#f
                   '#f))
                (let ((__tmp135179
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self135102%_
                   __tmp135179
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp135180
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self135102%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self135102%_
                       '2
                       __tmp135180))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message134966%_ _%stx134967%_ . _%details134968%_)
        (let ((_%ctx134973%_
               (let ((_%$e134970%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e134970%_ _%$e134970%_ 'compile))))
          (apply gx#raise-syntax-error
                 _%ctx134973%_
                 _%message134966%_
                 _%stx134967%_
                 _%details134968%_))))
    (define gxc#verbose
      (lambda _%args134963%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp135181
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args134963%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp135181))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id134945%_)
        (let* ((_%str134947%_
                (if (symbol? _%id134945%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id134945%_))
                    _%id134945%_))
               (_%len134949%_ (string-length _%str134947%_))
               (_%res134951%_
                (let () (declare (not safe)) (##make-string _%len134949%_))))
          (let _%lp134954%_ ((_%i134956%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i134956%_ _%len134949%_))
                (let* ((_%char134958%_ (string-ref _%str134947%_ _%i134956%_))
                       (_%xchar134960%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char134958%_))
                            '#\_
                            _%char134958%_)))
                  (string-set! _%res134951%_ _%i134956%_ _%xchar134960%_)
                  (_%lp134954%_
                   (let () (declare (not safe)) (##fx+ _%i134956%_ '1))))
                _%res134951%_)))))
    (define gxc#map*
      (lambda (_%proc134887%_ _%maybe-improper-list134888%_)
        (let _%recur134890%_ ((_%rest134892%_ _%maybe-improper-list134888%_))
          (let* ((_%rest134893134904%_ _%rest134892%_)
                 (_%E134897134908%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest134893134904%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K134900134933%_
                   (lambda (_%rest134930%_ _%hd134931%_)
                     (cons (_%proc134887%_ _%hd134931%_)
                           (_%recur134890%_ _%rest134930%_))))
                  (_%K134899134924%_ (lambda () '()))
                  (_%K134898134914%_
                   (lambda (_%tail134912%_) (_%proc134887%_ _%tail134912%_))))
              (let ((_%try-match134895134927%_
                     (lambda ()
                       (if (null? _%rest134893134904%_)
                           (_%K134899134924%_)
                           (let ((_%tail134917%_ _%rest134893134904%_))
                             (declare (not safe))
                             (_%proc134887%_ _%tail134917%_))))))
                (if (pair? _%rest134893134904%_)
                    (let ((_%tl134902134938%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest134893134904%_)))
                          (_%hd134901134936%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest134893134904%_))))
                      (let ((_%hd134941%_ _%hd134901134936%_)
                            (_%rest134943%_ _%tl134902134938%_))
                        (_%K134900134933%_ _%rest134943%_ _%hd134941%_)))
                    (_%try-match134895134927%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym134882%_)
        (let ((_%$e134884%_ (not (gxc#gensym-reference? _%sym134882%_))))
          (if _%$e134884%_
              _%$e134884%_
              (memq _%sym134882%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym134878%_)
        (let ((_%str134880%_ (symbol->string _%sym134878%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str134880%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str134880%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id134849%_)
        (let ((_%$e134851%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id134849%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id134849%_))
                   '#f)))
          (if _%$e134851%_
              ((lambda (_%bind134854%_)
                 (let ((_%eid134856%_
                        (##structure-ref _%bind134854%_ '1 gx#binding::t '#f))
                       (_%ht134857%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid134856%_))
                       _%eid134856%_
                       (let ((_%$e134860%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht134857%_ _%eid134856%_))))
                         (if _%$e134860%_
                             _%$e134860%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind134854%_
                                    'gx#local-binding::t))
                                 (let ((_%gid134864%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid134856%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht134857%_
                                      _%eid134856%_
                                      _%gid134864%_))
                                   _%gid134864%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind134854%_
                                        'gx#module-binding::t))
                                     (let ((_%gid134873%_
                                            (let ((_%$e134867%_
                                                   (##structure-ref
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%bind134854%_
                                                       '4
                                                       '#f
                                                       '#f))
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e134867%_
                                                  ((lambda (_%ns134870%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns134870%_
                                                        '"#"
                                                        _%eid134856%_)))
                                                   _%$e134867%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid134856%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht134857%_
                                          _%eid134856%_
                                          _%gid134873%_))
                                       _%gid134873%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id134849%_
                                      _%eid134856%_
                                      _%bind134854%_))))))))
               _%$e134851%_)
              (if (let ((__tmp135182
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id134849%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp135182))
                  (let () (declare (not safe)) (gx#stx-e _%id134849%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id134849%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id134847%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id134847%_))
            (gxc#generate-runtime-binding-id _%id134847%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top134834%_)
        (if _%top134834%_
            (let ((_%ns134836%_
                   (##structure-ref
                    (let ((__tmp135183
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp135183))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi134837%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns134836%_
                  (if (fxpositive? _%phi134837%_)
                      (let ((__tmp135185 (number->string _%phi134837%_))
                            (__tmp135184
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns134836%_
                         '"["
                         __tmp135185
                         '"]#_"
                         __tmp135184
                         '"_"))
                      (let ((__tmp135186
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns134836%_ '"#_" __tmp135186 '"_")))
                  (if (fxpositive? _%phi134837%_)
                      (let ((__tmp135188 (number->string _%phi134837%_))
                            (__tmp135187
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp135188
                         '"]#_"
                         __tmp135187
                         '"_"))
                      (let ((__tmp135189
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp135189 '"_")))))
            (let ((__tmp135190 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp135190 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top134843%_ '#f))
          (gxc#generate-runtime-temporary__% _%top134843%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g135192_
        (let ((_g135191_ (let () (declare (not safe)) (##length _g135192_))))
          (cond ((let () (declare (not safe)) (##fx= _g135191_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g135192_))
                ((let () (declare (not safe)) (##fx= _g135191_ 1))
                 (apply gxc#generate-runtime-temporary__% _g135192_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g135192_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym134812%_ _%quote?134813%_)
        (let* ((_%ht134815%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e134817%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht134815%_ _%sym134812%_))))
          (if _%$e134817%_
              _%$e134817%_
              (let ((_%g134821%_
                     (if _%quote?134813%_
                         (let ((__tmp135193
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym134812%_
                            '"__"
                            __tmp135193))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym134812%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht134815%_ _%sym134812%_ _%g134821%_))
                _%g134821%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym134826%_)
        (let ((_%quote?134828%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym134826%_
           _%quote?134828%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g135195_
        (let ((_g135194_ (let () (declare (not safe)) (##length _g135195_))))
          (cond ((let () (declare (not safe)) (##fx= _g135194_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g135195_))
                ((let () (declare (not safe)) (##fx= _g135194_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g135195_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g135195_))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1134804%_ _%id2134805%_)
        (letrec ((_%symbol-e134807%_
                  (lambda (_%id134809%_)
                    (if (symbol? _%id134809%_)
                        _%id134809%_
                        (gxc#generate-runtime-binding-id _%id134809%_)))))
          (eq? (_%symbol-e134807%_ _%id1134804%_)
               (_%symbol-e134807%_ _%id2134805%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx134802%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx134802%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx134802%_)
            (let () (declare (not safe)) (gx#stx-e _%stx134802%_)))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk134787%_ _%name134788%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job134790%_
               (gxc#make-compile-job _%thunk134787%_ _%name134788%_)))
          (set! gxc#__compile-jobs (cons _%job134790%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk134795%_)
        (let ((_%name134797%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk134795%_ _%name134797%_))))
    (define gxc#add-compile-job!
      (lambda _g135197_
        (let ((_g135196_ (let () (declare (not safe)) (##length _g135197_))))
          (cond ((let () (declare (not safe)) (##fx= _g135196_ 1))
                 (apply gxc#add-compile-job!__0 _g135197_))
                ((let () (declare (not safe)) (##fx= _g135196_ 2))
                 (apply gxc#add-compile-job!__% _g135197_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g135197_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result134784%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result134784%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop134778%_ ()
          (let ((_%pending134781%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending134781%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending134781%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending134781%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk134767%_ _%name134768%_)
        (make-thread
         (lambda ()
           (let _%loop134771%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp135198
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name134768%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp135198))
                   (let ((__tmp135200 (lambda () (_%thunk134767%_)))
                         (__tmp135199
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp135200 __tmp135199)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop134771%_)))))
         _%name134768%_)))
    (define gxc#join!
      (lambda (_%thread134762%_)
        (let ((__tmp135202
               (lambda (_%exn134764%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn134764%_))
                     (let ((__tmp135203
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn134764%_))))
                       (declare (not safe))
                       (raise __tmp135203))
                     (let () (declare (not safe)) (raise _%exn134764%_)))))
              (__tmp135201 (lambda () (thread-join! _%thread134762%_))))
          (declare (not safe))
          (__with-catch __tmp135202 __tmp135201))))))
