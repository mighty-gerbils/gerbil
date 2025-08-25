(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1756156301)
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
       (let ((_%verbosity142137142139%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity142137142139%_
             (let* ((_%verbosity142142%_ _%verbosity142137142139%_)
                    (_%$e142144%_ (string->number _%verbosity142142%_)))
               (if _%$e142144%_ _%$e142144%_ _%verbosity142142%_))
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
      (let ((__tmp142199 (list)) (__tmp142198 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp142199
         '(gensyms bindings)
         __tmp142198
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args142135%_
        (apply make-instance gxc#symbol-table::t _%$args142135%_)))
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
      (lambda (_%self142122%_)
        (let ((_%self142125%_ _%self142122%_))
          (if (let ((__tmp142200
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self142125%_))))
                (declare (not safe))
                (##fx< '2 __tmp142200))
              (begin
                (let ((__tmp142201
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self142125%_
                   __tmp142201
                   '1
                   '#f
                   '#f))
                (let ((__tmp142202
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self142125%_
                   __tmp142202
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp142203
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self142125%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self142125%_
                       '2
                       __tmp142203))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message141991%_ _%stx141992%_ . _%details141993%_)
        (let ((_%ctx141998%_
               (let ((_%$e141995%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e141995%_ _%$e141995%_ '(compile)))))
          (apply gx#raise-syntax-error
                 _%ctx141998%_
                 _%message141991%_
                 _%stx141992%_
                 _%details141993%_))))
    (define gxc#verbose
      (lambda _%args141988%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp142204
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args141988%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp142204))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id141970%_)
        (let* ((_%str141972%_
                (if (symbol? _%id141970%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id141970%_))
                    _%id141970%_))
               (_%len141974%_ (string-length _%str141972%_))
               (_%res141976%_
                (let () (declare (not safe)) (##make-string _%len141974%_))))
          (let _%lp141979%_ ((_%i141981%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i141981%_ _%len141974%_))
                (let* ((_%char141983%_ (string-ref _%str141972%_ _%i141981%_))
                       (_%xchar141985%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char141983%_))
                            '#\_
                            _%char141983%_)))
                  (string-set! _%res141976%_ _%i141981%_ _%xchar141985%_)
                  (_%lp141979%_
                   (let () (declare (not safe)) (##fx+ _%i141981%_ '1))))
                _%res141976%_)))))
    (define gxc#map*
      (lambda (_%proc141912%_ _%maybe-improper-list141913%_)
        (let _%recur141915%_ ((_%rest141917%_ _%maybe-improper-list141913%_))
          (let* ((_%rest141918141929%_ _%rest141917%_)
                 (_%E141922141933%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest141918141929%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K141925141958%_
                   (lambda (_%rest141955%_ _%hd141956%_)
                     (cons (_%proc141912%_ _%hd141956%_)
                           (_%recur141915%_ _%rest141955%_))))
                  (_%K141924141949%_ (lambda () '()))
                  (_%K141923141939%_
                   (lambda (_%tail141937%_) (_%proc141912%_ _%tail141937%_))))
              (let ((_%try-match141920141952%_
                     (lambda ()
                       (if (null? _%rest141918141929%_)
                           (_%K141924141949%_)
                           (let ((_%tail141942%_ _%rest141918141929%_))
                             (declare (not safe))
                             (_%proc141912%_ _%tail141942%_))))))
                (if (pair? _%rest141918141929%_)
                    (let ((_%tl141927141963%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest141918141929%_)))
                          (_%hd141926141961%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest141918141929%_))))
                      (let ((_%hd141966%_ _%hd141926141961%_)
                            (_%rest141968%_ _%tl141927141963%_))
                        (_%K141925141958%_ _%rest141968%_ _%hd141966%_)))
                    (_%try-match141920141952%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym141907%_)
        (let ((_%$e141909%_ (not (gxc#gensym-reference? _%sym141907%_))))
          (if _%$e141909%_
              _%$e141909%_
              (memq _%sym141907%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym141903%_)
        (let ((_%str141905%_ (symbol->string _%sym141903%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str141905%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str141905%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id141874%_)
        (let ((_%$e141876%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id141874%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id141874%_))
                   '#f)))
          (if _%$e141876%_
              ((lambda (_%bind141879%_)
                 (let ((_%eid141881%_
                        (##structure-ref _%bind141879%_ '1 gx#binding::t '#f))
                       (_%ht141882%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid141881%_))
                       _%eid141881%_
                       (let ((_%$e141885%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht141882%_ _%eid141881%_))))
                         (if _%$e141885%_
                             _%$e141885%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind141879%_
                                    'gx#local-binding::t))
                                 (let ((_%gid141889%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid141881%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht141882%_
                                      _%eid141881%_
                                      _%gid141889%_))
                                   _%gid141889%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind141879%_
                                        'gx#module-binding::t))
                                     (let ((_%gid141898%_
                                            (let ((_%$e141892%_
                                                   (##structure-ref
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%bind141879%_
                                                       '4
                                                       '#f
                                                       '#f))
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e141892%_
                                                  ((lambda (_%ns141895%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns141895%_
                                                        '"#"
                                                        _%eid141881%_)))
                                                   _%$e141892%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid141881%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht141882%_
                                          _%eid141881%_
                                          _%gid141898%_))
                                       _%gid141898%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id141874%_
                                      _%eid141881%_
                                      _%bind141879%_))))))))
               _%$e141876%_)
              (if (let ((__tmp142205
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id141874%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp142205))
                  (let () (declare (not safe)) (gx#stx-e _%id141874%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id141874%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id141872%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id141872%_))
            (gxc#generate-runtime-binding-id _%id141872%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top141859%_)
        (if _%top141859%_
            (let ((_%ns141861%_
                   (##structure-ref
                    (let ((__tmp142206
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp142206))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi141862%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns141861%_
                  (if (fxpositive? _%phi141862%_)
                      (let ((__tmp142208 (number->string _%phi141862%_))
                            (__tmp142207
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns141861%_
                         '"["
                         __tmp142208
                         '"]#_"
                         __tmp142207
                         '"_"))
                      (let ((__tmp142209
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns141861%_ '"#_" __tmp142209 '"_")))
                  (if (fxpositive? _%phi141862%_)
                      (let ((__tmp142211 (number->string _%phi141862%_))
                            (__tmp142210
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp142211
                         '"]#_"
                         __tmp142210
                         '"_"))
                      (let ((__tmp142212
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp142212 '"_")))))
            (let ((__tmp142213 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp142213 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top141868%_ '#f))
          (gxc#generate-runtime-temporary__% _%top141868%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g142214_
        (let ((_g142215_ (let () (declare (not safe)) (##length _g142214_))))
          (cond ((let () (declare (not safe)) (##fx= _g142215_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g142214_))
                ((let () (declare (not safe)) (##fx= _g142215_ 1))
                 (apply gxc#generate-runtime-temporary__% _g142214_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g142214_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym141837%_ _%quote?141838%_)
        (let* ((_%ht141840%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e141842%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht141840%_ _%sym141837%_))))
          (if _%$e141842%_
              _%$e141842%_
              (let ((_%g141846%_
                     (if _%quote?141838%_
                         (let ((__tmp142216
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym141837%_
                            '"__"
                            __tmp142216))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym141837%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht141840%_ _%sym141837%_ _%g141846%_))
                _%g141846%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym141851%_)
        (let ((_%quote?141853%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym141851%_
           _%quote?141853%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g142217_
        (let ((_g142218_ (let () (declare (not safe)) (##length _g142217_))))
          (cond ((let () (declare (not safe)) (##fx= _g142218_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g142217_))
                ((let () (declare (not safe)) (##fx= _g142218_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g142217_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g142217_))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1141829%_ _%id2141830%_)
        (letrec ((_%symbol-e141832%_
                  (lambda (_%id141834%_)
                    (if (symbol? _%id141834%_)
                        _%id141834%_
                        (gxc#generate-runtime-binding-id _%id141834%_)))))
          (eq? (_%symbol-e141832%_ _%id1141829%_)
               (_%symbol-e141832%_ _%id2141830%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx141827%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx141827%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx141827%_)
            (let () (declare (not safe)) (gx#stx-e _%stx141827%_)))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk141812%_ _%name141813%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job141815%_
               (gxc#make-compile-job _%thunk141812%_ _%name141813%_)))
          (set! gxc#__compile-jobs (cons _%job141815%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk141820%_)
        (let ((_%name141822%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk141820%_ _%name141822%_))))
    (define gxc#add-compile-job!
      (lambda _g142219_
        (let ((_g142220_ (let () (declare (not safe)) (##length _g142219_))))
          (cond ((let () (declare (not safe)) (##fx= _g142220_ 1))
                 (apply gxc#add-compile-job!__0 _g142219_))
                ((let () (declare (not safe)) (##fx= _g142220_ 2))
                 (apply gxc#add-compile-job!__% _g142219_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g142219_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result141809%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result141809%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop141803%_ ()
          (let ((_%pending141806%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending141806%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending141806%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending141806%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk141792%_ _%name141793%_)
        (make-thread
         (lambda ()
           (let _%loop141796%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp142221
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name141793%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp142221))
                   (let ((__tmp142223 (lambda () (_%thunk141792%_)))
                         (__tmp142222
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp142223 __tmp142222)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop141796%_)))))
         _%name141793%_)))
    (define gxc#join!
      (lambda (_%thread141787%_)
        (let ((__tmp142225
               (lambda (_%exn141789%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn141789%_))
                     (let ((__tmp142226
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn141789%_))))
                       (declare (not safe))
                       (raise __tmp142226))
                     (let () (declare (not safe)) (raise _%exn141789%_)))))
              (__tmp142224 (lambda () (thread-join! _%thread141787%_))))
          (declare (not safe))
          (__with-catch __tmp142225 __tmp142224))))))
