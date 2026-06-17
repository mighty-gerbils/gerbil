(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1781697563)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp194719 (list gx#expander::t))
            (__tmp194718 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp194719
         '(id depth)
         __tmp194718
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args194715%_
        (apply make-instance gx#syntax-pattern::t _%$args194715%_)))
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
      (lambda (_%self194701%_ _%stx194702%_)
        (let ((_%self194705%_ _%self194701%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx194702%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx194168%_)
        (letrec ((_%generate194170%_
                  (lambda (_%e194410%_)
                    (letrec ((_%BUG194412%_
                              (lambda (_%q194577%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx194168%_
                                         _%e194410%_
                                         _%q194577%_))))
                             (_%local-pattern-e194413%_
                              (lambda (_%pat194575%_)
                                (let ((__tmp194720
                                       (##structure-ref
                                        _%pat194575%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp194720))))
                             (_%getvar194414%_
                              (lambda (_%q194572%_ _%vars194573%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q194572%_
                                   _%vars194573%_
                                   _%BUG194412%_))))
                             (_%getarg194415%_
                              (lambda (_%arg194538%_ _%vars194539%_)
                                (let* ((_%$%arg194540194547%_ _%arg194538%_)
                                       (_%$%E194542194551%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%$%arg194540194547%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%$%K194543194560%_
                                        (lambda (_%e194554%_ _%tag194555%_)
                                          (let ((_%$e194557%_ _%tag194555%_))
                                            (if (eq? 'ref _%$e194557%_)
                                                (_%getvar194414%_
                                                 _%e194554%_
                                                 _%vars194539%_)
                                                (if (eq? 'pattern _%$e194557%_)
                                                    (_%local-pattern-e194413%_
                                                     _%e194554%_)
                                                    (_%BUG194412%_
                                                     _%arg194538%_)))))))
                                  (if (pair? _%$%arg194540194547%_)
                                      (let ((_%$%hd194544194563%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%arg194540194547%_)))
                                            (_%$%tl194545194565%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%arg194540194547%_))))
                                        (let* ((_%tag194568%_
                                                _%$%hd194544194563%_)
                                               (_%e194570%_
                                                _%$%tl194545194565%_))
                                          (_%$%K194543194560%_
                                           _%e194570%_
                                           _%tag194568%_)))
                                      (_%$%E194542194551%_))))))
                      (let _%recur194417%_ ((_%e194419%_ _%e194410%_)
                                            (_%vars194420%_ '()))
                        (let* ((_%$%e194421194428%_ _%e194419%_)
                               (_%$%E194423194432%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%$%e194421194428%_
                                           '([tag . body])))
                                  '#!void))
                               (_%$%K194424194526%_
                                (lambda (_%body194435%_ _%tag194436%_)
                                  (let ((_%$e194438%_ _%tag194436%_))
                                    (if (eq? 'datum _%$e194438%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body194435%_))
                                        (if (eq? 'term _%$e194438%_)
                                            (let ((_%id194441%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body194435%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id194441%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks194444%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id194441%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks194444%_)
                                                        (let ((__tmp194721
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body194435%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp194721))
                (let ((__tmp194723
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body194435%_)))
                      (__tmp194722
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body194435%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp194723
                   __tmp194722
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id194441%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body194435%_))
                                                      (_%BUG194412%_
                                                       _%e194419%_))))
                                            (if (eq? 'pattern _%$e194438%_)
                                                (_%local-pattern-e194413%_
                                                 _%body194435%_)
                                                (if (eq? 'ref _%$e194438%_)
                                                    (_%getvar194414%_
                                                     _%body194435%_
                                                     _%vars194420%_)
                                                    (if (eq? 'cons
                                                             _%$e194438%_)
                                                        (let ((__tmp194725
                                                               (_%recur194417%_
                                                                (car _%body194435%_)
                                                                _%vars194420%_))
                                                              (__tmp194724
                                                               (_%recur194417%_
                                                                (cdr _%body194435%_)
                                                                _%vars194420%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp194725
                                                           __tmp194724))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e194438%_)
                    (let ((__tmp194726
                           (_%recur194417%_ _%body194435%_ _%vars194420%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp194726))
                    (if (eq? 'box _%$e194438%_)
                        (let ((__tmp194727
                               (_%recur194417%_
                                _%body194435%_
                                _%vars194420%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp194727))
                        (if (eq? 'splice _%$e194438%_)
                            (let* ((_%$%body194447194458%_ _%body194435%_)
                                   (_%$%E194449194462%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%$%body194447194458%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%$%K194450194500%_
                                    (lambda (_%args194465%_
                                             _%iv194466%_
                                             _%hd194467%_
                                             _%depth194468%_)
                                      (let* ((_%targets194474%_
                                              (map (lambda (_%$%g194469194471%_)
                                                     (_%getarg194415%_
                                                      _%$%g194469194471%_
                                                      _%vars194420%_))
                                                   _%args194465%_))
                                             (_%fold-in194476%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args194465%_)))
                                             (_%fold-out194478%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args194480%_
                                              (let ((__tmp194728
                                                     (cons _%fold-out194478%_
                                                           '())))
                                                (declare (not safe))
                                                (foldr__0
                                                 cons
                                                 __tmp194728
                                                 _%fold-in194476%_)))
                                             (_%lambda-body194497%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth194468%_ '1))
                                                  (let ((_%r-args194488%_
                                                         (map (lambda (_%arg194482%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg194482%_)))
                      _%args194465%_))
                (_%r-vars194489%_
                 (let ((__tmp194729
                        (lambda (_%arg194484%_ _%var194485%_ _%r194486%_)
                          (cons (cons (cdr _%arg194484%_) _%var194485%_)
                                _%r194486%_))))
                   (declare (not safe))
                   (foldr__1
                    __tmp194729
                    _%vars194420%_
                    _%args194465%_
                    _%fold-in194476%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur194417%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth194468%_ '1))
                         (cons _%hd194467%_
                               (cons (cons 'var _%fold-out194478%_)
                                     _%r-args194488%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars194489%_))
                                                  (let* ((_%hd-vars194495%_
                                                          (let ((__tmp194730
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg194491%_ _%var194492%_ _%r194493%_)
                           (cons (cons (cdr _%arg194491%_) _%var194492%_)
                                 _%r194493%_))))
                    (declare (not safe))
                    (foldr__1
                     __tmp194730
                     _%vars194420%_
                     _%args194465%_
                     _%fold-in194476%_)))
                 (__tmp194731
                  (_%recur194417%_ _%hd194467%_ _%hd-vars194495%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp194731
                                                     _%fold-out194478%_)))))
                                        (let ((__tmp194735
                                               (if (let ((__tmp194736
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets194474%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp194736 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets194474%_))
                                                   '#!void))
                                              (__tmp194732
                                               (let ((__tmp194734
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args194480%_
                                                         _%lambda-body194497%_)))
                                                     (__tmp194733
                                                      (_%recur194417%_
                                                       _%iv194466%_
                                                       _%vars194420%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp194734
                                                  __tmp194733
                                                  _%targets194474%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp194735
                                           __tmp194732))))))
                              (if (pair? _%$%body194447194458%_)
                                  (let ((_%$%hd194451194503%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%body194447194458%_)))
                                        (_%$%tl194452194505%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%body194447194458%_))))
                                    (let ((_%depth194508%_
                                           _%$%hd194451194503%_))
                                      (if (pair? _%$%tl194452194505%_)
                                          (let ((_%$%hd194453194510%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%tl194452194505%_)))
                                                (_%$%tl194454194512%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tl194452194505%_))))
                                            (let ((_%hd194515%_
                                                   _%$%hd194453194510%_))
                                              (if (pair? _%$%tl194454194512%_)
                                                  (let ((_%$%hd194455194517%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%tl194454194512%_)))
                                                        (_%$%tl194456194519%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%tl194454194512%_))))
                                                    (let* ((_%iv194522%_
                                                            _%$%hd194455194517%_)
                                                           (_%args194524%_
                                                            _%$%tl194456194519%_))
                                                      (_%$%K194450194500%_
                                                       _%args194524%_
                                                       _%iv194522%_
                                                       _%hd194515%_
                                                       _%depth194508%_)))
                                                  (_%$%E194449194462%_))))
                                          (_%$%E194449194462%_))))
                                  (_%$%E194449194462%_)))
                            (if (eq? 'var _%$e194438%_)
                                _%body194435%_
                                (_%BUG194412%_ _%e194419%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (pair? _%$%e194421194428%_)
                              (let ((_%$%hd194425194529%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e194421194428%_)))
                                    (_%$%tl194426194531%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e194421194428%_))))
                                (let* ((_%tag194534%_ _%$%hd194425194529%_)
                                       (_%body194536%_ _%$%tl194426194531%_))
                                  (_%$%K194424194526%_
                                   _%body194536%_
                                   _%tag194534%_)))
                              (_%$%E194423194432%_)))))))
                 (_%parse194171%_
                  (lambda (_%e194212%_)
                    (letrec ((_%make-cons194214%_
                              (lambda (_%hd194402%_ _%tl194403%_)
                                (let ((_g194737_ _%hd194402%_)
                                      (_g194739_ _%tl194403%_))
                                  (begin
                                    (let ((_g194738_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g194737_)
                                                 (##values-length _g194737_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g194738_ 2)))
                                          (error "Context expects 2 values"
                                                 _g194738_)))
                                    (let ((_g194740_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g194739_)
                                                 (##values-length _g194739_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g194740_ 2)))
                                          (error "Context expects 2 values"
                                                 _g194740_)))
                                    (let ((_%hd-e194405%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g194737_ 0)))
                                          (_%hd-vars194406%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g194737_ 1))))
                                      (let ((_%tl-e194407%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g194739_ 0)))
                                            (_%tl-vars194408%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g194739_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e194405%_
                                                            _%tl-e194407%_))
                                                (append _%hd-vars194406%_
                                                        _%tl-vars194408%_))))))))
                             (_%make-splice194215%_
                              (lambda (_%where194338%_
                                       _%depth194339%_
                                       _%hd194340%_
                                       _%tl194341%_)
                                (let ((_g194741_ _%hd194340%_)
                                      (_g194743_ _%tl194341%_))
                                  (begin
                                    (let ((_g194742_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g194741_)
                                                 (##values-length _g194741_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g194742_ 2)))
                                          (error "Context expects 2 values"
                                                 _g194742_)))
                                    (let ((_g194744_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g194743_)
                                                 (##values-length _g194743_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g194744_ 2)))
                                          (error "Context expects 2 values"
                                                 _g194744_)))
                                    (let ((_%hd-e194343%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g194741_ 0)))
                                          (_%hd-vars194344%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g194741_ 1))))
                                      (let ((_%tl-e194345%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g194743_ 0)))
                                            (_%tl-vars194346%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g194743_ 1))))
                                        (let _%lp194348%_ ((_%rest194350%_
                                                            _%hd-vars194344%_)
                                                           (_%targets194351%_
                                                            '())
                                                           (_%vars194352%_
                                                            _%tl-vars194346%_))
                                          (let* ((_%$%rest194353194363%_
                                                  _%rest194350%_)
                                                 (_%$%else194355194371%_
                                                  (lambda ()
                                                    (if (null? _%targets194351%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx194168%_
                                                           _%where194338%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth194339%_
                                    (cons _%hd-e194343%_
                                          (cons _%tl-e194345%_
                                                _%targets194351%_))))
                        _%vars194352%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%K194357194383%_
                                                  (lambda (_%rest194374%_
                                                           _%hd-pat194375%_
                                                           _%hd-depth*194376%_)
                                                    (let ((_%hd-depth194378%_
                                                           (fx- _%hd-depth*194376%_
                                                                _%depth194339%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth194378%_))
                                                          (_%lp194348%_
                                                           _%rest194374%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat194375%_)
                         _%targets194351%_)
                   (cons (cons _%hd-depth194378%_ _%hd-pat194375%_)
                         _%vars194352%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth194378%_))
                      (_%lp194348%_
                       _%rest194374%_
                       (cons (cons 'pattern _%hd-pat194375%_)
                             _%targets194351%_)
                       _%vars194352%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx194168%_
                         _%where194338%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%$%rest194353194363%_)
                                                (let ((_%$%hd194358194386%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%rest194353194363%_)))
                                                      (_%$%tl194359194388%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%rest194353194363%_))))
                                                  (if (pair? _%$%hd194358194386%_)
                                                      (let ((_%$%hd194360194391%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%hd194358194386%_)))
                    (_%$%tl194361194393%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%hd194358194386%_))))
                (let* ((_%hd-depth*194396%_ _%$%hd194360194391%_)
                       (_%hd-pat194398%_ _%$%tl194361194393%_)
                       (_%rest194400%_ _%$%tl194359194388%_))
                  (_%$%K194357194383%_
                   _%rest194400%_
                   _%hd-pat194398%_
                   _%hd-depth*194396%_)))
              (_%$%else194355194371%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%else194355194371%_))))))))))
                             (_%recur194216%_
                              (lambda (_%e194221%_ _%is-e?194222%_)
                                (if (_%is-e?194222%_ _%e194221%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx194168%_))
                                    (if (gx#syntax-local-pattern? _%e194221%_)
                                        (let* ((_%pat194226%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e194221%_)))
                                               (_%depth194228%_
                                                (##structure-ref
                                                 _%pat194226%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth194228%_)
                                              (values (cons 'ref _%pat194226%_)
                                                      (cons (cons _%depth194228%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat194226%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat194226%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e194221%_))
                                            (values (cons 'term _%e194221%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e194221%_))
                                                (let* ((_%$%e194232194239%_
                                                        _%e194221%_)
                                                       (_%$%E194234194243%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%$%e194232194239%_))))
                                                       (_%$%E194233194325%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%e194232194239%_))
                      (let ((_%$%e194235194247%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%e194232194239%_))))
                        (let ((_%$%hd194236194250%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e194235194247%_)))
                              (_%$%tl194237194252%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e194235194247%_))))
                          (let* ((_%hd194255%_ _%$%hd194236194250%_)
                                 (_%rest194257%_ _%$%tl194237194252%_))
                            (if (_%is-e?194222%_ _%hd194255%_)
                                (let* ((_%$%e194258194265%_ _%rest194257%_)
                                       (_%$%E194260194269%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx194168%_
                                             _%e194221%_))))
                                       (_%$%E194259194283%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%e194258194265%_))
                                              (let ((_%$%e194261194273%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%e194258194265%_))))
                                                (let ((_%$%hd194262194276%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e194261194273%_)))
                                                      (_%$%tl194263194278%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e194261194273%_))))
                                                  (let ((_%rest194281%_
                                                         _%$%hd194262194276%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl194263194278%_))
                                                        (_%recur194216%_
                                                         _%rest194281%_
                                                         false)
                                                        (_%$%E194260194269%_)))))
                                              (_%$%E194260194269%_)))))
                                  (_%$%E194259194283%_))
                                (let _%lp194287%_ ((_%rest194289%_
                                                    _%rest194257%_)
                                                   (_%depth194290%_ '0))
                                  (let* ((_%$%e194291194298%_ _%rest194289%_)
                                         (_%$%E194293194302%_
                                          (lambda ()
                                            (if (fxpositive? _%depth194290%_)
                                                (_%make-splice194215%_
                                                 _%e194221%_
                                                 _%depth194290%_
                                                 (_%recur194216%_
                                                  _%hd194255%_
                                                  _%is-e?194222%_)
                                                 (_%recur194216%_
                                                  _%rest194289%_
                                                  _%is-e?194222%_))
                                                (_%make-cons194214%_
                                                 (_%recur194216%_
                                                  _%hd194255%_
                                                  _%is-e?194222%_)
                                                 (_%recur194216%_
                                                  _%rest194289%_
                                                  _%is-e?194222%_)))))
                                         (_%$%E194292194321%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%e194291194298%_))
                                                (let ((_%$%e194294194306%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%$%e194291194298%_))))
                                                  (let ((_%$%hd194295194309%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e194294194306%_)))
                                                        (_%$%tl194296194311%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e194294194306%_))))
                                                    (let* ((_%rest-hd194314%_
                                                            _%$%hd194295194309%_)
                                                           (_%rest-tl194316%_
                                                            _%$%tl194296194311%_))
                                                      (if (_%is-e?194222%_
                                                           _%rest-hd194314%_)
                                                          (_%lp194287%_
                                                           _%rest-tl194316%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth194290%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth194290%_)
                      (_%make-splice194215%_
                       _%e194221%_
                       _%depth194290%_
                       (_%recur194216%_ _%hd194255%_ _%is-e?194222%_)
                       (_%recur194216%_ _%rest194289%_ _%is-e?194222%_))
                      (_%make-cons194214%_
                       (_%recur194216%_ _%hd194255%_ _%is-e?194222%_)
                       (_%recur194216%_ _%rest194289%_ _%is-e?194222%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%E194293194302%_)))))
                                    (_%$%E194292194321%_)))))))
                      (_%$%E194234194243%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E194233194325%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e194221%_))
                                                    (let ((_g194745_
                                                           (_%recur194216%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e194221%_)))
                    _%is-e?194222%_)))
              (begin
                (let ((_g194746_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g194745_)
                             (##values-length _g194745_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g194746_ 2)))
                      (error "Context expects 2 values" _g194746_)))
                (let ((_%e194330%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g194745_ 0)))
                      (_%vars194331%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g194745_ 1))))
                  (values (cons 'vector _%e194330%_) _%vars194331%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e194221%_))
                                                        (let ((_g194747_
                                                               (_%recur194216%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e194221%_)))
                        _%is-e?194222%_)))
                  (begin
                    (let ((_g194748_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g194747_)
                                 (##values-length _g194747_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g194748_ 2)))
                          (error "Context expects 2 values" _g194748_)))
                    (let ((_%e194334%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g194747_ 0)))
                          (_%vars194335%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g194747_ 1))))
                      (values (cons 'box _%e194334%_) _%vars194335%_))))
                (values (cons 'datum _%e194221%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g194749_
                             (_%recur194216%_ _%e194212%_ gx#ellipsis?)))
                        (begin
                          (let ((_g194750_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g194749_)
                                       (##values-length _g194749_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g194750_ 2)))
                                (error "Context expects 2 values" _g194750_)))
                          (let ((_%tree194218%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g194749_ 0)))
                                (_%vars194219%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g194749_ 1))))
                            (if (null? _%vars194219%_)
                                _%tree194218%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx194168%_
                                   _%vars194219%_))))))))))
          (let* ((_%$%e194172194182%_ _%stx194168%_)
                 (_%$%E194174194186%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx194168%_))))
                 (_%$%E194173194208%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%e194172194182%_))
                        (let ((_%$%e194175194190%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%e194172194182%_))))
                          (let ((_%$%hd194176194193%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e194175194190%_)))
                                (_%$%tl194177194195%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e194175194190%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl194177194195%_))
                                (let ((_%$%e194178194198%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl194177194195%_))))
                                  (let ((_%$%hd194179194201%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e194178194198%_)))
                                        (_%$%tl194180194203%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e194178194198%_))))
                                    (let ((_%form194206%_
                                           _%$%hd194179194201%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl194180194203%_))
                                          (let ((__tmp194752
                                                 (_%generate194170%_
                                                  (_%parse194171%_
                                                   _%form194206%_)))
                                                (__tmp194751
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx194168%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp194752
                                             __tmp194751))
                                          (_%$%E194174194186%_)))))
                                (_%$%E194174194186%_))))
                        (_%$%E194174194186%_)))))
            (_%$%E194173194208%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx193417%_
               _%identifier=?193418%_
               _%unwrap-e193419%_
               _%wrap-e193420%_)
        (letrec ((_%generate-bindings193422%_
                  (lambda (_%target194032%_
                           _%ids194033%_
                           _%clauses194034%_
                           _%clause-ids194035%_
                           _%E194036%_)
                    (letrec ((_%generate1194038%_
                              (lambda (_%clause194135%_
                                       _%clause-id194136%_
                                       _%E194137%_)
                                (cons (cons _%clause-id194136%_ '())
                                      (cons (let ((__tmp194754
                                                   (cons _%target194032%_ '()))
                                                  (__tmp194753
                                                   (_%generate-clause193424%_
                                                    _%target194032%_
                                                    _%ids194033%_
                                                    _%clause194135%_
                                                    _%E194137%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp194754
                                               __tmp194753))
                                            '())))))
                      (let _%lp194040%_ ((_%rest194042%_ _%clauses194034%_)
                                         (_%rest-ids194043%_
                                          _%clause-ids194035%_)
                                         (_%bindings194044%_ '()))
                        (let* ((_%$%rest194045194053%_ _%rest194042%_)
                               (_%$%else194047194061%_
                                (lambda () _%bindings194044%_))
                               (_%$%K194049194123%_
                                (lambda (_%rest194064%_ _%clause194065%_)
                                  (let* ((_%$%rest-ids194066194073%_
                                          _%rest-ids194043%_)
                                         (_%$%E194068194077%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%$%rest-ids194066194073%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%$%K194069194111%_
                                          (lambda (_%rest-ids194080%_
                                                   _%clause-id194081%_)
                                            (let* ((_%$%rest-ids194082194090%_
                                                    _%rest-ids194080%_)
                                                   (_%$%else194084194098%_
                                                    (lambda ()
                                                      (cons (_%generate1194038%_
                                                             _%clause194065%_
                                                             _%clause-id194081%_
                                                             _%E194036%_)
                                                            _%bindings194044%_)))
                                                   (_%$%K194086194103%_
                                                    (lambda (_%next-clause-id194101%_)
                                                      (_%lp194040%_
                                                       _%rest194064%_
                                                       _%rest-ids194080%_
                                                       (cons (_%generate1194038%_
                                                              _%clause194065%_
                                                              _%clause-id194081%_
                                                              _%next-clause-id194101%_)
                                                             _%bindings194044%_)))))
                                              (if (pair? _%$%rest-ids194082194090%_)
                                                  (let* ((_%$%hd194087194106%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%rest-ids194082194090%_)))
                                                         (_%next-clause-id194109%_
                                                          _%$%hd194087194106%_))
                                                    (_%$%K194086194103%_
                                                     _%next-clause-id194109%_))
                                                  (_%$%else194084194098%_))))))
                                    (if (pair? _%$%rest-ids194066194073%_)
                                        (let ((_%$%hd194070194114%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%rest-ids194066194073%_)))
                                              (_%$%tl194071194116%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%rest-ids194066194073%_))))
                                          (let* ((_%clause-id194119%_
                                                  _%$%hd194070194114%_)
                                                 (_%rest-ids194121%_
                                                  _%$%tl194071194116%_))
                                            (_%$%K194069194111%_
                                             _%rest-ids194121%_
                                             _%clause-id194119%_)))
                                        (_%$%E194068194077%_))))))
                          (if (pair? _%$%rest194045194053%_)
                              (let ((_%$%hd194050194126%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest194045194053%_)))
                                    (_%$%tl194051194128%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest194045194053%_))))
                                (let* ((_%clause194131%_ _%$%hd194050194126%_)
                                       (_%rest194133%_ _%$%tl194051194128%_))
                                  (_%$%K194049194123%_
                                   _%rest194133%_
                                   _%clause194131%_)))
                              (_%$%else194047194061%_)))))))
                 (_%generate-body193423%_
                  (lambda (_%bindings193992%_ _%body193993%_)
                    (let _%recur193995%_ ((_%rest193997%_ _%bindings193992%_))
                      (let* ((_%$%rest193998194006%_ _%rest193997%_)
                             (_%$%else194000194014%_
                              (lambda () _%body193993%_))
                             (_%$%K194002194020%_
                              (lambda (_%rest194017%_ _%hd194018%_)
                                (let ((__tmp194756 (cons _%hd194018%_ '()))
                                      (__tmp194755
                                       (_%recur193995%_ _%rest194017%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp194756
                                   __tmp194755)))))
                        (if (pair? _%$%rest193998194006%_)
                            (let ((_%$%hd194003194023%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest193998194006%_)))
                                  (_%$%tl194004194025%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest193998194006%_))))
                              (let* ((_%hd194028%_ _%$%hd194003194023%_)
                                     (_%rest194030%_ _%$%tl194004194025%_))
                                (_%$%K194002194020%_
                                 _%rest194030%_
                                 _%hd194028%_)))
                            (_%$%else194000194014%_))))))
                 (_%generate-clause193424%_
                  (lambda (_%target193855%_
                           _%ids193856%_
                           _%clause193857%_
                           _%E193858%_)
                    (letrec ((_%generate1193860%_
                              (lambda (_%hd193947%_
                                       _%fender193948%_
                                       _%body193949%_)
                                (let ((_g194757_
                                       (_%parse-clause193426%_
                                        _%hd193947%_
                                        _%ids193856%_)))
                                  (begin
                                    (let ((_g194758_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g194757_)
                                                 (##values-length _g194757_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g194758_ 2)))
                                          (error "Context expects 2 values"
                                                 _g194758_)))
                                    (let ((_%e193951%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g194757_ 0)))
                                          (_%mvars193952%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g194757_ 1))))
                                      (let* ((_%pvars193954%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars193952%_))))
                                             (_%E193956%_
                                              (cons _%E193858%_
                                                    (cons _%target193855%_
                                                          '())))
                                             (_%K193989%_
                                              (let ((__tmp194759
                                                     (let ((__tmp194761
                                                            (map (lambda (_%mvar193958%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar193959%_)
                           (let* ((_%$%mvar193960193967%_ _%mvar193958%_)
                                  (_%$%E193962193971%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%$%mvar193960193967%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%$%K193963193977%_
                                   (lambda (_%depth193974%_ _%id193975%_)
                                     (cons _%id193975%_
                                           (cons (let ((__tmp194763
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id193975%_)))
                                                       (__tmp194762
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar193959%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp194763
                                                    __tmp194762
                                                    _%depth193974%_))
                                                 '())))))
                             (if (pair? _%$%mvar193960193967%_)
                                 (let ((_%$%hd193964193980%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%mvar193960193967%_)))
                                       (_%$%tl193965193982%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%mvar193960193967%_))))
                                   (let* ((_%id193985%_ _%$%hd193964193980%_)
                                          (_%depth193987%_
                                           _%$%tl193965193982%_))
                                     (_%$%K193963193977%_
                                      _%depth193987%_
                                      _%id193985%_)))
                                 (_%$%E193962193971%_))))
                         _%mvars193952%_
                         _%pvars193954%_))
                   (__tmp194760
                    (if (eq? _%fender193948%_ '#t)
                        _%body193949%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender193948%_
                           _%body193949%_
                           _%E193956%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp194761 __tmp194760))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars193954%_
                                                 __tmp194759))))
                                        (_%generate-match193425%_
                                         _%hd193947%_
                                         _%target193855%_
                                         _%e193951%_
                                         _%mvars193952%_
                                         _%K193989%_
                                         _%E193956%_))))))))
                      (let* ((_%$%e193861193881%_ _%clause193857%_)
                             (_%$%E193870193885%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%$%e193861193881%_))))
                             (_%$%E193863193919%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%e193861193881%_))
                                    (let ((_%$%e193871193889%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%e193861193881%_))))
                                      (let ((_%$%hd193872193892%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e193871193889%_)))
                                            (_%$%tl193873193894%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e193871193889%_))))
                                        (let ((_%hd193897%_
                                               _%$%hd193872193892%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl193873193894%_))
                                              (let ((_%$%e193874193899%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl193873193894%_))))
                                                (let ((_%$%hd193875193902%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e193874193899%_)))
                                                      (_%$%tl193876193904%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e193874193899%_))))
                                                  (let ((_%fender193907%_
                                                         _%$%hd193875193902%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl193876193904%_))
                                                        (let ((_%$%e193877193909%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%tl193876193904%_))))
                  (let ((_%$%hd193878193912%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e193877193909%_)))
                        (_%$%tl193879193914%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e193877193909%_))))
                    (let ((_%body193917%_ _%$%hd193878193912%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl193879193914%_))
                          (_%generate1193860%_
                           _%hd193897%_
                           _%fender193907%_
                           _%body193917%_)
                          (_%$%E193870193885%_)))))
                (_%$%E193870193885%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E193870193885%_)))))
                                    (_%$%E193870193885%_))))
                             (_%$%E193862193943%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%e193861193881%_))
                                    (let ((_%$%e193864193923%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%e193861193881%_))))
                                      (let ((_%$%hd193865193926%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e193864193923%_)))
                                            (_%$%tl193866193928%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e193864193923%_))))
                                        (let ((_%hd193931%_
                                               _%$%hd193865193926%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl193866193928%_))
                                              (let ((_%$%e193867193933%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl193866193928%_))))
                                                (let ((_%$%hd193868193936%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e193867193933%_)))
                                                      (_%$%tl193869193938%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e193867193933%_))))
                                                  (let ((_%body193941%_
                                                         _%$%hd193868193936%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl193869193938%_))
                                                        (_%generate1193860%_
                                                         _%hd193931%_
                                                         '#t
                                                         _%body193941%_)
                                                        (_%$%E193863193919%_)))))
                                              (_%$%E193863193919%_)))))
                                    (_%$%E193863193919%_)))))
                        (_%$%E193862193943%_)))))
                 (_%generate-match193425%_
                  (lambda (_%where193604%_
                           _%target193605%_
                           _%hd193606%_
                           _%mvars193607%_
                           _%K193608%_
                           _%E193609%_)
                    (letrec ((_%BUG193611%_
                              (lambda (_%q193853%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx193417%_
                                         _%hd193606%_
                                         _%q193853%_))))
                             (_%recur193612%_
                              (lambda (_%e193703%_
                                       _%vars193704%_
                                       _%target193705%_
                                       _%E193706%_
                                       _%k193707%_)
                                (let* ((_%$%e193708193715%_ _%e193703%_)
                                       (_%$%E193710193719%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%$%e193708193715%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%$%K193711193841%_
                                        (lambda (_%body193722%_ _%tag193723%_)
                                          (let ((_%$e193725%_ _%tag193723%_))
                                            (if (eq? 'any _%$e193725%_)
                                                (_%k193707%_ _%vars193704%_)
                                                (if (eq? 'id _%$e193725%_)
                                                    (let ((__tmp194768
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target193705%_)))
                                                          (__tmp194764
                                                           (let ((__tmp194766
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp194767
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e193420%_
                                    _%body193722%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?193418%_
                             __tmp194767
                             _%target193705%_)))
                         (__tmp194765 (_%k193707%_ _%vars193704%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp194766 __tmp194765 _%E193706%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp194768 __tmp194764 _%E193706%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e193725%_)
                                                        (_%k193707%_
                                                         (cons (cons _%body193722%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target193705%_)
                       _%vars193704%_))
                (if (eq? 'cons _%$e193725%_)
                    (let ((_%$e193728%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd193729%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl193730%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp194774
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target193705%_)))
                            (__tmp194769
                             (let ((__tmp194773
                                    (cons (cons (cons _%$e193728%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e193419%_
                                                         _%target193705%_))
                                                      '()))
                                          '()))
                                   (__tmp194770
                                    (let ((__tmp194772
                                           (cons (cons (cons _%$hd193729%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e193728%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl193730%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e193728%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp194771
                                           (let* ((_%$%body193731193738%_
                                                   _%body193722%_)
                                                  (_%$%E193733193742%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%$%body193731193738%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%$%K193734193750%_
                                                   (lambda (_%tl193745%_
                                                            _%hd193746%_)
                                                     (_%recur193612%_
                                                      _%hd193746%_
                                                      _%vars193704%_
                                                      _%$hd193729%_
                                                      _%E193706%_
                                                      (lambda (_%vars193748%_)
                                                        (_%recur193612%_
                                                         _%tl193745%_
                                                         _%vars193748%_
                                                         _%$tl193730%_
                                                         _%E193706%_
                                                         _%k193707%_))))))
                                             (if (pair? _%$%body193731193738%_)
                                                 (let ((_%$%hd193735193753%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%body193731193738%_)))
                                                       (_%$%tl193736193755%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%body193731193738%_))))
                                                   (let* ((_%hd193758%_
                                                           _%$%hd193735193753%_)
                                                          (_%tl193760%_
                                                           _%$%tl193736193755%_))
                                                     (_%$%K193734193750%_
                                                      _%tl193760%_
                                                      _%hd193758%_)))
                                                 (_%$%E193733193742%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp194772
                                       __tmp194771))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp194773
                                __tmp194770))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp194774
                         __tmp194769
                         _%E193706%_)))
                    (if (eq? 'splice _%$e193725%_)
                        (let* ((_%$%body193761193768%_ _%body193722%_)
                               (_%$%E193763193772%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%$%body193761193768%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%$%K193764193823%_
                                (lambda (_%tl193775%_ _%hd193776%_)
                                  (let* ((_%rlen193778%_
                                          (_%splice-rlen193613%_ _%tl193775%_))
                                         (_%$target193780%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd193782%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl193784%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp193786%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e193788%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd193790%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl193792%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars193794%_
                                          (_%splice-vars193614%_ _%hd193776%_))
                                         (_%lvars193796%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars193794%_)))
                                         (_%tlvars193798%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars193794%_)))
                                         (_%linit193802%_
                                          (map (lambda (_%var193800%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars193796%_)))
                                    (letrec ((_%make-loop193805%_
                                              (lambda (_%vars193809%_)
                                                (let ((__tmp194776
                                                       (cons (cons (cons _%$lp193786%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp194789
                                        (cons _%$hd193782%_ _%lvars193796%_))
                                       (__tmp194777
                                        (let ((__tmp194788
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd193782%_)))
                                              (__tmp194782
                                               (let ((__tmp194787
                                                      (cons (cons (cons _%$lp-e193788%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e193419%_
                                   _%$hd193782%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp194783
                                                      (let ((__tmp194786
                                                             (cons (cons (cons _%$lp-hd193790%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e193788%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl193792%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e193788%_))
                                             '()))
                                 '())))
                    (__tmp194784
                     (_%recur193612%_
                      _%hd193776%_
                      '()
                      _%$lp-hd193790%_
                      _%E193706%_
                      (lambda (_%hdvars193811%_)
                        (cons _%$lp193786%_
                              (cons _%$lp-tl193792%_
                                    (map (lambda (_%svar193813%_
                                                  _%lvar193814%_)
                                           (let ((__tmp194785
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar193813%_
                                                     _%hdvars193811%_
                                                     _%BUG193611%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp194785
                                              _%lvar193814%_)))
                                         _%svars193794%_
                                         _%lvars193796%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp194786 __tmp194784))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp194787
                                                  __tmp194783)))
                                              (__tmp194778
                                               (let ((__tmp194781
                                                      (map (lambda (_%lvar193816%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar193817%_)
                     (cons (cons _%tlvar193817%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar193816%_))
                                 '())))
                   _%lvars193796%_
                   _%tlvars193798%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp194779
                                                      (_%k193707%_
                                                       (let ((__tmp194780
                                                              (lambda (_%svar193819%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar193820%_
                               _%r193821%_)
                        (cons (cons _%svar193819%_ _%tlvar193820%_)
                              _%r193821%_))))
                 (declare (not safe))
                 (foldl__1
                  __tmp194780
                  _%vars193809%_
                  _%svars193794%_
                  _%tlvars193798%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp194781
                                                  __tmp194779))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp194788
                                           __tmp194782
                                           __tmp194778))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp194789
                                    __tmp194777))
                                 '()))
                     '()))
              (__tmp194775
               (cons _%$lp193786%_ (cons _%$target193780%_ _%linit193802%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp194776
                                                   __tmp194775)))))
                                      (let ((_%body193807%_
                                             (let ((__tmp194791
                                                    (cons (cons (cons _%$target193780%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl193784%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target193705%_
                                 _%rlen193778%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp194790
                                                    (_%recur193612%_
                                                     _%tl193775%_
                                                     _%vars193704%_
                                                     _%$tl193784%_
                                                     _%E193706%_
                                                     _%make-loop193805%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp194791
                                                __tmp194790))))
                                        (let ((__tmp194795
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target193705%_)))
                                              (__tmp194792
                                               (if (zero? _%rlen193778%_)
                                                   _%body193807%_
                                                   (let ((__tmp194793
                                                          (let ((__tmp194794
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target193705%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp194794 _%rlen193778%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp194793
                                                      _%body193807%_
                                                      _%E193706%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp194795
                                           __tmp194792
                                           _%E193706%_))))))))
                          (if (pair? _%$%body193761193768%_)
                              (let ((_%$%hd193765193826%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%body193761193768%_)))
                                    (_%$%tl193766193828%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%body193761193768%_))))
                                (let* ((_%hd193831%_ _%$%hd193765193826%_)
                                       (_%tl193833%_ _%$%tl193766193828%_))
                                  (_%$%K193764193823%_
                                   _%tl193833%_
                                   _%hd193831%_)))
                              (_%$%E193763193772%_)))
                        (if (eq? 'null _%$e193725%_)
                            (let ((__tmp194797
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target193705%_)))
                                  (__tmp194796 (_%k193707%_ _%vars193704%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp194797
                               __tmp194796
                               _%E193706%_))
                            (if (eq? 'vector _%$e193725%_)
                                (let ((_%$e193835%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp194802
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target193705%_)))
                                        (__tmp194798
                                         (let ((__tmp194800
                                                (cons (cons (cons _%$e193835%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp194801
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e193419%_
                                    _%target193705%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp194801))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp194799
                                                (_%recur193612%_
                                                 _%body193722%_
                                                 _%vars193704%_
                                                 _%$e193835%_
                                                 _%E193706%_
                                                 _%k193707%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp194800
                                            __tmp194799))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp194802
                                     __tmp194798
                                     _%E193706%_)))
                                (if (eq? 'box _%$e193725%_)
                                    (let ((_%$e193837%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp194807
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target193705%_)))
                                            (__tmp194803
                                             (let ((__tmp194805
                                                    (cons (cons (cons _%$e193837%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp194806
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e193419%_
                                        _%target193705%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp194806))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp194804
                                                    (_%recur193612%_
                                                     _%body193722%_
                                                     _%vars193704%_
                                                     _%$e193837%_
                                                     _%E193706%_
                                                     _%k193707%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp194805
                                                __tmp194804))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp194807
                                         __tmp194803
                                         _%E193706%_)))
                                    (if (eq? 'datum _%$e193725%_)
                                        (let ((_%$e193839%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp194813
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target193705%_)))
                                                (__tmp194808
                                                 (let ((__tmp194812
                                                        (cons (cons (cons _%$e193839%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target193705%_))
                                  '()))
                      '()))
               (__tmp194809
                (let ((__tmp194811
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e193839%_ _%body193722%_)))
                      (__tmp194810 (_%k193707%_ _%vars193704%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp194811 __tmp194810 _%E193706%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp194812
                                                    __tmp194809))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp194813
                                             __tmp194808
                                             _%E193706%_)))
                                        (_%BUG193611%_
                                         _%e193703%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (pair? _%$%e193708193715%_)
                                      (let ((_%$%hd193712193844%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e193708193715%_)))
                                            (_%$%tl193713193846%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e193708193715%_))))
                                        (let* ((_%tag193849%_
                                                _%$%hd193712193844%_)
                                               (_%body193851%_
                                                _%$%tl193713193846%_))
                                          (_%$%K193711193841%_
                                           _%body193851%_
                                           _%tag193849%_)))
                                      (_%$%E193710193719%_)))))
                             (_%splice-rlen193613%_
                              (lambda (_%e193665%_)
                                (let _%lp193667%_ ((_%e193669%_ _%e193665%_)
                                                   (_%n193670%_ '0))
                                  (let* ((_%$%e193671193678%_ _%e193669%_)
                                         (_%$%E193673193682%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%$%e193671193678%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%$%K193674193691%_
                                          (lambda (_%body193685%_
                                                   _%tag193686%_)
                                            (let ((_%$e193688%_ _%tag193686%_))
                                              (if (eq? 'splice _%$e193688%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx193417%_
                                                     _%where193604%_))
                                                  (if (eq? 'cons _%$e193688%_)
                                                      (_%lp193667%_
                                                       (cdr _%body193685%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n193670%_
                                                                '1)))
                                                      _%n193670%_))))))
                                    (if (pair? _%$%e193671193678%_)
                                        (let ((_%$%hd193675193694%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e193671193678%_)))
                                              (_%$%tl193676193696%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e193671193678%_))))
                                          (let* ((_%tag193699%_
                                                  _%$%hd193675193694%_)
                                                 (_%body193701%_
                                                  _%$%tl193676193696%_))
                                            (_%$%K193674193691%_
                                             _%body193701%_
                                             _%tag193699%_)))
                                        (_%$%E193673193682%_))))))
                             (_%splice-vars193614%_
                              (lambda (_%e193621%_)
                                (let _%recur193623%_ ((_%e193625%_ _%e193621%_)
                                                      (_%vars193626%_ '()))
                                  (let* ((_%$%e193627193634%_ _%e193625%_)
                                         (_%$%E193629193638%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%$%e193627193634%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%$%K193630193653%_
                                          (lambda (_%body193641%_
                                                   _%tag193642%_)
                                            (let ((_%$e193644%_ _%tag193642%_))
                                              (if (eq? 'var _%$e193644%_)
                                                  (cons _%body193641%_
                                                        _%vars193626%_)
                                                  (if (or (eq? 'cons
                                                               _%$e193644%_)
                                                          (eq? 'splice
                                                               _%$e193644%_))
                                                      (_%recur193623%_
                                                       (cdr _%body193641%_)
                                                       (_%recur193623%_
                                                        (car _%body193641%_)
                                                        _%vars193626%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e193644%_)
                      (eq? 'box _%$e193644%_))
                  (_%recur193623%_ _%body193641%_ _%vars193626%_)
                  _%vars193626%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%$%e193627193634%_)
                                        (let ((_%$%hd193631193656%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e193627193634%_)))
                                              (_%$%tl193632193658%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e193627193634%_))))
                                          (let* ((_%tag193661%_
                                                  _%$%hd193631193656%_)
                                                 (_%body193663%_
                                                  _%$%tl193632193658%_))
                                            (_%$%K193630193653%_
                                             _%body193663%_
                                             _%tag193661%_)))
                                        (_%$%E193629193638%_))))))
                             (_%make-body193615%_
                              (lambda (_%vars193617%_)
                                (cons _%K193608%_
                                      (map (lambda (_%mvar193619%_)
                                             (let ((__tmp194814
                                                    (car _%mvar193619%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp194814
                                                _%vars193617%_
                                                _%BUG193611%_)))
                                           _%mvars193607%_)))))
                      (_%recur193612%_
                       _%hd193606%_
                       '()
                       _%target193605%_
                       _%E193609%_
                       _%make-body193615%_))))
                 (_%parse-clause193426%_
                  (lambda (_%hd193498%_ _%ids193499%_)
                    (let _%recur193501%_ ((_%e193503%_ _%hd193498%_)
                                          (_%vars193504%_ '())
                                          (_%depth193505%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e193503%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e193503%_))
                              (values '(any) _%vars193504%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e193503%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx193417%_
                                     _%hd193498%_))
                                  (if (let ((__tmp194815
                                             (lambda (_%id193510%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e193503%_
                                                  _%id193510%_)))))
                                        (declare (not safe))
                                        (__find __tmp194815 _%ids193499%_))
                                      (values (cons 'id _%e193503%_)
                                              _%vars193504%_)
                                      (if (let ((__tmp194816
                                                 (lambda (_%var193513%_)
                                                   (let ((__tmp194817
                                                          (car _%var193513%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e193503%_
                                                      __tmp194817)))))
                                            (declare (not safe))
                                            (__find __tmp194816
                                                    _%vars193504%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx193417%_
                                             _%e193503%_))
                                          (values (cons 'var _%e193503%_)
                                                  (cons (cons _%e193503%_
                                                              _%depth193505%_)
                                                        _%vars193504%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e193503%_))
                              (let* ((_%$%e193517193524%_ _%e193503%_)
                                     (_%$%E193519193528%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%$%e193517193524%_))))
                                     (_%$%E193518193589%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%e193517193524%_))
                                            (let ((_%$%e193520193532%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%e193517193524%_))))
                                              (let ((_%$%hd193521193535%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e193520193532%_)))
                                                    (_%$%tl193522193537%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e193520193532%_))))
                                                (let* ((_%hd193540%_
                                                        _%$%hd193521193535%_)
                                                       (_%rest193542%_
                                                        _%$%tl193522193537%_)
                                                       (_%make-pair193557%_
                                                        (lambda (_%tag193544%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd193545%_
                         _%tl193546%_)
                  (let* ((_%hd-depth193548%_
                          (if (eq? _%tag193544%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth193505%_ '1))
                              _%depth193505%_))
                         (_g194818_
                          (_%recur193501%_
                           _%hd193545%_
                           _%vars193504%_
                           _%hd-depth193548%_)))
                    (begin
                      (let ((_g194819_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g194818_)
                                   (##values-length _g194818_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g194819_ 2)))
                            (error "Context expects 2 values" _g194819_)))
                      (let ((_%hd193550%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g194818_ 0)))
                            (_%vars193551%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g194818_ 1))))
                        (let ((_g194820_
                               (_%recur193501%_
                                _%tl193546%_
                                _%vars193551%_
                                _%depth193505%_)))
                          (begin
                            (let ((_g194821_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g194820_)
                                         (##values-length _g194820_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g194821_ 2)))
                                  (error "Context expects 2 values"
                                         _g194821_)))
                            (let ((_%tl193553%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g194820_ 0)))
                                  (_%vars193554%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g194820_ 1))))
                              (values (cons _%tag193544%_
                                            (cons _%hd193550%_ _%tl193553%_))
                                      _%vars193554%_)))))))))
               (_%$%e193558193565%_ _%rest193542%_)
               (_%$%E193560193569%_
                (lambda ()
                  (_%make-pair193557%_ 'cons _%hd193540%_ _%rest193542%_)))
               (_%$%E193559193585%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%e193558193565%_))
                      (let ((_%$%e193561193573%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%e193558193565%_))))
                        (let ((_%$%hd193562193576%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e193561193573%_)))
                              (_%$%tl193563193578%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e193561193573%_))))
                          (let* ((_%rest-hd193581%_ _%$%hd193562193576%_)
                                 (_%rest-tl193583%_ _%$%tl193563193578%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd193581%_))
                                (_%make-pair193557%_
                                 'splice
                                 _%hd193540%_
                                 _%rest-tl193583%_)
                                (_%make-pair193557%_
                                 'cons
                                 _%hd193540%_
                                 _%rest193542%_)))))
                      (_%$%E193560193569%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E193559193585%_))))
                                            (_%$%E193519193528%_)))))
                                (_%$%E193518193589%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e193503%_))
                                  (values '(null) _%vars193504%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e193503%_))
                                      (let ((_g194822_
                                             (_%recur193501%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e193503%_)))
                                              _%vars193504%_
                                              _%depth193505%_)))
                                        (begin
                                          (let ((_g194823_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g194822_)
                                                       (##values-length
                                                        _g194822_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g194823_ 2)))
                                                (error "Context expects 2 values"
                                                       _g194823_)))
                                          (let ((_%e193595%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g194822_ 0)))
                                                (_%vars193596%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g194822_
                                                    1))))
                                            (values (cons 'vector _%e193595%_)
                                                    _%vars193596%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e193503%_))
                                          (let ((_g194824_
                                                 (_%recur193501%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e193503%_)))
                                                  _%vars193504%_
                                                  _%depth193505%_)))
                                            (begin
                                              (let ((_g194825_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g194824_)
                                                           (##values-length
                                                            _g194824_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g194825_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g194825_)))
                                              (let ((_%e193599%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g194824_
                                                        0)))
                                                    (_%vars193600%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g194824_
                                                        1))))
                                                (values (cons 'box _%e193599%_)
                                                        _%vars193600%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e193503%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e193503%_)))
                                                      _%vars193504%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx193417%_
                                                 _%e193503%_))))))))))))
          (let* ((_%$%e193427193440%_ _%stx193417%_)
                 (_%$%E193429193444%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%$%e193427193440%_))))
                 (_%$%E193428193494%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%e193427193440%_))
                        (let ((_%$%e193430193448%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%e193427193440%_))))
                          (let ((_%$%hd193431193451%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e193430193448%_)))
                                (_%$%tl193432193453%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e193430193448%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl193432193453%_))
                                (let ((_%$%e193433193456%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl193432193453%_))))
                                  (let ((_%$%hd193434193459%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e193433193456%_)))
                                        (_%$%tl193435193461%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e193433193456%_))))
                                    (let ((_%expr193464%_
                                           _%$%hd193434193459%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl193435193461%_))
                                          (let ((_%$%e193436193466%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%$%tl193435193461%_))))
                                            (let ((_%$%hd193437193469%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e193436193466%_)))
                                                  (_%$%tl193438193471%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e193436193466%_))))
                                              (let* ((_%ids193474%_
                                                      _%$%hd193437193469%_)
                                                     (_%clauses193476%_
                                                      _%$%tl193438193471%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids193474%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses193476%_))
                                                        (let* ((_%ids193481%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids193474%_)))
                       (_%clauses193483%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses193476%_)))
                       (_%clause-ids193485%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses193483%_)))
                       (_%E193487%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target193489%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first193491%_
                        (if (null? _%clauses193483%_)
                            _%E193487%_
                            (car _%clause-ids193485%_))))
                  (let ((__tmp194827
                         (let ((__tmp194828
                                (let ((__tmp194830
                                       (let ((__tmp194832
                                              (cons (cons (cons _%E193487%_
                                                                '())
                                                          (cons (let ((__tmp194834
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target193489%_ '()))
                              (__tmp194833
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target193489%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp194834 __tmp194833))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp194831
                                              (_%generate-body193423%_
                                               (_%generate-bindings193422%_
                                                _%target193489%_
                                                _%ids193481%_
                                                _%clauses193483%_
                                                _%clause-ids193485%_
                                                _%E193487%_)
                                               (cons _%first193491%_
                                                     (cons _%expr193464%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp194832
                                          __tmp194831)))
                                      (__tmp194829
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx193417%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp194830
                                   __tmp194829))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp194828)))
                        (__tmp194826
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx193417%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp194827 __tmp194826)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx193417%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx193417%_
                                                       _%ids193474%_))))))
                                          (_%$%E193429193444%_)))))
                                (_%$%E193429193444%_))))
                        (_%$%E193429193444%_)))))
            (_%$%E193428193494%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx194142%_)
        (let* ((_%identifier=?194144%_ 'free-identifier=?)
               (_%unwrap-e194146%_ 'syntax-e)
               (_%wrap-e194148%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx194142%_
           _%identifier=?194144%_
           _%unwrap-e194146%_
           _%wrap-e194148%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx194150%_ _%identifier=?194151%_)
        (let* ((_%unwrap-e194153%_ 'syntax-e) (_%wrap-e194155%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx194150%_
           _%identifier=?194151%_
           _%unwrap-e194153%_
           _%wrap-e194155%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx194157%_ _%identifier=?194158%_ _%unwrap-e194159%_)
        (let ((_%wrap-e194161%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx194157%_
           _%identifier=?194158%_
           _%unwrap-e194159%_
           _%wrap-e194161%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g194835_
        (let ((_g194836_ (let () (declare (not safe)) (##length _g194835_))))
          (cond ((let () (declare (not safe)) (##fx= _g194836_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g194835_))
                ((let () (declare (not safe)) (##fx= _g194836_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g194835_))
                ((let () (declare (not safe)) (##fx= _g194836_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g194835_))
                ((let () (declare (not safe)) (##fx= _g194836_ 4))
                 (apply gx#macro-expand-syntax-case__% _g194835_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g194835_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx193414%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx193414%_))
            (let ((__tmp194837
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx193414%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp194837 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd193372%_ . _%rest193373%_)
        (let ((_%len193375%_ (length _%hd193372%_)))
          (let _%lp193377%_ ((_%rest193379%_ _%rest193373%_))
            (let* ((_%$%rest193380193388%_ _%rest193379%_)
                   (_%$%else193382193396%_ (lambda () '#!void))
                   (_%$%K193384193402%_
                    (lambda (_%rest193399%_ _%hd193400%_)
                      (if (let ((__tmp194838 (length _%hd193400%_)))
                            (declare (not safe))
                            (##fx= _%len193375%_ __tmp194838))
                          (_%lp193377%_ _%rest193399%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd193400%_))))))
              (if (pair? _%$%rest193380193388%_)
                  (let ((_%$%hd193385193405%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest193380193388%_)))
                        (_%$%tl193386193407%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest193380193388%_))))
                    (let* ((_%hd193410%_ _%$%hd193385193405%_)
                           (_%rest193412%_ _%$%tl193386193407%_))
                      (_%$%K193384193402%_ _%rest193412%_ _%hd193410%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx193322%_ _%n193323%_)
        (let _%lp193325%_ ((_%rest193328%_ _%stx193322%_) (_%r193330%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest193328%_))
              (let* ((_%$%g193332193339%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest193328%_)))
                     (_%$%E193334193343%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%$%g193332193339%_
                                 '([hd . rest])))
                        '#!void))
                     (_%$%K193335193350%_
                      (lambda (_%rest193346%_ _%hd193347%_)
                        (_%lp193325%_
                         _%rest193346%_
                         (cons _%hd193347%_ _%r193330%_)))))
                (if (pair? _%$%g193332193339%_)
                    (let ((_%$%hd193336193353%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%g193332193339%_)))
                          (_%$%tl193337193355%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%g193332193339%_))))
                      (let* ((_%hd193358%_ _%$%hd193336193353%_)
                             (_%rest193360%_ _%$%tl193337193355%_))
                        (_%$%K193335193350%_ _%rest193360%_ _%hd193358%_)))
                    (_%$%E193334193343%_)))
              (let _%lp193362%_ ((_%n193364%_ _%n193323%_)
                                 (_%l193365%_ _%r193330%_)
                                 (_%r193367%_ _%rest193328%_))
                (if (null? _%l193365%_)
                    (values _%l193365%_ _%r193367%_)
                    (if (fxpositive? _%n193364%_)
                        (_%lp193362%_
                         (let () (declare (not safe)) (##fx- _%n193364%_ '1))
                         (cdr _%l193365%_)
                         (cons (car _%l193365%_) _%r193367%_))
                        (values (reverse! _%l193365%_) _%r193367%_))))))))
    (define gx#syntax-split-splice->vector
      (lambda (_%stx193272%_ _%n193273%_)
        (let _%lp193275%_ ((_%rest193278%_ _%stx193272%_) (_%r193280%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest193278%_))
              (let* ((_%$%g193282193289%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest193278%_)))
                     (_%$%E193284193293%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%$%g193282193289%_
                                 '([hd . rest])))
                        '#!void))
                     (_%$%K193285193300%_
                      (lambda (_%rest193296%_ _%hd193297%_)
                        (_%lp193275%_
                         _%rest193296%_
                         (cons _%hd193297%_ _%r193280%_)))))
                (if (pair? _%$%g193282193289%_)
                    (let ((_%$%hd193286193303%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%g193282193289%_)))
                          (_%$%tl193287193305%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%g193282193289%_))))
                      (let* ((_%hd193308%_ _%$%hd193286193303%_)
                             (_%rest193310%_ _%$%tl193287193305%_))
                        (_%$%K193285193300%_ _%rest193310%_ _%hd193308%_)))
                    (_%$%E193284193293%_)))
              (let _%lp193312%_ ((_%n193314%_ _%n193273%_)
                                 (_%l193315%_ _%r193280%_)
                                 (_%r193317%_ _%rest193278%_))
                (if (null? _%l193315%_)
                    (vector _%l193315%_ _%r193317%_)
                    (if (fxpositive? _%n193314%_)
                        (_%lp193312%_
                         (let () (declare (not safe)) (##fx- _%n193314%_ '1))
                         (cdr _%l193315%_)
                         (cons (car _%l193315%_) _%r193317%_))
                        (vector (reverse! _%l193315%_) _%r193317%_))))))))))
