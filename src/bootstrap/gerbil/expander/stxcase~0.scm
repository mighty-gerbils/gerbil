(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1742222168)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp134146 (list gx#expander::t))
            (__tmp134145 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp134146
         '(id depth)
         __tmp134145
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args134142%_
        (apply make-instance gx#syntax-pattern::t _%$args134142%_)))
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
      (lambda (_%self132595134126%_ _%stx134128%_)
        (let* ((_%self134130%_ _%self132595134126%_)
               (_%self134132%_ _%self134130%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx134128%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx133593%_)
        (letrec ((_%generate133595%_
                  (lambda (_%e133835%_)
                    (letrec ((_%BUG133837%_
                              (lambda (_%q134002%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx133593%_
                                         _%e133835%_
                                         _%q134002%_))))
                             (_%local-pattern-e133838%_
                              (lambda (_%pat134000%_)
                                (let ((__tmp134147
                                       (##structure-ref
                                        _%pat134000%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp134147))))
                             (_%getvar133839%_
                              (lambda (_%q133997%_ _%vars133998%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q133997%_
                                   _%vars133998%_
                                   _%BUG133837%_))))
                             (_%getarg133840%_
                              (lambda (_%arg133963%_ _%vars133964%_)
                                (let* ((_%arg133965133972%_ _%arg133963%_)
                                       (_%E133967133976%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg133965133972%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K133968133985%_
                                        (lambda (_%e133979%_ _%tag133980%_)
                                          (let ((_%$e133982%_ _%tag133980%_))
                                            (if (eq? 'ref _%$e133982%_)
                                                (_%getvar133839%_
                                                 _%e133979%_
                                                 _%vars133964%_)
                                                (if (eq? 'pattern _%$e133982%_)
                                                    (_%local-pattern-e133838%_
                                                     _%e133979%_)
                                                    (_%BUG133837%_
                                                     _%arg133963%_)))))))
                                  (if (pair? _%arg133965133972%_)
                                      (let ((_%hd133969133988%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg133965133972%_)))
                                            (_%tl133970133990%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg133965133972%_))))
                                        (let* ((_%tag133993%_
                                                _%hd133969133988%_)
                                               (_%e133995%_
                                                _%tl133970133990%_))
                                          (_%K133968133985%_
                                           _%e133995%_
                                           _%tag133993%_)))
                                      (_%E133967133976%_))))))
                      (let _%recur133842%_ ((_%e133844%_ _%e133835%_)
                                            (_%vars133845%_ '()))
                        (let* ((_%e133846133853%_ _%e133844%_)
                               (_%E133848133857%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e133846133853%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K133849133951%_
                                (lambda (_%body133860%_ _%tag133861%_)
                                  (let ((_%$e133863%_ _%tag133861%_))
                                    (if (eq? 'datum _%$e133863%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body133860%_))
                                        (if (eq? 'term _%$e133863%_)
                                            (let ((_%id133866%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body133860%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id133866%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks133869%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id133866%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks133869%_)
                                                        (let ((__tmp134148
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body133860%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp134148))
                (let ((__tmp134150
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body133860%_)))
                      (__tmp134149
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body133860%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp134150
                   __tmp134149
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id133866%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body133860%_))
                                                      (_%BUG133837%_
                                                       _%e133844%_))))
                                            (if (eq? 'pattern _%$e133863%_)
                                                (_%local-pattern-e133838%_
                                                 _%body133860%_)
                                                (if (eq? 'ref _%$e133863%_)
                                                    (_%getvar133839%_
                                                     _%body133860%_
                                                     _%vars133845%_)
                                                    (if (eq? 'cons
                                                             _%$e133863%_)
                                                        (let ((__tmp134152
                                                               (_%recur133842%_
                                                                (car _%body133860%_)
                                                                _%vars133845%_))
                                                              (__tmp134151
                                                               (_%recur133842%_
                                                                (cdr _%body133860%_)
                                                                _%vars133845%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp134152
                                                           __tmp134151))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e133863%_)
                    (let ((__tmp134153
                           (_%recur133842%_ _%body133860%_ _%vars133845%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp134153))
                    (if (eq? 'box _%$e133863%_)
                        (let ((__tmp134154
                               (_%recur133842%_
                                _%body133860%_
                                _%vars133845%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp134154))
                        (if (eq? 'splice _%$e133863%_)
                            (let* ((_%body133872133883%_ _%body133860%_)
                                   (_%E133874133887%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body133872133883%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K133875133925%_
                                    (lambda (_%args133890%_
                                             _%iv133891%_
                                             _%hd133892%_
                                             _%depth133893%_)
                                      (let* ((_%targets133899%_
                                              (map (lambda (_%g133894133896%_)
                                                     (_%getarg133840%_
                                                      _%g133894133896%_
                                                      _%vars133845%_))
                                                   _%args133890%_))
                                             (_%fold-in133901%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args133890%_)))
                                             (_%fold-out133903%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args133905%_
                                              (let ((__tmp134155
                                                     (cons _%fold-out133903%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp134155
                                                 _%fold-in133901%_)))
                                             (_%lambda-body133922%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth133893%_ '1))
                                                  (let ((_%r-args133913%_
                                                         (map (lambda (_%arg133907%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg133907%_)))
                      _%args133890%_))
                (_%r-vars133914%_
                 (let ((__tmp134156
                        (lambda (_%arg133909%_ _%var133910%_ _%r133911%_)
                          (cons (cons (cdr _%arg133909%_) _%var133910%_)
                                _%r133911%_))))
                   (declare (not safe))
                   (__foldr2
                    __tmp134156
                    _%vars133845%_
                    _%args133890%_
                    _%fold-in133901%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur133842%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth133893%_ '1))
                         (cons _%hd133892%_
                               (cons (cons 'var _%fold-out133903%_)
                                     _%r-args133913%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars133914%_))
                                                  (let* ((_%hd-vars133920%_
                                                          (let ((__tmp134157
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg133916%_ _%var133917%_ _%r133918%_)
                           (cons (cons (cdr _%arg133916%_) _%var133917%_)
                                 _%r133918%_))))
                    (declare (not safe))
                    (__foldr2
                     __tmp134157
                     _%vars133845%_
                     _%args133890%_
                     _%fold-in133901%_)))
                 (__tmp134158
                  (_%recur133842%_ _%hd133892%_ _%hd-vars133920%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp134158
                                                     _%fold-out133903%_)))))
                                        (let ((__tmp134162
                                               (if (let ((__tmp134163
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets133899%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp134163 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets133899%_))
                                                   '#!void))
                                              (__tmp134159
                                               (let ((__tmp134161
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args133905%_
                                                         _%lambda-body133922%_)))
                                                     (__tmp134160
                                                      (_%recur133842%_
                                                       _%iv133891%_
                                                       _%vars133845%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp134161
                                                  __tmp134160
                                                  _%targets133899%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp134162
                                           __tmp134159))))))
                              (if (pair? _%body133872133883%_)
                                  (let ((_%hd133876133928%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body133872133883%_)))
                                        (_%tl133877133930%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body133872133883%_))))
                                    (let ((_%depth133933%_ _%hd133876133928%_))
                                      (if (pair? _%tl133877133930%_)
                                          (let ((_%hd133878133935%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl133877133930%_)))
                                                (_%tl133879133937%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl133877133930%_))))
                                            (let ((_%hd133940%_
                                                   _%hd133878133935%_))
                                              (if (pair? _%tl133879133937%_)
                                                  (let ((_%hd133880133942%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl133879133937%_)))
                                                        (_%tl133881133944%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl133879133937%_))))
                                                    (let* ((_%iv133947%_
                                                            _%hd133880133942%_)
                                                           (_%args133949%_
                                                            _%tl133881133944%_))
                                                      (_%K133875133925%_
                                                       _%args133949%_
                                                       _%iv133947%_
                                                       _%hd133940%_
                                                       _%depth133933%_)))
                                                  (_%E133874133887%_))))
                                          (_%E133874133887%_))))
                                  (_%E133874133887%_)))
                            (if (eq? 'var _%$e133863%_)
                                _%body133860%_
                                (_%BUG133837%_ _%e133844%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (pair? _%e133846133853%_)
                              (let ((_%hd133850133954%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e133846133853%_)))
                                    (_%tl133851133956%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e133846133853%_))))
                                (let* ((_%tag133959%_ _%hd133850133954%_)
                                       (_%body133961%_ _%tl133851133956%_))
                                  (_%K133849133951%_
                                   _%body133961%_
                                   _%tag133959%_)))
                              (_%E133848133857%_)))))))
                 (_%parse133596%_
                  (lambda (_%e133637%_)
                    (letrec ((_%make-cons133639%_
                              (lambda (_%hd133827%_ _%tl133828%_)
                                (let ((_g134164_ _%hd133827%_)
                                      (_g134166_ _%tl133828%_))
                                  (begin
                                    (let ((_g134165_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g134164_)
                                                 (##values-length _g134164_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g134165_ 2)))
                                          (error "Context expects 2 values"
                                                 _g134165_)))
                                    (let ((_g134167_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g134166_)
                                                 (##values-length _g134166_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g134167_ 2)))
                                          (error "Context expects 2 values"
                                                 _g134167_)))
                                    (let ((_%hd-e133830%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g134164_ 0)))
                                          (_%hd-vars133831%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g134164_ 1))))
                                      (let ((_%tl-e133832%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g134166_ 0)))
                                            (_%tl-vars133833%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g134166_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e133830%_
                                                            _%tl-e133832%_))
                                                (append _%hd-vars133831%_
                                                        _%tl-vars133833%_))))))))
                             (_%make-splice133640%_
                              (lambda (_%where133763%_
                                       _%depth133764%_
                                       _%hd133765%_
                                       _%tl133766%_)
                                (let ((_g134168_ _%hd133765%_)
                                      (_g134170_ _%tl133766%_))
                                  (begin
                                    (let ((_g134169_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g134168_)
                                                 (##values-length _g134168_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g134169_ 2)))
                                          (error "Context expects 2 values"
                                                 _g134169_)))
                                    (let ((_g134171_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g134170_)
                                                 (##values-length _g134170_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g134171_ 2)))
                                          (error "Context expects 2 values"
                                                 _g134171_)))
                                    (let ((_%hd-e133768%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g134168_ 0)))
                                          (_%hd-vars133769%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g134168_ 1))))
                                      (let ((_%tl-e133770%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g134170_ 0)))
                                            (_%tl-vars133771%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g134170_ 1))))
                                        (let _%lp133773%_ ((_%rest133775%_
                                                            _%hd-vars133769%_)
                                                           (_%targets133776%_
                                                            '())
                                                           (_%vars133777%_
                                                            _%tl-vars133771%_))
                                          (let* ((_%rest133778133788%_
                                                  _%rest133775%_)
                                                 (_%else133780133796%_
                                                  (lambda ()
                                                    (if (null? _%targets133776%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx133593%_
                                                           _%where133763%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth133764%_
                                    (cons _%hd-e133768%_
                                          (cons _%tl-e133770%_
                                                _%targets133776%_))))
                        _%vars133777%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K133782133808%_
                                                  (lambda (_%rest133799%_
                                                           _%hd-pat133800%_
                                                           _%hd-depth*133801%_)
                                                    (let ((_%hd-depth133803%_
                                                           (fx- _%hd-depth*133801%_
                                                                _%depth133764%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth133803%_))
                                                          (_%lp133773%_
                                                           _%rest133799%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat133800%_)
                         _%targets133776%_)
                   (cons (cons _%hd-depth133803%_ _%hd-pat133800%_)
                         _%vars133777%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth133803%_))
                      (_%lp133773%_
                       _%rest133799%_
                       (cons (cons 'pattern _%hd-pat133800%_)
                             _%targets133776%_)
                       _%vars133777%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx133593%_
                         _%where133763%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%rest133778133788%_)
                                                (let ((_%hd133783133811%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest133778133788%_)))
                                                      (_%tl133784133813%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest133778133788%_))))
                                                  (if (pair? _%hd133783133811%_)
                                                      (let ((_%hd133785133816%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd133783133811%_)))
                    (_%tl133786133818%_
                     (let () (declare (not safe)) (##cdr _%hd133783133811%_))))
                (let* ((_%hd-depth*133821%_ _%hd133785133816%_)
                       (_%hd-pat133823%_ _%tl133786133818%_)
                       (_%rest133825%_ _%tl133784133813%_))
                  (_%K133782133808%_
                   _%rest133825%_
                   _%hd-pat133823%_
                   _%hd-depth*133821%_)))
              (_%else133780133796%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else133780133796%_))))))))))
                             (_%recur133641%_
                              (lambda (_%e133646%_ _%is-e?133647%_)
                                (if (_%is-e?133647%_ _%e133646%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx133593%_))
                                    (if (gx#syntax-local-pattern? _%e133646%_)
                                        (let* ((_%pat133651%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e133646%_)))
                                               (_%depth133653%_
                                                (##structure-ref
                                                 _%pat133651%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth133653%_)
                                              (values (cons 'ref _%pat133651%_)
                                                      (cons (cons _%depth133653%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat133651%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat133651%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e133646%_))
                                            (values (cons 'term _%e133646%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e133646%_))
                                                (let* ((_%e133657133664%_
                                                        _%e133646%_)
                                                       (_%E133659133668%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e133657133664%_))))
                                                       (_%E133658133750%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%e133657133664%_))
                      (let ((_%e133660133672%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e133657133664%_))))
                        (let ((_%hd133661133675%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e133660133672%_)))
                              (_%tl133662133677%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e133660133672%_))))
                          (let* ((_%hd133680%_ _%hd133661133675%_)
                                 (_%rest133682%_ _%tl133662133677%_))
                            (if (_%is-e?133647%_ _%hd133680%_)
                                (let* ((_%e133683133690%_ _%rest133682%_)
                                       (_%E133685133694%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx133593%_
                                             _%e133646%_))))
                                       (_%E133684133708%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e133683133690%_))
                                              (let ((_%e133686133698%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e133683133690%_))))
                                                (let ((_%hd133687133701%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e133686133698%_)))
                                                      (_%tl133688133703%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e133686133698%_))))
                                                  (let ((_%rest133706%_
                                                         _%hd133687133701%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl133688133703%_))
                                                        (_%recur133641%_
                                                         _%rest133706%_
                                                         false)
                                                        (_%E133685133694%_)))))
                                              (_%E133685133694%_)))))
                                  (_%E133684133708%_))
                                (let _%lp133712%_ ((_%rest133714%_
                                                    _%rest133682%_)
                                                   (_%depth133715%_ '0))
                                  (let* ((_%e133716133723%_ _%rest133714%_)
                                         (_%E133718133727%_
                                          (lambda ()
                                            (if (fxpositive? _%depth133715%_)
                                                (_%make-splice133640%_
                                                 _%e133646%_
                                                 _%depth133715%_
                                                 (_%recur133641%_
                                                  _%hd133680%_
                                                  _%is-e?133647%_)
                                                 (_%recur133641%_
                                                  _%rest133714%_
                                                  _%is-e?133647%_))
                                                (_%make-cons133639%_
                                                 (_%recur133641%_
                                                  _%hd133680%_
                                                  _%is-e?133647%_)
                                                 (_%recur133641%_
                                                  _%rest133714%_
                                                  _%is-e?133647%_)))))
                                         (_%E133717133746%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%e133716133723%_))
                                                (let ((_%e133719133731%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%e133716133723%_))))
                                                  (let ((_%hd133720133734%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e133719133731%_)))
                                                        (_%tl133721133736%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e133719133731%_))))
                                                    (let* ((_%rest-hd133739%_
                                                            _%hd133720133734%_)
                                                           (_%rest-tl133741%_
                                                            _%tl133721133736%_))
                                                      (if (_%is-e?133647%_
                                                           _%rest-hd133739%_)
                                                          (_%lp133712%_
                                                           _%rest-tl133741%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth133715%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth133715%_)
                      (_%make-splice133640%_
                       _%e133646%_
                       _%depth133715%_
                       (_%recur133641%_ _%hd133680%_ _%is-e?133647%_)
                       (_%recur133641%_ _%rest133714%_ _%is-e?133647%_))
                      (_%make-cons133639%_
                       (_%recur133641%_ _%hd133680%_ _%is-e?133647%_)
                       (_%recur133641%_ _%rest133714%_ _%is-e?133647%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E133718133727%_)))))
                                    (_%E133717133746%_)))))))
                      (_%E133659133668%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E133658133750%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e133646%_))
                                                    (let ((_g134172_
                                                           (_%recur133641%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e133646%_)))
                    _%is-e?133647%_)))
              (begin
                (let ((_g134173_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g134172_)
                             (##values-length _g134172_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g134173_ 2)))
                      (error "Context expects 2 values" _g134173_)))
                (let ((_%e133755%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g134172_ 0)))
                      (_%vars133756%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g134172_ 1))))
                  (values (cons 'vector _%e133755%_) _%vars133756%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e133646%_))
                                                        (let ((_g134174_
                                                               (_%recur133641%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e133646%_)))
                        _%is-e?133647%_)))
                  (begin
                    (let ((_g134175_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g134174_)
                                 (##values-length _g134174_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g134175_ 2)))
                          (error "Context expects 2 values" _g134175_)))
                    (let ((_%e133759%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g134174_ 0)))
                          (_%vars133760%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g134174_ 1))))
                      (values (cons 'box _%e133759%_) _%vars133760%_))))
                (values (cons 'datum _%e133646%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g134176_
                             (_%recur133641%_ _%e133637%_ gx#ellipsis?)))
                        (begin
                          (let ((_g134177_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g134176_)
                                       (##values-length _g134176_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g134177_ 2)))
                                (error "Context expects 2 values" _g134177_)))
                          (let ((_%tree133643%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g134176_ 0)))
                                (_%vars133644%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g134176_ 1))))
                            (if (null? _%vars133644%_)
                                _%tree133643%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx133593%_
                                   _%vars133644%_))))))))))
          (let* ((_%e133597133607%_ _%stx133593%_)
                 (_%E133599133611%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx133593%_))))
                 (_%E133598133633%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e133597133607%_))
                        (let ((_%e133600133615%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e133597133607%_))))
                          (let ((_%hd133601133618%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e133600133615%_)))
                                (_%tl133602133620%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e133600133615%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl133602133620%_))
                                (let ((_%e133603133623%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl133602133620%_))))
                                  (let ((_%hd133604133626%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e133603133623%_)))
                                        (_%tl133605133628%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e133603133623%_))))
                                    (let ((_%form133631%_ _%hd133604133626%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl133605133628%_))
                                          (let ((__tmp134179
                                                 (_%generate133595%_
                                                  (_%parse133596%_
                                                   _%form133631%_)))
                                                (__tmp134178
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx133593%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp134179
                                             __tmp134178))
                                          (_%E133599133611%_)))))
                                (_%E133599133611%_))))
                        (_%E133599133611%_)))))
            (_%E133598133633%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx132842%_
               _%identifier=?132843%_
               _%unwrap-e132844%_
               _%wrap-e132845%_)
        (letrec ((_%generate-bindings132847%_
                  (lambda (_%target133457%_
                           _%ids133458%_
                           _%clauses133459%_
                           _%clause-ids133460%_
                           _%E133461%_)
                    (letrec ((_%generate1133463%_
                              (lambda (_%clause133560%_
                                       _%clause-id133561%_
                                       _%E133562%_)
                                (cons (cons _%clause-id133561%_ '())
                                      (cons (let ((__tmp134181
                                                   (cons _%target133457%_ '()))
                                                  (__tmp134180
                                                   (_%generate-clause132849%_
                                                    _%target133457%_
                                                    _%ids133458%_
                                                    _%clause133560%_
                                                    _%E133562%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp134181
                                               __tmp134180))
                                            '())))))
                      (let _%lp133465%_ ((_%rest133467%_ _%clauses133459%_)
                                         (_%rest-ids133468%_
                                          _%clause-ids133460%_)
                                         (_%bindings133469%_ '()))
                        (let* ((_%rest133470133478%_ _%rest133467%_)
                               (_%else133472133486%_
                                (lambda () _%bindings133469%_))
                               (_%K133474133548%_
                                (lambda (_%rest133489%_ _%clause133490%_)
                                  (let* ((_%rest-ids133491133498%_
                                          _%rest-ids133468%_)
                                         (_%E133493133502%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids133491133498%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K133494133536%_
                                          (lambda (_%rest-ids133505%_
                                                   _%clause-id133506%_)
                                            (let* ((_%rest-ids133507133515%_
                                                    _%rest-ids133505%_)
                                                   (_%else133509133523%_
                                                    (lambda ()
                                                      (cons (_%generate1133463%_
                                                             _%clause133490%_
                                                             _%clause-id133506%_
                                                             _%E133461%_)
                                                            _%bindings133469%_)))
                                                   (_%K133511133528%_
                                                    (lambda (_%next-clause-id133526%_)
                                                      (_%lp133465%_
                                                       _%rest133489%_
                                                       _%rest-ids133505%_
                                                       (cons (_%generate1133463%_
                                                              _%clause133490%_
                                                              _%clause-id133506%_
                                                              _%next-clause-id133526%_)
                                                             _%bindings133469%_)))))
                                              (if (pair? _%rest-ids133507133515%_)
                                                  (let* ((_%hd133512133531%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids133507133515%_)))
                                                         (_%next-clause-id133534%_
                                                          _%hd133512133531%_))
                                                    (_%K133511133528%_
                                                     _%next-clause-id133534%_))
                                                  (_%else133509133523%_))))))
                                    (if (pair? _%rest-ids133491133498%_)
                                        (let ((_%hd133495133539%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids133491133498%_)))
                                              (_%tl133496133541%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids133491133498%_))))
                                          (let* ((_%clause-id133544%_
                                                  _%hd133495133539%_)
                                                 (_%rest-ids133546%_
                                                  _%tl133496133541%_))
                                            (_%K133494133536%_
                                             _%rest-ids133546%_
                                             _%clause-id133544%_)))
                                        (_%E133493133502%_))))))
                          (if (pair? _%rest133470133478%_)
                              (let ((_%hd133475133551%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest133470133478%_)))
                                    (_%tl133476133553%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest133470133478%_))))
                                (let* ((_%clause133556%_ _%hd133475133551%_)
                                       (_%rest133558%_ _%tl133476133553%_))
                                  (_%K133474133548%_
                                   _%rest133558%_
                                   _%clause133556%_)))
                              (_%else133472133486%_)))))))
                 (_%generate-body132848%_
                  (lambda (_%bindings133417%_ _%body133418%_)
                    (let _%recur133420%_ ((_%rest133422%_ _%bindings133417%_))
                      (let* ((_%rest133423133431%_ _%rest133422%_)
                             (_%else133425133439%_ (lambda () _%body133418%_))
                             (_%K133427133445%_
                              (lambda (_%rest133442%_ _%hd133443%_)
                                (let ((__tmp134183 (cons _%hd133443%_ '()))
                                      (__tmp134182
                                       (_%recur133420%_ _%rest133442%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp134183
                                   __tmp134182)))))
                        (if (pair? _%rest133423133431%_)
                            (let ((_%hd133428133448%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest133423133431%_)))
                                  (_%tl133429133450%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest133423133431%_))))
                              (let* ((_%hd133453%_ _%hd133428133448%_)
                                     (_%rest133455%_ _%tl133429133450%_))
                                (_%K133427133445%_
                                 _%rest133455%_
                                 _%hd133453%_)))
                            (_%else133425133439%_))))))
                 (_%generate-clause132849%_
                  (lambda (_%target133280%_
                           _%ids133281%_
                           _%clause133282%_
                           _%E133283%_)
                    (letrec ((_%generate1133285%_
                              (lambda (_%hd133372%_
                                       _%fender133373%_
                                       _%body133374%_)
                                (let ((_g134184_
                                       (_%parse-clause132851%_
                                        _%hd133372%_
                                        _%ids133281%_)))
                                  (begin
                                    (let ((_g134185_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g134184_)
                                                 (##values-length _g134184_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g134185_ 2)))
                                          (error "Context expects 2 values"
                                                 _g134185_)))
                                    (let ((_%e133376%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g134184_ 0)))
                                          (_%mvars133377%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g134184_ 1))))
                                      (let* ((_%pvars133379%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars133377%_))))
                                             (_%E133381%_
                                              (cons _%E133283%_
                                                    (cons _%target133280%_
                                                          '())))
                                             (_%K133414%_
                                              (let ((__tmp134186
                                                     (let ((__tmp134188
                                                            (map (lambda (_%mvar133383%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar133384%_)
                           (let* ((_%mvar133385133392%_ _%mvar133383%_)
                                  (_%E133387133396%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar133385133392%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K133388133402%_
                                   (lambda (_%depth133399%_ _%id133400%_)
                                     (cons _%id133400%_
                                           (cons (let ((__tmp134190
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id133400%_)))
                                                       (__tmp134189
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar133384%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp134190
                                                    __tmp134189
                                                    _%depth133399%_))
                                                 '())))))
                             (if (pair? _%mvar133385133392%_)
                                 (let ((_%hd133389133405%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar133385133392%_)))
                                       (_%tl133390133407%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar133385133392%_))))
                                   (let* ((_%id133410%_ _%hd133389133405%_)
                                          (_%depth133412%_ _%tl133390133407%_))
                                     (_%K133388133402%_
                                      _%depth133412%_
                                      _%id133410%_)))
                                 (_%E133387133396%_))))
                         _%mvars133377%_
                         _%pvars133379%_))
                   (__tmp134187
                    (if (eq? _%fender133373%_ '#t)
                        _%body133374%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender133373%_
                           _%body133374%_
                           _%E133381%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp134188 __tmp134187))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars133379%_
                                                 __tmp134186))))
                                        (_%generate-match132850%_
                                         _%hd133372%_
                                         _%target133280%_
                                         _%e133376%_
                                         _%mvars133377%_
                                         _%K133414%_
                                         _%E133381%_))))))))
                      (let* ((_%e133286133306%_ _%clause133282%_)
                             (_%E133295133310%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e133286133306%_))))
                             (_%E133288133344%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e133286133306%_))
                                    (let ((_%e133296133314%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e133286133306%_))))
                                      (let ((_%hd133297133317%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e133296133314%_)))
                                            (_%tl133298133319%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e133296133314%_))))
                                        (let ((_%hd133322%_
                                               _%hd133297133317%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl133298133319%_))
                                              (let ((_%e133299133324%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl133298133319%_))))
                                                (let ((_%hd133300133327%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e133299133324%_)))
                                                      (_%tl133301133329%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e133299133324%_))))
                                                  (let ((_%fender133332%_
                                                         _%hd133300133327%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl133301133329%_))
                                                        (let ((_%e133302133334%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl133301133329%_))))
                  (let ((_%hd133303133337%_
                         (let ()
                           (declare (not safe))
                           (##car _%e133302133334%_)))
                        (_%tl133304133339%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e133302133334%_))))
                    (let ((_%body133342%_ _%hd133303133337%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl133304133339%_))
                          (_%generate1133285%_
                           _%hd133322%_
                           _%fender133332%_
                           _%body133342%_)
                          (_%E133295133310%_)))))
                (_%E133295133310%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E133295133310%_)))))
                                    (_%E133295133310%_))))
                             (_%E133287133368%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e133286133306%_))
                                    (let ((_%e133289133348%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e133286133306%_))))
                                      (let ((_%hd133290133351%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e133289133348%_)))
                                            (_%tl133291133353%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e133289133348%_))))
                                        (let ((_%hd133356%_
                                               _%hd133290133351%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl133291133353%_))
                                              (let ((_%e133292133358%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl133291133353%_))))
                                                (let ((_%hd133293133361%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e133292133358%_)))
                                                      (_%tl133294133363%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e133292133358%_))))
                                                  (let ((_%body133366%_
                                                         _%hd133293133361%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl133294133363%_))
                                                        (_%generate1133285%_
                                                         _%hd133356%_
                                                         '#t
                                                         _%body133366%_)
                                                        (_%E133288133344%_)))))
                                              (_%E133288133344%_)))))
                                    (_%E133288133344%_)))))
                        (_%E133287133368%_)))))
                 (_%generate-match132850%_
                  (lambda (_%where133029%_
                           _%target133030%_
                           _%hd133031%_
                           _%mvars133032%_
                           _%K133033%_
                           _%E133034%_)
                    (letrec ((_%BUG133036%_
                              (lambda (_%q133278%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx132842%_
                                         _%hd133031%_
                                         _%q133278%_))))
                             (_%recur133037%_
                              (lambda (_%e133128%_
                                       _%vars133129%_
                                       _%target133130%_
                                       _%E133131%_
                                       _%k133132%_)
                                (let* ((_%e133133133140%_ _%e133128%_)
                                       (_%E133135133144%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e133133133140%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K133136133266%_
                                        (lambda (_%body133147%_ _%tag133148%_)
                                          (let ((_%$e133150%_ _%tag133148%_))
                                            (if (eq? 'any _%$e133150%_)
                                                (_%k133132%_ _%vars133129%_)
                                                (if (eq? 'id _%$e133150%_)
                                                    (let ((__tmp134195
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target133130%_)))
                                                          (__tmp134191
                                                           (let ((__tmp134193
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp134194
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e132845%_
                                    _%body133147%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?132843%_
                             __tmp134194
                             _%target133130%_)))
                         (__tmp134192 (_%k133132%_ _%vars133129%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp134193 __tmp134192 _%E133131%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp134195 __tmp134191 _%E133131%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e133150%_)
                                                        (_%k133132%_
                                                         (cons (cons _%body133147%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target133130%_)
                       _%vars133129%_))
                (if (eq? 'cons _%$e133150%_)
                    (let ((_%$e133153%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd133154%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl133155%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp134201
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target133130%_)))
                            (__tmp134196
                             (let ((__tmp134200
                                    (cons (cons (cons _%$e133153%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e132844%_
                                                         _%target133130%_))
                                                      '()))
                                          '()))
                                   (__tmp134197
                                    (let ((__tmp134199
                                           (cons (cons (cons _%$hd133154%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e133153%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl133155%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e133153%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp134198
                                           (let* ((_%body133156133163%_
                                                   _%body133147%_)
                                                  (_%E133158133167%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body133156133163%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K133159133175%_
                                                   (lambda (_%tl133170%_
                                                            _%hd133171%_)
                                                     (_%recur133037%_
                                                      _%hd133171%_
                                                      _%vars133129%_
                                                      _%$hd133154%_
                                                      _%E133131%_
                                                      (lambda (_%vars133173%_)
                                                        (_%recur133037%_
                                                         _%tl133170%_
                                                         _%vars133173%_
                                                         _%$tl133155%_
                                                         _%E133131%_
                                                         _%k133132%_))))))
                                             (if (pair? _%body133156133163%_)
                                                 (let ((_%hd133160133178%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body133156133163%_)))
                                                       (_%tl133161133180%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body133156133163%_))))
                                                   (let* ((_%hd133183%_
                                                           _%hd133160133178%_)
                                                          (_%tl133185%_
                                                           _%tl133161133180%_))
                                                     (_%K133159133175%_
                                                      _%tl133185%_
                                                      _%hd133183%_)))
                                                 (_%E133158133167%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp134199
                                       __tmp134198))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp134200
                                __tmp134197))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp134201
                         __tmp134196
                         _%E133131%_)))
                    (if (eq? 'splice _%$e133150%_)
                        (let* ((_%body133186133193%_ _%body133147%_)
                               (_%E133188133197%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body133186133193%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K133189133248%_
                                (lambda (_%tl133200%_ _%hd133201%_)
                                  (let* ((_%rlen133203%_
                                          (_%splice-rlen133038%_ _%tl133200%_))
                                         (_%$target133205%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd133207%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl133209%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp133211%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e133213%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd133215%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl133217%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars133219%_
                                          (_%splice-vars133039%_ _%hd133201%_))
                                         (_%lvars133221%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars133219%_)))
                                         (_%tlvars133223%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars133219%_)))
                                         (_%linit133227%_
                                          (map (lambda (_%var133225%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars133221%_)))
                                    (letrec ((_%make-loop133230%_
                                              (lambda (_%vars133234%_)
                                                (let ((__tmp134203
                                                       (cons (cons (cons _%$lp133211%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp134216
                                        (cons _%$hd133207%_ _%lvars133221%_))
                                       (__tmp134204
                                        (let ((__tmp134215
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd133207%_)))
                                              (__tmp134209
                                               (let ((__tmp134214
                                                      (cons (cons (cons _%$lp-e133213%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e132844%_
                                   _%$hd133207%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp134210
                                                      (let ((__tmp134213
                                                             (cons (cons (cons _%$lp-hd133215%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e133213%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl133217%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e133213%_))
                                             '()))
                                 '())))
                    (__tmp134211
                     (_%recur133037%_
                      _%hd133201%_
                      '()
                      _%$lp-hd133215%_
                      _%E133131%_
                      (lambda (_%hdvars133236%_)
                        (cons _%$lp133211%_
                              (cons _%$lp-tl133217%_
                                    (map (lambda (_%svar133238%_
                                                  _%lvar133239%_)
                                           (let ((__tmp134212
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar133238%_
                                                     _%hdvars133236%_
                                                     _%BUG133036%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp134212
                                              _%lvar133239%_)))
                                         _%svars133219%_
                                         _%lvars133221%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp134213 __tmp134211))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp134214
                                                  __tmp134210)))
                                              (__tmp134205
                                               (let ((__tmp134208
                                                      (map (lambda (_%lvar133241%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar133242%_)
                     (cons (cons _%tlvar133242%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar133241%_))
                                 '())))
                   _%lvars133221%_
                   _%tlvars133223%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp134206
                                                      (_%k133132%_
                                                       (let ((__tmp134207
                                                              (lambda (_%svar133244%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar133245%_
                               _%r133246%_)
                        (cons (cons _%svar133244%_ _%tlvar133245%_)
                              _%r133246%_))))
                 (declare (not safe))
                 (__foldl2
                  __tmp134207
                  _%vars133234%_
                  _%svars133219%_
                  _%tlvars133223%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp134208
                                                  __tmp134206))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp134215
                                           __tmp134209
                                           __tmp134205))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp134216
                                    __tmp134204))
                                 '()))
                     '()))
              (__tmp134202
               (cons _%$lp133211%_ (cons _%$target133205%_ _%linit133227%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp134203
                                                   __tmp134202)))))
                                      (let ((_%body133232%_
                                             (let ((__tmp134218
                                                    (cons (cons (cons _%$target133205%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl133209%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target133130%_
                                 _%rlen133203%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp134217
                                                    (_%recur133037%_
                                                     _%tl133200%_
                                                     _%vars133129%_
                                                     _%$tl133209%_
                                                     _%E133131%_
                                                     _%make-loop133230%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp134218
                                                __tmp134217))))
                                        (let ((__tmp134222
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target133130%_)))
                                              (__tmp134219
                                               (if (zero? _%rlen133203%_)
                                                   _%body133232%_
                                                   (let ((__tmp134220
                                                          (let ((__tmp134221
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target133130%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp134221 _%rlen133203%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp134220
                                                      _%body133232%_
                                                      _%E133131%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp134222
                                           __tmp134219
                                           _%E133131%_))))))))
                          (if (pair? _%body133186133193%_)
                              (let ((_%hd133190133251%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body133186133193%_)))
                                    (_%tl133191133253%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body133186133193%_))))
                                (let* ((_%hd133256%_ _%hd133190133251%_)
                                       (_%tl133258%_ _%tl133191133253%_))
                                  (_%K133189133248%_
                                   _%tl133258%_
                                   _%hd133256%_)))
                              (_%E133188133197%_)))
                        (if (eq? 'null _%$e133150%_)
                            (let ((__tmp134224
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target133130%_)))
                                  (__tmp134223 (_%k133132%_ _%vars133129%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp134224
                               __tmp134223
                               _%E133131%_))
                            (if (eq? 'vector _%$e133150%_)
                                (let ((_%$e133260%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp134229
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target133130%_)))
                                        (__tmp134225
                                         (let ((__tmp134227
                                                (cons (cons (cons _%$e133260%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp134228
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e132844%_
                                    _%target133130%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp134228))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp134226
                                                (_%recur133037%_
                                                 _%body133147%_
                                                 _%vars133129%_
                                                 _%$e133260%_
                                                 _%E133131%_
                                                 _%k133132%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp134227
                                            __tmp134226))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp134229
                                     __tmp134225
                                     _%E133131%_)))
                                (if (eq? 'box _%$e133150%_)
                                    (let ((_%$e133262%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp134234
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target133130%_)))
                                            (__tmp134230
                                             (let ((__tmp134232
                                                    (cons (cons (cons _%$e133262%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp134233
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e132844%_
                                        _%target133130%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp134233))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp134231
                                                    (_%recur133037%_
                                                     _%body133147%_
                                                     _%vars133129%_
                                                     _%$e133262%_
                                                     _%E133131%_
                                                     _%k133132%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp134232
                                                __tmp134231))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp134234
                                         __tmp134230
                                         _%E133131%_)))
                                    (if (eq? 'datum _%$e133150%_)
                                        (let ((_%$e133264%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp134240
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target133130%_)))
                                                (__tmp134235
                                                 (let ((__tmp134239
                                                        (cons (cons (cons _%$e133264%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target133130%_))
                                  '()))
                      '()))
               (__tmp134236
                (let ((__tmp134238
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e133264%_ _%body133147%_)))
                      (__tmp134237 (_%k133132%_ _%vars133129%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp134238 __tmp134237 _%E133131%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp134239
                                                    __tmp134236))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp134240
                                             __tmp134235
                                             _%E133131%_)))
                                        (_%BUG133036%_
                                         _%e133128%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (pair? _%e133133133140%_)
                                      (let ((_%hd133137133269%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e133133133140%_)))
                                            (_%tl133138133271%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e133133133140%_))))
                                        (let* ((_%tag133274%_
                                                _%hd133137133269%_)
                                               (_%body133276%_
                                                _%tl133138133271%_))
                                          (_%K133136133266%_
                                           _%body133276%_
                                           _%tag133274%_)))
                                      (_%E133135133144%_)))))
                             (_%splice-rlen133038%_
                              (lambda (_%e133090%_)
                                (let _%lp133092%_ ((_%e133094%_ _%e133090%_)
                                                   (_%n133095%_ '0))
                                  (let* ((_%e133096133103%_ _%e133094%_)
                                         (_%E133098133107%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e133096133103%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K133099133116%_
                                          (lambda (_%body133110%_
                                                   _%tag133111%_)
                                            (let ((_%$e133113%_ _%tag133111%_))
                                              (if (eq? 'splice _%$e133113%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx132842%_
                                                     _%where133029%_))
                                                  (if (eq? 'cons _%$e133113%_)
                                                      (_%lp133092%_
                                                       (cdr _%body133110%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n133095%_
                                                                '1)))
                                                      _%n133095%_))))))
                                    (if (pair? _%e133096133103%_)
                                        (let ((_%hd133100133119%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133096133103%_)))
                                              (_%tl133101133121%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133096133103%_))))
                                          (let* ((_%tag133124%_
                                                  _%hd133100133119%_)
                                                 (_%body133126%_
                                                  _%tl133101133121%_))
                                            (_%K133099133116%_
                                             _%body133126%_
                                             _%tag133124%_)))
                                        (_%E133098133107%_))))))
                             (_%splice-vars133039%_
                              (lambda (_%e133046%_)
                                (let _%recur133048%_ ((_%e133050%_ _%e133046%_)
                                                      (_%vars133051%_ '()))
                                  (let* ((_%e133052133059%_ _%e133050%_)
                                         (_%E133054133063%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e133052133059%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K133055133078%_
                                          (lambda (_%body133066%_
                                                   _%tag133067%_)
                                            (let ((_%$e133069%_ _%tag133067%_))
                                              (if (eq? 'var _%$e133069%_)
                                                  (cons _%body133066%_
                                                        _%vars133051%_)
                                                  (if (or (eq? 'cons
                                                               _%$e133069%_)
                                                          (eq? 'splice
                                                               _%$e133069%_))
                                                      (_%recur133048%_
                                                       (cdr _%body133066%_)
                                                       (_%recur133048%_
                                                        (car _%body133066%_)
                                                        _%vars133051%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e133069%_)
                      (eq? 'box _%$e133069%_))
                  (_%recur133048%_ _%body133066%_ _%vars133051%_)
                  _%vars133051%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%e133052133059%_)
                                        (let ((_%hd133056133081%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e133052133059%_)))
                                              (_%tl133057133083%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e133052133059%_))))
                                          (let* ((_%tag133086%_
                                                  _%hd133056133081%_)
                                                 (_%body133088%_
                                                  _%tl133057133083%_))
                                            (_%K133055133078%_
                                             _%body133088%_
                                             _%tag133086%_)))
                                        (_%E133054133063%_))))))
                             (_%make-body133040%_
                              (lambda (_%vars133042%_)
                                (cons _%K133033%_
                                      (map (lambda (_%mvar133044%_)
                                             (let ((__tmp134241
                                                    (car _%mvar133044%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp134241
                                                _%vars133042%_
                                                _%BUG133036%_)))
                                           _%mvars133032%_)))))
                      (_%recur133037%_
                       _%hd133031%_
                       '()
                       _%target133030%_
                       _%E133034%_
                       _%make-body133040%_))))
                 (_%parse-clause132851%_
                  (lambda (_%hd132923%_ _%ids132924%_)
                    (let _%recur132926%_ ((_%e132928%_ _%hd132923%_)
                                          (_%vars132929%_ '())
                                          (_%depth132930%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e132928%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e132928%_))
                              (values '(any) _%vars132929%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e132928%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx132842%_
                                     _%hd132923%_))
                                  (if (let ((__tmp134242
                                             (lambda (_%id132935%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e132928%_
                                                  _%id132935%_)))))
                                        (declare (not safe))
                                        (__find __tmp134242 _%ids132924%_))
                                      (values (cons 'id _%e132928%_)
                                              _%vars132929%_)
                                      (if (let ((__tmp134243
                                                 (lambda (_%var132938%_)
                                                   (let ((__tmp134244
                                                          (car _%var132938%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e132928%_
                                                      __tmp134244)))))
                                            (declare (not safe))
                                            (__find __tmp134243
                                                    _%vars132929%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx132842%_
                                             _%e132928%_))
                                          (values (cons 'var _%e132928%_)
                                                  (cons (cons _%e132928%_
                                                              _%depth132930%_)
                                                        _%vars132929%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e132928%_))
                              (let* ((_%e132942132949%_ _%e132928%_)
                                     (_%E132944132953%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%e132942132949%_))))
                                     (_%E132943133014%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%e132942132949%_))
                                            (let ((_%e132945132957%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%e132942132949%_))))
                                              (let ((_%hd132946132960%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e132945132957%_)))
                                                    (_%tl132947132962%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e132945132957%_))))
                                                (let* ((_%hd132965%_
                                                        _%hd132946132960%_)
                                                       (_%rest132967%_
                                                        _%tl132947132962%_)
                                                       (_%make-pair132982%_
                                                        (lambda (_%tag132969%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd132970%_
                         _%tl132971%_)
                  (let* ((_%hd-depth132973%_
                          (if (eq? _%tag132969%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth132930%_ '1))
                              _%depth132930%_))
                         (_g134245_
                          (_%recur132926%_
                           _%hd132970%_
                           _%vars132929%_
                           _%hd-depth132973%_)))
                    (begin
                      (let ((_g134246_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g134245_)
                                   (##values-length _g134245_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g134246_ 2)))
                            (error "Context expects 2 values" _g134246_)))
                      (let ((_%hd132975%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g134245_ 0)))
                            (_%vars132976%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g134245_ 1))))
                        (let ((_g134247_
                               (_%recur132926%_
                                _%tl132971%_
                                _%vars132976%_
                                _%depth132930%_)))
                          (begin
                            (let ((_g134248_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g134247_)
                                         (##values-length _g134247_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g134248_ 2)))
                                  (error "Context expects 2 values"
                                         _g134248_)))
                            (let ((_%tl132978%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g134247_ 0)))
                                  (_%vars132979%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g134247_ 1))))
                              (values (cons _%tag132969%_
                                            (cons _%hd132975%_ _%tl132978%_))
                                      _%vars132979%_)))))))))
               (_%e132983132990%_ _%rest132967%_)
               (_%E132985132994%_
                (lambda ()
                  (_%make-pair132982%_ 'cons _%hd132965%_ _%rest132967%_)))
               (_%E132984133010%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%e132983132990%_))
                      (let ((_%e132986132998%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e132983132990%_))))
                        (let ((_%hd132987133001%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132986132998%_)))
                              (_%tl132988133003%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132986132998%_))))
                          (let* ((_%rest-hd133006%_ _%hd132987133001%_)
                                 (_%rest-tl133008%_ _%tl132988133003%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd133006%_))
                                (_%make-pair132982%_
                                 'splice
                                 _%hd132965%_
                                 _%rest-tl133008%_)
                                (_%make-pair132982%_
                                 'cons
                                 _%hd132965%_
                                 _%rest132967%_)))))
                      (_%E132985132994%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E132984133010%_))))
                                            (_%E132944132953%_)))))
                                (_%E132943133014%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e132928%_))
                                  (values '(null) _%vars132929%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e132928%_))
                                      (let ((_g134249_
                                             (_%recur132926%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e132928%_)))
                                              _%vars132929%_
                                              _%depth132930%_)))
                                        (begin
                                          (let ((_g134250_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g134249_)
                                                       (##values-length
                                                        _g134249_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g134250_ 2)))
                                                (error "Context expects 2 values"
                                                       _g134250_)))
                                          (let ((_%e133020%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g134249_ 0)))
                                                (_%vars133021%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g134249_
                                                    1))))
                                            (values (cons 'vector _%e133020%_)
                                                    _%vars133021%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e132928%_))
                                          (let ((_g134251_
                                                 (_%recur132926%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e132928%_)))
                                                  _%vars132929%_
                                                  _%depth132930%_)))
                                            (begin
                                              (let ((_g134252_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g134251_)
                                                           (##values-length
                                                            _g134251_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g134252_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g134252_)))
                                              (let ((_%e133024%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g134251_
                                                        0)))
                                                    (_%vars133025%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g134251_
                                                        1))))
                                                (values (cons 'box _%e133024%_)
                                                        _%vars133025%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e132928%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e132928%_)))
                                                      _%vars132929%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx132842%_
                                                 _%e132928%_))))))))))))
          (let* ((_%e132852132865%_ _%stx132842%_)
                 (_%E132854132869%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e132852132865%_))))
                 (_%E132853132919%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e132852132865%_))
                        (let ((_%e132855132873%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e132852132865%_))))
                          (let ((_%hd132856132876%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e132855132873%_)))
                                (_%tl132857132878%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e132855132873%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl132857132878%_))
                                (let ((_%e132858132881%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl132857132878%_))))
                                  (let ((_%hd132859132884%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e132858132881%_)))
                                        (_%tl132860132886%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e132858132881%_))))
                                    (let ((_%expr132889%_ _%hd132859132884%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl132860132886%_))
                                          (let ((_%e132861132891%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl132860132886%_))))
                                            (let ((_%hd132862132894%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e132861132891%_)))
                                                  (_%tl132863132896%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e132861132891%_))))
                                              (let* ((_%ids132899%_
                                                      _%hd132862132894%_)
                                                     (_%clauses132901%_
                                                      _%tl132863132896%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids132899%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses132901%_))
                                                        (let* ((_%ids132906%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids132899%_)))
                       (_%clauses132908%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses132901%_)))
                       (_%clause-ids132910%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses132908%_)))
                       (_%E132912%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target132914%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first132916%_
                        (if (null? _%clauses132908%_)
                            _%E132912%_
                            (car _%clause-ids132910%_))))
                  (let ((__tmp134254
                         (let ((__tmp134255
                                (let ((__tmp134257
                                       (let ((__tmp134259
                                              (cons (cons (cons _%E132912%_
                                                                '())
                                                          (cons (let ((__tmp134261
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target132914%_ '()))
                              (__tmp134260
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target132914%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp134261 __tmp134260))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp134258
                                              (_%generate-body132848%_
                                               (_%generate-bindings132847%_
                                                _%target132914%_
                                                _%ids132906%_
                                                _%clauses132908%_
                                                _%clause-ids132910%_
                                                _%E132912%_)
                                               (cons _%first132916%_
                                                     (cons _%expr132889%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp134259
                                          __tmp134258)))
                                      (__tmp134256
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx132842%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp134257
                                   __tmp134256))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp134255)))
                        (__tmp134253
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx132842%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp134254 __tmp134253)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx132842%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx132842%_
                                                       _%ids132899%_))))))
                                          (_%E132854132869%_)))))
                                (_%E132854132869%_))))
                        (_%E132854132869%_)))))
            (_%E132853132919%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx133567%_)
        (let* ((_%identifier=?133569%_ 'free-identifier=?)
               (_%unwrap-e133571%_ 'syntax-e)
               (_%wrap-e133573%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx133567%_
           _%identifier=?133569%_
           _%unwrap-e133571%_
           _%wrap-e133573%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx133575%_ _%identifier=?133576%_)
        (let* ((_%unwrap-e133578%_ 'syntax-e) (_%wrap-e133580%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx133575%_
           _%identifier=?133576%_
           _%unwrap-e133578%_
           _%wrap-e133580%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx133582%_ _%identifier=?133583%_ _%unwrap-e133584%_)
        (let ((_%wrap-e133586%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx133582%_
           _%identifier=?133583%_
           _%unwrap-e133584%_
           _%wrap-e133586%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g134263_
        (let ((_g134262_ (let () (declare (not safe)) (##length _g134263_))))
          (cond ((let () (declare (not safe)) (##fx= _g134262_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g134263_))
                ((let () (declare (not safe)) (##fx= _g134262_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g134263_))
                ((let () (declare (not safe)) (##fx= _g134262_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g134263_))
                ((let () (declare (not safe)) (##fx= _g134262_ 4))
                 (apply gx#macro-expand-syntax-case__% _g134263_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g134263_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx132839%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx132839%_))
            (let ((__tmp134264
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx132839%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp134264 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd132797%_ . _%rest132798%_)
        (let ((_%len132800%_ (length _%hd132797%_)))
          (let _%lp132802%_ ((_%rest132804%_ _%rest132798%_))
            (let* ((_%rest132805132813%_ _%rest132804%_)
                   (_%else132807132821%_ (lambda () '#!void))
                   (_%K132809132827%_
                    (lambda (_%rest132824%_ _%hd132825%_)
                      (if (let ((__tmp134265 (length _%hd132825%_)))
                            (declare (not safe))
                            (##fx= _%len132800%_ __tmp134265))
                          (_%lp132802%_ _%rest132824%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd132825%_))))))
              (if (pair? _%rest132805132813%_)
                  (let ((_%hd132810132830%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest132805132813%_)))
                        (_%tl132811132832%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest132805132813%_))))
                    (let* ((_%hd132835%_ _%hd132810132830%_)
                           (_%rest132837%_ _%tl132811132832%_))
                      (_%K132809132827%_ _%rest132837%_ _%hd132835%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx132747%_ _%n132748%_)
        (let _%lp132750%_ ((_%rest132753%_ _%stx132747%_) (_%r132755%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest132753%_))
              (let* ((_%g132757132764%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest132753%_)))
                     (_%E132759132768%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g132757132764%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K132760132775%_
                      (lambda (_%rest132771%_ _%hd132772%_)
                        (_%lp132750%_
                         _%rest132771%_
                         (cons _%hd132772%_ _%r132755%_)))))
                (if (pair? _%g132757132764%_)
                    (let ((_%hd132761132778%_
                           (let ()
                             (declare (not safe))
                             (##car _%g132757132764%_)))
                          (_%tl132762132780%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g132757132764%_))))
                      (let* ((_%hd132783%_ _%hd132761132778%_)
                             (_%rest132785%_ _%tl132762132780%_))
                        (_%K132760132775%_ _%rest132785%_ _%hd132783%_)))
                    (_%E132759132768%_)))
              (let _%lp132787%_ ((_%n132789%_ _%n132748%_)
                                 (_%l132790%_ _%r132755%_)
                                 (_%r132792%_ _%rest132753%_))
                (if (null? _%l132790%_)
                    (values _%l132790%_ _%r132792%_)
                    (if (fxpositive? _%n132789%_)
                        (_%lp132787%_
                         (let () (declare (not safe)) (##fx- _%n132789%_ '1))
                         (cdr _%l132790%_)
                         (cons (car _%l132790%_) _%r132792%_))
                        (values (reverse! _%l132790%_) _%r132792%_))))))))
    (define gx#syntax-split-splice->vector
      (lambda (_%stx132697%_ _%n132698%_)
        (let _%lp132700%_ ((_%rest132703%_ _%stx132697%_) (_%r132705%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest132703%_))
              (let* ((_%g132707132714%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest132703%_)))
                     (_%E132709132718%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g132707132714%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K132710132725%_
                      (lambda (_%rest132721%_ _%hd132722%_)
                        (_%lp132700%_
                         _%rest132721%_
                         (cons _%hd132722%_ _%r132705%_)))))
                (if (pair? _%g132707132714%_)
                    (let ((_%hd132711132728%_
                           (let ()
                             (declare (not safe))
                             (##car _%g132707132714%_)))
                          (_%tl132712132730%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g132707132714%_))))
                      (let* ((_%hd132733%_ _%hd132711132728%_)
                             (_%rest132735%_ _%tl132712132730%_))
                        (_%K132710132725%_ _%rest132735%_ _%hd132733%_)))
                    (_%E132709132718%_)))
              (let _%lp132737%_ ((_%n132739%_ _%n132698%_)
                                 (_%l132740%_ _%r132705%_)
                                 (_%r132742%_ _%rest132703%_))
                (if (null? _%l132740%_)
                    (vector _%l132740%_ _%r132742%_)
                    (if (fxpositive? _%n132739%_)
                        (_%lp132737%_
                         (let () (declare (not safe)) (##fx- _%n132739%_ '1))
                         (cdr _%l132740%_)
                         (cons (car _%l132740%_) _%r132742%_))
                        (vector (reverse! _%l132740%_) _%r132742%_))))))))))
