(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1768864949)
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
       (let ((_%verbosity145845145847%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity145845145847%_
             (let* ((_%verbosity145850%_ _%verbosity145845145847%_)
                    (_%$e145852%_ (string->number _%verbosity145850%_)))
               (if _%$e145852%_ _%$e145852%_ _%verbosity145850%_))
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
      (let ((__tmp145907 (list)) (__tmp145906 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp145907
         '(gensyms bindings)
         __tmp145906
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args145843%_
        (apply make-instance gxc#symbol-table::t _%$args145843%_)))
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
      (lambda (_%self145830%_)
        (let ((_%self145833%_ _%self145830%_))
          (if (let ((__tmp145908
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self145833%_))))
                (declare (not safe))
                (##fx< '2 __tmp145908))
              (begin
                (let ((__tmp145909
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self145833%_
                   __tmp145909
                   '1
                   '#f
                   '#f))
                (let ((__tmp145910
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self145833%_
                   __tmp145910
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp145911
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self145833%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self145833%_
                       '2
                       __tmp145911))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message145699%_ _%stx145700%_ . _%details145701%_)
        (let ((_%ctx145706%_
               (let ((_%$e145703%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e145703%_ _%$e145703%_ '(compile)))))
          (apply gx#raise-syntax-error
                 _%ctx145706%_
                 _%message145699%_
                 _%stx145700%_
                 _%details145701%_))))
    (define gxc#verbose
      (lambda _%args145696%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp145912
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args145696%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp145912))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id145678%_)
        (let* ((_%str145680%_
                (if (symbol? _%id145678%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id145678%_))
                    _%id145678%_))
               (_%len145682%_ (string-length _%str145680%_))
               (_%res145684%_
                (let () (declare (not safe)) (##make-string _%len145682%_))))
          (let _%lp145687%_ ((_%i145689%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i145689%_ _%len145682%_))
                (let* ((_%char145691%_ (string-ref _%str145680%_ _%i145689%_))
                       (_%xchar145693%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char145691%_))
                            '#\_
                            _%char145691%_)))
                  (string-set! _%res145684%_ _%i145689%_ _%xchar145693%_)
                  (_%lp145687%_
                   (let () (declare (not safe)) (##fx+ _%i145689%_ '1))))
                _%res145684%_)))))
    (define gxc#map*
      (lambda (_%proc145620%_ _%maybe-improper-list145621%_)
        (let _%recur145623%_ ((_%rest145625%_ _%maybe-improper-list145621%_))
          (let* ((_%rest145626145637%_ _%rest145625%_)
                 (_%E145630145641%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest145626145637%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K145633145666%_
                   (lambda (_%rest145663%_ _%hd145664%_)
                     (cons (_%proc145620%_ _%hd145664%_)
                           (_%recur145623%_ _%rest145663%_))))
                  (_%K145632145657%_ (lambda () '()))
                  (_%K145631145647%_
                   (lambda (_%tail145645%_) (_%proc145620%_ _%tail145645%_))))
              (let ((_%try-match145628145660%_
                     (lambda ()
                       (if (null? _%rest145626145637%_)
                           (_%K145632145657%_)
                           (let ((_%tail145650%_ _%rest145626145637%_))
                             (declare (not safe))
                             (_%proc145620%_ _%tail145650%_))))))
                (if (pair? _%rest145626145637%_)
                    (let ((_%tl145635145671%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest145626145637%_)))
                          (_%hd145634145669%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest145626145637%_))))
                      (let ((_%hd145674%_ _%hd145634145669%_)
                            (_%rest145676%_ _%tl145635145671%_))
                        (_%K145633145666%_ _%rest145676%_ _%hd145674%_)))
                    (_%try-match145628145660%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym145615%_)
        (let ((_%$e145617%_ (not (gxc#gensym-reference? _%sym145615%_))))
          (if _%$e145617%_
              _%$e145617%_
              (memq _%sym145615%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym145611%_)
        (let ((_%str145613%_ (symbol->string _%sym145611%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str145613%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str145613%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id145582%_)
        (let ((_%$e145584%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id145582%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id145582%_))
                   '#f)))
          (if _%$e145584%_
              ((lambda (_%bind145587%_)
                 (let ((_%eid145589%_
                        (##structure-ref _%bind145587%_ '1 gx#binding::t '#f))
                       (_%ht145590%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid145589%_))
                       _%eid145589%_
                       (let ((_%$e145593%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht145590%_ _%eid145589%_))))
                         (if _%$e145593%_
                             _%$e145593%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind145587%_
                                    'gx#local-binding::t))
                                 (let ((_%gid145597%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid145589%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht145590%_
                                      _%eid145589%_
                                      _%gid145597%_))
                                   _%gid145597%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind145587%_
                                        'gx#module-binding::t))
                                     (let ((_%gid145606%_
                                            (let ((_%$e145600%_
                                                   (##structure-ref
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%bind145587%_
                                                       '4
                                                       '#f
                                                       '#f))
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e145600%_
                                                  ((lambda (_%ns145603%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns145603%_
                                                        '"#"
                                                        _%eid145589%_)))
                                                   _%$e145600%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid145589%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht145590%_
                                          _%eid145589%_
                                          _%gid145606%_))
                                       _%gid145606%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id145582%_
                                      _%eid145589%_
                                      _%bind145587%_))))))))
               _%$e145584%_)
              (if (let ((__tmp145913
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id145582%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp145913))
                  (let () (declare (not safe)) (gx#stx-e _%id145582%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id145582%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id145580%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id145580%_))
            (gxc#generate-runtime-binding-id _%id145580%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top145567%_)
        (if _%top145567%_
            (let ((_%ns145569%_
                   (##structure-ref
                    (let ((__tmp145914
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp145914))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi145570%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns145569%_
                  (if (fxpositive? _%phi145570%_)
                      (let ((__tmp145916 (number->string _%phi145570%_))
                            (__tmp145915
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns145569%_
                         '"["
                         __tmp145916
                         '"]#_"
                         __tmp145915
                         '"_"))
                      (let ((__tmp145917
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns145569%_ '"#_" __tmp145917 '"_")))
                  (if (fxpositive? _%phi145570%_)
                      (let ((__tmp145919 (number->string _%phi145570%_))
                            (__tmp145918
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp145919
                         '"]#_"
                         __tmp145918
                         '"_"))
                      (let ((__tmp145920
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp145920 '"_")))))
            (let ((__tmp145921 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp145921 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top145576%_ '#f))
          (gxc#generate-runtime-temporary__% _%top145576%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g145922_
        (let ((_g145923_ (let () (declare (not safe)) (##length _g145922_))))
          (cond ((let () (declare (not safe)) (##fx= _g145923_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g145922_))
                ((let () (declare (not safe)) (##fx= _g145923_ 1))
                 (apply gxc#generate-runtime-temporary__% _g145922_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g145922_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym145545%_ _%quote?145546%_)
        (let* ((_%ht145548%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e145550%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht145548%_ _%sym145545%_))))
          (if _%$e145550%_
              _%$e145550%_
              (let ((_%g145554%_
                     (if _%quote?145546%_
                         (let ((__tmp145924
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym145545%_
                            '"__"
                            __tmp145924))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym145545%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht145548%_ _%sym145545%_ _%g145554%_))
                _%g145554%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym145559%_)
        (let ((_%quote?145561%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym145559%_
           _%quote?145561%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g145925_
        (let ((_g145926_ (let () (declare (not safe)) (##length _g145925_))))
          (cond ((let () (declare (not safe)) (##fx= _g145926_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g145925_))
                ((let () (declare (not safe)) (##fx= _g145926_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g145925_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g145925_))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1145537%_ _%id2145538%_)
        (letrec ((_%symbol-e145540%_
                  (lambda (_%id145542%_)
                    (if (symbol? _%id145542%_)
                        _%id145542%_
                        (gxc#generate-runtime-binding-id _%id145542%_)))))
          (eq? (_%symbol-e145540%_ _%id1145537%_)
               (_%symbol-e145540%_ _%id2145538%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx145535%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx145535%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx145535%_)
            (let () (declare (not safe)) (gx#stx-e _%stx145535%_)))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk145520%_ _%name145521%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job145523%_
               (gxc#make-compile-job _%thunk145520%_ _%name145521%_)))
          (set! gxc#__compile-jobs (cons _%job145523%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk145528%_)
        (let ((_%name145530%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk145528%_ _%name145530%_))))
    (define gxc#add-compile-job!
      (lambda _g145927_
        (let ((_g145928_ (let () (declare (not safe)) (##length _g145927_))))
          (cond ((let () (declare (not safe)) (##fx= _g145928_ 1))
                 (apply gxc#add-compile-job!__0 _g145927_))
                ((let () (declare (not safe)) (##fx= _g145928_ 2))
                 (apply gxc#add-compile-job!__% _g145927_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g145927_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result145517%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result145517%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop145511%_ ()
          (let ((_%pending145514%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending145514%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending145514%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending145514%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk145500%_ _%name145501%_)
        (make-thread
         (lambda ()
           (let _%loop145504%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp145929
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name145501%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp145929))
                   (let ((__tmp145931 (lambda () (_%thunk145500%_)))
                         (__tmp145930
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp145931 __tmp145930)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop145504%_)))))
         _%name145501%_)))
    (define gxc#join!
      (lambda (_%thread145495%_)
        (let ((__tmp145933
               (lambda (_%exn145497%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn145497%_))
                     (let ((__tmp145934
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn145497%_))))
                       (declare (not safe))
                       (raise __tmp145934))
                     (let () (declare (not safe)) (raise _%exn145497%_)))))
              (__tmp145932 (lambda () (thread-join! _%thread145495%_))))
          (declare (not safe))
          (__with-catch __tmp145933 __tmp145932))))))
