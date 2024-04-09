(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1712697256)
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
       (let ((_%verbosity129855129857%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%verbosity129855129857%_
             (let* ((_%verbosity129860%_ _%verbosity129855129857%_)
                    (_%$e129862%_ (string->number _%verbosity129860%_)))
               (if _%$e129862%_ _%$e129862%_ _%verbosity129860%_))
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
      (let ((__tmp129917 (list)) (__tmp129916 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp129917
         '(gensyms bindings)
         __tmp129916
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args129853%_
        (apply make-instance gxc#symbol-table::t _%$args129853%_)))
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
      (lambda (_%self129840%_)
        (let ((_%self129843%_ _%self129840%_))
          (if (let ((__tmp129918
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self129843%_))))
                (declare (not safe))
                (##fx< '2 __tmp129918))
              (begin
                (let ((__tmp129919
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self129843%_
                   __tmp129919
                   '1
                   '#f
                   '#f))
                (let ((__tmp129920
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self129843%_
                   __tmp129920
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp129921
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self129843%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self129843%_
                       '2
                       __tmp129921))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message129709%_ _%stx129710%_ . _%details129711%_)
        (let ((_%ctx129716%_
               (let ((_%$e129713%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e129713%_ _%$e129713%_ 'compile))))
          (apply gx#raise-syntax-error
                 _%ctx129716%_
                 _%message129709%_
                 _%stx129710%_
                 _%details129711%_))))
    (define gxc#verbose
      (lambda _%args129706%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp129922 (lambda () (apply displayln _%args129706%_))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp129922))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id129688%_)
        (let* ((_%str129690%_
                (if (symbol? _%id129688%_)
                    (symbol->string _%id129688%_)
                    _%id129688%_))
               (_%len129692%_ (string-length _%str129690%_))
               (_%res129694%_
                (let () (declare (not safe)) (##make-string _%len129692%_))))
          (let _%lp129697%_ ((_%i129699%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i129699%_ _%len129692%_))
                (let* ((_%char129701%_ (string-ref _%str129690%_ _%i129699%_))
                       (_%xchar129703%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char129701%_))
                            '#\_
                            _%char129701%_)))
                  (string-set! _%res129694%_ _%i129699%_ _%xchar129703%_)
                  (_%lp129697%_
                   (let () (declare (not safe)) (##fx+ _%i129699%_ '1))))
                _%res129694%_)))))
    (define gxc#map*
      (lambda (_%proc129630%_ _%maybe-improper-list129631%_)
        (let _%recur129633%_ ((_%rest129635%_ _%maybe-improper-list129631%_))
          (let* ((_%rest129636129647%_ _%rest129635%_)
                 (_%E129640129651%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%rest129636129647%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%K129643129676%_
                   (lambda (_%rest129673%_ _%hd129674%_)
                     (cons (_%proc129630%_ _%hd129674%_)
                           (_%recur129633%_ _%rest129673%_))))
                  (_%K129642129667%_ (lambda () '()))
                  (_%K129641129657%_
                   (lambda (_%tail129655%_) (_%proc129630%_ _%tail129655%_))))
              (let ((_%try-match129638129670%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest129636129647%_))
                           (_%K129642129667%_)
                           (let ((_%tail129660%_ _%rest129636129647%_))
                             (declare (not safe))
                             (_%proc129630%_ _%tail129660%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest129636129647%_))
                    (let ((_%tl129645129681%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest129636129647%_)))
                          (_%hd129644129679%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest129636129647%_))))
                      (let ((_%hd129684%_ _%hd129644129679%_)
                            (_%rest129686%_ _%tl129645129681%_))
                        (_%K129643129676%_ _%rest129686%_ _%hd129684%_)))
                    (_%try-match129638129670%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym129625%_)
        (let ((_%$e129627%_ (not (gxc#gensym-reference? _%sym129625%_))))
          (if _%$e129627%_
              _%$e129627%_
              (memq _%sym129625%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym129621%_)
        (let ((_%str129623%_ (symbol->string _%sym129621%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str129623%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str129623%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id129592%_)
        (let ((_%$e129594%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id129592%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id129592%_))
                   '#f)))
          (if _%$e129594%_
              ((lambda (_%bind129597%_)
                 (let ((_%eid129599%_
                        (##structure-ref _%bind129597%_ '1 gx#binding::t '#f))
                       (_%ht129600%_
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-symbol-table))
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _%eid129599%_))
                       _%eid129599%_
                       (let ((_%$e129603%_
                              (let ()
                                (declare (not safe))
                                (hash-get _%ht129600%_ _%eid129599%_))))
                         (if _%$e129603%_
                             _%$e129603%_
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%bind129597%_
                                    'gx#local-binding::t))
                                 (let ((_%gid129607%_
                                        (gxc#generate-runtime-gensym-reference__0
                                         _%eid129599%_)))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _%ht129600%_
                                      _%eid129599%_
                                      _%gid129607%_))
                                   _%gid129607%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%bind129597%_
                                        'gx#module-binding::t))
                                     (let ((_%gid129616%_
                                            (let ((_%$e129610%_
                                                   (##structure-ref
                                                    (##structure-ref
                                                     _%bind129597%_
                                                     '4
                                                     gx#module-binding::t
                                                     '#f)
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _%$e129610%_
                                                  ((lambda (_%ns129613%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _%ns129613%_
                                                        '"#"
                                                        _%eid129599%_)))
                                                   _%$e129610%_)
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%eid129599%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _%ht129600%_
                                          _%eid129599%_
                                          _%gid129616%_))
                                       _%gid129616%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id129592%_
                                      _%eid129599%_
                                      _%bind129597%_))))))))
               _%$e129594%_)
              (if (let ((__tmp129923
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id129592%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp129923))
                  (let () (declare (not safe)) (gx#stx-e _%id129592%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id129592%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id129590%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id129590%_))
            (gxc#generate-runtime-binding-id _%id129590%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top129577%_)
        (if _%top129577%_
            (let ((_%ns129579%_
                   (##structure-ref
                    (let ((__tmp129924
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp129924))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi129580%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns129579%_
                  (if (fxpositive? _%phi129580%_)
                      (let ((__tmp129926 (number->string _%phi129580%_))
                            (__tmp129925
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns129579%_
                         '"["
                         __tmp129926
                         '"]#_"
                         __tmp129925
                         '"_"))
                      (let ((__tmp129927
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns129579%_ '"#_" __tmp129927 '"_")))
                  (if (fxpositive? _%phi129580%_)
                      (let ((__tmp129929 (number->string _%phi129580%_))
                            (__tmp129928
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp129929
                         '"]#_"
                         __tmp129928
                         '"_"))
                      (let ((__tmp129930
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp129930 '"_")))))
            (let ((__tmp129931 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp129931 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top129586%_ '#f))
          (gxc#generate-runtime-temporary__% _%top129586%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g129933_
        (let ((_g129932_ (let () (declare (not safe)) (##length _g129933_))))
          (cond ((let () (declare (not safe)) (##fx= _g129932_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g129933_))
                ((let () (declare (not safe)) (##fx= _g129932_ 1))
                 (apply gxc#generate-runtime-temporary__% _g129933_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g129933_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym129555%_ _%quote?129556%_)
        (let* ((_%ht129558%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e129560%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht129558%_ _%sym129555%_))))
          (if _%$e129560%_
              _%$e129560%_
              (let ((_%g129564%_
                     (if _%quote?129556%_
                         (let ((__tmp129934
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym129555%_
                            '"__"
                            __tmp129934))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym129555%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht129558%_ _%sym129555%_ _%g129564%_))
                _%g129564%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym129569%_)
        (let ((_%quote?129571%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym129569%_
           _%quote?129571%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g129936_
        (let ((_g129935_ (let () (declare (not safe)) (##length _g129936_))))
          (cond ((let () (declare (not safe)) (##fx= _g129935_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g129936_))
                ((let () (declare (not safe)) (##fx= _g129935_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g129936_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g129936_))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1129547%_ _%id2129548%_)
        (letrec ((_%symbol-e129550%_
                  (lambda (_%id129552%_)
                    (if (symbol? _%id129552%_)
                        _%id129552%_
                        (gxc#generate-runtime-binding-id _%id129552%_)))))
          (eq? (_%symbol-e129550%_ _%id1129547%_)
               (_%symbol-e129550%_ _%id2129548%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx129545%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx129545%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx129545%_)
            (let () (declare (not safe)) (gx#stx-e _%stx129545%_)))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk129530%_ _%name129531%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job129533%_
               (gxc#make-compile-job _%thunk129530%_ _%name129531%_)))
          (set! gxc#__compile-jobs (cons _%job129533%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk129538%_)
        (let ((_%name129540%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk129538%_ _%name129540%_))))
    (define gxc#add-compile-job!
      (lambda _g129938_
        (let ((_g129937_ (let () (declare (not safe)) (##length _g129938_))))
          (cond ((let () (declare (not safe)) (##fx= _g129937_ 1))
                 (apply gxc#add-compile-job!__0 _g129938_))
                ((let () (declare (not safe)) (##fx= _g129937_ 2))
                 (apply gxc#add-compile-job!__% _g129938_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g129938_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result129527%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result129527%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop129521%_ ()
          (let ((_%pending129524%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending129524%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending129524%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending129524%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk129510%_ _%name129511%_)
        (make-thread
         (lambda ()
           (let _%loop129514%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp129939
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name129511%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp129939))
                   (let ((__tmp129941 (lambda () (_%thunk129510%_)))
                         (__tmp129940
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp129941 __tmp129940)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop129514%_)))))
         _%name129511%_)))
    (define gxc#join!
      (lambda (_%thread129505%_)
        (let ((__tmp129943
               (lambda (_%exn129507%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn129507%_))
                     (let ((__tmp129944
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn129507%_))))
                       (declare (not safe))
                       (raise __tmp129944))
                     (let () (declare (not safe)) (raise _%exn129507%_)))))
              (__tmp129942 (lambda () (thread-join! _%thread129505%_))))
          (declare (not safe))
          (__with-catch __tmp129943 __tmp129942))))))
