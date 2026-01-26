(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1769384629)
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
       (let ((_%verbosity146303146305%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity146303146305%_
             (let* ((_%verbosity146307%_ _%verbosity146303146305%_)
                    (_%$e146309%_ (string->number _%verbosity146307%_)))
               (if _%$e146309%_ _%$e146309%_ _%verbosity146307%_))
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
      (let ((__tmp146364 (list)) (__tmp146363 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp146364
         '(gensyms bindings)
         __tmp146363
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args146301%_
        (apply make-instance gxc#symbol-table::t _%$args146301%_)))
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
      (lambda (_%self146288%_)
        (let ((_%self146291%_ _%self146288%_))
          (if (let ((__tmp146365
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self146291%_))))
                (declare (not safe))
                (##fx< '2 __tmp146365))
              (begin
                (let ((__tmp146366
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self146291%_
                   __tmp146366
                   '1
                   '#f
                   '#f))
                (let ((__tmp146367
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self146291%_
                   __tmp146367
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp146368
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self146291%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self146291%_
                       '2
                       __tmp146368))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message146157%_ _%stx146158%_ . _%details146159%_)
        (let ((_%ctx146164%_
               (let ((_%$e146161%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e146161%_ _%$e146161%_ '(compile)))))
          (apply gx#raise-syntax-error
                 _%ctx146164%_
                 _%message146157%_
                 _%stx146158%_
                 _%details146159%_))))
    (define gxc#verbose
      (lambda _%args146154%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp146369
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args146154%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp146369))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id146136%_)
        (let* ((_%str146138%_
                (if (symbol? _%id146136%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id146136%_))
                    _%id146136%_))
               (_%len146140%_ (string-length _%str146138%_))
               (_%res146142%_
                (let () (declare (not safe)) (##make-string _%len146140%_))))
          (let _%lp146145%_ ((_%i146147%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i146147%_ _%len146140%_))
                (let* ((_%char146149%_ (string-ref _%str146138%_ _%i146147%_))
                       (_%xchar146151%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char146149%_))
                            '#\_
                            _%char146149%_)))
                  (string-set! _%res146142%_ _%i146147%_ _%xchar146151%_)
                  (_%lp146145%_
                   (let () (declare (not safe)) (##fx+ _%i146147%_ '1))))
                _%res146142%_)))))
    (define gxc#map*
      (lambda (_%proc146078%_ _%maybe-improper-list146079%_)
        (let _%recur146081%_ ((_%rest146083%_ _%maybe-improper-list146079%_))
          (let* ((_%rest146084146095%_ _%rest146083%_)
                 (_%E146088146099%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest146084146095%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K146091146124%_
                   (lambda (_%rest146121%_ _%hd146122%_)
                     (cons (_%proc146078%_ _%hd146122%_)
                           (_%recur146081%_ _%rest146121%_))))
                  (_%K146090146115%_ (lambda () '()))
                  (_%K146089146105%_
                   (lambda (_%tail146103%_) (_%proc146078%_ _%tail146103%_))))
              (let ((_%try-match146086146118%_
                     (lambda ()
                       (if (null? _%rest146084146095%_)
                           (_%K146090146115%_)
                           (let ((_%tail146108%_ _%rest146084146095%_))
                             (declare (not safe))
                             (_%proc146078%_ _%tail146108%_))))))
                (if (pair? _%rest146084146095%_)
                    (let ((_%tl146093146129%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest146084146095%_)))
                          (_%hd146092146127%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest146084146095%_))))
                      (let ((_%hd146132%_ _%hd146092146127%_)
                            (_%rest146134%_ _%tl146093146129%_))
                        (_%K146091146124%_ _%rest146134%_ _%hd146132%_)))
                    (_%try-match146086146118%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym146073%_)
        (let ((_%$e146075%_ (not (gxc#gensym-reference? _%sym146073%_))))
          (if _%$e146075%_
              _%$e146075%_
              (memq _%sym146073%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym146069%_)
        (let ((_%str146071%_ (symbol->string _%sym146069%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str146071%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str146071%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id146040%_)
        (let ((_%$e146042%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id146040%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id146040%_))
                   '#f)))
          (if _%$e146042%_
              ((lambda (_%bind146045%_)
                 (let ((_%eid146047%_
                        (##structure-ref _%bind146045%_ '1 gx#binding::t '#f))
                       (_%ht146048%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid146047%_))
                       _%eid146047%_
                       (let ((_%$e146051%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht146048%_ _%eid146047%_))))
                         (if _%$e146051%_
                             _%$e146051%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind146045%_
                                    'gx#local-binding::t))
                                 (let ((_%gid146055%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid146047%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht146048%_
                                      _%eid146047%_
                                      _%gid146055%_))
                                   _%gid146055%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind146045%_
                                        'gx#module-binding::t))
                                     (let ((_%gid146064%_
                                            (let ((_%$e146058%_
                                                   (##structure-ref
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%bind146045%_
                                                       '4
                                                       '#f
                                                       '#f))
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e146058%_
                                                  ((lambda (_%ns146061%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns146061%_
                                                        '"#"
                                                        _%eid146047%_)))
                                                   _%$e146058%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid146047%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht146048%_
                                          _%eid146047%_
                                          _%gid146064%_))
                                       _%gid146064%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id146040%_
                                      _%eid146047%_
                                      _%bind146045%_))))))))
               _%$e146042%_)
              (if (let ((__tmp146370
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id146040%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp146370))
                  (let () (declare (not safe)) (gx#stx-e _%id146040%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id146040%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id146038%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id146038%_))
            (gxc#generate-runtime-binding-id _%id146038%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top146025%_)
        (if _%top146025%_
            (let ((_%ns146027%_
                   (##structure-ref
                    (let ((__tmp146371
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp146371))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi146028%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns146027%_
                  (if (fxpositive? _%phi146028%_)
                      (let ((__tmp146373 (number->string _%phi146028%_))
                            (__tmp146372
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns146027%_
                         '"["
                         __tmp146373
                         '"]#_"
                         __tmp146372
                         '"_"))
                      (let ((__tmp146374
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns146027%_ '"#_" __tmp146374 '"_")))
                  (if (fxpositive? _%phi146028%_)
                      (let ((__tmp146376 (number->string _%phi146028%_))
                            (__tmp146375
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp146376
                         '"]#_"
                         __tmp146375
                         '"_"))
                      (let ((__tmp146377
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp146377 '"_")))))
            (let ((__tmp146378 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp146378 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top146034%_ '#f))
          (gxc#generate-runtime-temporary__% _%top146034%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g146379_
        (let ((_g146380_ (let () (declare (not safe)) (##length _g146379_))))
          (cond ((let () (declare (not safe)) (##fx= _g146380_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g146379_))
                ((let () (declare (not safe)) (##fx= _g146380_ 1))
                 (apply gxc#generate-runtime-temporary__% _g146379_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g146379_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym146003%_ _%quote?146004%_)
        (let* ((_%ht146006%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e146008%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht146006%_ _%sym146003%_))))
          (if _%$e146008%_
              _%$e146008%_
              (let ((_%g146012%_
                     (if _%quote?146004%_
                         (let ((__tmp146381
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym146003%_
                            '"__"
                            __tmp146381))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym146003%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht146006%_ _%sym146003%_ _%g146012%_))
                _%g146012%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym146017%_)
        (let ((_%quote?146019%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym146017%_
           _%quote?146019%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g146382_
        (let ((_g146383_ (let () (declare (not safe)) (##length _g146382_))))
          (cond ((let () (declare (not safe)) (##fx= _g146383_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g146382_))
                ((let () (declare (not safe)) (##fx= _g146383_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g146382_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g146382_))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1145995%_ _%id2145996%_)
        (letrec ((_%symbol-e145998%_
                  (lambda (_%id146000%_)
                    (if (symbol? _%id146000%_)
                        _%id146000%_
                        (gxc#generate-runtime-binding-id _%id146000%_)))))
          (eq? (_%symbol-e145998%_ _%id1145995%_)
               (_%symbol-e145998%_ _%id2145996%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx145993%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx145993%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx145993%_)
            (let () (declare (not safe)) (gx#stx-e _%stx145993%_)))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk145978%_ _%name145979%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job145981%_
               (gxc#make-compile-job _%thunk145978%_ _%name145979%_)))
          (set! gxc#__compile-jobs (cons _%job145981%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk145986%_)
        (let ((_%name145988%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk145986%_ _%name145988%_))))
    (define gxc#add-compile-job!
      (lambda _g146384_
        (let ((_g146385_ (let () (declare (not safe)) (##length _g146384_))))
          (cond ((let () (declare (not safe)) (##fx= _g146385_ 1))
                 (apply gxc#add-compile-job!__0 _g146384_))
                ((let () (declare (not safe)) (##fx= _g146385_ 2))
                 (apply gxc#add-compile-job!__% _g146384_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g146384_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result145975%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result145975%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop145969%_ ()
          (let ((_%pending145972%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending145972%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending145972%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending145972%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk145958%_ _%name145959%_)
        (make-thread
         (lambda ()
           (let _%loop145962%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp146386
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name145959%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp146386))
                   (let ((__tmp146388 (lambda () (_%thunk145958%_)))
                         (__tmp146387
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp146388 __tmp146387)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop145962%_)))))
         _%name145959%_)))
    (define gxc#join!
      (lambda (_%thread145953%_)
        (let ((__tmp146390
               (lambda (_%exn145955%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn145955%_))
                     (let ((__tmp146391
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn145955%_))))
                       (declare (not safe))
                       (raise __tmp146391))
                     (let () (declare (not safe)) (raise _%exn145955%_)))))
              (__tmp146389 (lambda () (thread-join! _%thread145953%_))))
          (declare (not safe))
          (__with-catch __tmp146390 __tmp146389))))))
