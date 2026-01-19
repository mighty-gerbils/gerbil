(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1768865824)
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
       (let ((_%verbosity145860145862%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity145860145862%_
             (let* ((_%verbosity145865%_ _%verbosity145860145862%_)
                    (_%$e145867%_ (string->number _%verbosity145865%_)))
               (if _%$e145867%_ _%$e145867%_ _%verbosity145865%_))
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
      (let ((__tmp145922 (list)) (__tmp145921 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp145922
         '(gensyms bindings)
         __tmp145921
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args145858%_
        (apply make-instance gxc#symbol-table::t _%$args145858%_)))
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
      (lambda (_%self145845%_)
        (let ((_%self145848%_ _%self145845%_))
          (if (let ((__tmp145923
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self145848%_))))
                (declare (not safe))
                (##fx< '2 __tmp145923))
              (begin
                (let ((__tmp145924
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self145848%_
                   __tmp145924
                   '1
                   '#f
                   '#f))
                (let ((__tmp145925
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self145848%_
                   __tmp145925
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp145926
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self145848%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self145848%_
                       '2
                       __tmp145926))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message145714%_ _%stx145715%_ . _%details145716%_)
        (let ((_%ctx145721%_
               (let ((_%$e145718%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e145718%_ _%$e145718%_ '(compile)))))
          (apply gx#raise-syntax-error
                 _%ctx145721%_
                 _%message145714%_
                 _%stx145715%_
                 _%details145716%_))))
    (define gxc#verbose
      (lambda _%args145711%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp145927
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args145711%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp145927))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id145693%_)
        (let* ((_%str145695%_
                (if (symbol? _%id145693%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id145693%_))
                    _%id145693%_))
               (_%len145697%_ (string-length _%str145695%_))
               (_%res145699%_
                (let () (declare (not safe)) (##make-string _%len145697%_))))
          (let _%lp145702%_ ((_%i145704%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i145704%_ _%len145697%_))
                (let* ((_%char145706%_ (string-ref _%str145695%_ _%i145704%_))
                       (_%xchar145708%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char145706%_))
                            '#\_
                            _%char145706%_)))
                  (string-set! _%res145699%_ _%i145704%_ _%xchar145708%_)
                  (_%lp145702%_
                   (let () (declare (not safe)) (##fx+ _%i145704%_ '1))))
                _%res145699%_)))))
    (define gxc#map*
      (lambda (_%proc145635%_ _%maybe-improper-list145636%_)
        (let _%recur145638%_ ((_%rest145640%_ _%maybe-improper-list145636%_))
          (let* ((_%rest145641145652%_ _%rest145640%_)
                 (_%E145645145656%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest145641145652%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K145648145681%_
                   (lambda (_%rest145678%_ _%hd145679%_)
                     (cons (_%proc145635%_ _%hd145679%_)
                           (_%recur145638%_ _%rest145678%_))))
                  (_%K145647145672%_ (lambda () '()))
                  (_%K145646145662%_
                   (lambda (_%tail145660%_) (_%proc145635%_ _%tail145660%_))))
              (let ((_%try-match145643145675%_
                     (lambda ()
                       (if (null? _%rest145641145652%_)
                           (_%K145647145672%_)
                           (let ((_%tail145665%_ _%rest145641145652%_))
                             (declare (not safe))
                             (_%proc145635%_ _%tail145665%_))))))
                (if (pair? _%rest145641145652%_)
                    (let ((_%tl145650145686%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest145641145652%_)))
                          (_%hd145649145684%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest145641145652%_))))
                      (let ((_%hd145689%_ _%hd145649145684%_)
                            (_%rest145691%_ _%tl145650145686%_))
                        (_%K145648145681%_ _%rest145691%_ _%hd145689%_)))
                    (_%try-match145643145675%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym145630%_)
        (let ((_%$e145632%_ (not (gxc#gensym-reference? _%sym145630%_))))
          (if _%$e145632%_
              _%$e145632%_
              (memq _%sym145630%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym145626%_)
        (let ((_%str145628%_ (symbol->string _%sym145626%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str145628%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str145628%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id145597%_)
        (let ((_%$e145599%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id145597%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id145597%_))
                   '#f)))
          (if _%$e145599%_
              ((lambda (_%bind145602%_)
                 (let ((_%eid145604%_
                        (##structure-ref _%bind145602%_ '1 gx#binding::t '#f))
                       (_%ht145605%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid145604%_))
                       _%eid145604%_
                       (let ((_%$e145608%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht145605%_ _%eid145604%_))))
                         (if _%$e145608%_
                             _%$e145608%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind145602%_
                                    'gx#local-binding::t))
                                 (let ((_%gid145612%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid145604%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht145605%_
                                      _%eid145604%_
                                      _%gid145612%_))
                                   _%gid145612%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind145602%_
                                        'gx#module-binding::t))
                                     (let ((_%gid145621%_
                                            (let ((_%$e145615%_
                                                   (##structure-ref
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%bind145602%_
                                                       '4
                                                       '#f
                                                       '#f))
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e145615%_
                                                  ((lambda (_%ns145618%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns145618%_
                                                        '"#"
                                                        _%eid145604%_)))
                                                   _%$e145615%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid145604%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht145605%_
                                          _%eid145604%_
                                          _%gid145621%_))
                                       _%gid145621%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id145597%_
                                      _%eid145604%_
                                      _%bind145602%_))))))))
               _%$e145599%_)
              (if (let ((__tmp145928
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id145597%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp145928))
                  (let () (declare (not safe)) (gx#stx-e _%id145597%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id145597%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id145595%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id145595%_))
            (gxc#generate-runtime-binding-id _%id145595%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top145582%_)
        (if _%top145582%_
            (let ((_%ns145584%_
                   (##structure-ref
                    (let ((__tmp145929
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp145929))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi145585%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns145584%_
                  (if (fxpositive? _%phi145585%_)
                      (let ((__tmp145931 (number->string _%phi145585%_))
                            (__tmp145930
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns145584%_
                         '"["
                         __tmp145931
                         '"]#_"
                         __tmp145930
                         '"_"))
                      (let ((__tmp145932
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns145584%_ '"#_" __tmp145932 '"_")))
                  (if (fxpositive? _%phi145585%_)
                      (let ((__tmp145934 (number->string _%phi145585%_))
                            (__tmp145933
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp145934
                         '"]#_"
                         __tmp145933
                         '"_"))
                      (let ((__tmp145935
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp145935 '"_")))))
            (let ((__tmp145936 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp145936 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top145591%_ '#f))
          (gxc#generate-runtime-temporary__% _%top145591%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g145937_
        (let ((_g145938_ (let () (declare (not safe)) (##length _g145937_))))
          (cond ((let () (declare (not safe)) (##fx= _g145938_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g145937_))
                ((let () (declare (not safe)) (##fx= _g145938_ 1))
                 (apply gxc#generate-runtime-temporary__% _g145937_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g145937_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym145560%_ _%quote?145561%_)
        (let* ((_%ht145563%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e145565%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht145563%_ _%sym145560%_))))
          (if _%$e145565%_
              _%$e145565%_
              (let ((_%g145569%_
                     (if _%quote?145561%_
                         (let ((__tmp145939
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym145560%_
                            '"__"
                            __tmp145939))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym145560%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht145563%_ _%sym145560%_ _%g145569%_))
                _%g145569%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym145574%_)
        (let ((_%quote?145576%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym145574%_
           _%quote?145576%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g145940_
        (let ((_g145941_ (let () (declare (not safe)) (##length _g145940_))))
          (cond ((let () (declare (not safe)) (##fx= _g145941_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g145940_))
                ((let () (declare (not safe)) (##fx= _g145941_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g145940_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g145940_))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1145552%_ _%id2145553%_)
        (letrec ((_%symbol-e145555%_
                  (lambda (_%id145557%_)
                    (if (symbol? _%id145557%_)
                        _%id145557%_
                        (gxc#generate-runtime-binding-id _%id145557%_)))))
          (eq? (_%symbol-e145555%_ _%id1145552%_)
               (_%symbol-e145555%_ _%id2145553%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx145550%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx145550%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx145550%_)
            (let () (declare (not safe)) (gx#stx-e _%stx145550%_)))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk145535%_ _%name145536%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job145538%_
               (gxc#make-compile-job _%thunk145535%_ _%name145536%_)))
          (set! gxc#__compile-jobs (cons _%job145538%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk145543%_)
        (let ((_%name145545%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk145543%_ _%name145545%_))))
    (define gxc#add-compile-job!
      (lambda _g145942_
        (let ((_g145943_ (let () (declare (not safe)) (##length _g145942_))))
          (cond ((let () (declare (not safe)) (##fx= _g145943_ 1))
                 (apply gxc#add-compile-job!__0 _g145942_))
                ((let () (declare (not safe)) (##fx= _g145943_ 2))
                 (apply gxc#add-compile-job!__% _g145942_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g145942_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result145532%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result145532%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop145526%_ ()
          (let ((_%pending145529%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending145529%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending145529%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending145529%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk145515%_ _%name145516%_)
        (make-thread
         (lambda ()
           (let _%loop145519%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp145944
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name145516%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp145944))
                   (let ((__tmp145946 (lambda () (_%thunk145515%_)))
                         (__tmp145945
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp145946 __tmp145945)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop145519%_)))))
         _%name145516%_)))
    (define gxc#join!
      (lambda (_%thread145510%_)
        (let ((__tmp145948
               (lambda (_%exn145512%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn145512%_))
                     (let ((__tmp145949
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn145512%_))))
                       (declare (not safe))
                       (raise __tmp145949))
                     (let () (declare (not safe)) (raise _%exn145512%_)))))
              (__tmp145947 (lambda () (thread-join! _%thread145510%_))))
          (declare (not safe))
          (__with-catch __tmp145948 __tmp145947))))))
