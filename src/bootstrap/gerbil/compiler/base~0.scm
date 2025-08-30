(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1756224516)
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
       (let ((_%verbosity142140142142%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity142140142142%_
             (let* ((_%verbosity142145%_ _%verbosity142140142142%_)
                    (_%$e142147%_ (string->number _%verbosity142145%_)))
               (if _%$e142147%_ _%$e142147%_ _%verbosity142145%_))
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
      (let ((__tmp142202 (list)) (__tmp142201 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp142202
         '(gensyms bindings)
         __tmp142201
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args142138%_
        (apply make-instance gxc#symbol-table::t _%$args142138%_)))
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
      (lambda (_%self142125%_)
        (let ((_%self142128%_ _%self142125%_))
          (if (let ((__tmp142203
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self142128%_))))
                (declare (not safe))
                (##fx< '2 __tmp142203))
              (begin
                (let ((__tmp142204
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self142128%_
                   __tmp142204
                   '1
                   '#f
                   '#f))
                (let ((__tmp142205
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self142128%_
                   __tmp142205
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp142206
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self142128%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self142128%_
                       '2
                       __tmp142206))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message141994%_ _%stx141995%_ . _%details141996%_)
        (let ((_%ctx142001%_
               (let ((_%$e141998%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e141998%_ _%$e141998%_ '(compile)))))
          (apply gx#raise-syntax-error
                 _%ctx142001%_
                 _%message141994%_
                 _%stx141995%_
                 _%details141996%_))))
    (define gxc#verbose
      (lambda _%args141991%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp142207
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args141991%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp142207))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id141973%_)
        (let* ((_%str141975%_
                (if (symbol? _%id141973%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id141973%_))
                    _%id141973%_))
               (_%len141977%_ (string-length _%str141975%_))
               (_%res141979%_
                (let () (declare (not safe)) (##make-string _%len141977%_))))
          (let _%lp141982%_ ((_%i141984%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i141984%_ _%len141977%_))
                (let* ((_%char141986%_ (string-ref _%str141975%_ _%i141984%_))
                       (_%xchar141988%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char141986%_))
                            '#\_
                            _%char141986%_)))
                  (string-set! _%res141979%_ _%i141984%_ _%xchar141988%_)
                  (_%lp141982%_
                   (let () (declare (not safe)) (##fx+ _%i141984%_ '1))))
                _%res141979%_)))))
    (define gxc#map*
      (lambda (_%proc141915%_ _%maybe-improper-list141916%_)
        (let _%recur141918%_ ((_%rest141920%_ _%maybe-improper-list141916%_))
          (let* ((_%rest141921141932%_ _%rest141920%_)
                 (_%E141925141936%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest141921141932%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K141928141961%_
                   (lambda (_%rest141958%_ _%hd141959%_)
                     (cons (_%proc141915%_ _%hd141959%_)
                           (_%recur141918%_ _%rest141958%_))))
                  (_%K141927141952%_ (lambda () '()))
                  (_%K141926141942%_
                   (lambda (_%tail141940%_) (_%proc141915%_ _%tail141940%_))))
              (let ((_%try-match141923141955%_
                     (lambda ()
                       (if (null? _%rest141921141932%_)
                           (_%K141927141952%_)
                           (let ((_%tail141945%_ _%rest141921141932%_))
                             (declare (not safe))
                             (_%proc141915%_ _%tail141945%_))))))
                (if (pair? _%rest141921141932%_)
                    (let ((_%tl141930141966%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest141921141932%_)))
                          (_%hd141929141964%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest141921141932%_))))
                      (let ((_%hd141969%_ _%hd141929141964%_)
                            (_%rest141971%_ _%tl141930141966%_))
                        (_%K141928141961%_ _%rest141971%_ _%hd141969%_)))
                    (_%try-match141923141955%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym141910%_)
        (let ((_%$e141912%_ (not (gxc#gensym-reference? _%sym141910%_))))
          (if _%$e141912%_
              _%$e141912%_
              (memq _%sym141910%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym141906%_)
        (let ((_%str141908%_ (symbol->string _%sym141906%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str141908%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str141908%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id141877%_)
        (let ((_%$e141879%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id141877%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id141877%_))
                   '#f)))
          (if _%$e141879%_
              ((lambda (_%bind141882%_)
                 (let ((_%eid141884%_
                        (##structure-ref _%bind141882%_ '1 gx#binding::t '#f))
                       (_%ht141885%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid141884%_))
                       _%eid141884%_
                       (let ((_%$e141888%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht141885%_ _%eid141884%_))))
                         (if _%$e141888%_
                             _%$e141888%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind141882%_
                                    'gx#local-binding::t))
                                 (let ((_%gid141892%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid141884%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht141885%_
                                      _%eid141884%_
                                      _%gid141892%_))
                                   _%gid141892%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind141882%_
                                        'gx#module-binding::t))
                                     (let ((_%gid141901%_
                                            (let ((_%$e141895%_
                                                   (##structure-ref
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%bind141882%_
                                                       '4
                                                       '#f
                                                       '#f))
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e141895%_
                                                  ((lambda (_%ns141898%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns141898%_
                                                        '"#"
                                                        _%eid141884%_)))
                                                   _%$e141895%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid141884%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht141885%_
                                          _%eid141884%_
                                          _%gid141901%_))
                                       _%gid141901%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id141877%_
                                      _%eid141884%_
                                      _%bind141882%_))))))))
               _%$e141879%_)
              (if (let ((__tmp142208
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id141877%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp142208))
                  (let () (declare (not safe)) (gx#stx-e _%id141877%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id141877%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id141875%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id141875%_))
            (gxc#generate-runtime-binding-id _%id141875%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top141862%_)
        (if _%top141862%_
            (let ((_%ns141864%_
                   (##structure-ref
                    (let ((__tmp142209
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp142209))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi141865%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns141864%_
                  (if (fxpositive? _%phi141865%_)
                      (let ((__tmp142211 (number->string _%phi141865%_))
                            (__tmp142210
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns141864%_
                         '"["
                         __tmp142211
                         '"]#_"
                         __tmp142210
                         '"_"))
                      (let ((__tmp142212
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns141864%_ '"#_" __tmp142212 '"_")))
                  (if (fxpositive? _%phi141865%_)
                      (let ((__tmp142214 (number->string _%phi141865%_))
                            (__tmp142213
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp142214
                         '"]#_"
                         __tmp142213
                         '"_"))
                      (let ((__tmp142215
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp142215 '"_")))))
            (let ((__tmp142216 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp142216 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top141871%_ '#f))
          (gxc#generate-runtime-temporary__% _%top141871%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g142217_
        (let ((_g142218_ (let () (declare (not safe)) (##length _g142217_))))
          (cond ((let () (declare (not safe)) (##fx= _g142218_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g142217_))
                ((let () (declare (not safe)) (##fx= _g142218_ 1))
                 (apply gxc#generate-runtime-temporary__% _g142217_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g142217_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym141840%_ _%quote?141841%_)
        (let* ((_%ht141843%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e141845%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht141843%_ _%sym141840%_))))
          (if _%$e141845%_
              _%$e141845%_
              (let ((_%g141849%_
                     (if _%quote?141841%_
                         (let ((__tmp142219
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym141840%_
                            '"__"
                            __tmp142219))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym141840%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht141843%_ _%sym141840%_ _%g141849%_))
                _%g141849%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym141854%_)
        (let ((_%quote?141856%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym141854%_
           _%quote?141856%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g142220_
        (let ((_g142221_ (let () (declare (not safe)) (##length _g142220_))))
          (cond ((let () (declare (not safe)) (##fx= _g142221_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g142220_))
                ((let () (declare (not safe)) (##fx= _g142221_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g142220_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g142220_))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1141832%_ _%id2141833%_)
        (letrec ((_%symbol-e141835%_
                  (lambda (_%id141837%_)
                    (if (symbol? _%id141837%_)
                        _%id141837%_
                        (gxc#generate-runtime-binding-id _%id141837%_)))))
          (eq? (_%symbol-e141835%_ _%id1141832%_)
               (_%symbol-e141835%_ _%id2141833%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx141830%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx141830%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx141830%_)
            (let () (declare (not safe)) (gx#stx-e _%stx141830%_)))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk141815%_ _%name141816%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job141818%_
               (gxc#make-compile-job _%thunk141815%_ _%name141816%_)))
          (set! gxc#__compile-jobs (cons _%job141818%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk141823%_)
        (let ((_%name141825%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk141823%_ _%name141825%_))))
    (define gxc#add-compile-job!
      (lambda _g142222_
        (let ((_g142223_ (let () (declare (not safe)) (##length _g142222_))))
          (cond ((let () (declare (not safe)) (##fx= _g142223_ 1))
                 (apply gxc#add-compile-job!__0 _g142222_))
                ((let () (declare (not safe)) (##fx= _g142223_ 2))
                 (apply gxc#add-compile-job!__% _g142222_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g142222_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result141812%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result141812%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop141806%_ ()
          (let ((_%pending141809%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending141809%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending141809%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending141809%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk141795%_ _%name141796%_)
        (make-thread
         (lambda ()
           (let _%loop141799%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp142224
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name141796%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp142224))
                   (let ((__tmp142226 (lambda () (_%thunk141795%_)))
                         (__tmp142225
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp142226 __tmp142225)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop141799%_)))))
         _%name141796%_)))
    (define gxc#join!
      (lambda (_%thread141790%_)
        (let ((__tmp142228
               (lambda (_%exn141792%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn141792%_))
                     (let ((__tmp142229
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn141792%_))))
                       (declare (not safe))
                       (raise __tmp142229))
                     (let () (declare (not safe)) (raise _%exn141792%_)))))
              (__tmp142227 (lambda () (thread-join! _%thread141790%_))))
          (declare (not safe))
          (__with-catch __tmp142228 __tmp142227))))))
