(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1756721296)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp141590 (list gx#expander::t))
            (__tmp141589 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp141590
         '(id depth)
         __tmp141589
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args141586%_
        (apply make-instance gx#syntax-pattern::t _%$args141586%_)))
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
      (lambda (_%self141572%_ _%stx141573%_)
        (let ((_%self141576%_ _%self141572%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx141573%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx141039%_)
        (letrec ((_%generate141041%_
                  (lambda (_%e141281%_)
                    (letrec ((_%BUG141283%_
                              (lambda (_%q141448%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx141039%_
                                         _%e141281%_
                                         _%q141448%_))))
                             (_%local-pattern-e141284%_
                              (lambda (_%pat141446%_)
                                (let ((__tmp141591
                                       (##structure-ref
                                        _%pat141446%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp141591))))
                             (_%getvar141285%_
                              (lambda (_%q141443%_ _%vars141444%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q141443%_
                                   _%vars141444%_
                                   _%BUG141283%_))))
                             (_%getarg141286%_
                              (lambda (_%arg141409%_ _%vars141410%_)
                                (let* ((_%arg141411141418%_ _%arg141409%_)
                                       (_%E141413141422%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg141411141418%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K141414141431%_
                                        (lambda (_%e141425%_ _%tag141426%_)
                                          (let ((_%$e141428%_ _%tag141426%_))
                                            (if (eq? 'ref _%$e141428%_)
                                                (_%getvar141285%_
                                                 _%e141425%_
                                                 _%vars141410%_)
                                                (if (eq? 'pattern _%$e141428%_)
                                                    (_%local-pattern-e141284%_
                                                     _%e141425%_)
                                                    (_%BUG141283%_
                                                     _%arg141409%_)))))))
                                  (if (pair? _%arg141411141418%_)
                                      (let ((_%hd141415141434%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg141411141418%_)))
                                            (_%tl141416141436%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg141411141418%_))))
                                        (let* ((_%tag141439%_
                                                _%hd141415141434%_)
                                               (_%e141441%_
                                                _%tl141416141436%_))
                                          (_%K141414141431%_
                                           _%e141441%_
                                           _%tag141439%_)))
                                      (_%E141413141422%_))))))
                      (let _%recur141288%_ ((_%e141290%_ _%e141281%_)
                                            (_%vars141291%_ '()))
                        (let* ((_%e141292141299%_ _%e141290%_)
                               (_%E141294141303%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e141292141299%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K141295141397%_
                                (lambda (_%body141306%_ _%tag141307%_)
                                  (let ((_%$e141309%_ _%tag141307%_))
                                    (if (eq? 'datum _%$e141309%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body141306%_))
                                        (if (eq? 'term _%$e141309%_)
                                            (let ((_%id141312%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body141306%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id141312%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks141315%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id141312%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks141315%_)
                                                        (let ((__tmp141592
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body141306%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp141592))
                (let ((__tmp141594
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body141306%_)))
                      (__tmp141593
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body141306%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp141594
                   __tmp141593
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id141312%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body141306%_))
                                                      (_%BUG141283%_
                                                       _%e141290%_))))
                                            (if (eq? 'pattern _%$e141309%_)
                                                (_%local-pattern-e141284%_
                                                 _%body141306%_)
                                                (if (eq? 'ref _%$e141309%_)
                                                    (_%getvar141285%_
                                                     _%body141306%_
                                                     _%vars141291%_)
                                                    (if (eq? 'cons
                                                             _%$e141309%_)
                                                        (let ((__tmp141596
                                                               (_%recur141288%_
                                                                (car _%body141306%_)
                                                                _%vars141291%_))
                                                              (__tmp141595
                                                               (_%recur141288%_
                                                                (cdr _%body141306%_)
                                                                _%vars141291%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp141596
                                                           __tmp141595))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e141309%_)
                    (let ((__tmp141597
                           (_%recur141288%_ _%body141306%_ _%vars141291%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp141597))
                    (if (eq? 'box _%$e141309%_)
                        (let ((__tmp141598
                               (_%recur141288%_
                                _%body141306%_
                                _%vars141291%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp141598))
                        (if (eq? 'splice _%$e141309%_)
                            (let* ((_%body141318141329%_ _%body141306%_)
                                   (_%E141320141333%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body141318141329%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K141321141371%_
                                    (lambda (_%args141336%_
                                             _%iv141337%_
                                             _%hd141338%_
                                             _%depth141339%_)
                                      (let* ((_%targets141345%_
                                              (map (lambda (_%g141340141342%_)
                                                     (_%getarg141286%_
                                                      _%g141340141342%_
                                                      _%vars141291%_))
                                                   _%args141336%_))
                                             (_%fold-in141347%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args141336%_)))
                                             (_%fold-out141349%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args141351%_
                                              (let ((__tmp141599
                                                     (cons _%fold-out141349%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp141599
                                                 _%fold-in141347%_)))
                                             (_%lambda-body141368%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth141339%_ '1))
                                                  (let ((_%r-args141359%_
                                                         (map (lambda (_%arg141353%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg141353%_)))
                      _%args141336%_))
                (_%r-vars141360%_
                 (let ((__tmp141600
                        (lambda (_%arg141355%_ _%var141356%_ _%r141357%_)
                          (cons (cons (cdr _%arg141355%_) _%var141356%_)
                                _%r141357%_))))
                   (declare (not safe))
                   (__foldr2
                    __tmp141600
                    _%vars141291%_
                    _%args141336%_
                    _%fold-in141347%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur141288%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth141339%_ '1))
                         (cons _%hd141338%_
                               (cons (cons 'var _%fold-out141349%_)
                                     _%r-args141359%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars141360%_))
                                                  (let* ((_%hd-vars141366%_
                                                          (let ((__tmp141601
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg141362%_ _%var141363%_ _%r141364%_)
                           (cons (cons (cdr _%arg141362%_) _%var141363%_)
                                 _%r141364%_))))
                    (declare (not safe))
                    (__foldr2
                     __tmp141601
                     _%vars141291%_
                     _%args141336%_
                     _%fold-in141347%_)))
                 (__tmp141602
                  (_%recur141288%_ _%hd141338%_ _%hd-vars141366%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp141602
                                                     _%fold-out141349%_)))))
                                        (let ((__tmp141606
                                               (if (let ((__tmp141607
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets141345%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp141607 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets141345%_))
                                                   '#!void))
                                              (__tmp141603
                                               (let ((__tmp141605
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args141351%_
                                                         _%lambda-body141368%_)))
                                                     (__tmp141604
                                                      (_%recur141288%_
                                                       _%iv141337%_
                                                       _%vars141291%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp141605
                                                  __tmp141604
                                                  _%targets141345%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp141606
                                           __tmp141603))))))
                              (if (pair? _%body141318141329%_)
                                  (let ((_%hd141322141374%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body141318141329%_)))
                                        (_%tl141323141376%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body141318141329%_))))
                                    (let ((_%depth141379%_ _%hd141322141374%_))
                                      (if (pair? _%tl141323141376%_)
                                          (let ((_%hd141324141381%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl141323141376%_)))
                                                (_%tl141325141383%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl141323141376%_))))
                                            (let ((_%hd141386%_
                                                   _%hd141324141381%_))
                                              (if (pair? _%tl141325141383%_)
                                                  (let ((_%hd141326141388%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl141325141383%_)))
                                                        (_%tl141327141390%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl141325141383%_))))
                                                    (let* ((_%iv141393%_
                                                            _%hd141326141388%_)
                                                           (_%args141395%_
                                                            _%tl141327141390%_))
                                                      (_%K141321141371%_
                                                       _%args141395%_
                                                       _%iv141393%_
                                                       _%hd141386%_
                                                       _%depth141379%_)))
                                                  (_%E141320141333%_))))
                                          (_%E141320141333%_))))
                                  (_%E141320141333%_)))
                            (if (eq? 'var _%$e141309%_)
                                _%body141306%_
                                (_%BUG141283%_ _%e141290%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (pair? _%e141292141299%_)
                              (let ((_%hd141296141400%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e141292141299%_)))
                                    (_%tl141297141402%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e141292141299%_))))
                                (let* ((_%tag141405%_ _%hd141296141400%_)
                                       (_%body141407%_ _%tl141297141402%_))
                                  (_%K141295141397%_
                                   _%body141407%_
                                   _%tag141405%_)))
                              (_%E141294141303%_)))))))
                 (_%parse141042%_
                  (lambda (_%e141083%_)
                    (letrec ((_%make-cons141085%_
                              (lambda (_%hd141273%_ _%tl141274%_)
                                (let ((_g141608_ _%hd141273%_)
                                      (_g141610_ _%tl141274%_))
                                  (begin
                                    (let ((_g141609_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g141608_)
                                                 (##values-length _g141608_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g141609_ 2)))
                                          (error "Context expects 2 values"
                                                 _g141609_)))
                                    (let ((_g141611_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g141610_)
                                                 (##values-length _g141610_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g141611_ 2)))
                                          (error "Context expects 2 values"
                                                 _g141611_)))
                                    (let ((_%hd-e141276%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g141608_ 0)))
                                          (_%hd-vars141277%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g141608_ 1))))
                                      (let ((_%tl-e141278%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g141610_ 0)))
                                            (_%tl-vars141279%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g141610_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e141276%_
                                                            _%tl-e141278%_))
                                                (append _%hd-vars141277%_
                                                        _%tl-vars141279%_))))))))
                             (_%make-splice141086%_
                              (lambda (_%where141209%_
                                       _%depth141210%_
                                       _%hd141211%_
                                       _%tl141212%_)
                                (let ((_g141612_ _%hd141211%_)
                                      (_g141614_ _%tl141212%_))
                                  (begin
                                    (let ((_g141613_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g141612_)
                                                 (##values-length _g141612_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g141613_ 2)))
                                          (error "Context expects 2 values"
                                                 _g141613_)))
                                    (let ((_g141615_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g141614_)
                                                 (##values-length _g141614_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g141615_ 2)))
                                          (error "Context expects 2 values"
                                                 _g141615_)))
                                    (let ((_%hd-e141214%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g141612_ 0)))
                                          (_%hd-vars141215%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g141612_ 1))))
                                      (let ((_%tl-e141216%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g141614_ 0)))
                                            (_%tl-vars141217%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g141614_ 1))))
                                        (let _%lp141219%_ ((_%rest141221%_
                                                            _%hd-vars141215%_)
                                                           (_%targets141222%_
                                                            '())
                                                           (_%vars141223%_
                                                            _%tl-vars141217%_))
                                          (let* ((_%rest141224141234%_
                                                  _%rest141221%_)
                                                 (_%else141226141242%_
                                                  (lambda ()
                                                    (if (null? _%targets141222%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx141039%_
                                                           _%where141209%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth141210%_
                                    (cons _%hd-e141214%_
                                          (cons _%tl-e141216%_
                                                _%targets141222%_))))
                        _%vars141223%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K141228141254%_
                                                  (lambda (_%rest141245%_
                                                           _%hd-pat141246%_
                                                           _%hd-depth*141247%_)
                                                    (let ((_%hd-depth141249%_
                                                           (fx- _%hd-depth*141247%_
                                                                _%depth141210%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth141249%_))
                                                          (_%lp141219%_
                                                           _%rest141245%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat141246%_)
                         _%targets141222%_)
                   (cons (cons _%hd-depth141249%_ _%hd-pat141246%_)
                         _%vars141223%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth141249%_))
                      (_%lp141219%_
                       _%rest141245%_
                       (cons (cons 'pattern _%hd-pat141246%_)
                             _%targets141222%_)
                       _%vars141223%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx141039%_
                         _%where141209%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%rest141224141234%_)
                                                (let ((_%hd141229141257%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest141224141234%_)))
                                                      (_%tl141230141259%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest141224141234%_))))
                                                  (if (pair? _%hd141229141257%_)
                                                      (let ((_%hd141231141262%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd141229141257%_)))
                    (_%tl141232141264%_
                     (let () (declare (not safe)) (##cdr _%hd141229141257%_))))
                (let* ((_%hd-depth*141267%_ _%hd141231141262%_)
                       (_%hd-pat141269%_ _%tl141232141264%_)
                       (_%rest141271%_ _%tl141230141259%_))
                  (_%K141228141254%_
                   _%rest141271%_
                   _%hd-pat141269%_
                   _%hd-depth*141267%_)))
              (_%else141226141242%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else141226141242%_))))))))))
                             (_%recur141087%_
                              (lambda (_%e141092%_ _%is-e?141093%_)
                                (if (_%is-e?141093%_ _%e141092%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx141039%_))
                                    (if (gx#syntax-local-pattern? _%e141092%_)
                                        (let* ((_%pat141097%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e141092%_)))
                                               (_%depth141099%_
                                                (##structure-ref
                                                 _%pat141097%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth141099%_)
                                              (values (cons 'ref _%pat141097%_)
                                                      (cons (cons _%depth141099%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat141097%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat141097%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e141092%_))
                                            (values (cons 'term _%e141092%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e141092%_))
                                                (let* ((_%e141103141110%_
                                                        _%e141092%_)
                                                       (_%E141105141114%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e141103141110%_))))
                                                       (_%E141104141196%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%e141103141110%_))
                      (let ((_%e141106141118%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e141103141110%_))))
                        (let ((_%hd141107141121%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141106141118%_)))
                              (_%tl141108141123%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141106141118%_))))
                          (let* ((_%hd141126%_ _%hd141107141121%_)
                                 (_%rest141128%_ _%tl141108141123%_))
                            (if (_%is-e?141093%_ _%hd141126%_)
                                (let* ((_%e141129141136%_ _%rest141128%_)
                                       (_%E141131141140%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx141039%_
                                             _%e141092%_))))
                                       (_%E141130141154%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e141129141136%_))
                                              (let ((_%e141132141144%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e141129141136%_))))
                                                (let ((_%hd141133141147%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141132141144%_)))
                                                      (_%tl141134141149%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141132141144%_))))
                                                  (let ((_%rest141152%_
                                                         _%hd141133141147%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl141134141149%_))
                                                        (_%recur141087%_
                                                         _%rest141152%_
                                                         false)
                                                        (_%E141131141140%_)))))
                                              (_%E141131141140%_)))))
                                  (_%E141130141154%_))
                                (let _%lp141158%_ ((_%rest141160%_
                                                    _%rest141128%_)
                                                   (_%depth141161%_ '0))
                                  (let* ((_%e141162141169%_ _%rest141160%_)
                                         (_%E141164141173%_
                                          (lambda ()
                                            (if (fxpositive? _%depth141161%_)
                                                (_%make-splice141086%_
                                                 _%e141092%_
                                                 _%depth141161%_
                                                 (_%recur141087%_
                                                  _%hd141126%_
                                                  _%is-e?141093%_)
                                                 (_%recur141087%_
                                                  _%rest141160%_
                                                  _%is-e?141093%_))
                                                (_%make-cons141085%_
                                                 (_%recur141087%_
                                                  _%hd141126%_
                                                  _%is-e?141093%_)
                                                 (_%recur141087%_
                                                  _%rest141160%_
                                                  _%is-e?141093%_)))))
                                         (_%E141163141192%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%e141162141169%_))
                                                (let ((_%e141165141177%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%e141162141169%_))))
                                                  (let ((_%hd141166141180%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141165141177%_)))
                                                        (_%tl141167141182%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141165141177%_))))
                                                    (let* ((_%rest-hd141185%_
                                                            _%hd141166141180%_)
                                                           (_%rest-tl141187%_
                                                            _%tl141167141182%_))
                                                      (if (_%is-e?141093%_
                                                           _%rest-hd141185%_)
                                                          (_%lp141158%_
                                                           _%rest-tl141187%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth141161%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth141161%_)
                      (_%make-splice141086%_
                       _%e141092%_
                       _%depth141161%_
                       (_%recur141087%_ _%hd141126%_ _%is-e?141093%_)
                       (_%recur141087%_ _%rest141160%_ _%is-e?141093%_))
                      (_%make-cons141085%_
                       (_%recur141087%_ _%hd141126%_ _%is-e?141093%_)
                       (_%recur141087%_ _%rest141160%_ _%is-e?141093%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E141164141173%_)))))
                                    (_%E141163141192%_)))))))
                      (_%E141105141114%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E141104141196%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e141092%_))
                                                    (let ((_g141616_
                                                           (_%recur141087%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e141092%_)))
                    _%is-e?141093%_)))
              (begin
                (let ((_g141617_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g141616_)
                             (##values-length _g141616_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g141617_ 2)))
                      (error "Context expects 2 values" _g141617_)))
                (let ((_%e141201%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g141616_ 0)))
                      (_%vars141202%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g141616_ 1))))
                  (values (cons 'vector _%e141201%_) _%vars141202%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e141092%_))
                                                        (let ((_g141618_
                                                               (_%recur141087%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e141092%_)))
                        _%is-e?141093%_)))
                  (begin
                    (let ((_g141619_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g141618_)
                                 (##values-length _g141618_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g141619_ 2)))
                          (error "Context expects 2 values" _g141619_)))
                    (let ((_%e141205%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g141618_ 0)))
                          (_%vars141206%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g141618_ 1))))
                      (values (cons 'box _%e141205%_) _%vars141206%_))))
                (values (cons 'datum _%e141092%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g141620_
                             (_%recur141087%_ _%e141083%_ gx#ellipsis?)))
                        (begin
                          (let ((_g141621_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g141620_)
                                       (##values-length _g141620_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g141621_ 2)))
                                (error "Context expects 2 values" _g141621_)))
                          (let ((_%tree141089%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g141620_ 0)))
                                (_%vars141090%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g141620_ 1))))
                            (if (null? _%vars141090%_)
                                _%tree141089%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx141039%_
                                   _%vars141090%_))))))))))
          (let* ((_%e141043141053%_ _%stx141039%_)
                 (_%E141045141057%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx141039%_))))
                 (_%E141044141079%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e141043141053%_))
                        (let ((_%e141046141061%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e141043141053%_))))
                          (let ((_%hd141047141064%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141046141061%_)))
                                (_%tl141048141066%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141046141061%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl141048141066%_))
                                (let ((_%e141049141069%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl141048141066%_))))
                                  (let ((_%hd141050141072%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e141049141069%_)))
                                        (_%tl141051141074%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e141049141069%_))))
                                    (let ((_%form141077%_ _%hd141050141072%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl141051141074%_))
                                          (let ((__tmp141623
                                                 (_%generate141041%_
                                                  (_%parse141042%_
                                                   _%form141077%_)))
                                                (__tmp141622
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx141039%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp141623
                                             __tmp141622))
                                          (_%E141045141057%_)))))
                                (_%E141045141057%_))))
                        (_%E141045141057%_)))))
            (_%E141044141079%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx140288%_
               _%identifier=?140289%_
               _%unwrap-e140290%_
               _%wrap-e140291%_)
        (letrec ((_%generate-bindings140293%_
                  (lambda (_%target140903%_
                           _%ids140904%_
                           _%clauses140905%_
                           _%clause-ids140906%_
                           _%E140907%_)
                    (letrec ((_%generate1140909%_
                              (lambda (_%clause141006%_
                                       _%clause-id141007%_
                                       _%E141008%_)
                                (cons (cons _%clause-id141007%_ '())
                                      (cons (let ((__tmp141625
                                                   (cons _%target140903%_ '()))
                                                  (__tmp141624
                                                   (_%generate-clause140295%_
                                                    _%target140903%_
                                                    _%ids140904%_
                                                    _%clause141006%_
                                                    _%E141008%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp141625
                                               __tmp141624))
                                            '())))))
                      (let _%lp140911%_ ((_%rest140913%_ _%clauses140905%_)
                                         (_%rest-ids140914%_
                                          _%clause-ids140906%_)
                                         (_%bindings140915%_ '()))
                        (let* ((_%rest140916140924%_ _%rest140913%_)
                               (_%else140918140932%_
                                (lambda () _%bindings140915%_))
                               (_%K140920140994%_
                                (lambda (_%rest140935%_ _%clause140936%_)
                                  (let* ((_%rest-ids140937140944%_
                                          _%rest-ids140914%_)
                                         (_%E140939140948%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids140937140944%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K140940140982%_
                                          (lambda (_%rest-ids140951%_
                                                   _%clause-id140952%_)
                                            (let* ((_%rest-ids140953140961%_
                                                    _%rest-ids140951%_)
                                                   (_%else140955140969%_
                                                    (lambda ()
                                                      (cons (_%generate1140909%_
                                                             _%clause140936%_
                                                             _%clause-id140952%_
                                                             _%E140907%_)
                                                            _%bindings140915%_)))
                                                   (_%K140957140974%_
                                                    (lambda (_%next-clause-id140972%_)
                                                      (_%lp140911%_
                                                       _%rest140935%_
                                                       _%rest-ids140951%_
                                                       (cons (_%generate1140909%_
                                                              _%clause140936%_
                                                              _%clause-id140952%_
                                                              _%next-clause-id140972%_)
                                                             _%bindings140915%_)))))
                                              (if (pair? _%rest-ids140953140961%_)
                                                  (let* ((_%hd140958140977%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids140953140961%_)))
                                                         (_%next-clause-id140980%_
                                                          _%hd140958140977%_))
                                                    (_%K140957140974%_
                                                     _%next-clause-id140980%_))
                                                  (_%else140955140969%_))))))
                                    (if (pair? _%rest-ids140937140944%_)
                                        (let ((_%hd140941140985%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids140937140944%_)))
                                              (_%tl140942140987%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids140937140944%_))))
                                          (let* ((_%clause-id140990%_
                                                  _%hd140941140985%_)
                                                 (_%rest-ids140992%_
                                                  _%tl140942140987%_))
                                            (_%K140940140982%_
                                             _%rest-ids140992%_
                                             _%clause-id140990%_)))
                                        (_%E140939140948%_))))))
                          (if (pair? _%rest140916140924%_)
                              (let ((_%hd140921140997%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest140916140924%_)))
                                    (_%tl140922140999%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest140916140924%_))))
                                (let* ((_%clause141002%_ _%hd140921140997%_)
                                       (_%rest141004%_ _%tl140922140999%_))
                                  (_%K140920140994%_
                                   _%rest141004%_
                                   _%clause141002%_)))
                              (_%else140918140932%_)))))))
                 (_%generate-body140294%_
                  (lambda (_%bindings140863%_ _%body140864%_)
                    (let _%recur140866%_ ((_%rest140868%_ _%bindings140863%_))
                      (let* ((_%rest140869140877%_ _%rest140868%_)
                             (_%else140871140885%_ (lambda () _%body140864%_))
                             (_%K140873140891%_
                              (lambda (_%rest140888%_ _%hd140889%_)
                                (let ((__tmp141627 (cons _%hd140889%_ '()))
                                      (__tmp141626
                                       (_%recur140866%_ _%rest140888%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp141627
                                   __tmp141626)))))
                        (if (pair? _%rest140869140877%_)
                            (let ((_%hd140874140894%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest140869140877%_)))
                                  (_%tl140875140896%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest140869140877%_))))
                              (let* ((_%hd140899%_ _%hd140874140894%_)
                                     (_%rest140901%_ _%tl140875140896%_))
                                (_%K140873140891%_
                                 _%rest140901%_
                                 _%hd140899%_)))
                            (_%else140871140885%_))))))
                 (_%generate-clause140295%_
                  (lambda (_%target140726%_
                           _%ids140727%_
                           _%clause140728%_
                           _%E140729%_)
                    (letrec ((_%generate1140731%_
                              (lambda (_%hd140818%_
                                       _%fender140819%_
                                       _%body140820%_)
                                (let ((_g141628_
                                       (_%parse-clause140297%_
                                        _%hd140818%_
                                        _%ids140727%_)))
                                  (begin
                                    (let ((_g141629_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g141628_)
                                                 (##values-length _g141628_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g141629_ 2)))
                                          (error "Context expects 2 values"
                                                 _g141629_)))
                                    (let ((_%e140822%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g141628_ 0)))
                                          (_%mvars140823%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g141628_ 1))))
                                      (let* ((_%pvars140825%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars140823%_))))
                                             (_%E140827%_
                                              (cons _%E140729%_
                                                    (cons _%target140726%_
                                                          '())))
                                             (_%K140860%_
                                              (let ((__tmp141630
                                                     (let ((__tmp141632
                                                            (map (lambda (_%mvar140829%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar140830%_)
                           (let* ((_%mvar140831140838%_ _%mvar140829%_)
                                  (_%E140833140842%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar140831140838%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K140834140848%_
                                   (lambda (_%depth140845%_ _%id140846%_)
                                     (cons _%id140846%_
                                           (cons (let ((__tmp141634
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id140846%_)))
                                                       (__tmp141633
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar140830%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp141634
                                                    __tmp141633
                                                    _%depth140845%_))
                                                 '())))))
                             (if (pair? _%mvar140831140838%_)
                                 (let ((_%hd140835140851%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar140831140838%_)))
                                       (_%tl140836140853%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar140831140838%_))))
                                   (let* ((_%id140856%_ _%hd140835140851%_)
                                          (_%depth140858%_ _%tl140836140853%_))
                                     (_%K140834140848%_
                                      _%depth140858%_
                                      _%id140856%_)))
                                 (_%E140833140842%_))))
                         _%mvars140823%_
                         _%pvars140825%_))
                   (__tmp141631
                    (if (eq? _%fender140819%_ '#t)
                        _%body140820%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender140819%_
                           _%body140820%_
                           _%E140827%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp141632 __tmp141631))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars140825%_
                                                 __tmp141630))))
                                        (_%generate-match140296%_
                                         _%hd140818%_
                                         _%target140726%_
                                         _%e140822%_
                                         _%mvars140823%_
                                         _%K140860%_
                                         _%E140827%_))))))))
                      (let* ((_%e140732140752%_ _%clause140728%_)
                             (_%E140741140756%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e140732140752%_))))
                             (_%E140734140790%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e140732140752%_))
                                    (let ((_%e140742140760%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e140732140752%_))))
                                      (let ((_%hd140743140763%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e140742140760%_)))
                                            (_%tl140744140765%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e140742140760%_))))
                                        (let ((_%hd140768%_
                                               _%hd140743140763%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl140744140765%_))
                                              (let ((_%e140745140770%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl140744140765%_))))
                                                (let ((_%hd140746140773%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e140745140770%_)))
                                                      (_%tl140747140775%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e140745140770%_))))
                                                  (let ((_%fender140778%_
                                                         _%hd140746140773%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl140747140775%_))
                                                        (let ((_%e140748140780%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl140747140775%_))))
                  (let ((_%hd140749140783%_
                         (let ()
                           (declare (not safe))
                           (##car _%e140748140780%_)))
                        (_%tl140750140785%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e140748140780%_))))
                    (let ((_%body140788%_ _%hd140749140783%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl140750140785%_))
                          (_%generate1140731%_
                           _%hd140768%_
                           _%fender140778%_
                           _%body140788%_)
                          (_%E140741140756%_)))))
                (_%E140741140756%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E140741140756%_)))))
                                    (_%E140741140756%_))))
                             (_%E140733140814%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e140732140752%_))
                                    (let ((_%e140735140794%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e140732140752%_))))
                                      (let ((_%hd140736140797%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e140735140794%_)))
                                            (_%tl140737140799%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e140735140794%_))))
                                        (let ((_%hd140802%_
                                               _%hd140736140797%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl140737140799%_))
                                              (let ((_%e140738140804%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl140737140799%_))))
                                                (let ((_%hd140739140807%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e140738140804%_)))
                                                      (_%tl140740140809%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e140738140804%_))))
                                                  (let ((_%body140812%_
                                                         _%hd140739140807%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl140740140809%_))
                                                        (_%generate1140731%_
                                                         _%hd140802%_
                                                         '#t
                                                         _%body140812%_)
                                                        (_%E140734140790%_)))))
                                              (_%E140734140790%_)))))
                                    (_%E140734140790%_)))))
                        (_%E140733140814%_)))))
                 (_%generate-match140296%_
                  (lambda (_%where140475%_
                           _%target140476%_
                           _%hd140477%_
                           _%mvars140478%_
                           _%K140479%_
                           _%E140480%_)
                    (letrec ((_%BUG140482%_
                              (lambda (_%q140724%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx140288%_
                                         _%hd140477%_
                                         _%q140724%_))))
                             (_%recur140483%_
                              (lambda (_%e140574%_
                                       _%vars140575%_
                                       _%target140576%_
                                       _%E140577%_
                                       _%k140578%_)
                                (let* ((_%e140579140586%_ _%e140574%_)
                                       (_%E140581140590%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e140579140586%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K140582140712%_
                                        (lambda (_%body140593%_ _%tag140594%_)
                                          (let ((_%$e140596%_ _%tag140594%_))
                                            (if (eq? 'any _%$e140596%_)
                                                (_%k140578%_ _%vars140575%_)
                                                (if (eq? 'id _%$e140596%_)
                                                    (let ((__tmp141639
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target140576%_)))
                                                          (__tmp141635
                                                           (let ((__tmp141637
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp141638
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e140291%_
                                    _%body140593%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?140289%_
                             __tmp141638
                             _%target140576%_)))
                         (__tmp141636 (_%k140578%_ _%vars140575%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp141637 __tmp141636 _%E140577%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp141639 __tmp141635 _%E140577%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e140596%_)
                                                        (_%k140578%_
                                                         (cons (cons _%body140593%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target140576%_)
                       _%vars140575%_))
                (if (eq? 'cons _%$e140596%_)
                    (let ((_%$e140599%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd140600%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl140601%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp141645
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target140576%_)))
                            (__tmp141640
                             (let ((__tmp141644
                                    (cons (cons (cons _%$e140599%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e140290%_
                                                         _%target140576%_))
                                                      '()))
                                          '()))
                                   (__tmp141641
                                    (let ((__tmp141643
                                           (cons (cons (cons _%$hd140600%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e140599%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl140601%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e140599%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp141642
                                           (let* ((_%body140602140609%_
                                                   _%body140593%_)
                                                  (_%E140604140613%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body140602140609%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K140605140621%_
                                                   (lambda (_%tl140616%_
                                                            _%hd140617%_)
                                                     (_%recur140483%_
                                                      _%hd140617%_
                                                      _%vars140575%_
                                                      _%$hd140600%_
                                                      _%E140577%_
                                                      (lambda (_%vars140619%_)
                                                        (_%recur140483%_
                                                         _%tl140616%_
                                                         _%vars140619%_
                                                         _%$tl140601%_
                                                         _%E140577%_
                                                         _%k140578%_))))))
                                             (if (pair? _%body140602140609%_)
                                                 (let ((_%hd140606140624%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body140602140609%_)))
                                                       (_%tl140607140626%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body140602140609%_))))
                                                   (let* ((_%hd140629%_
                                                           _%hd140606140624%_)
                                                          (_%tl140631%_
                                                           _%tl140607140626%_))
                                                     (_%K140605140621%_
                                                      _%tl140631%_
                                                      _%hd140629%_)))
                                                 (_%E140604140613%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp141643
                                       __tmp141642))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp141644
                                __tmp141641))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp141645
                         __tmp141640
                         _%E140577%_)))
                    (if (eq? 'splice _%$e140596%_)
                        (let* ((_%body140632140639%_ _%body140593%_)
                               (_%E140634140643%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body140632140639%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K140635140694%_
                                (lambda (_%tl140646%_ _%hd140647%_)
                                  (let* ((_%rlen140649%_
                                          (_%splice-rlen140484%_ _%tl140646%_))
                                         (_%$target140651%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd140653%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl140655%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp140657%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e140659%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd140661%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl140663%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars140665%_
                                          (_%splice-vars140485%_ _%hd140647%_))
                                         (_%lvars140667%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars140665%_)))
                                         (_%tlvars140669%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars140665%_)))
                                         (_%linit140673%_
                                          (map (lambda (_%var140671%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars140667%_)))
                                    (letrec ((_%make-loop140676%_
                                              (lambda (_%vars140680%_)
                                                (let ((__tmp141647
                                                       (cons (cons (cons _%$lp140657%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp141660
                                        (cons _%$hd140653%_ _%lvars140667%_))
                                       (__tmp141648
                                        (let ((__tmp141659
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd140653%_)))
                                              (__tmp141653
                                               (let ((__tmp141658
                                                      (cons (cons (cons _%$lp-e140659%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e140290%_
                                   _%$hd140653%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp141654
                                                      (let ((__tmp141657
                                                             (cons (cons (cons _%$lp-hd140661%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e140659%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl140663%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e140659%_))
                                             '()))
                                 '())))
                    (__tmp141655
                     (_%recur140483%_
                      _%hd140647%_
                      '()
                      _%$lp-hd140661%_
                      _%E140577%_
                      (lambda (_%hdvars140682%_)
                        (cons _%$lp140657%_
                              (cons _%$lp-tl140663%_
                                    (map (lambda (_%svar140684%_
                                                  _%lvar140685%_)
                                           (let ((__tmp141656
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar140684%_
                                                     _%hdvars140682%_
                                                     _%BUG140482%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp141656
                                              _%lvar140685%_)))
                                         _%svars140665%_
                                         _%lvars140667%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp141657 __tmp141655))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp141658
                                                  __tmp141654)))
                                              (__tmp141649
                                               (let ((__tmp141652
                                                      (map (lambda (_%lvar140687%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar140688%_)
                     (cons (cons _%tlvar140688%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar140687%_))
                                 '())))
                   _%lvars140667%_
                   _%tlvars140669%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp141650
                                                      (_%k140578%_
                                                       (let ((__tmp141651
                                                              (lambda (_%svar140690%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar140691%_
                               _%r140692%_)
                        (cons (cons _%svar140690%_ _%tlvar140691%_)
                              _%r140692%_))))
                 (declare (not safe))
                 (__foldl2
                  __tmp141651
                  _%vars140680%_
                  _%svars140665%_
                  _%tlvars140669%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp141652
                                                  __tmp141650))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp141659
                                           __tmp141653
                                           __tmp141649))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp141660
                                    __tmp141648))
                                 '()))
                     '()))
              (__tmp141646
               (cons _%$lp140657%_ (cons _%$target140651%_ _%linit140673%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp141647
                                                   __tmp141646)))))
                                      (let ((_%body140678%_
                                             (let ((__tmp141662
                                                    (cons (cons (cons _%$target140651%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl140655%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target140576%_
                                 _%rlen140649%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp141661
                                                    (_%recur140483%_
                                                     _%tl140646%_
                                                     _%vars140575%_
                                                     _%$tl140655%_
                                                     _%E140577%_
                                                     _%make-loop140676%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp141662
                                                __tmp141661))))
                                        (let ((__tmp141666
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target140576%_)))
                                              (__tmp141663
                                               (if (zero? _%rlen140649%_)
                                                   _%body140678%_
                                                   (let ((__tmp141664
                                                          (let ((__tmp141665
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target140576%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp141665 _%rlen140649%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp141664
                                                      _%body140678%_
                                                      _%E140577%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp141666
                                           __tmp141663
                                           _%E140577%_))))))))
                          (if (pair? _%body140632140639%_)
                              (let ((_%hd140636140697%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body140632140639%_)))
                                    (_%tl140637140699%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body140632140639%_))))
                                (let* ((_%hd140702%_ _%hd140636140697%_)
                                       (_%tl140704%_ _%tl140637140699%_))
                                  (_%K140635140694%_
                                   _%tl140704%_
                                   _%hd140702%_)))
                              (_%E140634140643%_)))
                        (if (eq? 'null _%$e140596%_)
                            (let ((__tmp141668
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target140576%_)))
                                  (__tmp141667 (_%k140578%_ _%vars140575%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp141668
                               __tmp141667
                               _%E140577%_))
                            (if (eq? 'vector _%$e140596%_)
                                (let ((_%$e140706%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp141673
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target140576%_)))
                                        (__tmp141669
                                         (let ((__tmp141671
                                                (cons (cons (cons _%$e140706%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp141672
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e140290%_
                                    _%target140576%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp141672))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp141670
                                                (_%recur140483%_
                                                 _%body140593%_
                                                 _%vars140575%_
                                                 _%$e140706%_
                                                 _%E140577%_
                                                 _%k140578%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp141671
                                            __tmp141670))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp141673
                                     __tmp141669
                                     _%E140577%_)))
                                (if (eq? 'box _%$e140596%_)
                                    (let ((_%$e140708%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp141678
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target140576%_)))
                                            (__tmp141674
                                             (let ((__tmp141676
                                                    (cons (cons (cons _%$e140708%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp141677
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e140290%_
                                        _%target140576%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp141677))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp141675
                                                    (_%recur140483%_
                                                     _%body140593%_
                                                     _%vars140575%_
                                                     _%$e140708%_
                                                     _%E140577%_
                                                     _%k140578%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp141676
                                                __tmp141675))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp141678
                                         __tmp141674
                                         _%E140577%_)))
                                    (if (eq? 'datum _%$e140596%_)
                                        (let ((_%$e140710%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp141684
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target140576%_)))
                                                (__tmp141679
                                                 (let ((__tmp141683
                                                        (cons (cons (cons _%$e140710%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target140576%_))
                                  '()))
                      '()))
               (__tmp141680
                (let ((__tmp141682
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e140710%_ _%body140593%_)))
                      (__tmp141681 (_%k140578%_ _%vars140575%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp141682 __tmp141681 _%E140577%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp141683
                                                    __tmp141680))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp141684
                                             __tmp141679
                                             _%E140577%_)))
                                        (_%BUG140482%_
                                         _%e140574%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (pair? _%e140579140586%_)
                                      (let ((_%hd140583140715%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e140579140586%_)))
                                            (_%tl140584140717%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e140579140586%_))))
                                        (let* ((_%tag140720%_
                                                _%hd140583140715%_)
                                               (_%body140722%_
                                                _%tl140584140717%_))
                                          (_%K140582140712%_
                                           _%body140722%_
                                           _%tag140720%_)))
                                      (_%E140581140590%_)))))
                             (_%splice-rlen140484%_
                              (lambda (_%e140536%_)
                                (let _%lp140538%_ ((_%e140540%_ _%e140536%_)
                                                   (_%n140541%_ '0))
                                  (let* ((_%e140542140549%_ _%e140540%_)
                                         (_%E140544140553%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e140542140549%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K140545140562%_
                                          (lambda (_%body140556%_
                                                   _%tag140557%_)
                                            (let ((_%$e140559%_ _%tag140557%_))
                                              (if (eq? 'splice _%$e140559%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx140288%_
                                                     _%where140475%_))
                                                  (if (eq? 'cons _%$e140559%_)
                                                      (_%lp140538%_
                                                       (cdr _%body140556%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n140541%_
                                                                '1)))
                                                      _%n140541%_))))))
                                    (if (pair? _%e140542140549%_)
                                        (let ((_%hd140546140565%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e140542140549%_)))
                                              (_%tl140547140567%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e140542140549%_))))
                                          (let* ((_%tag140570%_
                                                  _%hd140546140565%_)
                                                 (_%body140572%_
                                                  _%tl140547140567%_))
                                            (_%K140545140562%_
                                             _%body140572%_
                                             _%tag140570%_)))
                                        (_%E140544140553%_))))))
                             (_%splice-vars140485%_
                              (lambda (_%e140492%_)
                                (let _%recur140494%_ ((_%e140496%_ _%e140492%_)
                                                      (_%vars140497%_ '()))
                                  (let* ((_%e140498140505%_ _%e140496%_)
                                         (_%E140500140509%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e140498140505%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K140501140524%_
                                          (lambda (_%body140512%_
                                                   _%tag140513%_)
                                            (let ((_%$e140515%_ _%tag140513%_))
                                              (if (eq? 'var _%$e140515%_)
                                                  (cons _%body140512%_
                                                        _%vars140497%_)
                                                  (if (or (eq? 'cons
                                                               _%$e140515%_)
                                                          (eq? 'splice
                                                               _%$e140515%_))
                                                      (_%recur140494%_
                                                       (cdr _%body140512%_)
                                                       (_%recur140494%_
                                                        (car _%body140512%_)
                                                        _%vars140497%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e140515%_)
                      (eq? 'box _%$e140515%_))
                  (_%recur140494%_ _%body140512%_ _%vars140497%_)
                  _%vars140497%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%e140498140505%_)
                                        (let ((_%hd140502140527%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e140498140505%_)))
                                              (_%tl140503140529%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e140498140505%_))))
                                          (let* ((_%tag140532%_
                                                  _%hd140502140527%_)
                                                 (_%body140534%_
                                                  _%tl140503140529%_))
                                            (_%K140501140524%_
                                             _%body140534%_
                                             _%tag140532%_)))
                                        (_%E140500140509%_))))))
                             (_%make-body140486%_
                              (lambda (_%vars140488%_)
                                (cons _%K140479%_
                                      (map (lambda (_%mvar140490%_)
                                             (let ((__tmp141685
                                                    (car _%mvar140490%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp141685
                                                _%vars140488%_
                                                _%BUG140482%_)))
                                           _%mvars140478%_)))))
                      (_%recur140483%_
                       _%hd140477%_
                       '()
                       _%target140476%_
                       _%E140480%_
                       _%make-body140486%_))))
                 (_%parse-clause140297%_
                  (lambda (_%hd140369%_ _%ids140370%_)
                    (let _%recur140372%_ ((_%e140374%_ _%hd140369%_)
                                          (_%vars140375%_ '())
                                          (_%depth140376%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e140374%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e140374%_))
                              (values '(any) _%vars140375%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e140374%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx140288%_
                                     _%hd140369%_))
                                  (if (let ((__tmp141686
                                             (lambda (_%id140381%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e140374%_
                                                  _%id140381%_)))))
                                        (declare (not safe))
                                        (__find __tmp141686 _%ids140370%_))
                                      (values (cons 'id _%e140374%_)
                                              _%vars140375%_)
                                      (if (let ((__tmp141687
                                                 (lambda (_%var140384%_)
                                                   (let ((__tmp141688
                                                          (car _%var140384%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e140374%_
                                                      __tmp141688)))))
                                            (declare (not safe))
                                            (__find __tmp141687
                                                    _%vars140375%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx140288%_
                                             _%e140374%_))
                                          (values (cons 'var _%e140374%_)
                                                  (cons (cons _%e140374%_
                                                              _%depth140376%_)
                                                        _%vars140375%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e140374%_))
                              (let* ((_%e140388140395%_ _%e140374%_)
                                     (_%E140390140399%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%e140388140395%_))))
                                     (_%E140389140460%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%e140388140395%_))
                                            (let ((_%e140391140403%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%e140388140395%_))))
                                              (let ((_%hd140392140406%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e140391140403%_)))
                                                    (_%tl140393140408%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e140391140403%_))))
                                                (let* ((_%hd140411%_
                                                        _%hd140392140406%_)
                                                       (_%rest140413%_
                                                        _%tl140393140408%_)
                                                       (_%make-pair140428%_
                                                        (lambda (_%tag140415%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd140416%_
                         _%tl140417%_)
                  (let* ((_%hd-depth140419%_
                          (if (eq? _%tag140415%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth140376%_ '1))
                              _%depth140376%_))
                         (_g141689_
                          (_%recur140372%_
                           _%hd140416%_
                           _%vars140375%_
                           _%hd-depth140419%_)))
                    (begin
                      (let ((_g141690_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g141689_)
                                   (##values-length _g141689_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g141690_ 2)))
                            (error "Context expects 2 values" _g141690_)))
                      (let ((_%hd140421%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g141689_ 0)))
                            (_%vars140422%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g141689_ 1))))
                        (let ((_g141691_
                               (_%recur140372%_
                                _%tl140417%_
                                _%vars140422%_
                                _%depth140376%_)))
                          (begin
                            (let ((_g141692_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g141691_)
                                         (##values-length _g141691_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g141692_ 2)))
                                  (error "Context expects 2 values"
                                         _g141692_)))
                            (let ((_%tl140424%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g141691_ 0)))
                                  (_%vars140425%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g141691_ 1))))
                              (values (cons _%tag140415%_
                                            (cons _%hd140421%_ _%tl140424%_))
                                      _%vars140425%_)))))))))
               (_%e140429140436%_ _%rest140413%_)
               (_%E140431140440%_
                (lambda ()
                  (_%make-pair140428%_ 'cons _%hd140411%_ _%rest140413%_)))
               (_%E140430140456%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%e140429140436%_))
                      (let ((_%e140432140444%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e140429140436%_))))
                        (let ((_%hd140433140447%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140432140444%_)))
                              (_%tl140434140449%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140432140444%_))))
                          (let* ((_%rest-hd140452%_ _%hd140433140447%_)
                                 (_%rest-tl140454%_ _%tl140434140449%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd140452%_))
                                (_%make-pair140428%_
                                 'splice
                                 _%hd140411%_
                                 _%rest-tl140454%_)
                                (_%make-pair140428%_
                                 'cons
                                 _%hd140411%_
                                 _%rest140413%_)))))
                      (_%E140431140440%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E140430140456%_))))
                                            (_%E140390140399%_)))))
                                (_%E140389140460%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e140374%_))
                                  (values '(null) _%vars140375%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e140374%_))
                                      (let ((_g141693_
                                             (_%recur140372%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e140374%_)))
                                              _%vars140375%_
                                              _%depth140376%_)))
                                        (begin
                                          (let ((_g141694_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g141693_)
                                                       (##values-length
                                                        _g141693_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g141694_ 2)))
                                                (error "Context expects 2 values"
                                                       _g141694_)))
                                          (let ((_%e140466%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g141693_ 0)))
                                                (_%vars140467%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g141693_
                                                    1))))
                                            (values (cons 'vector _%e140466%_)
                                                    _%vars140467%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e140374%_))
                                          (let ((_g141695_
                                                 (_%recur140372%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e140374%_)))
                                                  _%vars140375%_
                                                  _%depth140376%_)))
                                            (begin
                                              (let ((_g141696_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g141695_)
                                                           (##values-length
                                                            _g141695_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g141696_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g141696_)))
                                              (let ((_%e140470%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g141695_
                                                        0)))
                                                    (_%vars140471%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g141695_
                                                        1))))
                                                (values (cons 'box _%e140470%_)
                                                        _%vars140471%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e140374%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e140374%_)))
                                                      _%vars140375%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx140288%_
                                                 _%e140374%_))))))))))))
          (let* ((_%e140298140311%_ _%stx140288%_)
                 (_%E140300140315%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e140298140311%_))))
                 (_%E140299140365%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e140298140311%_))
                        (let ((_%e140301140319%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e140298140311%_))))
                          (let ((_%hd140302140322%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140301140319%_)))
                                (_%tl140303140324%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140301140319%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl140303140324%_))
                                (let ((_%e140304140327%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl140303140324%_))))
                                  (let ((_%hd140305140330%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140304140327%_)))
                                        (_%tl140306140332%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140304140327%_))))
                                    (let ((_%expr140335%_ _%hd140305140330%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl140306140332%_))
                                          (let ((_%e140307140337%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl140306140332%_))))
                                            (let ((_%hd140308140340%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e140307140337%_)))
                                                  (_%tl140309140342%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e140307140337%_))))
                                              (let* ((_%ids140345%_
                                                      _%hd140308140340%_)
                                                     (_%clauses140347%_
                                                      _%tl140309140342%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids140345%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses140347%_))
                                                        (let* ((_%ids140352%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids140345%_)))
                       (_%clauses140354%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses140347%_)))
                       (_%clause-ids140356%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses140354%_)))
                       (_%E140358%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target140360%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first140362%_
                        (if (null? _%clauses140354%_)
                            _%E140358%_
                            (car _%clause-ids140356%_))))
                  (let ((__tmp141698
                         (let ((__tmp141699
                                (let ((__tmp141701
                                       (let ((__tmp141703
                                              (cons (cons (cons _%E140358%_
                                                                '())
                                                          (cons (let ((__tmp141705
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target140360%_ '()))
                              (__tmp141704
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target140360%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp141705 __tmp141704))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp141702
                                              (_%generate-body140294%_
                                               (_%generate-bindings140293%_
                                                _%target140360%_
                                                _%ids140352%_
                                                _%clauses140354%_
                                                _%clause-ids140356%_
                                                _%E140358%_)
                                               (cons _%first140362%_
                                                     (cons _%expr140335%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp141703
                                          __tmp141702)))
                                      (__tmp141700
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx140288%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp141701
                                   __tmp141700))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp141699)))
                        (__tmp141697
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx140288%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp141698 __tmp141697)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx140288%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx140288%_
                                                       _%ids140345%_))))))
                                          (_%E140300140315%_)))))
                                (_%E140300140315%_))))
                        (_%E140300140315%_)))))
            (_%E140299140365%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx141013%_)
        (let* ((_%identifier=?141015%_ 'free-identifier=?)
               (_%unwrap-e141017%_ 'syntax-e)
               (_%wrap-e141019%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx141013%_
           _%identifier=?141015%_
           _%unwrap-e141017%_
           _%wrap-e141019%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx141021%_ _%identifier=?141022%_)
        (let* ((_%unwrap-e141024%_ 'syntax-e) (_%wrap-e141026%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx141021%_
           _%identifier=?141022%_
           _%unwrap-e141024%_
           _%wrap-e141026%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx141028%_ _%identifier=?141029%_ _%unwrap-e141030%_)
        (let ((_%wrap-e141032%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx141028%_
           _%identifier=?141029%_
           _%unwrap-e141030%_
           _%wrap-e141032%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g141706_
        (let ((_g141707_ (let () (declare (not safe)) (##length _g141706_))))
          (cond ((let () (declare (not safe)) (##fx= _g141707_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g141706_))
                ((let () (declare (not safe)) (##fx= _g141707_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g141706_))
                ((let () (declare (not safe)) (##fx= _g141707_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g141706_))
                ((let () (declare (not safe)) (##fx= _g141707_ 4))
                 (apply gx#macro-expand-syntax-case__% _g141706_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g141706_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx140285%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx140285%_))
            (let ((__tmp141708
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx140285%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp141708 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd140243%_ . _%rest140244%_)
        (let ((_%len140246%_ (length _%hd140243%_)))
          (let _%lp140248%_ ((_%rest140250%_ _%rest140244%_))
            (let* ((_%rest140251140259%_ _%rest140250%_)
                   (_%else140253140267%_ (lambda () '#!void))
                   (_%K140255140273%_
                    (lambda (_%rest140270%_ _%hd140271%_)
                      (if (let ((__tmp141709 (length _%hd140271%_)))
                            (declare (not safe))
                            (##fx= _%len140246%_ __tmp141709))
                          (_%lp140248%_ _%rest140270%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd140271%_))))))
              (if (pair? _%rest140251140259%_)
                  (let ((_%hd140256140276%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest140251140259%_)))
                        (_%tl140257140278%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest140251140259%_))))
                    (let* ((_%hd140281%_ _%hd140256140276%_)
                           (_%rest140283%_ _%tl140257140278%_))
                      (_%K140255140273%_ _%rest140283%_ _%hd140281%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx140193%_ _%n140194%_)
        (let _%lp140196%_ ((_%rest140199%_ _%stx140193%_) (_%r140201%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest140199%_))
              (let* ((_%g140203140210%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest140199%_)))
                     (_%E140205140214%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g140203140210%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K140206140221%_
                      (lambda (_%rest140217%_ _%hd140218%_)
                        (_%lp140196%_
                         _%rest140217%_
                         (cons _%hd140218%_ _%r140201%_)))))
                (if (pair? _%g140203140210%_)
                    (let ((_%hd140207140224%_
                           (let ()
                             (declare (not safe))
                             (##car _%g140203140210%_)))
                          (_%tl140208140226%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g140203140210%_))))
                      (let* ((_%hd140229%_ _%hd140207140224%_)
                             (_%rest140231%_ _%tl140208140226%_))
                        (_%K140206140221%_ _%rest140231%_ _%hd140229%_)))
                    (_%E140205140214%_)))
              (let _%lp140233%_ ((_%n140235%_ _%n140194%_)
                                 (_%l140236%_ _%r140201%_)
                                 (_%r140238%_ _%rest140199%_))
                (if (null? _%l140236%_)
                    (values _%l140236%_ _%r140238%_)
                    (if (fxpositive? _%n140235%_)
                        (_%lp140233%_
                         (let () (declare (not safe)) (##fx- _%n140235%_ '1))
                         (cdr _%l140236%_)
                         (cons (car _%l140236%_) _%r140238%_))
                        (values (reverse! _%l140236%_) _%r140238%_))))))))
    (define gx#syntax-split-splice->vector
      (lambda (_%stx140143%_ _%n140144%_)
        (let _%lp140146%_ ((_%rest140149%_ _%stx140143%_) (_%r140151%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest140149%_))
              (let* ((_%g140153140160%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest140149%_)))
                     (_%E140155140164%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g140153140160%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K140156140171%_
                      (lambda (_%rest140167%_ _%hd140168%_)
                        (_%lp140146%_
                         _%rest140167%_
                         (cons _%hd140168%_ _%r140151%_)))))
                (if (pair? _%g140153140160%_)
                    (let ((_%hd140157140174%_
                           (let ()
                             (declare (not safe))
                             (##car _%g140153140160%_)))
                          (_%tl140158140176%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g140153140160%_))))
                      (let* ((_%hd140179%_ _%hd140157140174%_)
                             (_%rest140181%_ _%tl140158140176%_))
                        (_%K140156140171%_ _%rest140181%_ _%hd140179%_)))
                    (_%E140155140164%_)))
              (let _%lp140183%_ ((_%n140185%_ _%n140144%_)
                                 (_%l140186%_ _%r140151%_)
                                 (_%r140188%_ _%rest140149%_))
                (if (null? _%l140186%_)
                    (vector _%l140186%_ _%r140188%_)
                    (if (fxpositive? _%n140185%_)
                        (_%lp140183%_
                         (let () (declare (not safe)) (##fx- _%n140185%_ '1))
                         (cdr _%l140186%_)
                         (cons (car _%l140186%_) _%r140188%_))
                        (vector (reverse! _%l140186%_) _%r140188%_))))))))))
