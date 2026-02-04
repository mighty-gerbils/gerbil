(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1770243151)
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
       (let ((_%verbosity156290156292%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity156290156292%_
             (let* ((_%verbosity156294%_ _%verbosity156290156292%_)
                    (_%$e156296%_ (string->number _%verbosity156294%_)))
               (if _%$e156296%_ _%$e156296%_ _%verbosity156294%_))
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
      (let ((__tmp156351 (list)) (__tmp156350 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp156351
         '(gensyms bindings)
         __tmp156350
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args156288%_
        (apply make-instance gxc#symbol-table::t _%$args156288%_)))
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
      (lambda (_%self156275%_)
        (let ((_%self156278%_ _%self156275%_))
          (if (let ((__tmp156352
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self156278%_))))
                (declare (not safe))
                (##fx< '2 __tmp156352))
              (begin
                (let ((__tmp156353
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self156278%_
                   __tmp156353
                   '1
                   '#f
                   '#f))
                (let ((__tmp156354
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self156278%_
                   __tmp156354
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp156355
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self156278%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self156278%_
                       '2
                       __tmp156355))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message156144%_ _%stx156145%_ . _%details156146%_)
        (let ((_%ctx156151%_
               (let ((_%$e156148%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e156148%_ _%$e156148%_ '(compile)))))
          (apply gx#raise-syntax-error
                 _%ctx156151%_
                 _%message156144%_
                 _%stx156145%_
                 _%details156146%_))))
    (define gxc#verbose
      (lambda _%args156141%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp156356
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args156141%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp156356))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id156123%_)
        (let* ((_%str156125%_
                (if (symbol? _%id156123%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id156123%_))
                    _%id156123%_))
               (_%len156127%_ (string-length _%str156125%_))
               (_%res156129%_
                (let () (declare (not safe)) (##make-string _%len156127%_))))
          (let _%lp156132%_ ((_%i156134%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i156134%_ _%len156127%_))
                (let* ((_%char156136%_ (string-ref _%str156125%_ _%i156134%_))
                       (_%xchar156138%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char156136%_))
                            '#\_
                            _%char156136%_)))
                  (string-set! _%res156129%_ _%i156134%_ _%xchar156138%_)
                  (_%lp156132%_
                   (let () (declare (not safe)) (##fx+ _%i156134%_ '1))))
                _%res156129%_)))))
    (define gxc#map*
      (lambda (_%proc156065%_ _%maybe-improper-list156066%_)
        (let _%recur156068%_ ((_%rest156070%_ _%maybe-improper-list156066%_))
          (let* ((_%rest156071156082%_ _%rest156070%_)
                 (_%E156075156086%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest156071156082%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K156078156111%_
                   (lambda (_%rest156108%_ _%hd156109%_)
                     (cons (_%proc156065%_ _%hd156109%_)
                           (_%recur156068%_ _%rest156108%_))))
                  (_%K156077156102%_ (lambda () '()))
                  (_%K156076156092%_
                   (lambda (_%tail156090%_) (_%proc156065%_ _%tail156090%_))))
              (let ((_%try-match156073156105%_
                     (lambda ()
                       (if (null? _%rest156071156082%_)
                           (_%K156077156102%_)
                           (let ((_%tail156095%_ _%rest156071156082%_))
                             (declare (not safe))
                             (_%proc156065%_ _%tail156095%_))))))
                (if (pair? _%rest156071156082%_)
                    (let ((_%tl156080156116%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest156071156082%_)))
                          (_%hd156079156114%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest156071156082%_))))
                      (let ((_%hd156119%_ _%hd156079156114%_)
                            (_%rest156121%_ _%tl156080156116%_))
                        (_%K156078156111%_ _%rest156121%_ _%hd156119%_)))
                    (_%try-match156073156105%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym156060%_)
        (let ((_%$e156062%_ (not (gxc#gensym-reference? _%sym156060%_))))
          (if _%$e156062%_
              _%$e156062%_
              (memq _%sym156060%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym156056%_)
        (let ((_%str156058%_ (symbol->string _%sym156056%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str156058%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str156058%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id156027%_)
        (let ((_%$e156029%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id156027%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id156027%_))
                   '#f)))
          (if _%$e156029%_
              ((lambda (_%bind156032%_)
                 (let ((_%eid156034%_
                        (##structure-ref _%bind156032%_ '1 gx#binding::t '#f))
                       (_%ht156035%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid156034%_))
                       _%eid156034%_
                       (let ((_%$e156038%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht156035%_ _%eid156034%_))))
                         (if _%$e156038%_
                             _%$e156038%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind156032%_
                                    'gx#local-binding::t))
                                 (let ((_%gid156042%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid156034%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht156035%_
                                      _%eid156034%_
                                      _%gid156042%_))
                                   _%gid156042%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind156032%_
                                        'gx#module-binding::t))
                                     (let ((_%gid156051%_
                                            (let ((_%$e156045%_
                                                   (##structure-ref
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%bind156032%_
                                                       '4
                                                       '#f
                                                       '#f))
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e156045%_
                                                  ((lambda (_%ns156048%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns156048%_
                                                        '"#"
                                                        _%eid156034%_)))
                                                   _%$e156045%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid156034%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht156035%_
                                          _%eid156034%_
                                          _%gid156051%_))
                                       _%gid156051%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id156027%_
                                      _%eid156034%_
                                      _%bind156032%_))))))))
               _%$e156029%_)
              (if (let ((__tmp156357
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id156027%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp156357))
                  (let () (declare (not safe)) (gx#stx-e _%id156027%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id156027%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id156025%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id156025%_))
            (gxc#generate-runtime-binding-id _%id156025%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top156012%_)
        (if _%top156012%_
            (let ((_%ns156014%_
                   (##structure-ref
                    (let ((__tmp156358
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp156358))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi156015%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns156014%_
                  (if (fxpositive? _%phi156015%_)
                      (let ((__tmp156360 (number->string _%phi156015%_))
                            (__tmp156359
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns156014%_
                         '"["
                         __tmp156360
                         '"]#_"
                         __tmp156359
                         '"_"))
                      (let ((__tmp156361
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns156014%_ '"#_" __tmp156361 '"_")))
                  (if (fxpositive? _%phi156015%_)
                      (let ((__tmp156363 (number->string _%phi156015%_))
                            (__tmp156362
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp156363
                         '"]#_"
                         __tmp156362
                         '"_"))
                      (let ((__tmp156364
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp156364 '"_")))))
            (let ((__tmp156365 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp156365 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top156021%_ '#f))
          (gxc#generate-runtime-temporary__% _%top156021%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g156366_
        (let ((_g156367_ (let () (declare (not safe)) (##length _g156366_))))
          (cond ((let () (declare (not safe)) (##fx= _g156367_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g156366_))
                ((let () (declare (not safe)) (##fx= _g156367_ 1))
                 (apply gxc#generate-runtime-temporary__% _g156366_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g156366_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym155990%_ _%quote?155991%_)
        (let* ((_%ht155993%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e155995%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht155993%_ _%sym155990%_))))
          (if _%$e155995%_
              _%$e155995%_
              (let ((_%g155999%_
                     (if _%quote?155991%_
                         (let ((__tmp156368
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym155990%_
                            '"__"
                            __tmp156368))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym155990%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht155993%_ _%sym155990%_ _%g155999%_))
                _%g155999%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym156004%_)
        (let ((_%quote?156006%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym156004%_
           _%quote?156006%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g156369_
        (let ((_g156370_ (let () (declare (not safe)) (##length _g156369_))))
          (cond ((let () (declare (not safe)) (##fx= _g156370_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g156369_))
                ((let () (declare (not safe)) (##fx= _g156370_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g156369_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g156369_))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1155982%_ _%id2155983%_)
        (letrec ((_%symbol-e155985%_
                  (lambda (_%id155987%_)
                    (if (symbol? _%id155987%_)
                        _%id155987%_
                        (gxc#generate-runtime-binding-id _%id155987%_)))))
          (eq? (_%symbol-e155985%_ _%id1155982%_)
               (_%symbol-e155985%_ _%id2155983%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx155980%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx155980%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx155980%_)
            (let () (declare (not safe)) (gx#stx-e _%stx155980%_)))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk155965%_ _%name155966%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job155968%_
               (gxc#make-compile-job _%thunk155965%_ _%name155966%_)))
          (set! gxc#__compile-jobs (cons _%job155968%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk155973%_)
        (let ((_%name155975%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk155973%_ _%name155975%_))))
    (define gxc#add-compile-job!
      (lambda _g156371_
        (let ((_g156372_ (let () (declare (not safe)) (##length _g156371_))))
          (cond ((let () (declare (not safe)) (##fx= _g156372_ 1))
                 (apply gxc#add-compile-job!__0 _g156371_))
                ((let () (declare (not safe)) (##fx= _g156372_ 2))
                 (apply gxc#add-compile-job!__% _g156371_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g156371_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result155962%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result155962%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop155956%_ ()
          (let ((_%pending155959%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending155959%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending155959%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending155959%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk155945%_ _%name155946%_)
        (make-thread
         (lambda ()
           (let _%loop155949%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp156373
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name155946%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp156373))
                   (let ((__tmp156375 (lambda () (_%thunk155945%_)))
                         (__tmp156374
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp156375 __tmp156374)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop155949%_)))))
         _%name155946%_)))
    (define gxc#join!
      (lambda (_%thread155940%_)
        (let ((__tmp156377
               (lambda (_%exn155942%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn155942%_))
                     (let ((__tmp156378
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn155942%_))))
                       (declare (not safe))
                       (raise __tmp156378))
                     (let () (declare (not safe)) (raise _%exn155942%_)))))
              (__tmp156376 (lambda () (thread-join! _%thread155940%_))))
          (declare (not safe))
          (__with-catch __tmp156377 __tmp156376))))))
