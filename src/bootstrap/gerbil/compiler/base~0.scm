(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1768863413)
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
       (let ((_%verbosity145818145820%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity145818145820%_
             (let* ((_%verbosity145823%_ _%verbosity145818145820%_)
                    (_%$e145825%_ (string->number _%verbosity145823%_)))
               (if _%$e145825%_ _%$e145825%_ _%verbosity145823%_))
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
      (let ((__tmp145880 (list)) (__tmp145879 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp145880
         '(gensyms bindings)
         __tmp145879
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args145816%_
        (apply make-instance gxc#symbol-table::t _%$args145816%_)))
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
      (lambda (_%self145803%_)
        (let ((_%self145806%_ _%self145803%_))
          (if (let ((__tmp145881
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self145806%_))))
                (declare (not safe))
                (##fx< '2 __tmp145881))
              (begin
                (let ((__tmp145882
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self145806%_
                   __tmp145882
                   '1
                   '#f
                   '#f))
                (let ((__tmp145883
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self145806%_
                   __tmp145883
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp145884
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self145806%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self145806%_
                       '2
                       __tmp145884))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message145672%_ _%stx145673%_ . _%details145674%_)
        (let ((_%ctx145679%_
               (let ((_%$e145676%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e145676%_ _%$e145676%_ '(compile)))))
          (apply gx#raise-syntax-error
                 _%ctx145679%_
                 _%message145672%_
                 _%stx145673%_
                 _%details145674%_))))
    (define gxc#verbose
      (lambda _%args145669%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp145885
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args145669%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp145885))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id145651%_)
        (let* ((_%str145653%_
                (if (symbol? _%id145651%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id145651%_))
                    _%id145651%_))
               (_%len145655%_ (string-length _%str145653%_))
               (_%res145657%_
                (let () (declare (not safe)) (##make-string _%len145655%_))))
          (let _%lp145660%_ ((_%i145662%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i145662%_ _%len145655%_))
                (let* ((_%char145664%_ (string-ref _%str145653%_ _%i145662%_))
                       (_%xchar145666%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char145664%_))
                            '#\_
                            _%char145664%_)))
                  (string-set! _%res145657%_ _%i145662%_ _%xchar145666%_)
                  (_%lp145660%_
                   (let () (declare (not safe)) (##fx+ _%i145662%_ '1))))
                _%res145657%_)))))
    (define gxc#map*
      (lambda (_%proc145593%_ _%maybe-improper-list145594%_)
        (let _%recur145596%_ ((_%rest145598%_ _%maybe-improper-list145594%_))
          (let* ((_%rest145599145610%_ _%rest145598%_)
                 (_%E145603145614%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest145599145610%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K145606145639%_
                   (lambda (_%rest145636%_ _%hd145637%_)
                     (cons (_%proc145593%_ _%hd145637%_)
                           (_%recur145596%_ _%rest145636%_))))
                  (_%K145605145630%_ (lambda () '()))
                  (_%K145604145620%_
                   (lambda (_%tail145618%_) (_%proc145593%_ _%tail145618%_))))
              (let ((_%try-match145601145633%_
                     (lambda ()
                       (if (null? _%rest145599145610%_)
                           (_%K145605145630%_)
                           (let ((_%tail145623%_ _%rest145599145610%_))
                             (declare (not safe))
                             (_%proc145593%_ _%tail145623%_))))))
                (if (pair? _%rest145599145610%_)
                    (let ((_%tl145608145644%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest145599145610%_)))
                          (_%hd145607145642%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest145599145610%_))))
                      (let ((_%hd145647%_ _%hd145607145642%_)
                            (_%rest145649%_ _%tl145608145644%_))
                        (_%K145606145639%_ _%rest145649%_ _%hd145647%_)))
                    (_%try-match145601145633%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym145588%_)
        (let ((_%$e145590%_ (not (gxc#gensym-reference? _%sym145588%_))))
          (if _%$e145590%_
              _%$e145590%_
              (memq _%sym145588%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym145584%_)
        (let ((_%str145586%_ (symbol->string _%sym145584%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str145586%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str145586%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id145555%_)
        (let ((_%$e145557%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id145555%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id145555%_))
                   '#f)))
          (if _%$e145557%_
              ((lambda (_%bind145560%_)
                 (let ((_%eid145562%_
                        (##structure-ref _%bind145560%_ '1 gx#binding::t '#f))
                       (_%ht145563%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid145562%_))
                       _%eid145562%_
                       (let ((_%$e145566%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht145563%_ _%eid145562%_))))
                         (if _%$e145566%_
                             _%$e145566%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind145560%_
                                    'gx#local-binding::t))
                                 (let ((_%gid145570%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid145562%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht145563%_
                                      _%eid145562%_
                                      _%gid145570%_))
                                   _%gid145570%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind145560%_
                                        'gx#module-binding::t))
                                     (let ((_%gid145579%_
                                            (let ((_%$e145573%_
                                                   (##structure-ref
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%bind145560%_
                                                       '4
                                                       '#f
                                                       '#f))
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e145573%_
                                                  ((lambda (_%ns145576%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns145576%_
                                                        '"#"
                                                        _%eid145562%_)))
                                                   _%$e145573%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid145562%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht145563%_
                                          _%eid145562%_
                                          _%gid145579%_))
                                       _%gid145579%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id145555%_
                                      _%eid145562%_
                                      _%bind145560%_))))))))
               _%$e145557%_)
              (if (let ((__tmp145886
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id145555%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp145886))
                  (let () (declare (not safe)) (gx#stx-e _%id145555%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id145555%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id145553%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id145553%_))
            (gxc#generate-runtime-binding-id _%id145553%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top145540%_)
        (if _%top145540%_
            (let ((_%ns145542%_
                   (##structure-ref
                    (let ((__tmp145887
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp145887))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi145543%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns145542%_
                  (if (fxpositive? _%phi145543%_)
                      (let ((__tmp145889 (number->string _%phi145543%_))
                            (__tmp145888
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns145542%_
                         '"["
                         __tmp145889
                         '"]#_"
                         __tmp145888
                         '"_"))
                      (let ((__tmp145890
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns145542%_ '"#_" __tmp145890 '"_")))
                  (if (fxpositive? _%phi145543%_)
                      (let ((__tmp145892 (number->string _%phi145543%_))
                            (__tmp145891
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp145892
                         '"]#_"
                         __tmp145891
                         '"_"))
                      (let ((__tmp145893
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp145893 '"_")))))
            (let ((__tmp145894 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp145894 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top145549%_ '#f))
          (gxc#generate-runtime-temporary__% _%top145549%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g145895_
        (let ((_g145896_ (let () (declare (not safe)) (##length _g145895_))))
          (cond ((let () (declare (not safe)) (##fx= _g145896_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g145895_))
                ((let () (declare (not safe)) (##fx= _g145896_ 1))
                 (apply gxc#generate-runtime-temporary__% _g145895_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g145895_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym145518%_ _%quote?145519%_)
        (let* ((_%ht145521%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e145523%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht145521%_ _%sym145518%_))))
          (if _%$e145523%_
              _%$e145523%_
              (let ((_%g145527%_
                     (if _%quote?145519%_
                         (let ((__tmp145897
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym145518%_
                            '"__"
                            __tmp145897))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym145518%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht145521%_ _%sym145518%_ _%g145527%_))
                _%g145527%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym145532%_)
        (let ((_%quote?145534%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym145532%_
           _%quote?145534%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g145898_
        (let ((_g145899_ (let () (declare (not safe)) (##length _g145898_))))
          (cond ((let () (declare (not safe)) (##fx= _g145899_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g145898_))
                ((let () (declare (not safe)) (##fx= _g145899_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g145898_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g145898_))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1145510%_ _%id2145511%_)
        (letrec ((_%symbol-e145513%_
                  (lambda (_%id145515%_)
                    (if (symbol? _%id145515%_)
                        _%id145515%_
                        (gxc#generate-runtime-binding-id _%id145515%_)))))
          (eq? (_%symbol-e145513%_ _%id1145510%_)
               (_%symbol-e145513%_ _%id2145511%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx145508%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx145508%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx145508%_)
            (let () (declare (not safe)) (gx#stx-e _%stx145508%_)))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk145493%_ _%name145494%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job145496%_
               (gxc#make-compile-job _%thunk145493%_ _%name145494%_)))
          (set! gxc#__compile-jobs (cons _%job145496%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk145501%_)
        (let ((_%name145503%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk145501%_ _%name145503%_))))
    (define gxc#add-compile-job!
      (lambda _g145900_
        (let ((_g145901_ (let () (declare (not safe)) (##length _g145900_))))
          (cond ((let () (declare (not safe)) (##fx= _g145901_ 1))
                 (apply gxc#add-compile-job!__0 _g145900_))
                ((let () (declare (not safe)) (##fx= _g145901_ 2))
                 (apply gxc#add-compile-job!__% _g145900_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g145900_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result145490%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result145490%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop145484%_ ()
          (let ((_%pending145487%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending145487%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending145487%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending145487%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk145473%_ _%name145474%_)
        (make-thread
         (lambda ()
           (let _%loop145477%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp145902
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name145474%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp145902))
                   (let ((__tmp145904 (lambda () (_%thunk145473%_)))
                         (__tmp145903
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp145904 __tmp145903)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop145477%_)))))
         _%name145474%_)))
    (define gxc#join!
      (lambda (_%thread145468%_)
        (let ((__tmp145906
               (lambda (_%exn145470%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn145470%_))
                     (let ((__tmp145907
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn145470%_))))
                       (declare (not safe))
                       (raise __tmp145907))
                     (let () (declare (not safe)) (raise _%exn145470%_)))))
              (__tmp145905 (lambda () (thread-join! _%thread145468%_))))
          (declare (not safe))
          (__with-catch __tmp145906 __tmp145905))))))
