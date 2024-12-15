(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1734280447)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp133957 (list gx#expander::t))
            (__tmp133956 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp133957
         '(id depth)
         __tmp133956
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args133953%_
        (apply make-instance gx#syntax-pattern::t _%$args133953%_)))
    (define gx#syntax-pattern-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gx#syntax-pattern::t 'id)))
    (define gx#syntax-pattern-depth
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gx#syntax-pattern::t 'depth)))
    (define gx#syntax-pattern-e
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gx#syntax-pattern::t 'e)))
    (define gx#syntax-pattern-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gx#syntax-pattern::t 'id)))
    (define gx#syntax-pattern-depth-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gx#syntax-pattern::t 'depth)))
    (define gx#syntax-pattern-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gx#syntax-pattern::t 'e)))
    (define gx#&syntax-pattern-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gx#syntax-pattern::t 'id)))
    (define gx#&syntax-pattern-depth
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gx#syntax-pattern::t 'depth)))
    (define gx#&syntax-pattern-e
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gx#syntax-pattern::t 'e)))
    (define gx#&syntax-pattern-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gx#syntax-pattern::t 'id)))
    (define gx#&syntax-pattern-depth-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gx#syntax-pattern::t 'depth)))
    (define gx#&syntax-pattern-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gx#syntax-pattern::t 'e)))
    (define gx#syntax-pattern::apply-macro-expander
      (lambda (_%self132560133937%_ _%stx133939%_)
        (let* ((_%self133941%_ _%self132560133937%_)
               (_%self133943%_ _%self133941%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx133939%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx133403%_)
        (letrec ((_%generate133405%_
                  (lambda (_%e133645%_)
                    (letrec ((_%BUG133647%_
                              (lambda (_%q133812%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx133403%_
                                         _%e133645%_
                                         _%q133812%_))))
                             (_%local-pattern-e133648%_
                              (lambda (_%pat133810%_)
                                (let ((__tmp133958
                                       (##structure-ref
                                        _%pat133810%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp133958))))
                             (_%getvar133649%_
                              (lambda (_%q133807%_ _%vars133808%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q133807%_
                                   _%vars133808%_
                                   _%BUG133647%_))))
                             (_%getarg133650%_
                              (lambda (_%arg133773%_ _%vars133774%_)
                                (let* ((_%arg133775133782%_ _%arg133773%_)
                                       (_%E133777133786%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg133775133782%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K133778133795%_
                                        (lambda (_%e133789%_ _%tag133790%_)
                                          (let ((_%$e133792%_ _%tag133790%_))
                                            (if (eq? 'ref _%$e133792%_)
                                                (_%getvar133649%_
                                                 _%e133789%_
                                                 _%vars133774%_)
                                                (if (eq? 'pattern _%$e133792%_)
                                                    (_%local-pattern-e133648%_
                                                     _%e133789%_)
                                                    (_%BUG133647%_
                                                     _%arg133773%_)))))))
                                  (if (pair? _%arg133775133782%_)
                                      (let ((_%hd133779133798%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg133775133782%_)))
                                            (_%tl133780133800%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg133775133782%_))))
                                        (let* ((_%tag133803%_
                                                _%hd133779133798%_)
                                               (_%e133805%_
                                                _%tl133780133800%_))
                                          (_%K133778133795%_
                                           _%e133805%_
                                           _%tag133803%_)))
                                      (_%E133777133786%_))))))
                      (let _%recur133652%_ ((_%e133654%_ _%e133645%_)
                                            (_%vars133655%_ '()))
                        (let* ((_%e133656133663%_ _%e133654%_)
                               (_%E133658133667%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e133656133663%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K133659133761%_
                                (lambda (_%body133670%_ _%tag133671%_)
                                  (let ((_%$e133673%_ _%tag133671%_))
                                    (if (eq? 'datum _%$e133673%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body133670%_))
                                        (if (eq? 'term _%$e133673%_)
                                            (let ((_%id133676%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body133670%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id133676%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks133679%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id133676%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks133679%_)
                                                        (let ((__tmp133959
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body133670%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp133959))
                (let ((__tmp133961
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body133670%_)))
                      (__tmp133960
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body133670%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp133961
                   __tmp133960
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id133676%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body133670%_))
                                                      (_%BUG133647%_
                                                       _%e133654%_))))
                                            (if (eq? 'pattern _%$e133673%_)
                                                (_%local-pattern-e133648%_
                                                 _%body133670%_)
                                                (if (eq? 'ref _%$e133673%_)
                                                    (_%getvar133649%_
                                                     _%body133670%_
                                                     _%vars133655%_)
                                                    (if (eq? 'cons
                                                             _%$e133673%_)
                                                        (let ((__tmp133963
                                                               (_%recur133652%_
                                                                (car _%body133670%_)
                                                                _%vars133655%_))
                                                              (__tmp133962
                                                               (_%recur133652%_
                                                                (cdr _%body133670%_)
                                                                _%vars133655%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp133963
                                                           __tmp133962))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e133673%_)
                    (let ((__tmp133964
                           (_%recur133652%_ _%body133670%_ _%vars133655%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp133964))
                    (if (eq? 'box _%$e133673%_)
                        (let ((__tmp133965
                               (_%recur133652%_
                                _%body133670%_
                                _%vars133655%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp133965))
                        (if (eq? 'splice _%$e133673%_)
                            (let* ((_%body133682133693%_ _%body133670%_)
                                   (_%E133684133697%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body133682133693%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K133685133735%_
                                    (lambda (_%args133700%_
                                             _%iv133701%_
                                             _%hd133702%_
                                             _%depth133703%_)
                                      (let* ((_%targets133709%_
                                              (map (lambda (_%g133704133706%_)
                                                     (_%getarg133650%_
                                                      _%g133704133706%_
                                                      _%vars133655%_))
                                                   _%args133700%_))
                                             (_%fold-in133711%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args133700%_)))
                                             (_%fold-out133713%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args133715%_
                                              (let ((__tmp133966
                                                     (cons _%fold-out133713%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp133966
                                                 _%fold-in133711%_)))
                                             (_%lambda-body133732%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth133703%_ '1))
                                                  (let ((_%r-args133723%_
                                                         (map (lambda (_%arg133717%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg133717%_)))
                      _%args133700%_))
                (_%r-vars133724%_
                 (let ((__tmp133967
                        (lambda (_%arg133719%_ _%var133720%_ _%r133721%_)
                          (cons (cons (cdr _%arg133719%_) _%var133720%_)
                                _%r133721%_))))
                   (declare (not safe))
                   (__foldr2
                    __tmp133967
                    _%vars133655%_
                    _%args133700%_
                    _%fold-in133711%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur133652%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth133703%_ '1))
                         (cons _%hd133702%_
                               (cons (cons 'var _%fold-out133713%_)
                                     _%r-args133723%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars133724%_))
                                                  (let* ((_%hd-vars133730%_
                                                          (let ((__tmp133968
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg133726%_ _%var133727%_ _%r133728%_)
                           (cons (cons (cdr _%arg133726%_) _%var133727%_)
                                 _%r133728%_))))
                    (declare (not safe))
                    (__foldr2
                     __tmp133968
                     _%vars133655%_
                     _%args133700%_
                     _%fold-in133711%_)))
                 (__tmp133969
                  (_%recur133652%_ _%hd133702%_ _%hd-vars133730%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp133969
                                                     _%fold-out133713%_)))))
                                        (let ((__tmp133973
                                               (if (let ((__tmp133974
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets133709%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp133974 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets133709%_))
                                                   '#!void))
                                              (__tmp133970
                                               (let ((__tmp133972
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args133715%_
                                                         _%lambda-body133732%_)))
                                                     (__tmp133971
                                                      (_%recur133652%_
                                                       _%iv133701%_
                                                       _%vars133655%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp133972
                                                  __tmp133971
                                                  _%targets133709%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp133973
                                           __tmp133970))))))
                              (if (pair? _%body133682133693%_)
                                  (let ((_%hd133686133738%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body133682133693%_)))
                                        (_%tl133687133740%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body133682133693%_))))
                                    (let ((_%depth133743%_ _%hd133686133738%_))
                                      (if (pair? _%tl133687133740%_)
                                          (let ((_%hd133688133745%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl133687133740%_)))
                                                (_%tl133689133747%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl133687133740%_))))
                                            (let ((_%hd133750%_
                                                   _%hd133688133745%_))
                                              (if (pair? _%tl133689133747%_)
                                                  (let ((_%hd133690133752%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl133689133747%_)))
                                                        (_%tl133691133754%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl133689133747%_))))
                                                    (let* ((_%iv133757%_
                                                            _%hd133690133752%_)
                                                           (_%args133759%_
                                                            _%tl133691133754%_))
                                                      (_%K133685133735%_
                                                       _%args133759%_
                                                       _%iv133757%_
                                                       _%hd133750%_
                                                       _%depth133743%_)))
                                                  (_%E133684133697%_))))
                                          (_%E133684133697%_))))
                                  (_%E133684133697%_)))
                            (if (eq? 'var _%$e133673%_)
                                _%body133670%_
                                (_%BUG133647%_ _%e133654%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (pair? _%e133656133663%_)
                              (let ((_%hd133660133764%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e133656133663%_)))
                                    (_%tl133661133766%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e133656133663%_))))
                                (let* ((_%tag133769%_ _%hd133660133764%_)
                                       (_%body133771%_ _%tl133661133766%_))
                                  (_%K133659133761%_
                                   _%body133771%_
                                   _%tag133769%_)))
                              (_%E133658133667%_)))))))
                 (_%parse133406%_
                  (lambda (_%e133447%_)
                    (letrec ((_%make-cons133449%_
                              (lambda (_%hd133637%_ _%tl133638%_)
                                (let ((_g133975_ _%hd133637%_)
                                      (_g133977_ _%tl133638%_))
                                  (begin
                                    (let ((_g133976_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g133975_)
                                                 (##values-length _g133975_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g133976_ 2)))
                                          (error "Context expects 2 values"
                                                 _g133976_)))
                                    (let ((_g133978_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g133977_)
                                                 (##values-length _g133977_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g133978_ 2)))
                                          (error "Context expects 2 values"
                                                 _g133978_)))
                                    (let ((_%hd-e133640%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g133975_ 0)))
                                          (_%hd-vars133641%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g133975_ 1))))
                                      (let ((_%tl-e133642%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g133977_ 0)))
                                            (_%tl-vars133643%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g133977_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e133640%_
                                                            _%tl-e133642%_))
                                                (append _%hd-vars133641%_
                                                        _%tl-vars133643%_))))))))
                             (_%make-splice133450%_
                              (lambda (_%where133573%_
                                       _%depth133574%_
                                       _%hd133575%_
                                       _%tl133576%_)
                                (let ((_g133979_ _%hd133575%_)
                                      (_g133981_ _%tl133576%_))
                                  (begin
                                    (let ((_g133980_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g133979_)
                                                 (##values-length _g133979_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g133980_ 2)))
                                          (error "Context expects 2 values"
                                                 _g133980_)))
                                    (let ((_g133982_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g133981_)
                                                 (##values-length _g133981_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g133982_ 2)))
                                          (error "Context expects 2 values"
                                                 _g133982_)))
                                    (let ((_%hd-e133578%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g133979_ 0)))
                                          (_%hd-vars133579%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g133979_ 1))))
                                      (let ((_%tl-e133580%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g133981_ 0)))
                                            (_%tl-vars133581%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g133981_ 1))))
                                        (let _%lp133583%_ ((_%rest133585%_
                                                            _%hd-vars133579%_)
                                                           (_%targets133586%_
                                                            '())
                                                           (_%vars133587%_
                                                            _%tl-vars133581%_))
                                          (let* ((_%rest133588133598%_
                                                  _%rest133585%_)
                                                 (_%else133590133606%_
                                                  (lambda ()
                                                    (if (null? _%targets133586%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx133403%_
                                                           _%where133573%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth133574%_
                                    (cons _%hd-e133578%_
                                          (cons _%tl-e133580%_
                                                _%targets133586%_))))
                        _%vars133587%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K133592133618%_
                                                  (lambda (_%rest133609%_
                                                           _%hd-pat133610%_
                                                           _%hd-depth*133611%_)
                                                    (let ((_%hd-depth133613%_
                                                           (fx- _%hd-depth*133611%_
                                                                _%depth133574%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth133613%_))
                                                          (_%lp133583%_
                                                           _%rest133609%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat133610%_)
                         _%targets133586%_)
                   (cons (cons _%hd-depth133613%_ _%hd-pat133610%_)
                         _%vars133587%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth133613%_))
                      (_%lp133583%_
                       _%rest133609%_
                       (cons (cons 'pattern _%hd-pat133610%_)
                             _%targets133586%_)
                       _%vars133587%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx133403%_
                         _%where133573%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%rest133588133598%_)
                                                (let ((_%hd133593133621%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest133588133598%_)))
                                                      (_%tl133594133623%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest133588133598%_))))
                                                  (if (pair? _%hd133593133621%_)
                                                      (let ((_%hd133595133626%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd133593133621%_)))
                    (_%tl133596133628%_
                     (let () (declare (not safe)) (##cdr _%hd133593133621%_))))
                (let* ((_%hd-depth*133631%_ _%hd133595133626%_)
                       (_%hd-pat133633%_ _%tl133596133628%_)
                       (_%rest133635%_ _%tl133594133623%_))
                  (_%K133592133618%_
                   _%rest133635%_
                   _%hd-pat133633%_
                   _%hd-depth*133631%_)))
              (_%else133590133606%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else133590133606%_))))))))))
                             (_%recur133451%_
                              (lambda (_%e133456%_ _%is-e?133457%_)
                                (if (_%is-e?133457%_ _%e133456%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx133403%_))
                                    (if (gx#syntax-local-pattern? _%e133456%_)
                                        (let* ((_%pat133461%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e133456%_)))
                                               (_%depth133463%_
                                                (##structure-ref
                                                 _%pat133461%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth133463%_)
                                              (values (cons 'ref _%pat133461%_)
                                                      (cons (cons _%depth133463%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat133461%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat133461%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e133456%_))
                                            (values (cons 'term _%e133456%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e133456%_))
                                                (let* ((_%e133467133474%_
                                                        _%e133456%_)
                                                       (_%E133469133478%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e133467133474%_))))
                                                       (_%E133468133560%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%e133467133474%_))
                      (let ((_%e133470133482%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e133467133474%_))))
                        (let ((_%hd133471133485%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133470133482%_)))
                              (_%tl133472133487%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133470133482%_))))
                          (let* ((_%hd133490%_ _%hd133471133485%_)
                                 (_%rest133492%_ _%tl133472133487%_))
                            (if (_%is-e?133457%_ _%hd133490%_)
                                (let* ((_%e133493133500%_ _%rest133492%_)
                                       (_%E133495133504%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx133403%_
                                             _%e133456%_))))
                                       (_%E133494133518%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e133493133500%_))
                                              (let ((_%e133496133508%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e133493133500%_))))
                                                (let ((_%hd133497133511%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e133496133508%_)))
                                                      (_%tl133498133513%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e133496133508%_))))
                                                  (let ((_%rest133516%_
                                                         _%hd133497133511%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl133498133513%_))
                                                        (_%recur133451%_
                                                         _%rest133516%_
                                                         false)
                                                        (_%E133495133504%_)))))
                                              (_%E133495133504%_)))))
                                  (_%E133494133518%_))
                                (let _%lp133522%_ ((_%rest133524%_
                                                    _%rest133492%_)
                                                   (_%depth133525%_ '0))
                                  (let* ((_%e133526133533%_ _%rest133524%_)
                                         (_%E133528133537%_
                                          (lambda ()
                                            (if (fxpositive? _%depth133525%_)
                                                (_%make-splice133450%_
                                                 _%e133456%_
                                                 _%depth133525%_
                                                 (_%recur133451%_
                                                  _%hd133490%_
                                                  _%is-e?133457%_)
                                                 (_%recur133451%_
                                                  _%rest133524%_
                                                  _%is-e?133457%_))
                                                (_%make-cons133449%_
                                                 (_%recur133451%_
                                                  _%hd133490%_
                                                  _%is-e?133457%_)
                                                 (_%recur133451%_
                                                  _%rest133524%_
                                                  _%is-e?133457%_)))))
                                         (_%E133527133556%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%e133526133533%_))
                                                (let ((_%e133529133541%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%e133526133533%_))))
                                                  (let ((_%hd133530133544%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e133529133541%_)))
                                                        (_%tl133531133546%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e133529133541%_))))
                                                    (let* ((_%rest-hd133549%_
                                                            _%hd133530133544%_)
                                                           (_%rest-tl133551%_
                                                            _%tl133531133546%_))
                                                      (if (_%is-e?133457%_
                                                           _%rest-hd133549%_)
                                                          (_%lp133522%_
                                                           _%rest-tl133551%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth133525%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth133525%_)
                      (_%make-splice133450%_
                       _%e133456%_
                       _%depth133525%_
                       (_%recur133451%_ _%hd133490%_ _%is-e?133457%_)
                       (_%recur133451%_ _%rest133524%_ _%is-e?133457%_))
                      (_%make-cons133449%_
                       (_%recur133451%_ _%hd133490%_ _%is-e?133457%_)
                       (_%recur133451%_ _%rest133524%_ _%is-e?133457%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E133528133537%_)))))
                                    (_%E133527133556%_)))))))
                      (_%E133469133478%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E133468133560%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e133456%_))
                                                    (let ((_g133983_
                                                           (_%recur133451%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e133456%_)))
                    _%is-e?133457%_)))
              (begin
                (let ((_g133984_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g133983_)
                             (##values-length _g133983_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g133984_ 2)))
                      (error "Context expects 2 values" _g133984_)))
                (let ((_%e133565%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g133983_ 0)))
                      (_%vars133566%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g133983_ 1))))
                  (values (cons 'vector _%e133565%_) _%vars133566%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e133456%_))
                                                        (let ((_g133985_
                                                               (_%recur133451%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e133456%_)))
                        _%is-e?133457%_)))
                  (begin
                    (let ((_g133986_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g133985_)
                                 (##values-length _g133985_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g133986_ 2)))
                          (error "Context expects 2 values" _g133986_)))
                    (let ((_%e133569%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g133985_ 0)))
                          (_%vars133570%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g133985_ 1))))
                      (values (cons 'box _%e133569%_) _%vars133570%_))))
                (values (cons 'datum _%e133456%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g133987_
                             (_%recur133451%_ _%e133447%_ gx#ellipsis?)))
                        (begin
                          (let ((_g133988_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g133987_)
                                       (##values-length _g133987_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g133988_ 2)))
                                (error "Context expects 2 values" _g133988_)))
                          (let ((_%tree133453%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g133987_ 0)))
                                (_%vars133454%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g133987_ 1))))
                            (if (null? _%vars133454%_)
                                _%tree133453%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx133403%_
                                   _%vars133454%_))))))))))
          (let* ((_%e133407133417%_ _%stx133403%_)
                 (_%E133409133421%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx133403%_))))
                 (_%E133408133443%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e133407133417%_))
                        (let ((_%e133410133425%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e133407133417%_))))
                          (let ((_%hd133411133428%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e133410133425%_)))
                                (_%tl133412133430%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e133410133425%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl133412133430%_))
                                (let ((_%e133413133433%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl133412133430%_))))
                                  (let ((_%hd133414133436%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e133413133433%_)))
                                        (_%tl133415133438%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e133413133433%_))))
                                    (let ((_%form133441%_ _%hd133414133436%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl133415133438%_))
                                          (let ((__tmp133990
                                                 (_%generate133405%_
                                                  (_%parse133406%_
                                                   _%form133441%_)))
                                                (__tmp133989
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx133403%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp133990
                                             __tmp133989))
                                          (_%E133409133421%_)))))
                                (_%E133409133421%_))))
                        (_%E133409133421%_)))))
            (_%E133408133443%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx132652%_
               _%identifier=?132653%_
               _%unwrap-e132654%_
               _%wrap-e132655%_)
        (letrec ((_%generate-bindings132657%_
                  (lambda (_%target133267%_
                           _%ids133268%_
                           _%clauses133269%_
                           _%clause-ids133270%_
                           _%E133271%_)
                    (letrec ((_%generate1133273%_
                              (lambda (_%clause133370%_
                                       _%clause-id133371%_
                                       _%E133372%_)
                                (cons (cons _%clause-id133371%_ '())
                                      (cons (let ((__tmp133992
                                                   (cons _%target133267%_ '()))
                                                  (__tmp133991
                                                   (_%generate-clause132659%_
                                                    _%target133267%_
                                                    _%ids133268%_
                                                    _%clause133370%_
                                                    _%E133372%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp133992
                                               __tmp133991))
                                            '())))))
                      (let _%lp133275%_ ((_%rest133277%_ _%clauses133269%_)
                                         (_%rest-ids133278%_
                                          _%clause-ids133270%_)
                                         (_%bindings133279%_ '()))
                        (let* ((_%rest133280133288%_ _%rest133277%_)
                               (_%else133282133296%_
                                (lambda () _%bindings133279%_))
                               (_%K133284133358%_
                                (lambda (_%rest133299%_ _%clause133300%_)
                                  (let* ((_%rest-ids133301133308%_
                                          _%rest-ids133278%_)
                                         (_%E133303133312%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids133301133308%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K133304133346%_
                                          (lambda (_%rest-ids133315%_
                                                   _%clause-id133316%_)
                                            (let* ((_%rest-ids133317133325%_
                                                    _%rest-ids133315%_)
                                                   (_%else133319133333%_
                                                    (lambda ()
                                                      (cons (_%generate1133273%_
                                                             _%clause133300%_
                                                             _%clause-id133316%_
                                                             _%E133271%_)
                                                            _%bindings133279%_)))
                                                   (_%K133321133338%_
                                                    (lambda (_%next-clause-id133336%_)
                                                      (_%lp133275%_
                                                       _%rest133299%_
                                                       _%rest-ids133315%_
                                                       (cons (_%generate1133273%_
                                                              _%clause133300%_
                                                              _%clause-id133316%_
                                                              _%next-clause-id133336%_)
                                                             _%bindings133279%_)))))
                                              (if (pair? _%rest-ids133317133325%_)
                                                  (let* ((_%hd133322133341%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids133317133325%_)))
                                                         (_%next-clause-id133344%_
                                                          _%hd133322133341%_))
                                                    (_%K133321133338%_
                                                     _%next-clause-id133344%_))
                                                  (_%else133319133333%_))))))
                                    (if (pair? _%rest-ids133301133308%_)
                                        (let ((_%hd133305133349%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids133301133308%_)))
                                              (_%tl133306133351%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids133301133308%_))))
                                          (let* ((_%clause-id133354%_
                                                  _%hd133305133349%_)
                                                 (_%rest-ids133356%_
                                                  _%tl133306133351%_))
                                            (_%K133304133346%_
                                             _%rest-ids133356%_
                                             _%clause-id133354%_)))
                                        (_%E133303133312%_))))))
                          (if (pair? _%rest133280133288%_)
                              (let ((_%hd133285133361%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest133280133288%_)))
                                    (_%tl133286133363%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest133280133288%_))))
                                (let* ((_%clause133366%_ _%hd133285133361%_)
                                       (_%rest133368%_ _%tl133286133363%_))
                                  (_%K133284133358%_
                                   _%rest133368%_
                                   _%clause133366%_)))
                              (_%else133282133296%_)))))))
                 (_%generate-body132658%_
                  (lambda (_%bindings133227%_ _%body133228%_)
                    (let _%recur133230%_ ((_%rest133232%_ _%bindings133227%_))
                      (let* ((_%rest133233133241%_ _%rest133232%_)
                             (_%else133235133249%_ (lambda () _%body133228%_))
                             (_%K133237133255%_
                              (lambda (_%rest133252%_ _%hd133253%_)
                                (let ((__tmp133994 (cons _%hd133253%_ '()))
                                      (__tmp133993
                                       (_%recur133230%_ _%rest133252%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp133994
                                   __tmp133993)))))
                        (if (pair? _%rest133233133241%_)
                            (let ((_%hd133238133258%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest133233133241%_)))
                                  (_%tl133239133260%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest133233133241%_))))
                              (let* ((_%hd133263%_ _%hd133238133258%_)
                                     (_%rest133265%_ _%tl133239133260%_))
                                (_%K133237133255%_
                                 _%rest133265%_
                                 _%hd133263%_)))
                            (_%else133235133249%_))))))
                 (_%generate-clause132659%_
                  (lambda (_%target133090%_
                           _%ids133091%_
                           _%clause133092%_
                           _%E133093%_)
                    (letrec ((_%generate1133095%_
                              (lambda (_%hd133182%_
                                       _%fender133183%_
                                       _%body133184%_)
                                (let ((_g133995_
                                       (_%parse-clause132661%_
                                        _%hd133182%_
                                        _%ids133091%_)))
                                  (begin
                                    (let ((_g133996_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g133995_)
                                                 (##values-length _g133995_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g133996_ 2)))
                                          (error "Context expects 2 values"
                                                 _g133996_)))
                                    (let ((_%e133186%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g133995_ 0)))
                                          (_%mvars133187%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g133995_ 1))))
                                      (let* ((_%pvars133189%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars133187%_))))
                                             (_%E133191%_
                                              (cons _%E133093%_
                                                    (cons _%target133090%_
                                                          '())))
                                             (_%K133224%_
                                              (let ((__tmp133997
                                                     (let ((__tmp133999
                                                            (map (lambda (_%mvar133193%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar133194%_)
                           (let* ((_%mvar133195133202%_ _%mvar133193%_)
                                  (_%E133197133206%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar133195133202%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K133198133212%_
                                   (lambda (_%depth133209%_ _%id133210%_)
                                     (cons _%id133210%_
                                           (cons (let ((__tmp134001
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id133210%_)))
                                                       (__tmp134000
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar133194%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp134001
                                                    __tmp134000
                                                    _%depth133209%_))
                                                 '())))))
                             (if (pair? _%mvar133195133202%_)
                                 (let ((_%hd133199133215%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar133195133202%_)))
                                       (_%tl133200133217%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar133195133202%_))))
                                   (let* ((_%id133220%_ _%hd133199133215%_)
                                          (_%depth133222%_ _%tl133200133217%_))
                                     (_%K133198133212%_
                                      _%depth133222%_
                                      _%id133220%_)))
                                 (_%E133197133206%_))))
                         _%mvars133187%_
                         _%pvars133189%_))
                   (__tmp133998
                    (if (eq? _%fender133183%_ '#t)
                        _%body133184%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender133183%_
                           _%body133184%_
                           _%E133191%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp133999 __tmp133998))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars133189%_
                                                 __tmp133997))))
                                        (_%generate-match132660%_
                                         _%hd133182%_
                                         _%target133090%_
                                         _%e133186%_
                                         _%mvars133187%_
                                         _%K133224%_
                                         _%E133191%_))))))))
                      (let* ((_%e133096133116%_ _%clause133092%_)
                             (_%E133105133120%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e133096133116%_))))
                             (_%E133098133154%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e133096133116%_))
                                    (let ((_%e133106133124%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e133096133116%_))))
                                      (let ((_%hd133107133127%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e133106133124%_)))
                                            (_%tl133108133129%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e133106133124%_))))
                                        (let ((_%hd133132%_
                                               _%hd133107133127%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl133108133129%_))
                                              (let ((_%e133109133134%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl133108133129%_))))
                                                (let ((_%hd133110133137%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e133109133134%_)))
                                                      (_%tl133111133139%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e133109133134%_))))
                                                  (let ((_%fender133142%_
                                                         _%hd133110133137%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl133111133139%_))
                                                        (let ((_%e133112133144%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl133111133139%_))))
                  (let ((_%hd133113133147%_
                         (let ()
                           (declare (not safe))
                           (##car _%e133112133144%_)))
                        (_%tl133114133149%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e133112133144%_))))
                    (let ((_%body133152%_ _%hd133113133147%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl133114133149%_))
                          (_%generate1133095%_
                           _%hd133132%_
                           _%fender133142%_
                           _%body133152%_)
                          (_%E133105133120%_)))))
                (_%E133105133120%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E133105133120%_)))))
                                    (_%E133105133120%_))))
                             (_%E133097133178%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e133096133116%_))
                                    (let ((_%e133099133158%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e133096133116%_))))
                                      (let ((_%hd133100133161%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e133099133158%_)))
                                            (_%tl133101133163%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e133099133158%_))))
                                        (let ((_%hd133166%_
                                               _%hd133100133161%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl133101133163%_))
                                              (let ((_%e133102133168%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl133101133163%_))))
                                                (let ((_%hd133103133171%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e133102133168%_)))
                                                      (_%tl133104133173%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e133102133168%_))))
                                                  (let ((_%body133176%_
                                                         _%hd133103133171%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl133104133173%_))
                                                        (_%generate1133095%_
                                                         _%hd133166%_
                                                         '#t
                                                         _%body133176%_)
                                                        (_%E133098133154%_)))))
                                              (_%E133098133154%_)))))
                                    (_%E133098133154%_)))))
                        (_%E133097133178%_)))))
                 (_%generate-match132660%_
                  (lambda (_%where132839%_
                           _%target132840%_
                           _%hd132841%_
                           _%mvars132842%_
                           _%K132843%_
                           _%E132844%_)
                    (letrec ((_%BUG132846%_
                              (lambda (_%q133088%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx132652%_
                                         _%hd132841%_
                                         _%q133088%_))))
                             (_%recur132847%_
                              (lambda (_%e132938%_
                                       _%vars132939%_
                                       _%target132940%_
                                       _%E132941%_
                                       _%k132942%_)
                                (let* ((_%e132943132950%_ _%e132938%_)
                                       (_%E132945132954%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e132943132950%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K132946133076%_
                                        (lambda (_%body132957%_ _%tag132958%_)
                                          (let ((_%$e132960%_ _%tag132958%_))
                                            (if (eq? 'any _%$e132960%_)
                                                (_%k132942%_ _%vars132939%_)
                                                (if (eq? 'id _%$e132960%_)
                                                    (let ((__tmp134006
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target132940%_)))
                                                          (__tmp134002
                                                           (let ((__tmp134004
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp134005
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e132655%_
                                    _%body132957%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?132653%_
                             __tmp134005
                             _%target132940%_)))
                         (__tmp134003 (_%k132942%_ _%vars132939%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp134004 __tmp134003 _%E132941%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp134006 __tmp134002 _%E132941%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e132960%_)
                                                        (_%k132942%_
                                                         (cons (cons _%body132957%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target132940%_)
                       _%vars132939%_))
                (if (eq? 'cons _%$e132960%_)
                    (let ((_%$e132963%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd132964%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl132965%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp134012
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target132940%_)))
                            (__tmp134007
                             (let ((__tmp134011
                                    (cons (cons (cons _%$e132963%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e132654%_
                                                         _%target132940%_))
                                                      '()))
                                          '()))
                                   (__tmp134008
                                    (let ((__tmp134010
                                           (cons (cons (cons _%$hd132964%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e132963%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl132965%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e132963%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp134009
                                           (let* ((_%body132966132973%_
                                                   _%body132957%_)
                                                  (_%E132968132977%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body132966132973%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K132969132985%_
                                                   (lambda (_%tl132980%_
                                                            _%hd132981%_)
                                                     (_%recur132847%_
                                                      _%hd132981%_
                                                      _%vars132939%_
                                                      _%$hd132964%_
                                                      _%E132941%_
                                                      (lambda (_%vars132983%_)
                                                        (_%recur132847%_
                                                         _%tl132980%_
                                                         _%vars132983%_
                                                         _%$tl132965%_
                                                         _%E132941%_
                                                         _%k132942%_))))))
                                             (if (pair? _%body132966132973%_)
                                                 (let ((_%hd132970132988%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body132966132973%_)))
                                                       (_%tl132971132990%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body132966132973%_))))
                                                   (let* ((_%hd132993%_
                                                           _%hd132970132988%_)
                                                          (_%tl132995%_
                                                           _%tl132971132990%_))
                                                     (_%K132969132985%_
                                                      _%tl132995%_
                                                      _%hd132993%_)))
                                                 (_%E132968132977%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp134010
                                       __tmp134009))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp134011
                                __tmp134008))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp134012
                         __tmp134007
                         _%E132941%_)))
                    (if (eq? 'splice _%$e132960%_)
                        (let* ((_%body132996133003%_ _%body132957%_)
                               (_%E132998133007%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body132996133003%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K132999133058%_
                                (lambda (_%tl133010%_ _%hd133011%_)
                                  (let* ((_%rlen133013%_
                                          (_%splice-rlen132848%_ _%tl133010%_))
                                         (_%$target133015%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd133017%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl133019%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp133021%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e133023%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd133025%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl133027%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars133029%_
                                          (_%splice-vars132849%_ _%hd133011%_))
                                         (_%lvars133031%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars133029%_)))
                                         (_%tlvars133033%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars133029%_)))
                                         (_%linit133037%_
                                          (map (lambda (_%var133035%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars133031%_)))
                                    (letrec ((_%make-loop133040%_
                                              (lambda (_%vars133044%_)
                                                (let ((__tmp134014
                                                       (cons (cons (cons _%$lp133021%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp134027
                                        (cons _%$hd133017%_ _%lvars133031%_))
                                       (__tmp134015
                                        (let ((__tmp134026
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd133017%_)))
                                              (__tmp134020
                                               (let ((__tmp134025
                                                      (cons (cons (cons _%$lp-e133023%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e132654%_
                                   _%$hd133017%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp134021
                                                      (let ((__tmp134024
                                                             (cons (cons (cons _%$lp-hd133025%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e133023%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl133027%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e133023%_))
                                             '()))
                                 '())))
                    (__tmp134022
                     (_%recur132847%_
                      _%hd133011%_
                      '()
                      _%$lp-hd133025%_
                      _%E132941%_
                      (lambda (_%hdvars133046%_)
                        (cons _%$lp133021%_
                              (cons _%$lp-tl133027%_
                                    (map (lambda (_%svar133048%_
                                                  _%lvar133049%_)
                                           (let ((__tmp134023
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar133048%_
                                                     _%hdvars133046%_
                                                     _%BUG132846%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp134023
                                              _%lvar133049%_)))
                                         _%svars133029%_
                                         _%lvars133031%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp134024 __tmp134022))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp134025
                                                  __tmp134021)))
                                              (__tmp134016
                                               (let ((__tmp134019
                                                      (map (lambda (_%lvar133051%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar133052%_)
                     (cons (cons _%tlvar133052%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar133051%_))
                                 '())))
                   _%lvars133031%_
                   _%tlvars133033%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp134017
                                                      (_%k132942%_
                                                       (let ((__tmp134018
                                                              (lambda (_%svar133054%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar133055%_
                               _%r133056%_)
                        (cons (cons _%svar133054%_ _%tlvar133055%_)
                              _%r133056%_))))
                 (declare (not safe))
                 (__foldl2
                  __tmp134018
                  _%vars133044%_
                  _%svars133029%_
                  _%tlvars133033%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp134019
                                                  __tmp134017))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp134026
                                           __tmp134020
                                           __tmp134016))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp134027
                                    __tmp134015))
                                 '()))
                     '()))
              (__tmp134013
               (cons _%$lp133021%_ (cons _%$target133015%_ _%linit133037%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp134014
                                                   __tmp134013)))))
                                      (let ((_%body133042%_
                                             (let ((__tmp134029
                                                    (cons (cons (cons _%$target133015%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl133019%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target132940%_
                                 _%rlen133013%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp134028
                                                    (_%recur132847%_
                                                     _%tl133010%_
                                                     _%vars132939%_
                                                     _%$tl133019%_
                                                     _%E132941%_
                                                     _%make-loop133040%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp134029
                                                __tmp134028))))
                                        (let ((__tmp134033
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target132940%_)))
                                              (__tmp134030
                                               (if (zero? _%rlen133013%_)
                                                   _%body133042%_
                                                   (let ((__tmp134031
                                                          (let ((__tmp134032
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target132940%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp134032 _%rlen133013%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp134031
                                                      _%body133042%_
                                                      _%E132941%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp134033
                                           __tmp134030
                                           _%E132941%_))))))))
                          (if (pair? _%body132996133003%_)
                              (let ((_%hd133000133061%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body132996133003%_)))
                                    (_%tl133001133063%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body132996133003%_))))
                                (let* ((_%hd133066%_ _%hd133000133061%_)
                                       (_%tl133068%_ _%tl133001133063%_))
                                  (_%K132999133058%_
                                   _%tl133068%_
                                   _%hd133066%_)))
                              (_%E132998133007%_)))
                        (if (eq? 'null _%$e132960%_)
                            (let ((__tmp134035
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target132940%_)))
                                  (__tmp134034 (_%k132942%_ _%vars132939%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp134035
                               __tmp134034
                               _%E132941%_))
                            (if (eq? 'vector _%$e132960%_)
                                (let ((_%$e133070%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp134040
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target132940%_)))
                                        (__tmp134036
                                         (let ((__tmp134038
                                                (cons (cons (cons _%$e133070%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp134039
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e132654%_
                                    _%target132940%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp134039))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp134037
                                                (_%recur132847%_
                                                 _%body132957%_
                                                 _%vars132939%_
                                                 _%$e133070%_
                                                 _%E132941%_
                                                 _%k132942%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp134038
                                            __tmp134037))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp134040
                                     __tmp134036
                                     _%E132941%_)))
                                (if (eq? 'box _%$e132960%_)
                                    (let ((_%$e133072%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp134045
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target132940%_)))
                                            (__tmp134041
                                             (let ((__tmp134043
                                                    (cons (cons (cons _%$e133072%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp134044
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e132654%_
                                        _%target132940%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp134044))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp134042
                                                    (_%recur132847%_
                                                     _%body132957%_
                                                     _%vars132939%_
                                                     _%$e133072%_
                                                     _%E132941%_
                                                     _%k132942%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp134043
                                                __tmp134042))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp134045
                                         __tmp134041
                                         _%E132941%_)))
                                    (if (eq? 'datum _%$e132960%_)
                                        (let ((_%$e133074%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp134051
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target132940%_)))
                                                (__tmp134046
                                                 (let ((__tmp134050
                                                        (cons (cons (cons _%$e133074%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target132940%_))
                                  '()))
                      '()))
               (__tmp134047
                (let ((__tmp134049
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e133074%_ _%body132957%_)))
                      (__tmp134048 (_%k132942%_ _%vars132939%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp134049 __tmp134048 _%E132941%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp134050
                                                    __tmp134047))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp134051
                                             __tmp134046
                                             _%E132941%_)))
                                        (_%BUG132846%_
                                         _%e132938%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (pair? _%e132943132950%_)
                                      (let ((_%hd132947133079%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e132943132950%_)))
                                            (_%tl132948133081%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e132943132950%_))))
                                        (let* ((_%tag133084%_
                                                _%hd132947133079%_)
                                               (_%body133086%_
                                                _%tl132948133081%_))
                                          (_%K132946133076%_
                                           _%body133086%_
                                           _%tag133084%_)))
                                      (_%E132945132954%_)))))
                             (_%splice-rlen132848%_
                              (lambda (_%e132900%_)
                                (let _%lp132902%_ ((_%e132904%_ _%e132900%_)
                                                   (_%n132905%_ '0))
                                  (let* ((_%e132906132913%_ _%e132904%_)
                                         (_%E132908132917%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e132906132913%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K132909132926%_
                                          (lambda (_%body132920%_
                                                   _%tag132921%_)
                                            (let ((_%$e132923%_ _%tag132921%_))
                                              (if (eq? 'splice _%$e132923%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx132652%_
                                                     _%where132839%_))
                                                  (if (eq? 'cons _%$e132923%_)
                                                      (_%lp132902%_
                                                       (cdr _%body132920%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n132905%_
                                                                '1)))
                                                      _%n132905%_))))))
                                    (if (pair? _%e132906132913%_)
                                        (let ((_%hd132910132929%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132906132913%_)))
                                              (_%tl132911132931%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132906132913%_))))
                                          (let* ((_%tag132934%_
                                                  _%hd132910132929%_)
                                                 (_%body132936%_
                                                  _%tl132911132931%_))
                                            (_%K132909132926%_
                                             _%body132936%_
                                             _%tag132934%_)))
                                        (_%E132908132917%_))))))
                             (_%splice-vars132849%_
                              (lambda (_%e132856%_)
                                (let _%recur132858%_ ((_%e132860%_ _%e132856%_)
                                                      (_%vars132861%_ '()))
                                  (let* ((_%e132862132869%_ _%e132860%_)
                                         (_%E132864132873%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e132862132869%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K132865132888%_
                                          (lambda (_%body132876%_
                                                   _%tag132877%_)
                                            (let ((_%$e132879%_ _%tag132877%_))
                                              (if (eq? 'var _%$e132879%_)
                                                  (cons _%body132876%_
                                                        _%vars132861%_)
                                                  (if (or (eq? 'cons
                                                               _%$e132879%_)
                                                          (eq? 'splice
                                                               _%$e132879%_))
                                                      (_%recur132858%_
                                                       (cdr _%body132876%_)
                                                       (_%recur132858%_
                                                        (car _%body132876%_)
                                                        _%vars132861%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e132879%_)
                      (eq? 'box _%$e132879%_))
                  (_%recur132858%_ _%body132876%_ _%vars132861%_)
                  _%vars132861%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%e132862132869%_)
                                        (let ((_%hd132866132891%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132862132869%_)))
                                              (_%tl132867132893%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132862132869%_))))
                                          (let* ((_%tag132896%_
                                                  _%hd132866132891%_)
                                                 (_%body132898%_
                                                  _%tl132867132893%_))
                                            (_%K132865132888%_
                                             _%body132898%_
                                             _%tag132896%_)))
                                        (_%E132864132873%_))))))
                             (_%make-body132850%_
                              (lambda (_%vars132852%_)
                                (cons _%K132843%_
                                      (map (lambda (_%mvar132854%_)
                                             (let ((__tmp134052
                                                    (car _%mvar132854%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp134052
                                                _%vars132852%_
                                                _%BUG132846%_)))
                                           _%mvars132842%_)))))
                      (_%recur132847%_
                       _%hd132841%_
                       '()
                       _%target132840%_
                       _%E132844%_
                       _%make-body132850%_))))
                 (_%parse-clause132661%_
                  (lambda (_%hd132733%_ _%ids132734%_)
                    (let _%recur132736%_ ((_%e132738%_ _%hd132733%_)
                                          (_%vars132739%_ '())
                                          (_%depth132740%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e132738%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e132738%_))
                              (values '(any) _%vars132739%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e132738%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx132652%_
                                     _%hd132733%_))
                                  (if (let ((__tmp134053
                                             (lambda (_%id132745%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e132738%_
                                                  _%id132745%_)))))
                                        (declare (not safe))
                                        (__find __tmp134053 _%ids132734%_))
                                      (values (cons 'id _%e132738%_)
                                              _%vars132739%_)
                                      (if (let ((__tmp134054
                                                 (lambda (_%var132748%_)
                                                   (let ((__tmp134055
                                                          (car _%var132748%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e132738%_
                                                      __tmp134055)))))
                                            (declare (not safe))
                                            (__find __tmp134054
                                                    _%vars132739%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx132652%_
                                             _%e132738%_))
                                          (values (cons 'var _%e132738%_)
                                                  (cons (cons _%e132738%_
                                                              _%depth132740%_)
                                                        _%vars132739%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e132738%_))
                              (let* ((_%e132752132759%_ _%e132738%_)
                                     (_%E132754132763%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%e132752132759%_))))
                                     (_%E132753132824%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%e132752132759%_))
                                            (let ((_%e132755132767%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%e132752132759%_))))
                                              (let ((_%hd132756132770%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e132755132767%_)))
                                                    (_%tl132757132772%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e132755132767%_))))
                                                (let* ((_%hd132775%_
                                                        _%hd132756132770%_)
                                                       (_%rest132777%_
                                                        _%tl132757132772%_)
                                                       (_%make-pair132792%_
                                                        (lambda (_%tag132779%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd132780%_
                         _%tl132781%_)
                  (let* ((_%hd-depth132783%_
                          (if (eq? _%tag132779%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth132740%_ '1))
                              _%depth132740%_))
                         (_g134056_
                          (_%recur132736%_
                           _%hd132780%_
                           _%vars132739%_
                           _%hd-depth132783%_)))
                    (begin
                      (let ((_g134057_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g134056_)
                                   (##values-length _g134056_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g134057_ 2)))
                            (error "Context expects 2 values" _g134057_)))
                      (let ((_%hd132785%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g134056_ 0)))
                            (_%vars132786%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g134056_ 1))))
                        (let ((_g134058_
                               (_%recur132736%_
                                _%tl132781%_
                                _%vars132786%_
                                _%depth132740%_)))
                          (begin
                            (let ((_g134059_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g134058_)
                                         (##values-length _g134058_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g134059_ 2)))
                                  (error "Context expects 2 values"
                                         _g134059_)))
                            (let ((_%tl132788%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g134058_ 0)))
                                  (_%vars132789%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g134058_ 1))))
                              (values (cons _%tag132779%_
                                            (cons _%hd132785%_ _%tl132788%_))
                                      _%vars132789%_)))))))))
               (_%e132793132800%_ _%rest132777%_)
               (_%E132795132804%_
                (lambda ()
                  (_%make-pair132792%_ 'cons _%hd132775%_ _%rest132777%_)))
               (_%E132794132820%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%e132793132800%_))
                      (let ((_%e132796132808%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e132793132800%_))))
                        (let ((_%hd132797132811%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132796132808%_)))
                              (_%tl132798132813%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132796132808%_))))
                          (let* ((_%rest-hd132816%_ _%hd132797132811%_)
                                 (_%rest-tl132818%_ _%tl132798132813%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd132816%_))
                                (_%make-pair132792%_
                                 'splice
                                 _%hd132775%_
                                 _%rest-tl132818%_)
                                (_%make-pair132792%_
                                 'cons
                                 _%hd132775%_
                                 _%rest132777%_)))))
                      (_%E132795132804%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E132794132820%_))))
                                            (_%E132754132763%_)))))
                                (_%E132753132824%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e132738%_))
                                  (values '(null) _%vars132739%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e132738%_))
                                      (let ((_g134060_
                                             (_%recur132736%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e132738%_)))
                                              _%vars132739%_
                                              _%depth132740%_)))
                                        (begin
                                          (let ((_g134061_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g134060_)
                                                       (##values-length
                                                        _g134060_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g134061_ 2)))
                                                (error "Context expects 2 values"
                                                       _g134061_)))
                                          (let ((_%e132830%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g134060_ 0)))
                                                (_%vars132831%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g134060_
                                                    1))))
                                            (values (cons 'vector _%e132830%_)
                                                    _%vars132831%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e132738%_))
                                          (let ((_g134062_
                                                 (_%recur132736%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e132738%_)))
                                                  _%vars132739%_
                                                  _%depth132740%_)))
                                            (begin
                                              (let ((_g134063_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g134062_)
                                                           (##values-length
                                                            _g134062_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g134063_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g134063_)))
                                              (let ((_%e132834%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g134062_
                                                        0)))
                                                    (_%vars132835%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g134062_
                                                        1))))
                                                (values (cons 'box _%e132834%_)
                                                        _%vars132835%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e132738%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e132738%_)))
                                                      _%vars132739%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx132652%_
                                                 _%e132738%_))))))))))))
          (let* ((_%e132662132675%_ _%stx132652%_)
                 (_%E132664132679%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e132662132675%_))))
                 (_%E132663132729%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e132662132675%_))
                        (let ((_%e132665132683%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e132662132675%_))))
                          (let ((_%hd132666132686%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e132665132683%_)))
                                (_%tl132667132688%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e132665132683%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl132667132688%_))
                                (let ((_%e132668132691%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl132667132688%_))))
                                  (let ((_%hd132669132694%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e132668132691%_)))
                                        (_%tl132670132696%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e132668132691%_))))
                                    (let ((_%expr132699%_ _%hd132669132694%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl132670132696%_))
                                          (let ((_%e132671132701%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl132670132696%_))))
                                            (let ((_%hd132672132704%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e132671132701%_)))
                                                  (_%tl132673132706%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e132671132701%_))))
                                              (let* ((_%ids132709%_
                                                      _%hd132672132704%_)
                                                     (_%clauses132711%_
                                                      _%tl132673132706%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids132709%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses132711%_))
                                                        (let* ((_%ids132716%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids132709%_)))
                       (_%clauses132718%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses132711%_)))
                       (_%clause-ids132720%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses132718%_)))
                       (_%E132722%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target132724%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first132726%_
                        (if (null? _%clauses132718%_)
                            _%E132722%_
                            (car _%clause-ids132720%_))))
                  (let ((__tmp134065
                         (let ((__tmp134066
                                (let ((__tmp134068
                                       (let ((__tmp134070
                                              (cons (cons (cons _%E132722%_
                                                                '())
                                                          (cons (let ((__tmp134072
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target132724%_ '()))
                              (__tmp134071
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target132724%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp134072 __tmp134071))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp134069
                                              (_%generate-body132658%_
                                               (_%generate-bindings132657%_
                                                _%target132724%_
                                                _%ids132716%_
                                                _%clauses132718%_
                                                _%clause-ids132720%_
                                                _%E132722%_)
                                               (cons _%first132726%_
                                                     (cons _%expr132699%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp134070
                                          __tmp134069)))
                                      (__tmp134067
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx132652%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp134068
                                   __tmp134067))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp134066)))
                        (__tmp134064
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx132652%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp134065 __tmp134064)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx132652%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx132652%_
                                                       _%ids132709%_))))))
                                          (_%E132664132679%_)))))
                                (_%E132664132679%_))))
                        (_%E132664132679%_)))))
            (_%E132663132729%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx133377%_)
        (let* ((_%identifier=?133379%_ 'free-identifier=?)
               (_%unwrap-e133381%_ 'syntax-e)
               (_%wrap-e133383%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx133377%_
           _%identifier=?133379%_
           _%unwrap-e133381%_
           _%wrap-e133383%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx133385%_ _%identifier=?133386%_)
        (let* ((_%unwrap-e133388%_ 'syntax-e) (_%wrap-e133390%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx133385%_
           _%identifier=?133386%_
           _%unwrap-e133388%_
           _%wrap-e133390%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx133392%_ _%identifier=?133393%_ _%unwrap-e133394%_)
        (let ((_%wrap-e133396%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx133392%_
           _%identifier=?133393%_
           _%unwrap-e133394%_
           _%wrap-e133396%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g134074_
        (let ((_g134073_ (let () (declare (not safe)) (##length _g134074_))))
          (cond ((let () (declare (not safe)) (##fx= _g134073_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g134074_))
                ((let () (declare (not safe)) (##fx= _g134073_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g134074_))
                ((let () (declare (not safe)) (##fx= _g134073_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g134074_))
                ((let () (declare (not safe)) (##fx= _g134073_ 4))
                 (apply gx#macro-expand-syntax-case__% _g134074_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g134074_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx132649%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx132649%_))
            (let ((__tmp134075
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx132649%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp134075 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd132607%_ . _%rest132608%_)
        (let ((_%len132610%_ (length _%hd132607%_)))
          (let _%lp132612%_ ((_%rest132614%_ _%rest132608%_))
            (let* ((_%rest132615132623%_ _%rest132614%_)
                   (_%else132617132631%_ (lambda () '#!void))
                   (_%K132619132637%_
                    (lambda (_%rest132634%_ _%hd132635%_)
                      (if (let ((__tmp134076 (length _%hd132635%_)))
                            (declare (not safe))
                            (##fx= _%len132610%_ __tmp134076))
                          (_%lp132612%_ _%rest132634%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd132635%_))))))
              (if (pair? _%rest132615132623%_)
                  (let ((_%hd132620132640%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest132615132623%_)))
                        (_%tl132621132642%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest132615132623%_))))
                    (let* ((_%hd132645%_ _%hd132620132640%_)
                           (_%rest132647%_ _%tl132621132642%_))
                      (_%K132619132637%_ _%rest132647%_ _%hd132645%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx132562%_ _%n132563%_)
        (let _%lp132565%_ ((_%rest132567%_ _%stx132562%_) (_%r132568%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest132567%_))
              (let* ((_%g132569132576%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest132567%_)))
                     (_%E132571132580%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g132569132576%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K132572132586%_
                      (lambda (_%rest132583%_ _%hd132584%_)
                        (_%lp132565%_
                         _%rest132583%_
                         (cons _%hd132584%_ _%r132568%_)))))
                (if (pair? _%g132569132576%_)
                    (let ((_%hd132573132589%_
                           (let ()
                             (declare (not safe))
                             (##car _%g132569132576%_)))
                          (_%tl132574132591%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g132569132576%_))))
                      (let* ((_%hd132594%_ _%hd132573132589%_)
                             (_%rest132596%_ _%tl132574132591%_))
                        (_%K132572132586%_ _%rest132596%_ _%hd132594%_)))
                    (_%E132571132580%_)))
              (let _%lp132598%_ ((_%n132600%_ _%n132563%_)
                                 (_%l132601%_ _%r132568%_)
                                 (_%r132602%_ _%rest132567%_))
                (if (null? _%l132601%_)
                    (values _%l132601%_ _%r132602%_)
                    (if (fxpositive? _%n132600%_)
                        (_%lp132598%_
                         (let () (declare (not safe)) (##fx- _%n132600%_ '1))
                         (cdr _%l132601%_)
                         (cons (car _%l132601%_) _%r132602%_))
                        (values (reverse _%l132601%_) _%r132602%_))))))))))
