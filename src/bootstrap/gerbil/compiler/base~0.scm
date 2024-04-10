(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1712773526)
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
       (let ((_%verbosity130771130773%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity130771130773%_
             (let* ((_%verbosity130776%_ _%verbosity130771130773%_)
                    (_%$e130778%_ (string->number _%verbosity130776%_)))
               (if _%$e130778%_ _%$e130778%_ _%verbosity130776%_))
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
      (let ((__tmp130833 (list)) (__tmp130832 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp130833
         '(gensyms bindings)
         __tmp130832
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args130769%_
        (apply make-instance gxc#symbol-table::t _%$args130769%_)))
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
      (lambda (_%self130291130754%_)
        (let* ((_%self130757%_ _%self130291130754%_)
               (_%self130759%_ _%self130757%_))
          (if (let ((__tmp130834
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self130759%_))))
                (declare (not safe))
                (##fx< '2 __tmp130834))
              (begin
                (let ((__tmp130835
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self130759%_
                   __tmp130835
                   '1
                   '#f
                   '#f))
                (let ((__tmp130836
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self130759%_
                   __tmp130836
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp130837
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self130759%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self130759%_
                       '2
                       __tmp130837))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message130623%_ _%stx130624%_ . _%details130625%_)
        (let ((_%ctx130630%_
               (let ((_%$e130627%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e130627%_ _%$e130627%_ 'compile))))
          (apply gx#raise-syntax-error
                 _%ctx130630%_
                 _%message130623%_
                 _%stx130624%_
                 _%details130625%_))))
    (define gxc#verbose
      (lambda _%args130620%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp130838
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args130620%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp130838))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id130602%_)
        (let* ((_%str130604%_
                (if (symbol? _%id130602%_)
                    (symbol->string _%id130602%_)
                    _%id130602%_))
               (_%len130606%_ (string-length _%str130604%_))
               (_%res130608%_
                (let () (declare (not safe)) (##make-string _%len130606%_))))
          (let _%lp130611%_ ((_%i130613%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i130613%_ _%len130606%_))
                (let* ((_%char130615%_ (string-ref _%str130604%_ _%i130613%_))
                       (_%xchar130617%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char130615%_))
                            '#\_
                            _%char130615%_)))
                  (string-set! _%res130608%_ _%i130613%_ _%xchar130617%_)
                  (_%lp130611%_
                   (let () (declare (not safe)) (##fx+ _%i130613%_ '1))))
                _%res130608%_)))))
    (define gxc#map*
      (lambda (_%proc130544%_ _%maybe-improper-list130545%_)
        (let _%recur130547%_ ((_%rest130549%_ _%maybe-improper-list130545%_))
          (let* ((_%rest130550130561%_ _%rest130549%_)
                 (_%E130554130565%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest130550130561%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K130557130590%_
                   (lambda (_%rest130587%_ _%hd130588%_)
                     (cons (_%proc130544%_ _%hd130588%_)
                           (_%recur130547%_ _%rest130587%_))))
                  (_%K130556130581%_ (lambda () '()))
                  (_%K130555130571%_
                   (lambda (_%tail130569%_) (_%proc130544%_ _%tail130569%_))))
              (let ((_%try-match130552130584%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest130550130561%_))
                           (_%K130556130581%_)
                           (let ((_%tail130574%_ _%rest130550130561%_))
                             (declare (not safe))
                             (_%proc130544%_ _%tail130574%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest130550130561%_))
                    (let ((_%tl130559130595%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest130550130561%_)))
                          (_%hd130558130593%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest130550130561%_))))
                      (let ((_%hd130598%_ _%hd130558130593%_)
                            (_%rest130600%_ _%tl130559130595%_))
                        (_%K130557130590%_ _%rest130600%_ _%hd130598%_)))
                    (_%try-match130552130584%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym130539%_)
        (let ((_%$e130541%_ (not (gxc#gensym-reference? _%sym130539%_))))
          (if _%$e130541%_
              _%$e130541%_
              (memq _%sym130539%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym130535%_)
        (let ((_%str130537%_ (symbol->string _%sym130535%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str130537%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str130537%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id130506%_)
        (let ((_%$e130508%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id130506%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id130506%_))
                   '#f)))
          (if _%$e130508%_
              ((lambda (_%bind130511%_)
                 (let ((_%eid130513%_
                        (##structure-ref _%bind130511%_ '1 gx#binding::t '#f))
                       (_%ht130514%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid130513%_))
                       _%eid130513%_
                       (let ((_%$e130517%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht130514%_ _%eid130513%_))))
                         (if _%$e130517%_
                             _%$e130517%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind130511%_
                                    'gx#local-binding::t))
                                 (let ((_%gid130521%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid130513%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht130514%_
                                      _%eid130513%_
                                      _%gid130521%_))
                                   _%gid130521%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind130511%_
                                        'gx#module-binding::t))
                                     (let ((_%gid130530%_
                                            (let ((_%$e130524%_
                                                   (##structure-ref
                                                    (##structure-ref
                                                     _%bind130511%_
                                                     '4
                                                     gx#module-binding::t
                                                     '#f)
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e130524%_
                                                  ((lambda (_%ns130527%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns130527%_
                                                        '"#"
                                                        _%eid130513%_)))
                                                   _%$e130524%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid130513%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht130514%_
                                          _%eid130513%_
                                          _%gid130530%_))
                                       _%gid130530%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id130506%_
                                      _%eid130513%_
                                      _%bind130511%_))))))))
               _%$e130508%_)
              (if (let ((__tmp130839
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id130506%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp130839))
                  (let () (declare (not safe)) (gx#stx-e _%id130506%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id130506%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id130504%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id130504%_))
            (gxc#generate-runtime-binding-id _%id130504%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top130491%_)
        (if _%top130491%_
            (let ((_%ns130493%_
                   (##structure-ref
                    (let ((__tmp130840
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp130840))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi130494%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns130493%_
                  (if (fxpositive? _%phi130494%_)
                      (let ((__tmp130842 (number->string _%phi130494%_))
                            (__tmp130841
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns130493%_
                         '"["
                         __tmp130842
                         '"]#_"
                         __tmp130841
                         '"_"))
                      (let ((__tmp130843
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns130493%_ '"#_" __tmp130843 '"_")))
                  (if (fxpositive? _%phi130494%_)
                      (let ((__tmp130845 (number->string _%phi130494%_))
                            (__tmp130844
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp130845
                         '"]#_"
                         __tmp130844
                         '"_"))
                      (let ((__tmp130846
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp130846 '"_")))))
            (let ((__tmp130847 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp130847 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top130500%_ '#f))
          (gxc#generate-runtime-temporary__% _%top130500%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g130849_
        (let ((_g130848_ (let () (declare (not safe)) (##length _g130849_))))
          (cond ((let () (declare (not safe)) (##fx= _g130848_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g130849_))
                ((let () (declare (not safe)) (##fx= _g130848_ 1))
                 (apply gxc#generate-runtime-temporary__% _g130849_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g130849_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym130469%_ _%quote?130470%_)
        (let* ((_%ht130472%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e130474%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht130472%_ _%sym130469%_))))
          (if _%$e130474%_
              _%$e130474%_
              (let ((_%g130478%_
                     (if _%quote?130470%_
                         (let ((__tmp130850
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym130469%_
                            '"__"
                            __tmp130850))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym130469%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht130472%_ _%sym130469%_ _%g130478%_))
                _%g130478%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym130483%_)
        (let ((_%quote?130485%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym130483%_
           _%quote?130485%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g130852_
        (let ((_g130851_ (let () (declare (not safe)) (##length _g130852_))))
          (cond ((let () (declare (not safe)) (##fx= _g130851_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g130852_))
                ((let () (declare (not safe)) (##fx= _g130851_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g130852_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g130852_))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1130461%_ _%id2130462%_)
        (letrec ((_%symbol-e130464%_
                  (lambda (_%id130466%_)
                    (if (symbol? _%id130466%_)
                        _%id130466%_
                        (gxc#generate-runtime-binding-id _%id130466%_)))))
          (eq? (_%symbol-e130464%_ _%id1130461%_)
               (_%symbol-e130464%_ _%id2130462%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx130459%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx130459%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx130459%_)
            (let () (declare (not safe)) (gx#stx-e _%stx130459%_)))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk130444%_ _%name130445%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job130447%_
               (gxc#make-compile-job _%thunk130444%_ _%name130445%_)))
          (set! gxc#__compile-jobs (cons _%job130447%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk130452%_)
        (let ((_%name130454%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk130452%_ _%name130454%_))))
    (define gxc#add-compile-job!
      (lambda _g130854_
        (let ((_g130853_ (let () (declare (not safe)) (##length _g130854_))))
          (cond ((let () (declare (not safe)) (##fx= _g130853_ 1))
                 (apply gxc#add-compile-job!__0 _g130854_))
                ((let () (declare (not safe)) (##fx= _g130853_ 2))
                 (apply gxc#add-compile-job!__% _g130854_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g130854_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result130441%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result130441%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop130435%_ ()
          (let ((_%pending130438%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending130438%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending130438%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending130438%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk130424%_ _%name130425%_)
        (make-thread
         (lambda ()
           (let _%loop130428%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp130855
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name130425%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp130855))
                   (let ((__tmp130857 (lambda () (_%thunk130424%_)))
                         (__tmp130856
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp130857 __tmp130856)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop130428%_)))))
         _%name130425%_)))
    (define gxc#join!
      (lambda (_%thread130419%_)
        (let ((__tmp130859
               (lambda (_%exn130421%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn130421%_))
                     (let ((__tmp130860
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn130421%_))))
                       (declare (not safe))
                       (raise __tmp130860))
                     (let () (declare (not safe)) (raise _%exn130421%_)))))
              (__tmp130858 (lambda () (thread-join! _%thread130419%_))))
          (declare (not safe))
          (__with-catch __tmp130859 __tmp130858))))))
