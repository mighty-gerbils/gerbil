(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1781119050)
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
       (let ((_%$%verbosity170208170210%_
              (getenv '"GERBIL_BUILD_VERBOSE" '#f)))
         (if _%$%verbosity170208170210%_
             (let* ((_%verbosity170212%_ _%$%verbosity170208170210%_)
                    (_%$e170214%_ (string->number _%verbosity170212%_)))
               (if _%$e170214%_ _%$e170214%_ _%verbosity170212%_))
             '#f))))
    (define gxc#current-compile-optimize (make-parameter '#f))
    (define gxc#current-compile-debug (make-parameter '#f))
    (define gxc#current-compile-generate-ssxi (make-parameter '#f))
    (define gxc#current-compile-static (make-parameter '#f))
    (define gxc#current-compile-timestamp (make-parameter '#f))
    (define gxc#current-compile-decls (make-parameter '#f))
    (define gxc#current-compile-context (make-parameter '#f))
    (define gxc#current-compile-parallel (make-parameter '#f))
    (define gxc#current-compile-lift (make-parameter '#f))
    (define gxc#current-compile-marks (make-parameter '#f))
    (define gxc#current-compile-identifiers (make-parameter '#f))
    (define gxc#current-compile-boolean-context (make-parameter '#f))
    (define gxc#make-bound-identifier-table
      (lambda ()
        (letrec ((_%hash-e170205%_
                  (lambda (_%id170207%_)
                    (symbol-hash (gx#stx-e _%id170207%_)))))
          (make-hash-table
           'test:
           gx#bound-identifier=?
           'hash:
           _%hash-e170205%_))))
    (define gxc#current-compile-local-env (make-parameter '()))
    (define gxc#symbol-table::t
      (make-class-type
       'gxc#symbol-table::t
       'symbol-table
       (list)
       '(gensyms bindings)
       (cons (cons 'struct: '#t) '())
       ':init!))
    (define gxc#symbol-table? (make-class-predicate gxc#symbol-table::t))
    (define gxc#make-symbol-table
      (lambda _%$args170201%_
        (apply make-instance gxc#symbol-table::t _%$args170201%_)))
    (define gxc#symbol-table-gensyms
      (make-class-slot-accessor gxc#symbol-table::t 'gensyms))
    (define gxc#symbol-table-bindings
      (make-class-slot-accessor gxc#symbol-table::t 'bindings))
    (define gxc#symbol-table-gensyms-set!
      (make-class-slot-mutator gxc#symbol-table::t 'gensyms))
    (define gxc#symbol-table-bindings-set!
      (make-class-slot-mutator gxc#symbol-table::t 'bindings))
    (define gxc#&symbol-table-gensyms
      (make-class-slot-unchecked-accessor gxc#symbol-table::t 'gensyms))
    (define gxc#&symbol-table-bindings
      (make-class-slot-unchecked-accessor gxc#symbol-table::t 'bindings))
    (define gxc#&symbol-table-gensyms-set!
      (make-class-slot-unchecked-mutator gxc#symbol-table::t 'gensyms))
    (define gxc#&symbol-table-bindings-set!
      (make-class-slot-unchecked-mutator gxc#symbol-table::t 'bindings))
    (define gxc#symbol-table:::init!
      (lambda (_%self170188%_)
        (let ((_%self170191%_ _%self170188%_))
          (struct-instance-init!
           _%self170191%_
           (make-hash-table-eq)
           (make-hash-table-eq)))))
    (bind-method! gxc#symbol-table::t ':init! gxc#symbol-table:::init! '#f)
    (define gxc#raise-compile-error
      (lambda (_%message170057%_ _%stx170058%_ . _%details170059%_)
        (let ((_%ctx170064%_
               (let ((_%$e170061%_ (gxc#current-compile-context)))
                 (if _%$e170061%_ _%$e170061%_ '(compile)))))
          (apply gx#raise-syntax-error
                 _%ctx170064%_
                 _%message170057%_
                 _%stx170058%_
                 _%details170059%_))))
    (define gxc#verbose
      (lambda _%args170054%_
        (if (gxc#current-compile-verbose)
            (with-lock
             gxc#__verbose-mutex
             (lambda () (apply displayln _%args170054%_)))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id170036%_)
        (let* ((_%str170038%_
                (if (symbol? _%id170036%_)
                    (symbol->string _%id170036%_)
                    _%id170036%_))
               (_%len170040%_ (string-length _%str170038%_))
               (_%res170042%_ (make-string _%len170040%_)))
          (let _%lp170045%_ ((_%i170047%_ '0))
            (if (fx< _%i170047%_ _%len170040%_)
                (let* ((_%char170049%_ (string-ref _%str170038%_ _%i170047%_))
                       (_%xchar170051%_
                        (if (string-index
                             gxc#module-path-reserved-chars
                             _%char170049%_)
                            '#\_
                            _%char170049%_)))
                  (string-set! _%res170042%_ _%i170047%_ _%xchar170051%_)
                  (_%lp170045%_ (fx1+ _%i170047%_)))
                _%res170042%_)))))
    (define gxc#map*
      (lambda (_%proc169978%_ _%maybe-improper-list169979%_)
        (let _%recur169981%_ ((_%rest169983%_ _%maybe-improper-list169979%_))
          (let* ((_%$%rest169984169995%_ _%rest169983%_)
                 (_%$%E169988169999%_
                  (lambda ()
                    (error '"No clause matching"
                           _%$%rest169984169995%_
                           '([hd . rest])
                           '([])
                           '(tail))
                    (void)))
                 (_%$%try-match169987170010%_
                  (lambda ()
                    (let* ((_%$%K169989170005%_
                            (lambda (_%tail170003%_)
                              (_%proc169978%_ _%tail170003%_)))
                           (_%tail170008%_ _%$%rest169984169995%_))
                      (_%$%K169989170005%_ _%tail170008%_))))
                 (_%$%try-match169986170018%_
                  (lambda ()
                    (let ((_%$%K169990170015%_ (lambda () '())))
                      (if (null? _%$%rest169984169995%_)
                          (_%$%K169990170015%_)
                          (_%$%try-match169987170010%_)))))
                 (_%$%K169991170024%_
                  (lambda (_%rest170021%_ _%hd170022%_)
                    (cons (_%proc169978%_ _%hd170022%_)
                          (_%recur169981%_ _%rest170021%_)))))
            (if (pair? _%$%rest169984169995%_)
                (let ((_%$%hd169992170027%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest169984169995%_)))
                      (_%$%tl169993170029%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest169984169995%_))))
                  (let* ((_%hd170032%_ _%$%hd169992170027%_)
                         (_%rest170034%_ _%$%tl169993170029%_))
                    (_%$%K169991170024%_ _%rest170034%_ _%hd170032%_)))
                (_%$%try-match169986170018%_))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym169973%_)
        (let ((_%$e169975%_ (not (gxc#gensym-reference? _%sym169973%_))))
          (if _%$e169975%_
              _%$e169975%_
              (memq _%sym169973%_ (gxc#current-compile-local-env))))))
    (define gxc#gensym-reference?
      (lambda (_%sym169969%_)
        (let ((_%str169971%_ (symbol->string _%sym169969%_)))
          (if (string-prefix? '"_%" _%str169971%_)
              (string-suffix? '"%_" _%str169971%_)
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id169940%_)
        (let ((_%$e169942%_
               (if (gx#syntax-quote? _%id169940%_)
                   (gx#resolve-identifier _%id169940%_)
                   '#f)))
          (if _%$e169942%_
              ((lambda (_%bind169945%_)
                 (let ((_%eid169947%_ (gx#binding-id _%bind169945%_))
                       (_%ht169948%_
                        (gxc#symbol-table-bindings
                         (gxc#current-compile-symbol-table))))
                   (if (interned-symbol? _%eid169947%_)
                       _%eid169947%_
                       (let ((_%$e169951%_
                              (hash-get _%ht169948%_ _%eid169947%_)))
                         (if _%$e169951%_
                             _%$e169951%_
                             (if (gx#local-binding? _%bind169945%_)
                                 (let ((_%gid169955%_
                                        (gxc#generate-runtime-gensym-reference
                                         _%eid169947%_)))
                                   (hash-put!
                                    _%ht169948%_
                                    _%eid169947%_
                                    _%gid169955%_)
                                   _%gid169955%_)
                                 (if (gx#module-binding? _%bind169945%_)
                                     (let ((_%gid169964%_
                                            (let ((_%$e169958%_
                                                   (gx#module-context-ns
                                                    (gx#module-binding-context
                                                     _%bind169945%_))))
                                              (if _%$e169958%_
                                                  ((lambda (_%ns169961%_)
                                                     (make-symbol
                                                      _%ns169961%_
                                                      '"#"
                                                      _%eid169947%_))
                                                   _%$e169958%_)
                                                  (gxc#generate-runtime-gensym-reference
                                                   _%eid169947%_)))))
                                       (hash-put!
                                        _%ht169948%_
                                        _%eid169947%_
                                        _%gid169964%_)
                                       _%gid169964%_)
                                     (gxc#raise-compile-error
                                      '"Cannot compile reference to uninterned binding"
                                      _%id169940%_
                                      _%eid169947%_
                                      _%bind169945%_))))))))
               _%$e169942%_)
              (if (interned-symbol? (gx#stx-e _%id169940%_))
                  (gx#stx-e _%id169940%_)
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id169940%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id169938%_)
        (if (gx#identifier? _%id169938%_)
            (gxc#generate-runtime-binding-id _%id169938%_)
            (gxc#generate-runtime-temporary))))
    (define gxc#generate-runtime-temporary
      (let ((_%$%opt-lambda169923169930%_
             (lambda (_%top169925%_)
               (if _%top169925%_
                   (let ((_%ns169927%_
                          (gx#module-context-ns
                           (gx#core-context-top
                            (gx#current-expander-context))))
                         (_%phi169928%_ (gx#current-expander-phi)))
                     (if _%ns169927%_
                         (if (fxpositive? _%phi169928%_)
                             (make-symbol
                              _%ns169927%_
                              '"["
                              (number->string _%phi169928%_)
                              '"]#_"
                              (gensym)
                              '"_")
                             (make-symbol _%ns169927%_ '"#_" (gensym) '"_"))
                         (if (fxpositive? _%phi169928%_)
                             (make-symbol
                              '"["
                              (number->string _%phi169928%_)
                              '"]#_"
                              (gensym)
                              '"_")
                             (make-symbol '"_" (gensym) '"_"))))
                   (make-symbol '"_" (gensym) '"_")))))
        (lambda _g170216_
          (let ((_g170217_ (let () (declare (not safe)) (##length _g170216_))))
            (cond ((let () (declare (not safe)) (##fx= _g170217_ 0))
                   (apply (lambda ()
                            (let ((_%top169934%_ '#f))
                              (_%$%opt-lambda169923169930%_ _%top169934%_)))
                          _g170216_))
                  ((let () (declare (not safe)) (##fx= _g170217_ 1))
                   (apply _%$%opt-lambda169923169930%_ _g170216_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-temporary
                    _g170216_)))))))
    (define gxc#generate-runtime-gensym-reference
      (let ((_%$%opt-lambda169901169914%_
             (lambda (_%sym169903%_ _%quote?169904%_)
               (let* ((_%ht169906%_
                       (gxc#symbol-table-gensyms
                        (gxc#current-compile-symbol-table)))
                      (_%$e169908%_ (hash-get _%ht169906%_ _%sym169903%_)))
                 (if _%$e169908%_
                     _%$e169908%_
                     (let ((_%g169912%_
                            (if _%quote?169904%_
                                (make-symbol
                                 '"__"
                                 _%sym169903%_
                                 '"__"
                                 (gxc#current-compile-timestamp))
                                (make-symbol '"_%" _%sym169903%_ '"%_"))))
                       (hash-put! _%ht169906%_ _%sym169903%_ _%g169912%_)
                       _%g169912%_))))))
        (lambda _g170218_
          (let ((_g170219_ (let () (declare (not safe)) (##length _g170218_))))
            (cond ((let () (declare (not safe)) (##fx= _g170219_ 1))
                   (apply (lambda (_%sym169917%_)
                            (let ((_%quote?169919%_ '#f))
                              (_%$%opt-lambda169901169914%_
                               _%sym169917%_
                               _%quote?169919%_)))
                          _g170218_))
                  ((let () (declare (not safe)) (##fx= _g170219_ 2))
                   (apply _%$%opt-lambda169901169914%_ _g170218_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#generate-runtime-gensym-reference
                    _g170218_)))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id169900%_)
        (gxc#generate-runtime-identifier-key
         (gx#core-identifier-key _%id169900%_))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key169855%_)
        (if (interned-symbol? _%key169855%_)
            _%key169855%_
            (if (uninterned-symbol? _%key169855%_)
                (gxc#generate-runtime-gensym-reference _%key169855%_)
                (let* ((_%$%key169859169866%_ _%key169855%_)
                       (_%$%E169861169870%_
                        (lambda ()
                          (error '"No clause matching"
                                 _%$%key169859169866%_
                                 '([eid . mark]))
                          (void)))
                       (_%$%K169862169888%_
                        (lambda (_%mark169873%_ _%eid169874%_)
                          (let ((_%$e169876%_
                                 (gx#expander-mark-subst _%mark169873%_)))
                            (if _%$e169876%_
                                ((lambda (_%ht169879%_)
                                   (let ((_%$e169881%_
                                          (hash-get
                                           _%ht169879%_
                                           _%eid169874%_)))
                                     (if _%$e169881%_
                                         ((lambda (_%id169884%_)
                                            (if (interned-symbol? _%id169884%_)
                                                _%id169884%_
                                                (gxc#generate-runtime-gensym-reference
                                                 _%id169884%_)))
                                          _%$e169881%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid169874%_))))
                                 _%$e169876%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid169874%_))))))
                  (if (pair? _%$%key169859169866%_)
                      (let ((_%$%hd169863169891%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%key169859169866%_)))
                            (_%$%tl169864169893%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%key169859169866%_))))
                        (let* ((_%eid169896%_ _%$%hd169863169891%_)
                               (_%mark169898%_ _%$%tl169864169893%_))
                          (_%$%K169862169888%_ _%mark169898%_ _%eid169896%_)))
                      (_%$%E169861169870%_)))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1169848%_ _%id2169849%_)
        (letrec ((_%symbol-e169851%_
                  (lambda (_%id169853%_)
                    (if (symbol? _%id169853%_)
                        _%id169853%_
                        (gxc#generate-runtime-binding-id _%id169853%_)))))
          (eq? (_%symbol-e169851%_ _%id1169848%_)
               (_%symbol-e169851%_ _%id2169849%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx169846%_)
        (if (gx#syntax-quote? _%stx169846%_)
            (gxc#generate-runtime-binding-id _%stx169846%_)
            (gx#stx-e _%stx169846%_))))
    (define gxc#runtime-identifier-properties
      (lambda (_%id169768%_)
        (let* ((_%bind169770%_ (gx#resolve-identifier _%id169768%_))
               (_%runtime-props169799%_
                (if (gx#runtime-binding? _%bind169770%_)
                    (let* ((_%props169779%_
                            (let ((_%$e169773%_
                                   (gx#runtime-binding-macro _%bind169770%_)))
                              (if _%$e169773%_
                                  ((lambda (_%macro-id169776%_)
                                     (cons 'macro:
                                           (cons (gxc#generate-runtime-identifier
                                                  _%macro-id169776%_)
                                                 '())))
                                   _%$e169773%_)
                                  '())))
                           (_%props169795%_
                            (let ((_%$e169781%_
                                   (gx#runtime-binding-type _%bind169770%_)))
                              (if _%$e169781%_
                                  ((lambda (_%type169784%_)
                                     (let ((_%$e169786%_
                                            (method-ref
                                             _%type169784%_
                                             ':repr)))
                                       (if _%$e169786%_
                                           ((lambda (_%method169789%_)
                                              (let ((_%repr169791%_
                                                     (_%method169789%_
                                                      _%type169784%_)))
                                                (cons 'type:
                                                      (cons _%repr169791%_
                                                            _%props169779%_))))
                                            _%$e169786%_)
                                           (gxc#raise-compile-error
                                            '"unrepresentable type"
                                            _%id169768%_
                                            _%type169784%_))))
                                   _%$e169781%_)
                                  _%props169779%_))))
                      _%props169795%_)
                    '()))
               (_%$e169802%_ (gx#binding-properties _%bind169770%_)))
          (if _%$e169802%_
              ((lambda (_%props169805%_)
                 (foldl (lambda (_%prop169807%_ _%props169808%_)
                          (let* ((_%$%prop169809169816%_ _%prop169807%_)
                                 (_%$%E169811169819%_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _%$%prop169809169816%_
                                           '([key . value]))
                                    (void)))
                                 (_%$%K169812169833%_
                                  (lambda (_%value169822%_ _%key169823%_)
                                    (let ((_%$e169825%_
                                           (method-ref
                                            _%value169822%_
                                            ':repr)))
                                      (if _%$e169825%_
                                          ((lambda (_%method169828%_)
                                             (let ((_%repr169830%_
                                                    (_%method169828%_
                                                     _%value169822%_)))
                                               (cons _%key169823%_
                                                     (cons _%repr169830%_
                                                           _%props169808%_))))
                                           _%$e169825%_)
                                          (cons _%key169823%_
                                                (cons (cons 'quote
                                                            (cons _%value169822%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%props169808%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (pair? _%$%prop169809169816%_)
                                (let ((_%$%hd169813169836%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%prop169809169816%_)))
                                      (_%$%tl169814169838%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%prop169809169816%_))))
                                  (let* ((_%key169841%_ _%$%hd169813169836%_)
                                         (_%value169843%_
                                          _%$%tl169814169838%_))
                                    (_%$%K169812169833%_
                                     _%value169843%_
                                     _%key169841%_)))
                                (_%$%E169811169819%_))))
                        _%runtime-props169799%_
                        _%props169805%_))
               _%$e169802%_)
              _%runtime-props169799%_))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number (getenv '"GERBIL_BUILD_CORES" '"1")))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!
      (let ((_%$%opt-lambda169751169758%_
             (lambda (_%thunk169753%_ _%name169754%_)
               (mutex-lock! gxc#__jobs-mx)
               (let ((_%job169756%_
                      (gxc#make-compile-job _%thunk169753%_ _%name169754%_)))
                 (set! gxc#__compile-jobs
                       (cons _%job169756%_ gxc#__compile-jobs)))
               (mutex-unlock! gxc#__jobs-mx))))
        (lambda _g170220_
          (let ((_g170221_ (let () (declare (not safe)) (##length _g170220_))))
            (cond ((let () (declare (not safe)) (##fx= _g170221_ 1))
                   (apply (lambda (_%thunk169761%_)
                            (let ((_%name169763%_
                                   (gxc#current-compile-context)))
                              (_%$%opt-lambda169751169758%_
                               _%thunk169761%_
                               _%name169763%_)))
                          _g170220_))
                  ((let () (declare (not safe)) (##fx= _g170221_ 2))
                   (apply _%$%opt-lambda169751169758%_ _g170220_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#add-compile-job!
                    _g170220_)))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result169750%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result169750%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop169744%_ ()
          (let ((_%pending169747%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending169747%_)
                '#!void
                (begin
                  (for-each thread-start! _%pending169747%_)
                  (for-each gxc#join! _%pending169747%_)))))))
    (define gxc#make-compile-job
      (lambda (_%thunk169733%_ _%name169734%_)
        (make-thread
         (lambda ()
           (let _%loop169737%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (1- gxc#__available-cores))
                   (mutex-unlock! gxc#__jobs-mx)
                   (with-lock
                    gxc#__verbose-mutex
                    (lambda ()
                      (displayln '"... execute compile job " _%name169734%_)))
                   (with-unwind-protect
                    (lambda () (_%thunk169733%_))
                    (lambda ()
                      (mutex-lock! gxc#__jobs-mx)
                      (set! gxc#__available-cores (fx1+ gxc#__available-cores))
                      (condition-variable-signal! gxc#__jobs-cv)
                      (mutex-unlock! gxc#__jobs-mx))))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop169737%_)))))
         _%name169734%_)))
    (define gxc#join!
      (lambda (_%thread169728%_)
        (with-catch
         (lambda (_%exn169730%_)
           (if (uncaught-exception? _%exn169730%_)
               (raise (uncaught-exception-reason _%exn169730%_))
               (raise _%exn169730%_)))
         (lambda () (thread-join! _%thread169728%_)))))))
