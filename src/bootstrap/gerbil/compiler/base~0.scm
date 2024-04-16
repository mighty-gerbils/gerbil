(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1713044316)
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
       (let ((_%verbosity132331132333%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity132331132333%_
             (let* ((_%verbosity132336%_ _%verbosity132331132333%_)
                    (_%$e132338%_ (string->number _%verbosity132336%_)))
               (if _%$e132338%_ _%$e132338%_ _%verbosity132336%_))
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
      (let ((__tmp132393 (list)) (__tmp132392 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp132393
         '(gensyms bindings)
         __tmp132392
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args132329%_
        (apply make-instance gxc#symbol-table::t _%$args132329%_)))
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
      (lambda (_%self131851132314%_)
        (let* ((_%self132317%_ _%self131851132314%_)
               (_%self132319%_ _%self132317%_))
          (if (let ((__tmp132394
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self132319%_))))
                (declare (not safe))
                (##fx< '2 __tmp132394))
              (begin
                (let ((__tmp132395
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self132319%_
                   __tmp132395
                   '1
                   '#f
                   '#f))
                (let ((__tmp132396
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self132319%_
                   __tmp132396
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp132397
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self132319%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self132319%_
                       '2
                       __tmp132397))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message132183%_ _%stx132184%_ . _%details132185%_)
        (let ((_%ctx132190%_
               (let ((_%$e132187%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e132187%_ _%$e132187%_ 'compile))))
          (apply gx#raise-syntax-error
                 _%ctx132190%_
                 _%message132183%_
                 _%stx132184%_
                 _%details132185%_))))
    (define gxc#verbose
      (lambda _%args132180%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp132398
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args132180%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp132398))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id132162%_)
        (let* ((_%str132164%_
                (if (symbol? _%id132162%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id132162%_))
                    _%id132162%_))
               (_%len132166%_ (string-length _%str132164%_))
               (_%res132168%_
                (let () (declare (not safe)) (##make-string _%len132166%_))))
          (let _%lp132171%_ ((_%i132173%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i132173%_ _%len132166%_))
                (let* ((_%char132175%_ (string-ref _%str132164%_ _%i132173%_))
                       (_%xchar132177%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char132175%_))
                            '#\_
                            _%char132175%_)))
                  (string-set! _%res132168%_ _%i132173%_ _%xchar132177%_)
                  (_%lp132171%_
                   (let () (declare (not safe)) (##fx+ _%i132173%_ '1))))
                _%res132168%_)))))
    (define gxc#map*
      (lambda (_%proc132104%_ _%maybe-improper-list132105%_)
        (let _%recur132107%_ ((_%rest132109%_ _%maybe-improper-list132105%_))
          (let* ((_%rest132110132121%_ _%rest132109%_)
                 (_%E132114132125%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest132110132121%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K132117132150%_
                   (lambda (_%rest132147%_ _%hd132148%_)
                     (cons (_%proc132104%_ _%hd132148%_)
                           (_%recur132107%_ _%rest132147%_))))
                  (_%K132116132141%_ (lambda () '()))
                  (_%K132115132131%_
                   (lambda (_%tail132129%_) (_%proc132104%_ _%tail132129%_))))
              (let ((_%try-match132112132144%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest132110132121%_))
                           (_%K132116132141%_)
                           (let ((_%tail132134%_ _%rest132110132121%_))
                             (declare (not safe))
                             (_%proc132104%_ _%tail132134%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest132110132121%_))
                    (let ((_%tl132119132155%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest132110132121%_)))
                          (_%hd132118132153%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest132110132121%_))))
                      (let ((_%hd132158%_ _%hd132118132153%_)
                            (_%rest132160%_ _%tl132119132155%_))
                        (_%K132117132150%_ _%rest132160%_ _%hd132158%_)))
                    (_%try-match132112132144%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym132099%_)
        (let ((_%$e132101%_ (not (gxc#gensym-reference? _%sym132099%_))))
          (if _%$e132101%_
              _%$e132101%_
              (memq _%sym132099%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym132095%_)
        (let ((_%str132097%_ (symbol->string _%sym132095%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str132097%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str132097%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id132066%_)
        (let ((_%$e132068%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id132066%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id132066%_))
                   '#f)))
          (if _%$e132068%_
              ((lambda (_%bind132071%_)
                 (let ((_%eid132073%_
                        (##structure-ref _%bind132071%_ '1 gx#binding::t '#f))
                       (_%ht132074%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid132073%_))
                       _%eid132073%_
                       (let ((_%$e132077%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht132074%_ _%eid132073%_))))
                         (if _%$e132077%_
                             _%$e132077%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind132071%_
                                    'gx#local-binding::t))
                                 (let ((_%gid132081%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid132073%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht132074%_
                                      _%eid132073%_
                                      _%gid132081%_))
                                   _%gid132081%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind132071%_
                                        'gx#module-binding::t))
                                     (let ((_%gid132090%_
                                            (let ((_%$e132084%_
                                                   (##structure-ref
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%bind132071%_
                                                       '4
                                                       '#f
                                                       '#f))
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e132084%_
                                                  ((lambda (_%ns132087%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns132087%_
                                                        '"#"
                                                        _%eid132073%_)))
                                                   _%$e132084%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid132073%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht132074%_
                                          _%eid132073%_
                                          _%gid132090%_))
                                       _%gid132090%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id132066%_
                                      _%eid132073%_
                                      _%bind132071%_))))))))
               _%$e132068%_)
              (if (let ((__tmp132399
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id132066%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp132399))
                  (let () (declare (not safe)) (gx#stx-e _%id132066%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id132066%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id132064%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id132064%_))
            (gxc#generate-runtime-binding-id _%id132064%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top132051%_)
        (if _%top132051%_
            (let ((_%ns132053%_
                   (##structure-ref
                    (let ((__tmp132400
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp132400))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi132054%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns132053%_
                  (if (fxpositive? _%phi132054%_)
                      (let ((__tmp132402 (number->string _%phi132054%_))
                            (__tmp132401
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns132053%_
                         '"["
                         __tmp132402
                         '"]#_"
                         __tmp132401
                         '"_"))
                      (let ((__tmp132403
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns132053%_ '"#_" __tmp132403 '"_")))
                  (if (fxpositive? _%phi132054%_)
                      (let ((__tmp132405 (number->string _%phi132054%_))
                            (__tmp132404
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp132405
                         '"]#_"
                         __tmp132404
                         '"_"))
                      (let ((__tmp132406
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp132406 '"_")))))
            (let ((__tmp132407 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp132407 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top132060%_ '#f))
          (gxc#generate-runtime-temporary__% _%top132060%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g132409_
        (let ((_g132408_ (let () (declare (not safe)) (##length _g132409_))))
          (cond ((let () (declare (not safe)) (##fx= _g132408_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g132409_))
                ((let () (declare (not safe)) (##fx= _g132408_ 1))
                 (apply gxc#generate-runtime-temporary__% _g132409_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g132409_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym132029%_ _%quote?132030%_)
        (let* ((_%ht132032%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e132034%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht132032%_ _%sym132029%_))))
          (if _%$e132034%_
              _%$e132034%_
              (let ((_%g132038%_
                     (if _%quote?132030%_
                         (let ((__tmp132410
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym132029%_
                            '"__"
                            __tmp132410))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym132029%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht132032%_ _%sym132029%_ _%g132038%_))
                _%g132038%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym132043%_)
        (let ((_%quote?132045%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym132043%_
           _%quote?132045%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g132412_
        (let ((_g132411_ (let () (declare (not safe)) (##length _g132412_))))
          (cond ((let () (declare (not safe)) (##fx= _g132411_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g132412_))
                ((let () (declare (not safe)) (##fx= _g132411_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g132412_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g132412_))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1132021%_ _%id2132022%_)
        (letrec ((_%symbol-e132024%_
                  (lambda (_%id132026%_)
                    (if (symbol? _%id132026%_)
                        _%id132026%_
                        (gxc#generate-runtime-binding-id _%id132026%_)))))
          (eq? (_%symbol-e132024%_ _%id1132021%_)
               (_%symbol-e132024%_ _%id2132022%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx132019%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx132019%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx132019%_)
            (let () (declare (not safe)) (gx#stx-e _%stx132019%_)))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk132004%_ _%name132005%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job132007%_
               (gxc#make-compile-job _%thunk132004%_ _%name132005%_)))
          (set! gxc#__compile-jobs (cons _%job132007%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk132012%_)
        (let ((_%name132014%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk132012%_ _%name132014%_))))
    (define gxc#add-compile-job!
      (lambda _g132414_
        (let ((_g132413_ (let () (declare (not safe)) (##length _g132414_))))
          (cond ((let () (declare (not safe)) (##fx= _g132413_ 1))
                 (apply gxc#add-compile-job!__0 _g132414_))
                ((let () (declare (not safe)) (##fx= _g132413_ 2))
                 (apply gxc#add-compile-job!__% _g132414_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g132414_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result132001%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result132001%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop131995%_ ()
          (let ((_%pending131998%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending131998%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending131998%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending131998%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk131984%_ _%name131985%_)
        (make-thread
         (lambda ()
           (let _%loop131988%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp132415
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name131985%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp132415))
                   (let ((__tmp132417 (lambda () (_%thunk131984%_)))
                         (__tmp132416
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp132417 __tmp132416)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop131988%_)))))
         _%name131985%_)))
    (define gxc#join!
      (lambda (_%thread131979%_)
        (let ((__tmp132419
               (lambda (_%exn131981%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn131981%_))
                     (let ((__tmp132420
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn131981%_))))
                       (declare (not safe))
                       (raise __tmp132420))
                     (let () (declare (not safe)) (raise _%exn131981%_)))))
              (__tmp132418 (lambda () (thread-join! _%thread131979%_))))
          (declare (not safe))
          (__with-catch __tmp132419 __tmp132418))))))
