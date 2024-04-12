(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1712949843)
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
       (let ((_%verbosity131985131987%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity131985131987%_
             (let* ((_%verbosity131990%_ _%verbosity131985131987%_)
                    (_%$e131992%_ (string->number _%verbosity131990%_)))
               (if _%$e131992%_ _%$e131992%_ _%verbosity131990%_))
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
      (let ((__tmp132047 (list)) (__tmp132046 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp132047
         '(gensyms bindings)
         __tmp132046
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args131983%_
        (apply make-instance gxc#symbol-table::t _%$args131983%_)))
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
      (lambda (_%self131505131968%_)
        (let* ((_%self131971%_ _%self131505131968%_)
               (_%self131973%_ _%self131971%_))
          (if (let ((__tmp132048
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self131973%_))))
                (declare (not safe))
                (##fx< '2 __tmp132048))
              (begin
                (let ((__tmp132049
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self131973%_
                   __tmp132049
                   '1
                   '#f
                   '#f))
                (let ((__tmp132050
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self131973%_
                   __tmp132050
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp132051
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self131973%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self131973%_
                       '2
                       __tmp132051))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message131837%_ _%stx131838%_ . _%details131839%_)
        (let ((_%ctx131844%_
               (let ((_%$e131841%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e131841%_ _%$e131841%_ 'compile))))
          (apply gx#raise-syntax-error
                 _%ctx131844%_
                 _%message131837%_
                 _%stx131838%_
                 _%details131839%_))))
    (define gxc#verbose
      (lambda _%args131834%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp132052
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args131834%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp132052))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id131816%_)
        (let* ((_%str131818%_
                (if (symbol? _%id131816%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id131816%_))
                    _%id131816%_))
               (_%len131820%_ (string-length _%str131818%_))
               (_%res131822%_
                (let () (declare (not safe)) (##make-string _%len131820%_))))
          (let _%lp131825%_ ((_%i131827%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i131827%_ _%len131820%_))
                (let* ((_%char131829%_ (string-ref _%str131818%_ _%i131827%_))
                       (_%xchar131831%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char131829%_))
                            '#\_
                            _%char131829%_)))
                  (string-set! _%res131822%_ _%i131827%_ _%xchar131831%_)
                  (_%lp131825%_
                   (let () (declare (not safe)) (##fx+ _%i131827%_ '1))))
                _%res131822%_)))))
    (define gxc#map*
      (lambda (_%proc131758%_ _%maybe-improper-list131759%_)
        (let _%recur131761%_ ((_%rest131763%_ _%maybe-improper-list131759%_))
          (let* ((_%rest131764131775%_ _%rest131763%_)
                 (_%E131768131779%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest131764131775%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K131771131804%_
                   (lambda (_%rest131801%_ _%hd131802%_)
                     (cons (_%proc131758%_ _%hd131802%_)
                           (_%recur131761%_ _%rest131801%_))))
                  (_%K131770131795%_ (lambda () '()))
                  (_%K131769131785%_
                   (lambda (_%tail131783%_) (_%proc131758%_ _%tail131783%_))))
              (let ((_%try-match131766131798%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest131764131775%_))
                           (_%K131770131795%_)
                           (let ((_%tail131788%_ _%rest131764131775%_))
                             (declare (not safe))
                             (_%proc131758%_ _%tail131788%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest131764131775%_))
                    (let ((_%tl131773131809%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest131764131775%_)))
                          (_%hd131772131807%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest131764131775%_))))
                      (let ((_%hd131812%_ _%hd131772131807%_)
                            (_%rest131814%_ _%tl131773131809%_))
                        (_%K131771131804%_ _%rest131814%_ _%hd131812%_)))
                    (_%try-match131766131798%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym131753%_)
        (let ((_%$e131755%_ (not (gxc#gensym-reference? _%sym131753%_))))
          (if _%$e131755%_
              _%$e131755%_
              (memq _%sym131753%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym131749%_)
        (let ((_%str131751%_ (symbol->string _%sym131749%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str131751%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str131751%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id131720%_)
        (let ((_%$e131722%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id131720%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id131720%_))
                   '#f)))
          (if _%$e131722%_
              ((lambda (_%bind131725%_)
                 (let ((_%eid131727%_
                        (##structure-ref _%bind131725%_ '1 gx#binding::t '#f))
                       (_%ht131728%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid131727%_))
                       _%eid131727%_
                       (let ((_%$e131731%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht131728%_ _%eid131727%_))))
                         (if _%$e131731%_
                             _%$e131731%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind131725%_
                                    'gx#local-binding::t))
                                 (let ((_%gid131735%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid131727%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht131728%_
                                      _%eid131727%_
                                      _%gid131735%_))
                                   _%gid131735%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind131725%_
                                        'gx#module-binding::t))
                                     (let ((_%gid131744%_
                                            (let ((_%$e131738%_
                                                   (##structure-ref
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%bind131725%_
                                                       '4
                                                       '#f
                                                       '#f))
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e131738%_
                                                  ((lambda (_%ns131741%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns131741%_
                                                        '"#"
                                                        _%eid131727%_)))
                                                   _%$e131738%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid131727%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht131728%_
                                          _%eid131727%_
                                          _%gid131744%_))
                                       _%gid131744%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id131720%_
                                      _%eid131727%_
                                      _%bind131725%_))))))))
               _%$e131722%_)
              (if (let ((__tmp132053
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id131720%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp132053))
                  (let () (declare (not safe)) (gx#stx-e _%id131720%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id131720%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id131718%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id131718%_))
            (gxc#generate-runtime-binding-id _%id131718%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top131705%_)
        (if _%top131705%_
            (let ((_%ns131707%_
                   (##structure-ref
                    (let ((__tmp132054
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp132054))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi131708%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns131707%_
                  (if (fxpositive? _%phi131708%_)
                      (let ((__tmp132056 (number->string _%phi131708%_))
                            (__tmp132055
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns131707%_
                         '"["
                         __tmp132056
                         '"]#_"
                         __tmp132055
                         '"_"))
                      (let ((__tmp132057
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns131707%_ '"#_" __tmp132057 '"_")))
                  (if (fxpositive? _%phi131708%_)
                      (let ((__tmp132059 (number->string _%phi131708%_))
                            (__tmp132058
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp132059
                         '"]#_"
                         __tmp132058
                         '"_"))
                      (let ((__tmp132060
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp132060 '"_")))))
            (let ((__tmp132061 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp132061 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top131714%_ '#f))
          (gxc#generate-runtime-temporary__% _%top131714%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g132063_
        (let ((_g132062_ (let () (declare (not safe)) (##length _g132063_))))
          (cond ((let () (declare (not safe)) (##fx= _g132062_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g132063_))
                ((let () (declare (not safe)) (##fx= _g132062_ 1))
                 (apply gxc#generate-runtime-temporary__% _g132063_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g132063_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym131683%_ _%quote?131684%_)
        (let* ((_%ht131686%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e131688%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht131686%_ _%sym131683%_))))
          (if _%$e131688%_
              _%$e131688%_
              (let ((_%g131692%_
                     (if _%quote?131684%_
                         (let ((__tmp132064
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym131683%_
                            '"__"
                            __tmp132064))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym131683%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht131686%_ _%sym131683%_ _%g131692%_))
                _%g131692%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym131697%_)
        (let ((_%quote?131699%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym131697%_
           _%quote?131699%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g132066_
        (let ((_g132065_ (let () (declare (not safe)) (##length _g132066_))))
          (cond ((let () (declare (not safe)) (##fx= _g132065_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g132066_))
                ((let () (declare (not safe)) (##fx= _g132065_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g132066_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g132066_))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1131675%_ _%id2131676%_)
        (letrec ((_%symbol-e131678%_
                  (lambda (_%id131680%_)
                    (if (symbol? _%id131680%_)
                        _%id131680%_
                        (gxc#generate-runtime-binding-id _%id131680%_)))))
          (eq? (_%symbol-e131678%_ _%id1131675%_)
               (_%symbol-e131678%_ _%id2131676%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx131673%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx131673%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx131673%_)
            (let () (declare (not safe)) (gx#stx-e _%stx131673%_)))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk131658%_ _%name131659%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job131661%_
               (gxc#make-compile-job _%thunk131658%_ _%name131659%_)))
          (set! gxc#__compile-jobs (cons _%job131661%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk131666%_)
        (let ((_%name131668%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk131666%_ _%name131668%_))))
    (define gxc#add-compile-job!
      (lambda _g132068_
        (let ((_g132067_ (let () (declare (not safe)) (##length _g132068_))))
          (cond ((let () (declare (not safe)) (##fx= _g132067_ 1))
                 (apply gxc#add-compile-job!__0 _g132068_))
                ((let () (declare (not safe)) (##fx= _g132067_ 2))
                 (apply gxc#add-compile-job!__% _g132068_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g132068_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result131655%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result131655%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop131649%_ ()
          (let ((_%pending131652%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending131652%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending131652%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending131652%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk131638%_ _%name131639%_)
        (make-thread
         (lambda ()
           (let _%loop131642%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp132069
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name131639%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp132069))
                   (let ((__tmp132071 (lambda () (_%thunk131638%_)))
                         (__tmp132070
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp132071 __tmp132070)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop131642%_)))))
         _%name131639%_)))
    (define gxc#join!
      (lambda (_%thread131633%_)
        (let ((__tmp132073
               (lambda (_%exn131635%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn131635%_))
                     (let ((__tmp132074
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn131635%_))))
                       (declare (not safe))
                       (raise __tmp132074))
                     (let () (declare (not safe)) (raise _%exn131635%_)))))
              (__tmp132072 (lambda () (thread-join! _%thread131633%_))))
          (declare (not safe))
          (__with-catch __tmp132073 __tmp132072))))))
