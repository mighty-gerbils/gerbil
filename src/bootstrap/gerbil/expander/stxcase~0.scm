(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1756715353)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp141592 (list gx#expander::t))
            (__tmp141591 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp141592
         '(id depth)
         __tmp141591
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args141588%_
        (apply make-instance gx#syntax-pattern::t _%$args141588%_)))
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
      (lambda (_%self141574%_ _%stx141575%_)
        (let ((_%self141578%_ _%self141574%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx141575%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx141041%_)
        (letrec ((_%generate141043%_
                  (lambda (_%e141283%_)
                    (letrec ((_%BUG141285%_
                              (lambda (_%q141450%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx141041%_
                                         _%e141283%_
                                         _%q141450%_))))
                             (_%local-pattern-e141286%_
                              (lambda (_%pat141448%_)
                                (let ((__tmp141593
                                       (##structure-ref
                                        _%pat141448%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp141593))))
                             (_%getvar141287%_
                              (lambda (_%q141445%_ _%vars141446%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q141445%_
                                   _%vars141446%_
                                   _%BUG141285%_))))
                             (_%getarg141288%_
                              (lambda (_%arg141411%_ _%vars141412%_)
                                (let* ((_%arg141413141420%_ _%arg141411%_)
                                       (_%E141415141424%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg141413141420%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K141416141433%_
                                        (lambda (_%e141427%_ _%tag141428%_)
                                          (let ((_%$e141430%_ _%tag141428%_))
                                            (if (eq? 'ref _%$e141430%_)
                                                (_%getvar141287%_
                                                 _%e141427%_
                                                 _%vars141412%_)
                                                (if (eq? 'pattern _%$e141430%_)
                                                    (_%local-pattern-e141286%_
                                                     _%e141427%_)
                                                    (_%BUG141285%_
                                                     _%arg141411%_)))))))
                                  (if (pair? _%arg141413141420%_)
                                      (let ((_%hd141417141436%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg141413141420%_)))
                                            (_%tl141418141438%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg141413141420%_))))
                                        (let* ((_%tag141441%_
                                                _%hd141417141436%_)
                                               (_%e141443%_
                                                _%tl141418141438%_))
                                          (_%K141416141433%_
                                           _%e141443%_
                                           _%tag141441%_)))
                                      (_%E141415141424%_))))))
                      (let _%recur141290%_ ((_%e141292%_ _%e141283%_)
                                            (_%vars141293%_ '()))
                        (let* ((_%e141294141301%_ _%e141292%_)
                               (_%E141296141305%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e141294141301%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K141297141399%_
                                (lambda (_%body141308%_ _%tag141309%_)
                                  (let ((_%$e141311%_ _%tag141309%_))
                                    (if (eq? 'datum _%$e141311%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body141308%_))
                                        (if (eq? 'term _%$e141311%_)
                                            (let ((_%id141314%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body141308%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id141314%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks141317%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id141314%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks141317%_)
                                                        (let ((__tmp141594
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body141308%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp141594))
                (let ((__tmp141596
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body141308%_)))
                      (__tmp141595
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body141308%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp141596
                   __tmp141595
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id141314%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body141308%_))
                                                      (_%BUG141285%_
                                                       _%e141292%_))))
                                            (if (eq? 'pattern _%$e141311%_)
                                                (_%local-pattern-e141286%_
                                                 _%body141308%_)
                                                (if (eq? 'ref _%$e141311%_)
                                                    (_%getvar141287%_
                                                     _%body141308%_
                                                     _%vars141293%_)
                                                    (if (eq? 'cons
                                                             _%$e141311%_)
                                                        (let ((__tmp141598
                                                               (_%recur141290%_
                                                                (car _%body141308%_)
                                                                _%vars141293%_))
                                                              (__tmp141597
                                                               (_%recur141290%_
                                                                (cdr _%body141308%_)
                                                                _%vars141293%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp141598
                                                           __tmp141597))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e141311%_)
                    (let ((__tmp141599
                           (_%recur141290%_ _%body141308%_ _%vars141293%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp141599))
                    (if (eq? 'box _%$e141311%_)
                        (let ((__tmp141600
                               (_%recur141290%_
                                _%body141308%_
                                _%vars141293%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp141600))
                        (if (eq? 'splice _%$e141311%_)
                            (let* ((_%body141320141331%_ _%body141308%_)
                                   (_%E141322141335%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body141320141331%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K141323141373%_
                                    (lambda (_%args141338%_
                                             _%iv141339%_
                                             _%hd141340%_
                                             _%depth141341%_)
                                      (let* ((_%targets141347%_
                                              (map (lambda (_%g141342141344%_)
                                                     (_%getarg141288%_
                                                      _%g141342141344%_
                                                      _%vars141293%_))
                                                   _%args141338%_))
                                             (_%fold-in141349%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args141338%_)))
                                             (_%fold-out141351%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args141353%_
                                              (let ((__tmp141601
                                                     (cons _%fold-out141351%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp141601
                                                 _%fold-in141349%_)))
                                             (_%lambda-body141370%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth141341%_ '1))
                                                  (let ((_%r-args141361%_
                                                         (map (lambda (_%arg141355%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg141355%_)))
                      _%args141338%_))
                (_%r-vars141362%_
                 (let ((__tmp141602
                        (lambda (_%arg141357%_ _%var141358%_ _%r141359%_)
                          (cons (cons (cdr _%arg141357%_) _%var141358%_)
                                _%r141359%_))))
                   (declare (not safe))
                   (__foldr2
                    __tmp141602
                    _%vars141293%_
                    _%args141338%_
                    _%fold-in141349%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur141290%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth141341%_ '1))
                         (cons _%hd141340%_
                               (cons (cons 'var _%fold-out141351%_)
                                     _%r-args141361%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars141362%_))
                                                  (let* ((_%hd-vars141368%_
                                                          (let ((__tmp141603
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg141364%_ _%var141365%_ _%r141366%_)
                           (cons (cons (cdr _%arg141364%_) _%var141365%_)
                                 _%r141366%_))))
                    (declare (not safe))
                    (__foldr2
                     __tmp141603
                     _%vars141293%_
                     _%args141338%_
                     _%fold-in141349%_)))
                 (__tmp141604
                  (_%recur141290%_ _%hd141340%_ _%hd-vars141368%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp141604
                                                     _%fold-out141351%_)))))
                                        (let ((__tmp141608
                                               (if (let ((__tmp141609
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets141347%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp141609 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets141347%_))
                                                   '#!void))
                                              (__tmp141605
                                               (let ((__tmp141607
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args141353%_
                                                         _%lambda-body141370%_)))
                                                     (__tmp141606
                                                      (_%recur141290%_
                                                       _%iv141339%_
                                                       _%vars141293%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp141607
                                                  __tmp141606
                                                  _%targets141347%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp141608
                                           __tmp141605))))))
                              (if (pair? _%body141320141331%_)
                                  (let ((_%hd141324141376%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body141320141331%_)))
                                        (_%tl141325141378%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body141320141331%_))))
                                    (let ((_%depth141381%_ _%hd141324141376%_))
                                      (if (pair? _%tl141325141378%_)
                                          (let ((_%hd141326141383%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl141325141378%_)))
                                                (_%tl141327141385%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl141325141378%_))))
                                            (let ((_%hd141388%_
                                                   _%hd141326141383%_))
                                              (if (pair? _%tl141327141385%_)
                                                  (let ((_%hd141328141390%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl141327141385%_)))
                                                        (_%tl141329141392%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl141327141385%_))))
                                                    (let* ((_%iv141395%_
                                                            _%hd141328141390%_)
                                                           (_%args141397%_
                                                            _%tl141329141392%_))
                                                      (_%K141323141373%_
                                                       _%args141397%_
                                                       _%iv141395%_
                                                       _%hd141388%_
                                                       _%depth141381%_)))
                                                  (_%E141322141335%_))))
                                          (_%E141322141335%_))))
                                  (_%E141322141335%_)))
                            (if (eq? 'var _%$e141311%_)
                                _%body141308%_
                                (_%BUG141285%_ _%e141292%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (pair? _%e141294141301%_)
                              (let ((_%hd141298141402%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e141294141301%_)))
                                    (_%tl141299141404%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e141294141301%_))))
                                (let* ((_%tag141407%_ _%hd141298141402%_)
                                       (_%body141409%_ _%tl141299141404%_))
                                  (_%K141297141399%_
                                   _%body141409%_
                                   _%tag141407%_)))
                              (_%E141296141305%_)))))))
                 (_%parse141044%_
                  (lambda (_%e141085%_)
                    (letrec ((_%make-cons141087%_
                              (lambda (_%hd141275%_ _%tl141276%_)
                                (let ((_g141610_ _%hd141275%_)
                                      (_g141612_ _%tl141276%_))
                                  (begin
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
                                    (let ((_%hd-e141278%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g141610_ 0)))
                                          (_%hd-vars141279%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g141610_ 1))))
                                      (let ((_%tl-e141280%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g141612_ 0)))
                                            (_%tl-vars141281%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g141612_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e141278%_
                                                            _%tl-e141280%_))
                                                (append _%hd-vars141279%_
                                                        _%tl-vars141281%_))))))))
                             (_%make-splice141088%_
                              (lambda (_%where141211%_
                                       _%depth141212%_
                                       _%hd141213%_
                                       _%tl141214%_)
                                (let ((_g141614_ _%hd141213%_)
                                      (_g141616_ _%tl141214%_))
                                  (begin
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
                                    (let ((_g141617_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g141616_)
                                                 (##values-length _g141616_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g141617_ 2)))
                                          (error "Context expects 2 values"
                                                 _g141617_)))
                                    (let ((_%hd-e141216%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g141614_ 0)))
                                          (_%hd-vars141217%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g141614_ 1))))
                                      (let ((_%tl-e141218%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g141616_ 0)))
                                            (_%tl-vars141219%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g141616_ 1))))
                                        (let _%lp141221%_ ((_%rest141223%_
                                                            _%hd-vars141217%_)
                                                           (_%targets141224%_
                                                            '())
                                                           (_%vars141225%_
                                                            _%tl-vars141219%_))
                                          (let* ((_%rest141226141236%_
                                                  _%rest141223%_)
                                                 (_%else141228141244%_
                                                  (lambda ()
                                                    (if (null? _%targets141224%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx141041%_
                                                           _%where141211%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth141212%_
                                    (cons _%hd-e141216%_
                                          (cons _%tl-e141218%_
                                                _%targets141224%_))))
                        _%vars141225%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K141230141256%_
                                                  (lambda (_%rest141247%_
                                                           _%hd-pat141248%_
                                                           _%hd-depth*141249%_)
                                                    (let ((_%hd-depth141251%_
                                                           (fx- _%hd-depth*141249%_
                                                                _%depth141212%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth141251%_))
                                                          (_%lp141221%_
                                                           _%rest141247%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat141248%_)
                         _%targets141224%_)
                   (cons (cons _%hd-depth141251%_ _%hd-pat141248%_)
                         _%vars141225%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth141251%_))
                      (_%lp141221%_
                       _%rest141247%_
                       (cons (cons 'pattern _%hd-pat141248%_)
                             _%targets141224%_)
                       _%vars141225%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx141041%_
                         _%where141211%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%rest141226141236%_)
                                                (let ((_%hd141231141259%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest141226141236%_)))
                                                      (_%tl141232141261%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest141226141236%_))))
                                                  (if (pair? _%hd141231141259%_)
                                                      (let ((_%hd141233141264%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd141231141259%_)))
                    (_%tl141234141266%_
                     (let () (declare (not safe)) (##cdr _%hd141231141259%_))))
                (let* ((_%hd-depth*141269%_ _%hd141233141264%_)
                       (_%hd-pat141271%_ _%tl141234141266%_)
                       (_%rest141273%_ _%tl141232141261%_))
                  (_%K141230141256%_
                   _%rest141273%_
                   _%hd-pat141271%_
                   _%hd-depth*141269%_)))
              (_%else141228141244%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else141228141244%_))))))))))
                             (_%recur141089%_
                              (lambda (_%e141094%_ _%is-e?141095%_)
                                (if (_%is-e?141095%_ _%e141094%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx141041%_))
                                    (if (gx#syntax-local-pattern? _%e141094%_)
                                        (let* ((_%pat141099%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e141094%_)))
                                               (_%depth141101%_
                                                (##structure-ref
                                                 _%pat141099%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth141101%_)
                                              (values (cons 'ref _%pat141099%_)
                                                      (cons (cons _%depth141101%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat141099%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat141099%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e141094%_))
                                            (values (cons 'term _%e141094%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e141094%_))
                                                (let* ((_%e141105141112%_
                                                        _%e141094%_)
                                                       (_%E141107141116%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e141105141112%_))))
                                                       (_%E141106141198%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%e141105141112%_))
                      (let ((_%e141108141120%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e141105141112%_))))
                        (let ((_%hd141109141123%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141108141120%_)))
                              (_%tl141110141125%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141108141120%_))))
                          (let* ((_%hd141128%_ _%hd141109141123%_)
                                 (_%rest141130%_ _%tl141110141125%_))
                            (if (_%is-e?141095%_ _%hd141128%_)
                                (let* ((_%e141131141138%_ _%rest141130%_)
                                       (_%E141133141142%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx141041%_
                                             _%e141094%_))))
                                       (_%E141132141156%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e141131141138%_))
                                              (let ((_%e141134141146%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e141131141138%_))))
                                                (let ((_%hd141135141149%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141134141146%_)))
                                                      (_%tl141136141151%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141134141146%_))))
                                                  (let ((_%rest141154%_
                                                         _%hd141135141149%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl141136141151%_))
                                                        (_%recur141089%_
                                                         _%rest141154%_
                                                         false)
                                                        (_%E141133141142%_)))))
                                              (_%E141133141142%_)))))
                                  (_%E141132141156%_))
                                (let _%lp141160%_ ((_%rest141162%_
                                                    _%rest141130%_)
                                                   (_%depth141163%_ '0))
                                  (let* ((_%e141164141171%_ _%rest141162%_)
                                         (_%E141166141175%_
                                          (lambda ()
                                            (if (fxpositive? _%depth141163%_)
                                                (_%make-splice141088%_
                                                 _%e141094%_
                                                 _%depth141163%_
                                                 (_%recur141089%_
                                                  _%hd141128%_
                                                  _%is-e?141095%_)
                                                 (_%recur141089%_
                                                  _%rest141162%_
                                                  _%is-e?141095%_))
                                                (_%make-cons141087%_
                                                 (_%recur141089%_
                                                  _%hd141128%_
                                                  _%is-e?141095%_)
                                                 (_%recur141089%_
                                                  _%rest141162%_
                                                  _%is-e?141095%_)))))
                                         (_%E141165141194%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%e141164141171%_))
                                                (let ((_%e141167141179%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%e141164141171%_))))
                                                  (let ((_%hd141168141182%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141167141179%_)))
                                                        (_%tl141169141184%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141167141179%_))))
                                                    (let* ((_%rest-hd141187%_
                                                            _%hd141168141182%_)
                                                           (_%rest-tl141189%_
                                                            _%tl141169141184%_))
                                                      (if (_%is-e?141095%_
                                                           _%rest-hd141187%_)
                                                          (_%lp141160%_
                                                           _%rest-tl141189%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth141163%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth141163%_)
                      (_%make-splice141088%_
                       _%e141094%_
                       _%depth141163%_
                       (_%recur141089%_ _%hd141128%_ _%is-e?141095%_)
                       (_%recur141089%_ _%rest141162%_ _%is-e?141095%_))
                      (_%make-cons141087%_
                       (_%recur141089%_ _%hd141128%_ _%is-e?141095%_)
                       (_%recur141089%_ _%rest141162%_ _%is-e?141095%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E141166141175%_)))))
                                    (_%E141165141194%_)))))))
                      (_%E141107141116%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E141106141198%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e141094%_))
                                                    (let ((_g141618_
                                                           (_%recur141089%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e141094%_)))
                    _%is-e?141095%_)))
              (begin
                (let ((_g141619_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g141618_)
                             (##values-length _g141618_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g141619_ 2)))
                      (error "Context expects 2 values" _g141619_)))
                (let ((_%e141203%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g141618_ 0)))
                      (_%vars141204%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g141618_ 1))))
                  (values (cons 'vector _%e141203%_) _%vars141204%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e141094%_))
                                                        (let ((_g141620_
                                                               (_%recur141089%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e141094%_)))
                        _%is-e?141095%_)))
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
                    (let ((_%e141207%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g141620_ 0)))
                          (_%vars141208%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g141620_ 1))))
                      (values (cons 'box _%e141207%_) _%vars141208%_))))
                (values (cons 'datum _%e141094%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g141622_
                             (_%recur141089%_ _%e141085%_ gx#ellipsis?)))
                        (begin
                          (let ((_g141623_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g141622_)
                                       (##values-length _g141622_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g141623_ 2)))
                                (error "Context expects 2 values" _g141623_)))
                          (let ((_%tree141091%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g141622_ 0)))
                                (_%vars141092%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g141622_ 1))))
                            (if (null? _%vars141092%_)
                                _%tree141091%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx141041%_
                                   _%vars141092%_))))))))))
          (let* ((_%e141045141055%_ _%stx141041%_)
                 (_%E141047141059%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx141041%_))))
                 (_%E141046141081%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e141045141055%_))
                        (let ((_%e141048141063%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e141045141055%_))))
                          (let ((_%hd141049141066%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141048141063%_)))
                                (_%tl141050141068%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141048141063%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl141050141068%_))
                                (let ((_%e141051141071%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl141050141068%_))))
                                  (let ((_%hd141052141074%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e141051141071%_)))
                                        (_%tl141053141076%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e141051141071%_))))
                                    (let ((_%form141079%_ _%hd141052141074%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl141053141076%_))
                                          (let ((__tmp141625
                                                 (_%generate141043%_
                                                  (_%parse141044%_
                                                   _%form141079%_)))
                                                (__tmp141624
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx141041%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp141625
                                             __tmp141624))
                                          (_%E141047141059%_)))))
                                (_%E141047141059%_))))
                        (_%E141047141059%_)))))
            (_%E141046141081%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx140290%_
               _%identifier=?140291%_
               _%unwrap-e140292%_
               _%wrap-e140293%_)
        (letrec ((_%generate-bindings140295%_
                  (lambda (_%target140905%_
                           _%ids140906%_
                           _%clauses140907%_
                           _%clause-ids140908%_
                           _%E140909%_)
                    (letrec ((_%generate1140911%_
                              (lambda (_%clause141008%_
                                       _%clause-id141009%_
                                       _%E141010%_)
                                (cons (cons _%clause-id141009%_ '())
                                      (cons (let ((__tmp141627
                                                   (cons _%target140905%_ '()))
                                                  (__tmp141626
                                                   (_%generate-clause140297%_
                                                    _%target140905%_
                                                    _%ids140906%_
                                                    _%clause141008%_
                                                    _%E141010%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp141627
                                               __tmp141626))
                                            '())))))
                      (let _%lp140913%_ ((_%rest140915%_ _%clauses140907%_)
                                         (_%rest-ids140916%_
                                          _%clause-ids140908%_)
                                         (_%bindings140917%_ '()))
                        (let* ((_%rest140918140926%_ _%rest140915%_)
                               (_%else140920140934%_
                                (lambda () _%bindings140917%_))
                               (_%K140922140996%_
                                (lambda (_%rest140937%_ _%clause140938%_)
                                  (let* ((_%rest-ids140939140946%_
                                          _%rest-ids140916%_)
                                         (_%E140941140950%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids140939140946%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K140942140984%_
                                          (lambda (_%rest-ids140953%_
                                                   _%clause-id140954%_)
                                            (let* ((_%rest-ids140955140963%_
                                                    _%rest-ids140953%_)
                                                   (_%else140957140971%_
                                                    (lambda ()
                                                      (cons (_%generate1140911%_
                                                             _%clause140938%_
                                                             _%clause-id140954%_
                                                             _%E140909%_)
                                                            _%bindings140917%_)))
                                                   (_%K140959140976%_
                                                    (lambda (_%next-clause-id140974%_)
                                                      (_%lp140913%_
                                                       _%rest140937%_
                                                       _%rest-ids140953%_
                                                       (cons (_%generate1140911%_
                                                              _%clause140938%_
                                                              _%clause-id140954%_
                                                              _%next-clause-id140974%_)
                                                             _%bindings140917%_)))))
                                              (if (pair? _%rest-ids140955140963%_)
                                                  (let* ((_%hd140960140979%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids140955140963%_)))
                                                         (_%next-clause-id140982%_
                                                          _%hd140960140979%_))
                                                    (_%K140959140976%_
                                                     _%next-clause-id140982%_))
                                                  (_%else140957140971%_))))))
                                    (if (pair? _%rest-ids140939140946%_)
                                        (let ((_%hd140943140987%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids140939140946%_)))
                                              (_%tl140944140989%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids140939140946%_))))
                                          (let* ((_%clause-id140992%_
                                                  _%hd140943140987%_)
                                                 (_%rest-ids140994%_
                                                  _%tl140944140989%_))
                                            (_%K140942140984%_
                                             _%rest-ids140994%_
                                             _%clause-id140992%_)))
                                        (_%E140941140950%_))))))
                          (if (pair? _%rest140918140926%_)
                              (let ((_%hd140923140999%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest140918140926%_)))
                                    (_%tl140924141001%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest140918140926%_))))
                                (let* ((_%clause141004%_ _%hd140923140999%_)
                                       (_%rest141006%_ _%tl140924141001%_))
                                  (_%K140922140996%_
                                   _%rest141006%_
                                   _%clause141004%_)))
                              (_%else140920140934%_)))))))
                 (_%generate-body140296%_
                  (lambda (_%bindings140865%_ _%body140866%_)
                    (let _%recur140868%_ ((_%rest140870%_ _%bindings140865%_))
                      (let* ((_%rest140871140879%_ _%rest140870%_)
                             (_%else140873140887%_ (lambda () _%body140866%_))
                             (_%K140875140893%_
                              (lambda (_%rest140890%_ _%hd140891%_)
                                (let ((__tmp141629 (cons _%hd140891%_ '()))
                                      (__tmp141628
                                       (_%recur140868%_ _%rest140890%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp141629
                                   __tmp141628)))))
                        (if (pair? _%rest140871140879%_)
                            (let ((_%hd140876140896%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest140871140879%_)))
                                  (_%tl140877140898%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest140871140879%_))))
                              (let* ((_%hd140901%_ _%hd140876140896%_)
                                     (_%rest140903%_ _%tl140877140898%_))
                                (_%K140875140893%_
                                 _%rest140903%_
                                 _%hd140901%_)))
                            (_%else140873140887%_))))))
                 (_%generate-clause140297%_
                  (lambda (_%target140728%_
                           _%ids140729%_
                           _%clause140730%_
                           _%E140731%_)
                    (letrec ((_%generate1140733%_
                              (lambda (_%hd140820%_
                                       _%fender140821%_
                                       _%body140822%_)
                                (let ((_g141630_
                                       (_%parse-clause140299%_
                                        _%hd140820%_
                                        _%ids140729%_)))
                                  (begin
                                    (let ((_g141631_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g141630_)
                                                 (##values-length _g141630_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g141631_ 2)))
                                          (error "Context expects 2 values"
                                                 _g141631_)))
                                    (let ((_%e140824%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g141630_ 0)))
                                          (_%mvars140825%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g141630_ 1))))
                                      (let* ((_%pvars140827%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars140825%_))))
                                             (_%E140829%_
                                              (cons _%E140731%_
                                                    (cons _%target140728%_
                                                          '())))
                                             (_%K140862%_
                                              (let ((__tmp141632
                                                     (let ((__tmp141634
                                                            (map (lambda (_%mvar140831%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar140832%_)
                           (let* ((_%mvar140833140840%_ _%mvar140831%_)
                                  (_%E140835140844%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar140833140840%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K140836140850%_
                                   (lambda (_%depth140847%_ _%id140848%_)
                                     (cons _%id140848%_
                                           (cons (let ((__tmp141636
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id140848%_)))
                                                       (__tmp141635
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar140832%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp141636
                                                    __tmp141635
                                                    _%depth140847%_))
                                                 '())))))
                             (if (pair? _%mvar140833140840%_)
                                 (let ((_%hd140837140853%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar140833140840%_)))
                                       (_%tl140838140855%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar140833140840%_))))
                                   (let* ((_%id140858%_ _%hd140837140853%_)
                                          (_%depth140860%_ _%tl140838140855%_))
                                     (_%K140836140850%_
                                      _%depth140860%_
                                      _%id140858%_)))
                                 (_%E140835140844%_))))
                         _%mvars140825%_
                         _%pvars140827%_))
                   (__tmp141633
                    (if (eq? _%fender140821%_ '#t)
                        _%body140822%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender140821%_
                           _%body140822%_
                           _%E140829%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp141634 __tmp141633))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars140827%_
                                                 __tmp141632))))
                                        (_%generate-match140298%_
                                         _%hd140820%_
                                         _%target140728%_
                                         _%e140824%_
                                         _%mvars140825%_
                                         _%K140862%_
                                         _%E140829%_))))))))
                      (let* ((_%e140734140754%_ _%clause140730%_)
                             (_%E140743140758%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e140734140754%_))))
                             (_%E140736140792%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e140734140754%_))
                                    (let ((_%e140744140762%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e140734140754%_))))
                                      (let ((_%hd140745140765%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e140744140762%_)))
                                            (_%tl140746140767%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e140744140762%_))))
                                        (let ((_%hd140770%_
                                               _%hd140745140765%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl140746140767%_))
                                              (let ((_%e140747140772%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl140746140767%_))))
                                                (let ((_%hd140748140775%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e140747140772%_)))
                                                      (_%tl140749140777%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e140747140772%_))))
                                                  (let ((_%fender140780%_
                                                         _%hd140748140775%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl140749140777%_))
                                                        (let ((_%e140750140782%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl140749140777%_))))
                  (let ((_%hd140751140785%_
                         (let ()
                           (declare (not safe))
                           (##car _%e140750140782%_)))
                        (_%tl140752140787%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e140750140782%_))))
                    (let ((_%body140790%_ _%hd140751140785%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl140752140787%_))
                          (_%generate1140733%_
                           _%hd140770%_
                           _%fender140780%_
                           _%body140790%_)
                          (_%E140743140758%_)))))
                (_%E140743140758%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E140743140758%_)))))
                                    (_%E140743140758%_))))
                             (_%E140735140816%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e140734140754%_))
                                    (let ((_%e140737140796%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e140734140754%_))))
                                      (let ((_%hd140738140799%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e140737140796%_)))
                                            (_%tl140739140801%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e140737140796%_))))
                                        (let ((_%hd140804%_
                                               _%hd140738140799%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl140739140801%_))
                                              (let ((_%e140740140806%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl140739140801%_))))
                                                (let ((_%hd140741140809%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e140740140806%_)))
                                                      (_%tl140742140811%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e140740140806%_))))
                                                  (let ((_%body140814%_
                                                         _%hd140741140809%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl140742140811%_))
                                                        (_%generate1140733%_
                                                         _%hd140804%_
                                                         '#t
                                                         _%body140814%_)
                                                        (_%E140736140792%_)))))
                                              (_%E140736140792%_)))))
                                    (_%E140736140792%_)))))
                        (_%E140735140816%_)))))
                 (_%generate-match140298%_
                  (lambda (_%where140477%_
                           _%target140478%_
                           _%hd140479%_
                           _%mvars140480%_
                           _%K140481%_
                           _%E140482%_)
                    (letrec ((_%BUG140484%_
                              (lambda (_%q140726%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx140290%_
                                         _%hd140479%_
                                         _%q140726%_))))
                             (_%recur140485%_
                              (lambda (_%e140576%_
                                       _%vars140577%_
                                       _%target140578%_
                                       _%E140579%_
                                       _%k140580%_)
                                (let* ((_%e140581140588%_ _%e140576%_)
                                       (_%E140583140592%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e140581140588%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K140584140714%_
                                        (lambda (_%body140595%_ _%tag140596%_)
                                          (let ((_%$e140598%_ _%tag140596%_))
                                            (if (eq? 'any _%$e140598%_)
                                                (_%k140580%_ _%vars140577%_)
                                                (if (eq? 'id _%$e140598%_)
                                                    (let ((__tmp141641
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target140578%_)))
                                                          (__tmp141637
                                                           (let ((__tmp141639
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp141640
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e140293%_
                                    _%body140595%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?140291%_
                             __tmp141640
                             _%target140578%_)))
                         (__tmp141638 (_%k140580%_ _%vars140577%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp141639 __tmp141638 _%E140579%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp141641 __tmp141637 _%E140579%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e140598%_)
                                                        (_%k140580%_
                                                         (cons (cons _%body140595%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target140578%_)
                       _%vars140577%_))
                (if (eq? 'cons _%$e140598%_)
                    (let ((_%$e140601%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd140602%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl140603%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp141647
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target140578%_)))
                            (__tmp141642
                             (let ((__tmp141646
                                    (cons (cons (cons _%$e140601%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e140292%_
                                                         _%target140578%_))
                                                      '()))
                                          '()))
                                   (__tmp141643
                                    (let ((__tmp141645
                                           (cons (cons (cons _%$hd140602%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e140601%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl140603%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e140601%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp141644
                                           (let* ((_%body140604140611%_
                                                   _%body140595%_)
                                                  (_%E140606140615%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body140604140611%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K140607140623%_
                                                   (lambda (_%tl140618%_
                                                            _%hd140619%_)
                                                     (_%recur140485%_
                                                      _%hd140619%_
                                                      _%vars140577%_
                                                      _%$hd140602%_
                                                      _%E140579%_
                                                      (lambda (_%vars140621%_)
                                                        (_%recur140485%_
                                                         _%tl140618%_
                                                         _%vars140621%_
                                                         _%$tl140603%_
                                                         _%E140579%_
                                                         _%k140580%_))))))
                                             (if (pair? _%body140604140611%_)
                                                 (let ((_%hd140608140626%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body140604140611%_)))
                                                       (_%tl140609140628%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body140604140611%_))))
                                                   (let* ((_%hd140631%_
                                                           _%hd140608140626%_)
                                                          (_%tl140633%_
                                                           _%tl140609140628%_))
                                                     (_%K140607140623%_
                                                      _%tl140633%_
                                                      _%hd140631%_)))
                                                 (_%E140606140615%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp141645
                                       __tmp141644))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp141646
                                __tmp141643))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp141647
                         __tmp141642
                         _%E140579%_)))
                    (if (eq? 'splice _%$e140598%_)
                        (let* ((_%body140634140641%_ _%body140595%_)
                               (_%E140636140645%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body140634140641%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K140637140696%_
                                (lambda (_%tl140648%_ _%hd140649%_)
                                  (let* ((_%rlen140651%_
                                          (_%splice-rlen140486%_ _%tl140648%_))
                                         (_%$target140653%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd140655%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl140657%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp140659%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e140661%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd140663%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl140665%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars140667%_
                                          (_%splice-vars140487%_ _%hd140649%_))
                                         (_%lvars140669%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars140667%_)))
                                         (_%tlvars140671%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars140667%_)))
                                         (_%linit140675%_
                                          (map (lambda (_%var140673%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars140669%_)))
                                    (letrec ((_%make-loop140678%_
                                              (lambda (_%vars140682%_)
                                                (let ((__tmp141649
                                                       (cons (cons (cons _%$lp140659%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp141662
                                        (cons _%$hd140655%_ _%lvars140669%_))
                                       (__tmp141650
                                        (let ((__tmp141661
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd140655%_)))
                                              (__tmp141655
                                               (let ((__tmp141660
                                                      (cons (cons (cons _%$lp-e140661%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e140292%_
                                   _%$hd140655%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp141656
                                                      (let ((__tmp141659
                                                             (cons (cons (cons _%$lp-hd140663%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e140661%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl140665%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e140661%_))
                                             '()))
                                 '())))
                    (__tmp141657
                     (_%recur140485%_
                      _%hd140649%_
                      '()
                      _%$lp-hd140663%_
                      _%E140579%_
                      (lambda (_%hdvars140684%_)
                        (cons _%$lp140659%_
                              (cons _%$lp-tl140665%_
                                    (map (lambda (_%svar140686%_
                                                  _%lvar140687%_)
                                           (let ((__tmp141658
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar140686%_
                                                     _%hdvars140684%_
                                                     _%BUG140484%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp141658
                                              _%lvar140687%_)))
                                         _%svars140667%_
                                         _%lvars140669%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp141659 __tmp141657))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp141660
                                                  __tmp141656)))
                                              (__tmp141651
                                               (let ((__tmp141654
                                                      (map (lambda (_%lvar140689%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar140690%_)
                     (cons (cons _%tlvar140690%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar140689%_))
                                 '())))
                   _%lvars140669%_
                   _%tlvars140671%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp141652
                                                      (_%k140580%_
                                                       (let ((__tmp141653
                                                              (lambda (_%svar140692%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar140693%_
                               _%r140694%_)
                        (cons (cons _%svar140692%_ _%tlvar140693%_)
                              _%r140694%_))))
                 (declare (not safe))
                 (__foldl2
                  __tmp141653
                  _%vars140682%_
                  _%svars140667%_
                  _%tlvars140671%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp141654
                                                  __tmp141652))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp141661
                                           __tmp141655
                                           __tmp141651))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp141662
                                    __tmp141650))
                                 '()))
                     '()))
              (__tmp141648
               (cons _%$lp140659%_ (cons _%$target140653%_ _%linit140675%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp141649
                                                   __tmp141648)))))
                                      (let ((_%body140680%_
                                             (let ((__tmp141664
                                                    (cons (cons (cons _%$target140653%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl140657%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target140578%_
                                 _%rlen140651%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp141663
                                                    (_%recur140485%_
                                                     _%tl140648%_
                                                     _%vars140577%_
                                                     _%$tl140657%_
                                                     _%E140579%_
                                                     _%make-loop140678%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp141664
                                                __tmp141663))))
                                        (let ((__tmp141668
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target140578%_)))
                                              (__tmp141665
                                               (if (zero? _%rlen140651%_)
                                                   _%body140680%_
                                                   (let ((__tmp141666
                                                          (let ((__tmp141667
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target140578%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp141667 _%rlen140651%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp141666
                                                      _%body140680%_
                                                      _%E140579%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp141668
                                           __tmp141665
                                           _%E140579%_))))))))
                          (if (pair? _%body140634140641%_)
                              (let ((_%hd140638140699%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body140634140641%_)))
                                    (_%tl140639140701%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body140634140641%_))))
                                (let* ((_%hd140704%_ _%hd140638140699%_)
                                       (_%tl140706%_ _%tl140639140701%_))
                                  (_%K140637140696%_
                                   _%tl140706%_
                                   _%hd140704%_)))
                              (_%E140636140645%_)))
                        (if (eq? 'null _%$e140598%_)
                            (let ((__tmp141670
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target140578%_)))
                                  (__tmp141669 (_%k140580%_ _%vars140577%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp141670
                               __tmp141669
                               _%E140579%_))
                            (if (eq? 'vector _%$e140598%_)
                                (let ((_%$e140708%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp141675
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target140578%_)))
                                        (__tmp141671
                                         (let ((__tmp141673
                                                (cons (cons (cons _%$e140708%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp141674
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e140292%_
                                    _%target140578%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp141674))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp141672
                                                (_%recur140485%_
                                                 _%body140595%_
                                                 _%vars140577%_
                                                 _%$e140708%_
                                                 _%E140579%_
                                                 _%k140580%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp141673
                                            __tmp141672))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp141675
                                     __tmp141671
                                     _%E140579%_)))
                                (if (eq? 'box _%$e140598%_)
                                    (let ((_%$e140710%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp141680
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target140578%_)))
                                            (__tmp141676
                                             (let ((__tmp141678
                                                    (cons (cons (cons _%$e140710%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp141679
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e140292%_
                                        _%target140578%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp141679))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp141677
                                                    (_%recur140485%_
                                                     _%body140595%_
                                                     _%vars140577%_
                                                     _%$e140710%_
                                                     _%E140579%_
                                                     _%k140580%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp141678
                                                __tmp141677))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp141680
                                         __tmp141676
                                         _%E140579%_)))
                                    (if (eq? 'datum _%$e140598%_)
                                        (let ((_%$e140712%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp141686
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target140578%_)))
                                                (__tmp141681
                                                 (let ((__tmp141685
                                                        (cons (cons (cons _%$e140712%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target140578%_))
                                  '()))
                      '()))
               (__tmp141682
                (let ((__tmp141684
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e140712%_ _%body140595%_)))
                      (__tmp141683 (_%k140580%_ _%vars140577%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp141684 __tmp141683 _%E140579%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp141685
                                                    __tmp141682))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp141686
                                             __tmp141681
                                             _%E140579%_)))
                                        (_%BUG140484%_
                                         _%e140576%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (pair? _%e140581140588%_)
                                      (let ((_%hd140585140717%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e140581140588%_)))
                                            (_%tl140586140719%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e140581140588%_))))
                                        (let* ((_%tag140722%_
                                                _%hd140585140717%_)
                                               (_%body140724%_
                                                _%tl140586140719%_))
                                          (_%K140584140714%_
                                           _%body140724%_
                                           _%tag140722%_)))
                                      (_%E140583140592%_)))))
                             (_%splice-rlen140486%_
                              (lambda (_%e140538%_)
                                (let _%lp140540%_ ((_%e140542%_ _%e140538%_)
                                                   (_%n140543%_ '0))
                                  (let* ((_%e140544140551%_ _%e140542%_)
                                         (_%E140546140555%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e140544140551%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K140547140564%_
                                          (lambda (_%body140558%_
                                                   _%tag140559%_)
                                            (let ((_%$e140561%_ _%tag140559%_))
                                              (if (eq? 'splice _%$e140561%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx140290%_
                                                     _%where140477%_))
                                                  (if (eq? 'cons _%$e140561%_)
                                                      (_%lp140540%_
                                                       (cdr _%body140558%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n140543%_
                                                                '1)))
                                                      _%n140543%_))))))
                                    (if (pair? _%e140544140551%_)
                                        (let ((_%hd140548140567%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e140544140551%_)))
                                              (_%tl140549140569%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e140544140551%_))))
                                          (let* ((_%tag140572%_
                                                  _%hd140548140567%_)
                                                 (_%body140574%_
                                                  _%tl140549140569%_))
                                            (_%K140547140564%_
                                             _%body140574%_
                                             _%tag140572%_)))
                                        (_%E140546140555%_))))))
                             (_%splice-vars140487%_
                              (lambda (_%e140494%_)
                                (let _%recur140496%_ ((_%e140498%_ _%e140494%_)
                                                      (_%vars140499%_ '()))
                                  (let* ((_%e140500140507%_ _%e140498%_)
                                         (_%E140502140511%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e140500140507%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K140503140526%_
                                          (lambda (_%body140514%_
                                                   _%tag140515%_)
                                            (let ((_%$e140517%_ _%tag140515%_))
                                              (if (eq? 'var _%$e140517%_)
                                                  (cons _%body140514%_
                                                        _%vars140499%_)
                                                  (if (or (eq? 'cons
                                                               _%$e140517%_)
                                                          (eq? 'splice
                                                               _%$e140517%_))
                                                      (_%recur140496%_
                                                       (cdr _%body140514%_)
                                                       (_%recur140496%_
                                                        (car _%body140514%_)
                                                        _%vars140499%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e140517%_)
                      (eq? 'box _%$e140517%_))
                  (_%recur140496%_ _%body140514%_ _%vars140499%_)
                  _%vars140499%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%e140500140507%_)
                                        (let ((_%hd140504140529%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e140500140507%_)))
                                              (_%tl140505140531%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e140500140507%_))))
                                          (let* ((_%tag140534%_
                                                  _%hd140504140529%_)
                                                 (_%body140536%_
                                                  _%tl140505140531%_))
                                            (_%K140503140526%_
                                             _%body140536%_
                                             _%tag140534%_)))
                                        (_%E140502140511%_))))))
                             (_%make-body140488%_
                              (lambda (_%vars140490%_)
                                (cons _%K140481%_
                                      (map (lambda (_%mvar140492%_)
                                             (let ((__tmp141687
                                                    (car _%mvar140492%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp141687
                                                _%vars140490%_
                                                _%BUG140484%_)))
                                           _%mvars140480%_)))))
                      (_%recur140485%_
                       _%hd140479%_
                       '()
                       _%target140478%_
                       _%E140482%_
                       _%make-body140488%_))))
                 (_%parse-clause140299%_
                  (lambda (_%hd140371%_ _%ids140372%_)
                    (let _%recur140374%_ ((_%e140376%_ _%hd140371%_)
                                          (_%vars140377%_ '())
                                          (_%depth140378%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e140376%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e140376%_))
                              (values '(any) _%vars140377%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e140376%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx140290%_
                                     _%hd140371%_))
                                  (if (let ((__tmp141688
                                             (lambda (_%id140383%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e140376%_
                                                  _%id140383%_)))))
                                        (declare (not safe))
                                        (__find __tmp141688 _%ids140372%_))
                                      (values (cons 'id _%e140376%_)
                                              _%vars140377%_)
                                      (if (let ((__tmp141689
                                                 (lambda (_%var140386%_)
                                                   (let ((__tmp141690
                                                          (car _%var140386%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e140376%_
                                                      __tmp141690)))))
                                            (declare (not safe))
                                            (__find __tmp141689
                                                    _%vars140377%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx140290%_
                                             _%e140376%_))
                                          (values (cons 'var _%e140376%_)
                                                  (cons (cons _%e140376%_
                                                              _%depth140378%_)
                                                        _%vars140377%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e140376%_))
                              (let* ((_%e140390140397%_ _%e140376%_)
                                     (_%E140392140401%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%e140390140397%_))))
                                     (_%E140391140462%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%e140390140397%_))
                                            (let ((_%e140393140405%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%e140390140397%_))))
                                              (let ((_%hd140394140408%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e140393140405%_)))
                                                    (_%tl140395140410%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e140393140405%_))))
                                                (let* ((_%hd140413%_
                                                        _%hd140394140408%_)
                                                       (_%rest140415%_
                                                        _%tl140395140410%_)
                                                       (_%make-pair140430%_
                                                        (lambda (_%tag140417%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd140418%_
                         _%tl140419%_)
                  (let* ((_%hd-depth140421%_
                          (if (eq? _%tag140417%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth140378%_ '1))
                              _%depth140378%_))
                         (_g141691_
                          (_%recur140374%_
                           _%hd140418%_
                           _%vars140377%_
                           _%hd-depth140421%_)))
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
                            (error "Context expects 2 values" _g141692_)))
                      (let ((_%hd140423%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g141691_ 0)))
                            (_%vars140424%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g141691_ 1))))
                        (let ((_g141693_
                               (_%recur140374%_
                                _%tl140419%_
                                _%vars140424%_
                                _%depth140378%_)))
                          (begin
                            (let ((_g141694_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g141693_)
                                         (##values-length _g141693_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g141694_ 2)))
                                  (error "Context expects 2 values"
                                         _g141694_)))
                            (let ((_%tl140426%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g141693_ 0)))
                                  (_%vars140427%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g141693_ 1))))
                              (values (cons _%tag140417%_
                                            (cons _%hd140423%_ _%tl140426%_))
                                      _%vars140427%_)))))))))
               (_%e140431140438%_ _%rest140415%_)
               (_%E140433140442%_
                (lambda ()
                  (_%make-pair140430%_ 'cons _%hd140413%_ _%rest140415%_)))
               (_%E140432140458%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%e140431140438%_))
                      (let ((_%e140434140446%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e140431140438%_))))
                        (let ((_%hd140435140449%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140434140446%_)))
                              (_%tl140436140451%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140434140446%_))))
                          (let* ((_%rest-hd140454%_ _%hd140435140449%_)
                                 (_%rest-tl140456%_ _%tl140436140451%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd140454%_))
                                (_%make-pair140430%_
                                 'splice
                                 _%hd140413%_
                                 _%rest-tl140456%_)
                                (_%make-pair140430%_
                                 'cons
                                 _%hd140413%_
                                 _%rest140415%_)))))
                      (_%E140433140442%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E140432140458%_))))
                                            (_%E140392140401%_)))))
                                (_%E140391140462%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e140376%_))
                                  (values '(null) _%vars140377%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e140376%_))
                                      (let ((_g141695_
                                             (_%recur140374%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e140376%_)))
                                              _%vars140377%_
                                              _%depth140378%_)))
                                        (begin
                                          (let ((_g141696_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g141695_)
                                                       (##values-length
                                                        _g141695_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g141696_ 2)))
                                                (error "Context expects 2 values"
                                                       _g141696_)))
                                          (let ((_%e140468%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g141695_ 0)))
                                                (_%vars140469%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g141695_
                                                    1))))
                                            (values (cons 'vector _%e140468%_)
                                                    _%vars140469%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e140376%_))
                                          (let ((_g141697_
                                                 (_%recur140374%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e140376%_)))
                                                  _%vars140377%_
                                                  _%depth140378%_)))
                                            (begin
                                              (let ((_g141698_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g141697_)
                                                           (##values-length
                                                            _g141697_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g141698_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g141698_)))
                                              (let ((_%e140472%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g141697_
                                                        0)))
                                                    (_%vars140473%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g141697_
                                                        1))))
                                                (values (cons 'box _%e140472%_)
                                                        _%vars140473%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e140376%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e140376%_)))
                                                      _%vars140377%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx140290%_
                                                 _%e140376%_))))))))))))
          (let* ((_%e140300140313%_ _%stx140290%_)
                 (_%E140302140317%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e140300140313%_))))
                 (_%E140301140367%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e140300140313%_))
                        (let ((_%e140303140321%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e140300140313%_))))
                          (let ((_%hd140304140324%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140303140321%_)))
                                (_%tl140305140326%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140303140321%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl140305140326%_))
                                (let ((_%e140306140329%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl140305140326%_))))
                                  (let ((_%hd140307140332%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140306140329%_)))
                                        (_%tl140308140334%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140306140329%_))))
                                    (let ((_%expr140337%_ _%hd140307140332%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl140308140334%_))
                                          (let ((_%e140309140339%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl140308140334%_))))
                                            (let ((_%hd140310140342%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e140309140339%_)))
                                                  (_%tl140311140344%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e140309140339%_))))
                                              (let* ((_%ids140347%_
                                                      _%hd140310140342%_)
                                                     (_%clauses140349%_
                                                      _%tl140311140344%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids140347%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses140349%_))
                                                        (let* ((_%ids140354%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids140347%_)))
                       (_%clauses140356%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses140349%_)))
                       (_%clause-ids140358%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses140356%_)))
                       (_%E140360%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target140362%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first140364%_
                        (if (null? _%clauses140356%_)
                            _%E140360%_
                            (car _%clause-ids140358%_))))
                  (let ((__tmp141700
                         (let ((__tmp141701
                                (let ((__tmp141703
                                       (let ((__tmp141705
                                              (cons (cons (cons _%E140360%_
                                                                '())
                                                          (cons (let ((__tmp141707
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target140362%_ '()))
                              (__tmp141706
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target140362%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp141707 __tmp141706))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp141704
                                              (_%generate-body140296%_
                                               (_%generate-bindings140295%_
                                                _%target140362%_
                                                _%ids140354%_
                                                _%clauses140356%_
                                                _%clause-ids140358%_
                                                _%E140360%_)
                                               (cons _%first140364%_
                                                     (cons _%expr140337%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp141705
                                          __tmp141704)))
                                      (__tmp141702
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx140290%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp141703
                                   __tmp141702))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp141701)))
                        (__tmp141699
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx140290%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp141700 __tmp141699)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx140290%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx140290%_
                                                       _%ids140347%_))))))
                                          (_%E140302140317%_)))))
                                (_%E140302140317%_))))
                        (_%E140302140317%_)))))
            (_%E140301140367%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx141015%_)
        (let* ((_%identifier=?141017%_ 'free-identifier=?)
               (_%unwrap-e141019%_ 'syntax-e)
               (_%wrap-e141021%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx141015%_
           _%identifier=?141017%_
           _%unwrap-e141019%_
           _%wrap-e141021%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx141023%_ _%identifier=?141024%_)
        (let* ((_%unwrap-e141026%_ 'syntax-e) (_%wrap-e141028%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx141023%_
           _%identifier=?141024%_
           _%unwrap-e141026%_
           _%wrap-e141028%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx141030%_ _%identifier=?141031%_ _%unwrap-e141032%_)
        (let ((_%wrap-e141034%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx141030%_
           _%identifier=?141031%_
           _%unwrap-e141032%_
           _%wrap-e141034%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g141708_
        (let ((_g141709_ (let () (declare (not safe)) (##length _g141708_))))
          (cond ((let () (declare (not safe)) (##fx= _g141709_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g141708_))
                ((let () (declare (not safe)) (##fx= _g141709_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g141708_))
                ((let () (declare (not safe)) (##fx= _g141709_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g141708_))
                ((let () (declare (not safe)) (##fx= _g141709_ 4))
                 (apply gx#macro-expand-syntax-case__% _g141708_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g141708_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx140287%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx140287%_))
            (let ((__tmp141710
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx140287%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp141710 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd140245%_ . _%rest140246%_)
        (let ((_%len140248%_ (length _%hd140245%_)))
          (let _%lp140250%_ ((_%rest140252%_ _%rest140246%_))
            (let* ((_%rest140253140261%_ _%rest140252%_)
                   (_%else140255140269%_ (lambda () '#!void))
                   (_%K140257140275%_
                    (lambda (_%rest140272%_ _%hd140273%_)
                      (if (let ((__tmp141711 (length _%hd140273%_)))
                            (declare (not safe))
                            (##fx= _%len140248%_ __tmp141711))
                          (_%lp140250%_ _%rest140272%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd140273%_))))))
              (if (pair? _%rest140253140261%_)
                  (let ((_%hd140258140278%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest140253140261%_)))
                        (_%tl140259140280%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest140253140261%_))))
                    (let* ((_%hd140283%_ _%hd140258140278%_)
                           (_%rest140285%_ _%tl140259140280%_))
                      (_%K140257140275%_ _%rest140285%_ _%hd140283%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx140195%_ _%n140196%_)
        (let _%lp140198%_ ((_%rest140201%_ _%stx140195%_) (_%r140203%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest140201%_))
              (let* ((_%g140205140212%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest140201%_)))
                     (_%E140207140216%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g140205140212%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K140208140223%_
                      (lambda (_%rest140219%_ _%hd140220%_)
                        (_%lp140198%_
                         _%rest140219%_
                         (cons _%hd140220%_ _%r140203%_)))))
                (if (pair? _%g140205140212%_)
                    (let ((_%hd140209140226%_
                           (let ()
                             (declare (not safe))
                             (##car _%g140205140212%_)))
                          (_%tl140210140228%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g140205140212%_))))
                      (let* ((_%hd140231%_ _%hd140209140226%_)
                             (_%rest140233%_ _%tl140210140228%_))
                        (_%K140208140223%_ _%rest140233%_ _%hd140231%_)))
                    (_%E140207140216%_)))
              (let _%lp140235%_ ((_%n140237%_ _%n140196%_)
                                 (_%l140238%_ _%r140203%_)
                                 (_%r140240%_ _%rest140201%_))
                (if (null? _%l140238%_)
                    (values _%l140238%_ _%r140240%_)
                    (if (fxpositive? _%n140237%_)
                        (_%lp140235%_
                         (let () (declare (not safe)) (##fx- _%n140237%_ '1))
                         (cdr _%l140238%_)
                         (cons (car _%l140238%_) _%r140240%_))
                        (values (reverse! _%l140238%_) _%r140240%_))))))))
    (define gx#syntax-split-splice->vector
      (lambda (_%stx140145%_ _%n140146%_)
        (let _%lp140148%_ ((_%rest140151%_ _%stx140145%_) (_%r140153%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest140151%_))
              (let* ((_%g140155140162%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest140151%_)))
                     (_%E140157140166%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g140155140162%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K140158140173%_
                      (lambda (_%rest140169%_ _%hd140170%_)
                        (_%lp140148%_
                         _%rest140169%_
                         (cons _%hd140170%_ _%r140153%_)))))
                (if (pair? _%g140155140162%_)
                    (let ((_%hd140159140176%_
                           (let ()
                             (declare (not safe))
                             (##car _%g140155140162%_)))
                          (_%tl140160140178%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g140155140162%_))))
                      (let* ((_%hd140181%_ _%hd140159140176%_)
                             (_%rest140183%_ _%tl140160140178%_))
                        (_%K140158140173%_ _%rest140183%_ _%hd140181%_)))
                    (_%E140157140166%_)))
              (let _%lp140185%_ ((_%n140187%_ _%n140146%_)
                                 (_%l140188%_ _%r140153%_)
                                 (_%r140190%_ _%rest140151%_))
                (if (null? _%l140188%_)
                    (vector _%l140188%_ _%r140190%_)
                    (if (fxpositive? _%n140187%_)
                        (_%lp140185%_
                         (let () (declare (not safe)) (##fx- _%n140187%_ '1))
                         (cdr _%l140188%_)
                         (cons (car _%l140188%_) _%r140190%_))
                        (vector (reverse! _%l140188%_) _%r140190%_))))))))))
