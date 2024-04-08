(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1712602656)
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
       (let ((_%verbosity129831129833%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity129831129833%_
             (let* ((_%verbosity129836%_ _%verbosity129831129833%_)
                    (_%$e129838%_ (string->number _%verbosity129836%_)))
               (if _%$e129838%_ _%$e129838%_ _%verbosity129836%_))
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
      (let ((__tmp129893 (list)) (__tmp129892 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp129893
         '(gensyms bindings)
         __tmp129892
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args129829%_
        (apply make-instance gxc#symbol-table::t _%$args129829%_)))
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
      (lambda (_%self129816%_)
        (let ((_%self129819%_ _%self129816%_))
          (if (let ((__tmp129894
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self129819%_))))
                (declare (not safe))
                (##fx< '2 __tmp129894))
              (begin
                (let ((__tmp129895
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self129819%_
                   __tmp129895
                   '1
                   '#f
                   '#f))
                (let ((__tmp129896
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self129819%_
                   __tmp129896
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp129897
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self129819%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self129819%_
                       '2
                       __tmp129897))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message129685%_ _%stx129686%_ . _%details129687%_)
        (let ((_%ctx129692%_
               (let ((_%$e129689%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e129689%_ _%$e129689%_ 'compile))))
          (apply gx#raise-syntax-error
                 _%ctx129692%_
                 _%message129685%_
                 _%stx129686%_
                 _%details129687%_))))
    (define gxc#verbose
      (lambda _%args129682%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp129898 (lambda () (apply displayln _%args129682%_))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp129898))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id129664%_)
        (let* ((_%str129666%_
                (if (symbol? _%id129664%_)
                    (symbol->string _%id129664%_)
                    _%id129664%_))
               (_%len129668%_ (string-length _%str129666%_))
               (_%res129670%_
                (let () (declare (not safe)) (##make-string _%len129668%_))))
          (let _%lp129673%_ ((_%i129675%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i129675%_ _%len129668%_))
                (let* ((_%char129677%_ (string-ref _%str129666%_ _%i129675%_))
                       (_%xchar129679%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char129677%_))
                            '#\_
                            _%char129677%_)))
                  (string-set! _%res129670%_ _%i129675%_ _%xchar129679%_)
                  (_%lp129673%_
                   (let () (declare (not safe)) (##fx+ _%i129675%_ '1))))
                _%res129670%_)))))
    (define gxc#map*
      (lambda (_%proc129606%_ _%maybe-improper-list129607%_)
        (let _%recur129609%_ ((_%rest129611%_ _%maybe-improper-list129607%_))
          (let* ((_%rest129612129623%_ _%rest129611%_)
                 (_%E129616129627%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest129612129623%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K129619129652%_
                   (lambda (_%rest129649%_ _%hd129650%_)
                     (cons (_%proc129606%_ _%hd129650%_)
                           (_%recur129609%_ _%rest129649%_))))
                  (_%K129618129643%_ (lambda () '()))
                  (_%K129617129633%_
                   (lambda (_%tail129631%_) (_%proc129606%_ _%tail129631%_))))
              (let ((_%try-match129614129646%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest129612129623%_))
                           (_%K129618129643%_)
                           (let ((_%tail129636%_ _%rest129612129623%_))
                             (declare (not safe))
                             (_%proc129606%_ _%tail129636%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest129612129623%_))
                    (let ((_%tl129621129657%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest129612129623%_)))
                          (_%hd129620129655%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest129612129623%_))))
                      (let ((_%hd129660%_ _%hd129620129655%_)
                            (_%rest129662%_ _%tl129621129657%_))
                        (_%K129619129652%_ _%rest129662%_ _%hd129660%_)))
                    (_%try-match129614129646%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym129601%_)
        (let ((_%$e129603%_ (not (gxc#gensym-reference? _%sym129601%_))))
          (if _%$e129603%_
              _%$e129603%_
              (memq _%sym129601%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym129597%_)
        (let ((_%str129599%_ (symbol->string _%sym129597%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str129599%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str129599%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id129568%_)
        (let ((_%$e129570%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id129568%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id129568%_))
                   '#f)))
          (if _%$e129570%_
              ((lambda (_%bind129573%_)
                 (let ((_%eid129575%_
                        (##structure-ref _%bind129573%_ '1 gx#binding::t '#f))
                       (_%ht129576%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid129575%_))
                       _%eid129575%_
                       (let ((_%$e129579%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht129576%_ _%eid129575%_))))
                         (if _%$e129579%_
                             _%$e129579%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind129573%_
                                    'gx#local-binding::t))
                                 (let ((_%gid129583%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid129575%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht129576%_
                                      _%eid129575%_
                                      _%gid129583%_))
                                   _%gid129583%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind129573%_
                                        'gx#module-binding::t))
                                     (let ((_%gid129592%_
                                            (let ((_%$e129586%_
                                                   (##structure-ref
                                                    (##structure-ref
                                                     _%bind129573%_
                                                     '4
                                                     gx#module-binding::t
                                                     '#f)
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e129586%_
                                                  ((lambda (_%ns129589%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns129589%_
                                                        '"#"
                                                        _%eid129575%_)))
                                                   _%$e129586%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid129575%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht129576%_
                                          _%eid129575%_
                                          _%gid129592%_))
                                       _%gid129592%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id129568%_
                                      _%eid129575%_
                                      _%bind129573%_))))))))
               _%$e129570%_)
              (if (let ((__tmp129899
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id129568%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp129899))
                  (let () (declare (not safe)) (gx#stx-e _%id129568%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id129568%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id129566%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id129566%_))
            (gxc#generate-runtime-binding-id _%id129566%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top129553%_)
        (if _%top129553%_
            (let ((_%ns129555%_
                   (##structure-ref
                    (let ((__tmp129900
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp129900))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi129556%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns129555%_
                  (if (fxpositive? _%phi129556%_)
                      (let ((__tmp129902 (number->string _%phi129556%_))
                            (__tmp129901
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns129555%_
                         '"["
                         __tmp129902
                         '"]#_"
                         __tmp129901
                         '"_"))
                      (let ((__tmp129903
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns129555%_ '"#_" __tmp129903 '"_")))
                  (if (fxpositive? _%phi129556%_)
                      (let ((__tmp129905 (number->string _%phi129556%_))
                            (__tmp129904
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp129905
                         '"]#_"
                         __tmp129904
                         '"_"))
                      (let ((__tmp129906
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp129906 '"_")))))
            (let ((__tmp129907 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp129907 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top129562%_ '#f))
          (gxc#generate-runtime-temporary__% _%top129562%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g129909_
        (let ((_g129908_ (let () (declare (not safe)) (##length _g129909_))))
          (cond ((let () (declare (not safe)) (##fx= _g129908_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g129909_))
                ((let () (declare (not safe)) (##fx= _g129908_ 1))
                 (apply gxc#generate-runtime-temporary__% _g129909_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g129909_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym129531%_ _%quote?129532%_)
        (let* ((_%ht129534%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e129536%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht129534%_ _%sym129531%_))))
          (if _%$e129536%_
              _%$e129536%_
              (let ((_%g129540%_
                     (if _%quote?129532%_
                         (let ((__tmp129910
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym129531%_
                            '"__"
                            __tmp129910))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym129531%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht129534%_ _%sym129531%_ _%g129540%_))
                _%g129540%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym129545%_)
        (let ((_%quote?129547%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym129545%_
           _%quote?129547%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g129912_
        (let ((_g129911_ (let () (declare (not safe)) (##length _g129912_))))
          (cond ((let () (declare (not safe)) (##fx= _g129911_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g129912_))
                ((let () (declare (not safe)) (##fx= _g129911_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g129912_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g129912_))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1129523%_ _%id2129524%_)
        (letrec ((_%symbol-e129526%_
                  (lambda (_%id129528%_)
                    (if (symbol? _%id129528%_)
                        _%id129528%_
                        (gxc#generate-runtime-binding-id _%id129528%_)))))
          (eq? (_%symbol-e129526%_ _%id1129523%_)
               (_%symbol-e129526%_ _%id2129524%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx129521%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx129521%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx129521%_)
            (let () (declare (not safe)) (gx#stx-e _%stx129521%_)))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk129506%_ _%name129507%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job129509%_
               (gxc#make-compile-job _%thunk129506%_ _%name129507%_)))
          (set! gxc#__compile-jobs (cons _%job129509%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk129514%_)
        (let ((_%name129516%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk129514%_ _%name129516%_))))
    (define gxc#add-compile-job!
      (lambda _g129914_
        (let ((_g129913_ (let () (declare (not safe)) (##length _g129914_))))
          (cond ((let () (declare (not safe)) (##fx= _g129913_ 1))
                 (apply gxc#add-compile-job!__0 _g129914_))
                ((let () (declare (not safe)) (##fx= _g129913_ 2))
                 (apply gxc#add-compile-job!__% _g129914_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g129914_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result129503%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result129503%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop129497%_ ()
          (let ((_%pending129500%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending129500%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending129500%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending129500%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk129485%_ _%name129486%_)
        (make-thread
         (lambda ()
           (let _%loop129489%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp129915
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name129486%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp129915))
                   (let ((__tmp129916
                          (lambda (_%e129493%_)
                            (let ((__tmp129917
                                   (lambda ()
                                     (display-exception _%e129493%_))))
                              (declare (not safe))
                              (__with-lock gxc#__verbose-mutex __tmp129917)))))
                     (declare (not safe))
                     (with-catch __tmp129916 _%thunk129485%_))
                   (mutex-lock! gxc#__jobs-mx)
                   (set! gxc#__available-cores
                         (let ()
                           (declare (not safe))
                           (##fx+ gxc#__available-cores '1)))
                   (condition-variable-signal! gxc#__jobs-cv)
                   (mutex-unlock! gxc#__jobs-mx))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop129489%_)))))
         _%name129486%_)))
    (define gxc#join!
      (lambda (_%thread129480%_)
        (let ((__tmp129919
               (lambda (_%exn129482%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn129482%_))
                     (let ((__tmp129920
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn129482%_))))
                       (declare (not safe))
                       (raise __tmp129920))
                     (let () (declare (not safe)) (raise _%exn129482%_)))))
              (__tmp129918 (lambda () (thread-join! _%thread129480%_))))
          (declare (not safe))
          (__with-catch __tmp129919 __tmp129918))))))
