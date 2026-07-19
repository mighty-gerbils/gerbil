(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1784279016)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp198861 (list gx#expander::t))
            (__tmp198860 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp198861
         '(id depth)
         __tmp198860
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args198857%_
        (apply make-instance gx#syntax-pattern::t _%$args198857%_)))
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
      (lambda (_%self198843%_ _%stx198844%_)
        (let ((_%self198847%_ _%self198843%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx198844%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx198310%_)
        (letrec ((_%generate198312%_
                  (lambda (_%e198552%_)
                    (letrec ((_%BUG198554%_
                              (lambda (_%q198719%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx198310%_
                                         _%e198552%_
                                         _%q198719%_))))
                             (_%local-pattern-e198555%_
                              (lambda (_%pat198717%_)
                                (let ((__tmp198862
                                       (##structure-ref
                                        _%pat198717%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp198862))))
                             (_%getvar198556%_
                              (lambda (_%q198714%_ _%vars198715%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q198714%_
                                   _%vars198715%_
                                   _%BUG198554%_))))
                             (_%getarg198557%_
                              (lambda (_%arg198680%_ _%vars198681%_)
                                (let* ((_%$%arg198682198689%_ _%arg198680%_)
                                       (_%$%E198684198693%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%$%arg198682198689%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%$%K198685198702%_
                                        (lambda (_%e198696%_ _%tag198697%_)
                                          (let ((_%$e198699%_ _%tag198697%_))
                                            (if (eq? 'ref _%$e198699%_)
                                                (_%getvar198556%_
                                                 _%e198696%_
                                                 _%vars198681%_)
                                                (if (eq? 'pattern _%$e198699%_)
                                                    (_%local-pattern-e198555%_
                                                     _%e198696%_)
                                                    (_%BUG198554%_
                                                     _%arg198680%_)))))))
                                  (if (pair? _%$%arg198682198689%_)
                                      (let ((_%$%hd198686198705%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%arg198682198689%_)))
                                            (_%$%tl198687198707%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%arg198682198689%_))))
                                        (let* ((_%tag198710%_
                                                _%$%hd198686198705%_)
                                               (_%e198712%_
                                                _%$%tl198687198707%_))
                                          (_%$%K198685198702%_
                                           _%e198712%_
                                           _%tag198710%_)))
                                      (_%$%E198684198693%_))))))
                      (let _%recur198559%_ ((_%e198561%_ _%e198552%_)
                                            (_%vars198562%_ '()))
                        (let* ((_%$%e198563198570%_ _%e198561%_)
                               (_%$%E198565198574%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%$%e198563198570%_
                                           '([tag . body])))
                                  '#!void))
                               (_%$%K198566198668%_
                                (lambda (_%body198577%_ _%tag198578%_)
                                  (let ((_%$e198580%_ _%tag198578%_))
                                    (if (eq? 'datum _%$e198580%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body198577%_))
                                        (if (eq? 'term _%$e198580%_)
                                            (let ((_%id198583%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body198577%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id198583%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks198586%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id198583%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks198586%_)
                                                        (let ((__tmp198863
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body198577%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp198863))
                (let ((__tmp198865
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body198577%_)))
                      (__tmp198864
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body198577%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp198865
                   __tmp198864
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id198583%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body198577%_))
                                                      (_%BUG198554%_
                                                       _%e198561%_))))
                                            (if (eq? 'pattern _%$e198580%_)
                                                (_%local-pattern-e198555%_
                                                 _%body198577%_)
                                                (if (eq? 'ref _%$e198580%_)
                                                    (_%getvar198556%_
                                                     _%body198577%_
                                                     _%vars198562%_)
                                                    (if (eq? 'cons
                                                             _%$e198580%_)
                                                        (let ((__tmp198867
                                                               (_%recur198559%_
                                                                (car _%body198577%_)
                                                                _%vars198562%_))
                                                              (__tmp198866
                                                               (_%recur198559%_
                                                                (cdr _%body198577%_)
                                                                _%vars198562%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp198867
                                                           __tmp198866))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e198580%_)
                    (let ((__tmp198868
                           (_%recur198559%_ _%body198577%_ _%vars198562%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp198868))
                    (if (eq? 'box _%$e198580%_)
                        (let ((__tmp198869
                               (_%recur198559%_
                                _%body198577%_
                                _%vars198562%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp198869))
                        (if (eq? 'splice _%$e198580%_)
                            (let* ((_%$%body198589198600%_ _%body198577%_)
                                   (_%$%E198591198604%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%$%body198589198600%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%$%K198592198642%_
                                    (lambda (_%args198607%_
                                             _%iv198608%_
                                             _%hd198609%_
                                             _%depth198610%_)
                                      (let* ((_%targets198616%_
                                              (map (lambda (_%$%g198611198613%_)
                                                     (_%getarg198557%_
                                                      _%$%g198611198613%_
                                                      _%vars198562%_))
                                                   _%args198607%_))
                                             (_%fold-in198618%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args198607%_)))
                                             (_%fold-out198620%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args198622%_
                                              (let ((__tmp198870
                                                     (cons _%fold-out198620%_
                                                           '())))
                                                (declare (not safe))
                                                (##append
                                                 _%fold-in198618%_
                                                 __tmp198870)))
                                             (_%lambda-body198639%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth198610%_ '1))
                                                  (let ((_%r-args198630%_
                                                         (map (lambda (_%arg198624%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg198624%_)))
                      _%args198607%_))
                (_%r-vars198631%_
                 (let ((__tmp198871
                        (lambda (_%arg198626%_ _%var198627%_ _%r198628%_)
                          (cons (cons (cdr _%arg198626%_) _%var198627%_)
                                _%r198628%_))))
                   (declare (not safe))
                   (foldr__1
                    __tmp198871
                    _%vars198562%_
                    _%args198607%_
                    _%fold-in198618%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur198559%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth198610%_ '1))
                         (cons _%hd198609%_
                               (cons (cons 'var _%fold-out198620%_)
                                     _%r-args198630%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars198631%_))
                                                  (let* ((_%hd-vars198637%_
                                                          (let ((__tmp198872
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg198633%_ _%var198634%_ _%r198635%_)
                           (cons (cons (cdr _%arg198633%_) _%var198634%_)
                                 _%r198635%_))))
                    (declare (not safe))
                    (foldr__1
                     __tmp198872
                     _%vars198562%_
                     _%args198607%_
                     _%fold-in198618%_)))
                 (__tmp198873
                  (_%recur198559%_ _%hd198609%_ _%hd-vars198637%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp198873
                                                     _%fold-out198620%_)))))
                                        (let ((__tmp198877
                                               (if (let ((__tmp198878
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets198616%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp198878 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets198616%_))
                                                   '#!void))
                                              (__tmp198874
                                               (let ((__tmp198876
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args198622%_
                                                         _%lambda-body198639%_)))
                                                     (__tmp198875
                                                      (_%recur198559%_
                                                       _%iv198608%_
                                                       _%vars198562%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp198876
                                                  __tmp198875
                                                  _%targets198616%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp198877
                                           __tmp198874))))))
                              (if (pair? _%$%body198589198600%_)
                                  (let ((_%$%hd198593198645%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%body198589198600%_)))
                                        (_%$%tl198594198647%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%body198589198600%_))))
                                    (let ((_%depth198650%_
                                           _%$%hd198593198645%_))
                                      (if (pair? _%$%tl198594198647%_)
                                          (let ((_%$%hd198595198652%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%tl198594198647%_)))
                                                (_%$%tl198596198654%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tl198594198647%_))))
                                            (let ((_%hd198657%_
                                                   _%$%hd198595198652%_))
                                              (if (pair? _%$%tl198596198654%_)
                                                  (let ((_%$%hd198597198659%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%tl198596198654%_)))
                                                        (_%$%tl198598198661%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%tl198596198654%_))))
                                                    (let* ((_%iv198664%_
                                                            _%$%hd198597198659%_)
                                                           (_%args198666%_
                                                            _%$%tl198598198661%_))
                                                      (_%$%K198592198642%_
                                                       _%args198666%_
                                                       _%iv198664%_
                                                       _%hd198657%_
                                                       _%depth198650%_)))
                                                  (_%$%E198591198604%_))))
                                          (_%$%E198591198604%_))))
                                  (_%$%E198591198604%_)))
                            (if (eq? 'var _%$e198580%_)
                                _%body198577%_
                                (_%BUG198554%_ _%e198561%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (pair? _%$%e198563198570%_)
                              (let ((_%$%hd198567198671%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e198563198570%_)))
                                    (_%$%tl198568198673%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e198563198570%_))))
                                (let* ((_%tag198676%_ _%$%hd198567198671%_)
                                       (_%body198678%_ _%$%tl198568198673%_))
                                  (_%$%K198566198668%_
                                   _%body198678%_
                                   _%tag198676%_)))
                              (_%$%E198565198574%_)))))))
                 (_%parse198313%_
                  (lambda (_%e198354%_)
                    (letrec ((_%make-cons198356%_
                              (lambda (_%hd198544%_ _%tl198545%_)
                                (let ((_g198879_ _%hd198544%_)
                                      (_g198881_ _%tl198545%_))
                                  (begin
                                    (let ((_g198880_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g198879_)
                                                 (##values-length _g198879_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g198880_ 2)))
                                          (error "Context expects 2 values"
                                                 _g198880_)))
                                    (let ((_g198882_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g198881_)
                                                 (##values-length _g198881_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g198882_ 2)))
                                          (error "Context expects 2 values"
                                                 _g198882_)))
                                    (let ((_%hd-e198547%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g198879_ 0)))
                                          (_%hd-vars198548%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g198879_ 1))))
                                      (let ((_%tl-e198549%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g198881_ 0)))
                                            (_%tl-vars198550%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g198881_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e198547%_
                                                            _%tl-e198549%_))
                                                (append _%hd-vars198548%_
                                                        _%tl-vars198550%_))))))))
                             (_%make-splice198357%_
                              (lambda (_%where198480%_
                                       _%depth198481%_
                                       _%hd198482%_
                                       _%tl198483%_)
                                (let ((_g198883_ _%hd198482%_)
                                      (_g198885_ _%tl198483%_))
                                  (begin
                                    (let ((_g198884_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g198883_)
                                                 (##values-length _g198883_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g198884_ 2)))
                                          (error "Context expects 2 values"
                                                 _g198884_)))
                                    (let ((_g198886_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g198885_)
                                                 (##values-length _g198885_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g198886_ 2)))
                                          (error "Context expects 2 values"
                                                 _g198886_)))
                                    (let ((_%hd-e198485%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g198883_ 0)))
                                          (_%hd-vars198486%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g198883_ 1))))
                                      (let ((_%tl-e198487%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g198885_ 0)))
                                            (_%tl-vars198488%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g198885_ 1))))
                                        (let _%lp198490%_ ((_%rest198492%_
                                                            _%hd-vars198486%_)
                                                           (_%targets198493%_
                                                            '())
                                                           (_%vars198494%_
                                                            _%tl-vars198488%_))
                                          (let* ((_%$%rest198495198505%_
                                                  _%rest198492%_)
                                                 (_%$%else198497198513%_
                                                  (lambda ()
                                                    (if (null? _%targets198493%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx198310%_
                                                           _%where198480%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth198481%_
                                    (cons _%hd-e198485%_
                                          (cons _%tl-e198487%_
                                                _%targets198493%_))))
                        _%vars198494%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%K198499198525%_
                                                  (lambda (_%rest198516%_
                                                           _%hd-pat198517%_
                                                           _%hd-depth*198518%_)
                                                    (let ((_%hd-depth198520%_
                                                           (fx- _%hd-depth*198518%_
                                                                _%depth198481%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth198520%_))
                                                          (_%lp198490%_
                                                           _%rest198516%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat198517%_)
                         _%targets198493%_)
                   (cons (cons _%hd-depth198520%_ _%hd-pat198517%_)
                         _%vars198494%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth198520%_))
                      (_%lp198490%_
                       _%rest198516%_
                       (cons (cons 'pattern _%hd-pat198517%_)
                             _%targets198493%_)
                       _%vars198494%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx198310%_
                         _%where198480%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%$%rest198495198505%_)
                                                (let ((_%$%hd198500198528%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%rest198495198505%_)))
                                                      (_%$%tl198501198530%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%rest198495198505%_))))
                                                  (if (pair? _%$%hd198500198528%_)
                                                      (let ((_%$%hd198502198533%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%hd198500198528%_)))
                    (_%$%tl198503198535%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%hd198500198528%_))))
                (let* ((_%hd-depth*198538%_ _%$%hd198502198533%_)
                       (_%hd-pat198540%_ _%$%tl198503198535%_)
                       (_%rest198542%_ _%$%tl198501198530%_))
                  (_%$%K198499198525%_
                   _%rest198542%_
                   _%hd-pat198540%_
                   _%hd-depth*198538%_)))
              (_%$%else198497198513%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%else198497198513%_))))))))))
                             (_%recur198358%_
                              (lambda (_%e198363%_ _%is-e?198364%_)
                                (if (_%is-e?198364%_ _%e198363%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx198310%_))
                                    (if (gx#syntax-local-pattern? _%e198363%_)
                                        (let* ((_%pat198368%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e198363%_)))
                                               (_%depth198370%_
                                                (##structure-ref
                                                 _%pat198368%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth198370%_)
                                              (values (cons 'ref _%pat198368%_)
                                                      (cons (cons _%depth198370%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat198368%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat198368%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e198363%_))
                                            (values (cons 'term _%e198363%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e198363%_))
                                                (let* ((_%$%e198374198381%_
                                                        _%e198363%_)
                                                       (_%$%E198376198385%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%$%e198374198381%_))))
                                                       (_%$%E198375198467%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%e198374198381%_))
                      (let ((_%$%e198377198389%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%e198374198381%_))))
                        (let ((_%$%hd198378198392%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e198377198389%_)))
                              (_%$%tl198379198394%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e198377198389%_))))
                          (let* ((_%hd198397%_ _%$%hd198378198392%_)
                                 (_%rest198399%_ _%$%tl198379198394%_))
                            (if (_%is-e?198364%_ _%hd198397%_)
                                (let* ((_%$%e198400198407%_ _%rest198399%_)
                                       (_%$%E198402198411%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx198310%_
                                             _%e198363%_))))
                                       (_%$%E198401198425%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%e198400198407%_))
                                              (let ((_%$%e198403198415%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%e198400198407%_))))
                                                (let ((_%$%hd198404198418%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e198403198415%_)))
                                                      (_%$%tl198405198420%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e198403198415%_))))
                                                  (let ((_%rest198423%_
                                                         _%$%hd198404198418%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl198405198420%_))
                                                        (_%recur198358%_
                                                         _%rest198423%_
                                                         false)
                                                        (_%$%E198402198411%_)))))
                                              (_%$%E198402198411%_)))))
                                  (_%$%E198401198425%_))
                                (let _%lp198429%_ ((_%rest198431%_
                                                    _%rest198399%_)
                                                   (_%depth198432%_ '0))
                                  (let* ((_%$%e198433198440%_ _%rest198431%_)
                                         (_%$%E198435198444%_
                                          (lambda ()
                                            (if (fxpositive? _%depth198432%_)
                                                (_%make-splice198357%_
                                                 _%e198363%_
                                                 _%depth198432%_
                                                 (_%recur198358%_
                                                  _%hd198397%_
                                                  _%is-e?198364%_)
                                                 (_%recur198358%_
                                                  _%rest198431%_
                                                  _%is-e?198364%_))
                                                (_%make-cons198356%_
                                                 (_%recur198358%_
                                                  _%hd198397%_
                                                  _%is-e?198364%_)
                                                 (_%recur198358%_
                                                  _%rest198431%_
                                                  _%is-e?198364%_)))))
                                         (_%$%E198434198463%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%e198433198440%_))
                                                (let ((_%$%e198436198448%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%$%e198433198440%_))))
                                                  (let ((_%$%hd198437198451%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e198436198448%_)))
                                                        (_%$%tl198438198453%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e198436198448%_))))
                                                    (let* ((_%rest-hd198456%_
                                                            _%$%hd198437198451%_)
                                                           (_%rest-tl198458%_
                                                            _%$%tl198438198453%_))
                                                      (if (_%is-e?198364%_
                                                           _%rest-hd198456%_)
                                                          (_%lp198429%_
                                                           _%rest-tl198458%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth198432%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth198432%_)
                      (_%make-splice198357%_
                       _%e198363%_
                       _%depth198432%_
                       (_%recur198358%_ _%hd198397%_ _%is-e?198364%_)
                       (_%recur198358%_ _%rest198431%_ _%is-e?198364%_))
                      (_%make-cons198356%_
                       (_%recur198358%_ _%hd198397%_ _%is-e?198364%_)
                       (_%recur198358%_ _%rest198431%_ _%is-e?198364%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%E198435198444%_)))))
                                    (_%$%E198434198463%_)))))))
                      (_%$%E198376198385%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E198375198467%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e198363%_))
                                                    (let ((_g198887_
                                                           (_%recur198358%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e198363%_)))
                    _%is-e?198364%_)))
              (begin
                (let ((_g198888_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g198887_)
                             (##values-length _g198887_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g198888_ 2)))
                      (error "Context expects 2 values" _g198888_)))
                (let ((_%e198472%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g198887_ 0)))
                      (_%vars198473%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g198887_ 1))))
                  (values (cons 'vector _%e198472%_) _%vars198473%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e198363%_))
                                                        (let ((_g198889_
                                                               (_%recur198358%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e198363%_)))
                        _%is-e?198364%_)))
                  (begin
                    (let ((_g198890_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g198889_)
                                 (##values-length _g198889_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g198890_ 2)))
                          (error "Context expects 2 values" _g198890_)))
                    (let ((_%e198476%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g198889_ 0)))
                          (_%vars198477%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g198889_ 1))))
                      (values (cons 'box _%e198476%_) _%vars198477%_))))
                (values (cons 'datum _%e198363%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g198891_
                             (_%recur198358%_ _%e198354%_ gx#ellipsis?)))
                        (begin
                          (let ((_g198892_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g198891_)
                                       (##values-length _g198891_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g198892_ 2)))
                                (error "Context expects 2 values" _g198892_)))
                          (let ((_%tree198360%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g198891_ 0)))
                                (_%vars198361%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g198891_ 1))))
                            (if (null? _%vars198361%_)
                                _%tree198360%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx198310%_
                                   _%vars198361%_))))))))))
          (let* ((_%$%e198314198324%_ _%stx198310%_)
                 (_%$%E198316198328%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx198310%_))))
                 (_%$%E198315198350%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%e198314198324%_))
                        (let ((_%$%e198317198332%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%e198314198324%_))))
                          (let ((_%$%hd198318198335%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e198317198332%_)))
                                (_%$%tl198319198337%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e198317198332%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl198319198337%_))
                                (let ((_%$%e198320198340%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl198319198337%_))))
                                  (let ((_%$%hd198321198343%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e198320198340%_)))
                                        (_%$%tl198322198345%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e198320198340%_))))
                                    (let ((_%form198348%_
                                           _%$%hd198321198343%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl198322198345%_))
                                          (let ((__tmp198894
                                                 (_%generate198312%_
                                                  (_%parse198313%_
                                                   _%form198348%_)))
                                                (__tmp198893
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx198310%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp198894
                                             __tmp198893))
                                          (_%$%E198316198328%_)))))
                                (_%$%E198316198328%_))))
                        (_%$%E198316198328%_)))))
            (_%$%E198315198350%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx197559%_
               _%identifier=?197560%_
               _%unwrap-e197561%_
               _%wrap-e197562%_)
        (letrec ((_%generate-bindings197564%_
                  (lambda (_%target198174%_
                           _%ids198175%_
                           _%clauses198176%_
                           _%clause-ids198177%_
                           _%E198178%_)
                    (letrec ((_%generate1198180%_
                              (lambda (_%clause198277%_
                                       _%clause-id198278%_
                                       _%E198279%_)
                                (cons (cons _%clause-id198278%_ '())
                                      (cons (let ((__tmp198896
                                                   (cons _%target198174%_ '()))
                                                  (__tmp198895
                                                   (_%generate-clause197566%_
                                                    _%target198174%_
                                                    _%ids198175%_
                                                    _%clause198277%_
                                                    _%E198279%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp198896
                                               __tmp198895))
                                            '())))))
                      (let _%lp198182%_ ((_%rest198184%_ _%clauses198176%_)
                                         (_%rest-ids198185%_
                                          _%clause-ids198177%_)
                                         (_%bindings198186%_ '()))
                        (let* ((_%$%rest198187198195%_ _%rest198184%_)
                               (_%$%else198189198203%_
                                (lambda () _%bindings198186%_))
                               (_%$%K198191198265%_
                                (lambda (_%rest198206%_ _%clause198207%_)
                                  (let* ((_%$%rest-ids198208198215%_
                                          _%rest-ids198185%_)
                                         (_%$%E198210198219%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%$%rest-ids198208198215%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%$%K198211198253%_
                                          (lambda (_%rest-ids198222%_
                                                   _%clause-id198223%_)
                                            (let* ((_%$%rest-ids198224198232%_
                                                    _%rest-ids198222%_)
                                                   (_%$%else198226198240%_
                                                    (lambda ()
                                                      (cons (_%generate1198180%_
                                                             _%clause198207%_
                                                             _%clause-id198223%_
                                                             _%E198178%_)
                                                            _%bindings198186%_)))
                                                   (_%$%K198228198245%_
                                                    (lambda (_%next-clause-id198243%_)
                                                      (_%lp198182%_
                                                       _%rest198206%_
                                                       _%rest-ids198222%_
                                                       (cons (_%generate1198180%_
                                                              _%clause198207%_
                                                              _%clause-id198223%_
                                                              _%next-clause-id198243%_)
                                                             _%bindings198186%_)))))
                                              (if (pair? _%$%rest-ids198224198232%_)
                                                  (let* ((_%$%hd198229198248%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%rest-ids198224198232%_)))
                                                         (_%next-clause-id198251%_
                                                          _%$%hd198229198248%_))
                                                    (_%$%K198228198245%_
                                                     _%next-clause-id198251%_))
                                                  (_%$%else198226198240%_))))))
                                    (if (pair? _%$%rest-ids198208198215%_)
                                        (let ((_%$%hd198212198256%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%rest-ids198208198215%_)))
                                              (_%$%tl198213198258%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%rest-ids198208198215%_))))
                                          (let* ((_%clause-id198261%_
                                                  _%$%hd198212198256%_)
                                                 (_%rest-ids198263%_
                                                  _%$%tl198213198258%_))
                                            (_%$%K198211198253%_
                                             _%rest-ids198263%_
                                             _%clause-id198261%_)))
                                        (_%$%E198210198219%_))))))
                          (if (pair? _%$%rest198187198195%_)
                              (let ((_%$%hd198192198268%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest198187198195%_)))
                                    (_%$%tl198193198270%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest198187198195%_))))
                                (let* ((_%clause198273%_ _%$%hd198192198268%_)
                                       (_%rest198275%_ _%$%tl198193198270%_))
                                  (_%$%K198191198265%_
                                   _%rest198275%_
                                   _%clause198273%_)))
                              (_%$%else198189198203%_)))))))
                 (_%generate-body197565%_
                  (lambda (_%bindings198134%_ _%body198135%_)
                    (let _%recur198137%_ ((_%rest198139%_ _%bindings198134%_))
                      (let* ((_%$%rest198140198148%_ _%rest198139%_)
                             (_%$%else198142198156%_
                              (lambda () _%body198135%_))
                             (_%$%K198144198162%_
                              (lambda (_%rest198159%_ _%hd198160%_)
                                (let ((__tmp198898 (cons _%hd198160%_ '()))
                                      (__tmp198897
                                       (_%recur198137%_ _%rest198159%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp198898
                                   __tmp198897)))))
                        (if (pair? _%$%rest198140198148%_)
                            (let ((_%$%hd198145198165%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest198140198148%_)))
                                  (_%$%tl198146198167%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest198140198148%_))))
                              (let* ((_%hd198170%_ _%$%hd198145198165%_)
                                     (_%rest198172%_ _%$%tl198146198167%_))
                                (_%$%K198144198162%_
                                 _%rest198172%_
                                 _%hd198170%_)))
                            (_%$%else198142198156%_))))))
                 (_%generate-clause197566%_
                  (lambda (_%target197997%_
                           _%ids197998%_
                           _%clause197999%_
                           _%E198000%_)
                    (letrec ((_%generate1198002%_
                              (lambda (_%hd198089%_
                                       _%fender198090%_
                                       _%body198091%_)
                                (let ((_g198899_
                                       (_%parse-clause197568%_
                                        _%hd198089%_
                                        _%ids197998%_)))
                                  (begin
                                    (let ((_g198900_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g198899_)
                                                 (##values-length _g198899_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g198900_ 2)))
                                          (error "Context expects 2 values"
                                                 _g198900_)))
                                    (let ((_%e198093%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g198899_ 0)))
                                          (_%mvars198094%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g198899_ 1))))
                                      (let* ((_%pvars198096%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars198094%_))))
                                             (_%E198098%_
                                              (cons _%E198000%_
                                                    (cons _%target197997%_
                                                          '())))
                                             (_%K198131%_
                                              (let ((__tmp198901
                                                     (let ((__tmp198903
                                                            (map (lambda (_%mvar198100%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar198101%_)
                           (let* ((_%$%mvar198102198109%_ _%mvar198100%_)
                                  (_%$%E198104198113%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%$%mvar198102198109%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%$%K198105198119%_
                                   (lambda (_%depth198116%_ _%id198117%_)
                                     (cons _%id198117%_
                                           (cons (let ((__tmp198905
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id198117%_)))
                                                       (__tmp198904
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar198101%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp198905
                                                    __tmp198904
                                                    _%depth198116%_))
                                                 '())))))
                             (if (pair? _%$%mvar198102198109%_)
                                 (let ((_%$%hd198106198122%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%mvar198102198109%_)))
                                       (_%$%tl198107198124%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%mvar198102198109%_))))
                                   (let* ((_%id198127%_ _%$%hd198106198122%_)
                                          (_%depth198129%_
                                           _%$%tl198107198124%_))
                                     (_%$%K198105198119%_
                                      _%depth198129%_
                                      _%id198127%_)))
                                 (_%$%E198104198113%_))))
                         _%mvars198094%_
                         _%pvars198096%_))
                   (__tmp198902
                    (if (eq? _%fender198090%_ '#t)
                        _%body198091%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender198090%_
                           _%body198091%_
                           _%E198098%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp198903 __tmp198902))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars198096%_
                                                 __tmp198901))))
                                        (_%generate-match197567%_
                                         _%hd198089%_
                                         _%target197997%_
                                         _%e198093%_
                                         _%mvars198094%_
                                         _%K198131%_
                                         _%E198098%_))))))))
                      (let* ((_%$%e198003198023%_ _%clause197999%_)
                             (_%$%E198012198027%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%$%e198003198023%_))))
                             (_%$%E198005198061%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%e198003198023%_))
                                    (let ((_%$%e198013198031%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%e198003198023%_))))
                                      (let ((_%$%hd198014198034%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e198013198031%_)))
                                            (_%$%tl198015198036%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e198013198031%_))))
                                        (let ((_%hd198039%_
                                               _%$%hd198014198034%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl198015198036%_))
                                              (let ((_%$%e198016198041%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl198015198036%_))))
                                                (let ((_%$%hd198017198044%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e198016198041%_)))
                                                      (_%$%tl198018198046%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e198016198041%_))))
                                                  (let ((_%fender198049%_
                                                         _%$%hd198017198044%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl198018198046%_))
                                                        (let ((_%$%e198019198051%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%tl198018198046%_))))
                  (let ((_%$%hd198020198054%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e198019198051%_)))
                        (_%$%tl198021198056%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e198019198051%_))))
                    (let ((_%body198059%_ _%$%hd198020198054%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl198021198056%_))
                          (_%generate1198002%_
                           _%hd198039%_
                           _%fender198049%_
                           _%body198059%_)
                          (_%$%E198012198027%_)))))
                (_%$%E198012198027%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E198012198027%_)))))
                                    (_%$%E198012198027%_))))
                             (_%$%E198004198085%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%e198003198023%_))
                                    (let ((_%$%e198006198065%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%e198003198023%_))))
                                      (let ((_%$%hd198007198068%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e198006198065%_)))
                                            (_%$%tl198008198070%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e198006198065%_))))
                                        (let ((_%hd198073%_
                                               _%$%hd198007198068%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl198008198070%_))
                                              (let ((_%$%e198009198075%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl198008198070%_))))
                                                (let ((_%$%hd198010198078%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e198009198075%_)))
                                                      (_%$%tl198011198080%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e198009198075%_))))
                                                  (let ((_%body198083%_
                                                         _%$%hd198010198078%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl198011198080%_))
                                                        (_%generate1198002%_
                                                         _%hd198073%_
                                                         '#t
                                                         _%body198083%_)
                                                        (_%$%E198005198061%_)))))
                                              (_%$%E198005198061%_)))))
                                    (_%$%E198005198061%_)))))
                        (_%$%E198004198085%_)))))
                 (_%generate-match197567%_
                  (lambda (_%where197746%_
                           _%target197747%_
                           _%hd197748%_
                           _%mvars197749%_
                           _%K197750%_
                           _%E197751%_)
                    (letrec ((_%BUG197753%_
                              (lambda (_%q197995%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx197559%_
                                         _%hd197748%_
                                         _%q197995%_))))
                             (_%recur197754%_
                              (lambda (_%e197845%_
                                       _%vars197846%_
                                       _%target197847%_
                                       _%E197848%_
                                       _%k197849%_)
                                (let* ((_%$%e197850197857%_ _%e197845%_)
                                       (_%$%E197852197861%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%$%e197850197857%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%$%K197853197983%_
                                        (lambda (_%body197864%_ _%tag197865%_)
                                          (let ((_%$e197867%_ _%tag197865%_))
                                            (if (eq? 'any _%$e197867%_)
                                                (_%k197849%_ _%vars197846%_)
                                                (if (eq? 'id _%$e197867%_)
                                                    (let ((__tmp198910
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target197847%_)))
                                                          (__tmp198906
                                                           (let ((__tmp198908
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp198909
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e197562%_
                                    _%body197864%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?197560%_
                             __tmp198909
                             _%target197847%_)))
                         (__tmp198907 (_%k197849%_ _%vars197846%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp198908 __tmp198907 _%E197848%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp198910 __tmp198906 _%E197848%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e197867%_)
                                                        (_%k197849%_
                                                         (cons (cons _%body197864%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target197847%_)
                       _%vars197846%_))
                (if (eq? 'cons _%$e197867%_)
                    (let ((_%$e197870%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd197871%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl197872%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp198916
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target197847%_)))
                            (__tmp198911
                             (let ((__tmp198915
                                    (cons (cons (cons _%$e197870%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e197561%_
                                                         _%target197847%_))
                                                      '()))
                                          '()))
                                   (__tmp198912
                                    (let ((__tmp198914
                                           (cons (cons (cons _%$hd197871%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e197870%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl197872%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e197870%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp198913
                                           (let* ((_%$%body197873197880%_
                                                   _%body197864%_)
                                                  (_%$%E197875197884%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%$%body197873197880%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%$%K197876197892%_
                                                   (lambda (_%tl197887%_
                                                            _%hd197888%_)
                                                     (_%recur197754%_
                                                      _%hd197888%_
                                                      _%vars197846%_
                                                      _%$hd197871%_
                                                      _%E197848%_
                                                      (lambda (_%vars197890%_)
                                                        (_%recur197754%_
                                                         _%tl197887%_
                                                         _%vars197890%_
                                                         _%$tl197872%_
                                                         _%E197848%_
                                                         _%k197849%_))))))
                                             (if (pair? _%$%body197873197880%_)
                                                 (let ((_%$%hd197877197895%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%body197873197880%_)))
                                                       (_%$%tl197878197897%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%body197873197880%_))))
                                                   (let* ((_%hd197900%_
                                                           _%$%hd197877197895%_)
                                                          (_%tl197902%_
                                                           _%$%tl197878197897%_))
                                                     (_%$%K197876197892%_
                                                      _%tl197902%_
                                                      _%hd197900%_)))
                                                 (_%$%E197875197884%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp198914
                                       __tmp198913))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp198915
                                __tmp198912))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp198916
                         __tmp198911
                         _%E197848%_)))
                    (if (eq? 'splice _%$e197867%_)
                        (let* ((_%$%body197903197910%_ _%body197864%_)
                               (_%$%E197905197914%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%$%body197903197910%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%$%K197906197965%_
                                (lambda (_%tl197917%_ _%hd197918%_)
                                  (let* ((_%rlen197920%_
                                          (_%splice-rlen197755%_ _%tl197917%_))
                                         (_%$target197922%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd197924%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl197926%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp197928%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e197930%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd197932%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl197934%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars197936%_
                                          (_%splice-vars197756%_ _%hd197918%_))
                                         (_%lvars197938%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars197936%_)))
                                         (_%tlvars197940%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars197936%_)))
                                         (_%linit197944%_
                                          (map (lambda (_%var197942%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars197938%_)))
                                    (letrec ((_%make-loop197947%_
                                              (lambda (_%vars197951%_)
                                                (let ((__tmp198918
                                                       (cons (cons (cons _%$lp197928%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp198931
                                        (cons _%$hd197924%_ _%lvars197938%_))
                                       (__tmp198919
                                        (let ((__tmp198930
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd197924%_)))
                                              (__tmp198924
                                               (let ((__tmp198929
                                                      (cons (cons (cons _%$lp-e197930%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e197561%_
                                   _%$hd197924%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp198925
                                                      (let ((__tmp198928
                                                             (cons (cons (cons _%$lp-hd197932%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e197930%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl197934%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e197930%_))
                                             '()))
                                 '())))
                    (__tmp198926
                     (_%recur197754%_
                      _%hd197918%_
                      '()
                      _%$lp-hd197932%_
                      _%E197848%_
                      (lambda (_%hdvars197953%_)
                        (cons _%$lp197928%_
                              (cons _%$lp-tl197934%_
                                    (map (lambda (_%svar197955%_
                                                  _%lvar197956%_)
                                           (let ((__tmp198927
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar197955%_
                                                     _%hdvars197953%_
                                                     _%BUG197753%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp198927
                                              _%lvar197956%_)))
                                         _%svars197936%_
                                         _%lvars197938%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp198928 __tmp198926))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp198929
                                                  __tmp198925)))
                                              (__tmp198920
                                               (let ((__tmp198923
                                                      (map (lambda (_%lvar197958%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar197959%_)
                     (cons (cons _%tlvar197959%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar197958%_))
                                 '())))
                   _%lvars197938%_
                   _%tlvars197940%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp198921
                                                      (_%k197849%_
                                                       (let ((__tmp198922
                                                              (lambda (_%svar197961%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar197962%_
                               _%r197963%_)
                        (cons (cons _%svar197961%_ _%tlvar197962%_)
                              _%r197963%_))))
                 (declare (not safe))
                 (foldl__1
                  __tmp198922
                  _%vars197951%_
                  _%svars197936%_
                  _%tlvars197940%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp198923
                                                  __tmp198921))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp198930
                                           __tmp198924
                                           __tmp198920))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp198931
                                    __tmp198919))
                                 '()))
                     '()))
              (__tmp198917
               (cons _%$lp197928%_ (cons _%$target197922%_ _%linit197944%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp198918
                                                   __tmp198917)))))
                                      (let ((_%body197949%_
                                             (let ((__tmp198933
                                                    (cons (cons (cons _%$target197922%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl197926%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target197847%_
                                 _%rlen197920%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp198932
                                                    (_%recur197754%_
                                                     _%tl197917%_
                                                     _%vars197846%_
                                                     _%$tl197926%_
                                                     _%E197848%_
                                                     _%make-loop197947%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp198933
                                                __tmp198932))))
                                        (let ((__tmp198937
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target197847%_)))
                                              (__tmp198934
                                               (if (zero? _%rlen197920%_)
                                                   _%body197949%_
                                                   (let ((__tmp198935
                                                          (let ((__tmp198936
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target197847%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp198936 _%rlen197920%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp198935
                                                      _%body197949%_
                                                      _%E197848%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp198937
                                           __tmp198934
                                           _%E197848%_))))))))
                          (if (pair? _%$%body197903197910%_)
                              (let ((_%$%hd197907197968%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%body197903197910%_)))
                                    (_%$%tl197908197970%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%body197903197910%_))))
                                (let* ((_%hd197973%_ _%$%hd197907197968%_)
                                       (_%tl197975%_ _%$%tl197908197970%_))
                                  (_%$%K197906197965%_
                                   _%tl197975%_
                                   _%hd197973%_)))
                              (_%$%E197905197914%_)))
                        (if (eq? 'null _%$e197867%_)
                            (let ((__tmp198939
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target197847%_)))
                                  (__tmp198938 (_%k197849%_ _%vars197846%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp198939
                               __tmp198938
                               _%E197848%_))
                            (if (eq? 'vector _%$e197867%_)
                                (let ((_%$e197977%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp198944
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target197847%_)))
                                        (__tmp198940
                                         (let ((__tmp198942
                                                (cons (cons (cons _%$e197977%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp198943
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e197561%_
                                    _%target197847%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp198943))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp198941
                                                (_%recur197754%_
                                                 _%body197864%_
                                                 _%vars197846%_
                                                 _%$e197977%_
                                                 _%E197848%_
                                                 _%k197849%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp198942
                                            __tmp198941))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp198944
                                     __tmp198940
                                     _%E197848%_)))
                                (if (eq? 'box _%$e197867%_)
                                    (let ((_%$e197979%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp198949
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target197847%_)))
                                            (__tmp198945
                                             (let ((__tmp198947
                                                    (cons (cons (cons _%$e197979%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp198948
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e197561%_
                                        _%target197847%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp198948))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp198946
                                                    (_%recur197754%_
                                                     _%body197864%_
                                                     _%vars197846%_
                                                     _%$e197979%_
                                                     _%E197848%_
                                                     _%k197849%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp198947
                                                __tmp198946))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp198949
                                         __tmp198945
                                         _%E197848%_)))
                                    (if (eq? 'datum _%$e197867%_)
                                        (let ((_%$e197981%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp198955
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target197847%_)))
                                                (__tmp198950
                                                 (let ((__tmp198954
                                                        (cons (cons (cons _%$e197981%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target197847%_))
                                  '()))
                      '()))
               (__tmp198951
                (let ((__tmp198953
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e197981%_ _%body197864%_)))
                      (__tmp198952 (_%k197849%_ _%vars197846%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp198953 __tmp198952 _%E197848%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp198954
                                                    __tmp198951))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp198955
                                             __tmp198950
                                             _%E197848%_)))
                                        (_%BUG197753%_
                                         _%e197845%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (pair? _%$%e197850197857%_)
                                      (let ((_%$%hd197854197986%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e197850197857%_)))
                                            (_%$%tl197855197988%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e197850197857%_))))
                                        (let* ((_%tag197991%_
                                                _%$%hd197854197986%_)
                                               (_%body197993%_
                                                _%$%tl197855197988%_))
                                          (_%$%K197853197983%_
                                           _%body197993%_
                                           _%tag197991%_)))
                                      (_%$%E197852197861%_)))))
                             (_%splice-rlen197755%_
                              (lambda (_%e197807%_)
                                (let _%lp197809%_ ((_%e197811%_ _%e197807%_)
                                                   (_%n197812%_ '0))
                                  (let* ((_%$%e197813197820%_ _%e197811%_)
                                         (_%$%E197815197824%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%$%e197813197820%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%$%K197816197833%_
                                          (lambda (_%body197827%_
                                                   _%tag197828%_)
                                            (let ((_%$e197830%_ _%tag197828%_))
                                              (if (eq? 'splice _%$e197830%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx197559%_
                                                     _%where197746%_))
                                                  (if (eq? 'cons _%$e197830%_)
                                                      (_%lp197809%_
                                                       (cdr _%body197827%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n197812%_
                                                                '1)))
                                                      _%n197812%_))))))
                                    (if (pair? _%$%e197813197820%_)
                                        (let ((_%$%hd197817197836%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e197813197820%_)))
                                              (_%$%tl197818197838%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e197813197820%_))))
                                          (let* ((_%tag197841%_
                                                  _%$%hd197817197836%_)
                                                 (_%body197843%_
                                                  _%$%tl197818197838%_))
                                            (_%$%K197816197833%_
                                             _%body197843%_
                                             _%tag197841%_)))
                                        (_%$%E197815197824%_))))))
                             (_%splice-vars197756%_
                              (lambda (_%e197763%_)
                                (let _%recur197765%_ ((_%e197767%_ _%e197763%_)
                                                      (_%vars197768%_ '()))
                                  (let* ((_%$%e197769197776%_ _%e197767%_)
                                         (_%$%E197771197780%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%$%e197769197776%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%$%K197772197795%_
                                          (lambda (_%body197783%_
                                                   _%tag197784%_)
                                            (let ((_%$e197786%_ _%tag197784%_))
                                              (if (eq? 'var _%$e197786%_)
                                                  (cons _%body197783%_
                                                        _%vars197768%_)
                                                  (if (or (eq? 'cons
                                                               _%$e197786%_)
                                                          (eq? 'splice
                                                               _%$e197786%_))
                                                      (_%recur197765%_
                                                       (cdr _%body197783%_)
                                                       (_%recur197765%_
                                                        (car _%body197783%_)
                                                        _%vars197768%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e197786%_)
                      (eq? 'box _%$e197786%_))
                  (_%recur197765%_ _%body197783%_ _%vars197768%_)
                  _%vars197768%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%$%e197769197776%_)
                                        (let ((_%$%hd197773197798%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e197769197776%_)))
                                              (_%$%tl197774197800%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e197769197776%_))))
                                          (let* ((_%tag197803%_
                                                  _%$%hd197773197798%_)
                                                 (_%body197805%_
                                                  _%$%tl197774197800%_))
                                            (_%$%K197772197795%_
                                             _%body197805%_
                                             _%tag197803%_)))
                                        (_%$%E197771197780%_))))))
                             (_%make-body197757%_
                              (lambda (_%vars197759%_)
                                (cons _%K197750%_
                                      (map (lambda (_%mvar197761%_)
                                             (let ((__tmp198956
                                                    (car _%mvar197761%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp198956
                                                _%vars197759%_
                                                _%BUG197753%_)))
                                           _%mvars197749%_)))))
                      (_%recur197754%_
                       _%hd197748%_
                       '()
                       _%target197747%_
                       _%E197751%_
                       _%make-body197757%_))))
                 (_%parse-clause197568%_
                  (lambda (_%hd197640%_ _%ids197641%_)
                    (let _%recur197643%_ ((_%e197645%_ _%hd197640%_)
                                          (_%vars197646%_ '())
                                          (_%depth197647%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e197645%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e197645%_))
                              (values '(any) _%vars197646%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e197645%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx197559%_
                                     _%hd197640%_))
                                  (if (let ((__tmp198957
                                             (lambda (_%id197652%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e197645%_
                                                  _%id197652%_)))))
                                        (declare (not safe))
                                        (__find __tmp198957 _%ids197641%_))
                                      (values (cons 'id _%e197645%_)
                                              _%vars197646%_)
                                      (if (let ((__tmp198958
                                                 (lambda (_%var197655%_)
                                                   (let ((__tmp198959
                                                          (car _%var197655%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e197645%_
                                                      __tmp198959)))))
                                            (declare (not safe))
                                            (__find __tmp198958
                                                    _%vars197646%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx197559%_
                                             _%e197645%_))
                                          (values (cons 'var _%e197645%_)
                                                  (cons (cons _%e197645%_
                                                              _%depth197647%_)
                                                        _%vars197646%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e197645%_))
                              (let* ((_%$%e197659197666%_ _%e197645%_)
                                     (_%$%E197661197670%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%$%e197659197666%_))))
                                     (_%$%E197660197731%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%e197659197666%_))
                                            (let ((_%$%e197662197674%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%e197659197666%_))))
                                              (let ((_%$%hd197663197677%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e197662197674%_)))
                                                    (_%$%tl197664197679%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e197662197674%_))))
                                                (let* ((_%hd197682%_
                                                        _%$%hd197663197677%_)
                                                       (_%rest197684%_
                                                        _%$%tl197664197679%_)
                                                       (_%make-pair197699%_
                                                        (lambda (_%tag197686%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd197687%_
                         _%tl197688%_)
                  (let* ((_%hd-depth197690%_
                          (if (eq? _%tag197686%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth197647%_ '1))
                              _%depth197647%_))
                         (_g198960_
                          (_%recur197643%_
                           _%hd197687%_
                           _%vars197646%_
                           _%hd-depth197690%_)))
                    (begin
                      (let ((_g198961_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g198960_)
                                   (##values-length _g198960_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g198961_ 2)))
                            (error "Context expects 2 values" _g198961_)))
                      (let ((_%hd197692%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g198960_ 0)))
                            (_%vars197693%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g198960_ 1))))
                        (let ((_g198962_
                               (_%recur197643%_
                                _%tl197688%_
                                _%vars197693%_
                                _%depth197647%_)))
                          (begin
                            (let ((_g198963_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g198962_)
                                         (##values-length _g198962_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g198963_ 2)))
                                  (error "Context expects 2 values"
                                         _g198963_)))
                            (let ((_%tl197695%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g198962_ 0)))
                                  (_%vars197696%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g198962_ 1))))
                              (values (cons _%tag197686%_
                                            (cons _%hd197692%_ _%tl197695%_))
                                      _%vars197696%_)))))))))
               (_%$%e197700197707%_ _%rest197684%_)
               (_%$%E197702197711%_
                (lambda ()
                  (_%make-pair197699%_ 'cons _%hd197682%_ _%rest197684%_)))
               (_%$%E197701197727%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%e197700197707%_))
                      (let ((_%$%e197703197715%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%e197700197707%_))))
                        (let ((_%$%hd197704197718%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e197703197715%_)))
                              (_%$%tl197705197720%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e197703197715%_))))
                          (let* ((_%rest-hd197723%_ _%$%hd197704197718%_)
                                 (_%rest-tl197725%_ _%$%tl197705197720%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd197723%_))
                                (_%make-pair197699%_
                                 'splice
                                 _%hd197682%_
                                 _%rest-tl197725%_)
                                (_%make-pair197699%_
                                 'cons
                                 _%hd197682%_
                                 _%rest197684%_)))))
                      (_%$%E197702197711%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E197701197727%_))))
                                            (_%$%E197661197670%_)))))
                                (_%$%E197660197731%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e197645%_))
                                  (values '(null) _%vars197646%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e197645%_))
                                      (let ((_g198964_
                                             (_%recur197643%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e197645%_)))
                                              _%vars197646%_
                                              _%depth197647%_)))
                                        (begin
                                          (let ((_g198965_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g198964_)
                                                       (##values-length
                                                        _g198964_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g198965_ 2)))
                                                (error "Context expects 2 values"
                                                       _g198965_)))
                                          (let ((_%e197737%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g198964_ 0)))
                                                (_%vars197738%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g198964_
                                                    1))))
                                            (values (cons 'vector _%e197737%_)
                                                    _%vars197738%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e197645%_))
                                          (let ((_g198966_
                                                 (_%recur197643%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e197645%_)))
                                                  _%vars197646%_
                                                  _%depth197647%_)))
                                            (begin
                                              (let ((_g198967_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g198966_)
                                                           (##values-length
                                                            _g198966_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g198967_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g198967_)))
                                              (let ((_%e197741%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g198966_
                                                        0)))
                                                    (_%vars197742%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g198966_
                                                        1))))
                                                (values (cons 'box _%e197741%_)
                                                        _%vars197742%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e197645%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e197645%_)))
                                                      _%vars197646%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx197559%_
                                                 _%e197645%_))))))))))))
          (let* ((_%$%e197569197582%_ _%stx197559%_)
                 (_%$%E197571197586%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%$%e197569197582%_))))
                 (_%$%E197570197636%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%e197569197582%_))
                        (let ((_%$%e197572197590%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%e197569197582%_))))
                          (let ((_%$%hd197573197593%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e197572197590%_)))
                                (_%$%tl197574197595%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e197572197590%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl197574197595%_))
                                (let ((_%$%e197575197598%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl197574197595%_))))
                                  (let ((_%$%hd197576197601%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e197575197598%_)))
                                        (_%$%tl197577197603%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e197575197598%_))))
                                    (let ((_%expr197606%_
                                           _%$%hd197576197601%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl197577197603%_))
                                          (let ((_%$%e197578197608%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%$%tl197577197603%_))))
                                            (let ((_%$%hd197579197611%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e197578197608%_)))
                                                  (_%$%tl197580197613%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e197578197608%_))))
                                              (let* ((_%ids197616%_
                                                      _%$%hd197579197611%_)
                                                     (_%clauses197618%_
                                                      _%$%tl197580197613%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids197616%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses197618%_))
                                                        (let* ((_%ids197623%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids197616%_)))
                       (_%clauses197625%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses197618%_)))
                       (_%clause-ids197627%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses197625%_)))
                       (_%E197629%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target197631%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first197633%_
                        (if (null? _%clauses197625%_)
                            _%E197629%_
                            (car _%clause-ids197627%_))))
                  (let ((__tmp198969
                         (let ((__tmp198970
                                (let ((__tmp198972
                                       (let ((__tmp198974
                                              (cons (cons (cons _%E197629%_
                                                                '())
                                                          (cons (let ((__tmp198976
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target197631%_ '()))
                              (__tmp198975
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target197631%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp198976 __tmp198975))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp198973
                                              (_%generate-body197565%_
                                               (_%generate-bindings197564%_
                                                _%target197631%_
                                                _%ids197623%_
                                                _%clauses197625%_
                                                _%clause-ids197627%_
                                                _%E197629%_)
                                               (cons _%first197633%_
                                                     (cons _%expr197606%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp198974
                                          __tmp198973)))
                                      (__tmp198971
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx197559%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp198972
                                   __tmp198971))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp198970)))
                        (__tmp198968
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx197559%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp198969 __tmp198968)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx197559%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx197559%_
                                                       _%ids197616%_))))))
                                          (_%$%E197571197586%_)))))
                                (_%$%E197571197586%_))))
                        (_%$%E197571197586%_)))))
            (_%$%E197570197636%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx198284%_)
        (let* ((_%identifier=?198286%_ 'free-identifier=?)
               (_%unwrap-e198288%_ 'syntax-e)
               (_%wrap-e198290%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx198284%_
           _%identifier=?198286%_
           _%unwrap-e198288%_
           _%wrap-e198290%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx198292%_ _%identifier=?198293%_)
        (let* ((_%unwrap-e198295%_ 'syntax-e) (_%wrap-e198297%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx198292%_
           _%identifier=?198293%_
           _%unwrap-e198295%_
           _%wrap-e198297%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx198299%_ _%identifier=?198300%_ _%unwrap-e198301%_)
        (let ((_%wrap-e198303%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx198299%_
           _%identifier=?198300%_
           _%unwrap-e198301%_
           _%wrap-e198303%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g198977_
        (let ((_g198978_ (let () (declare (not safe)) (##length _g198977_))))
          (cond ((let () (declare (not safe)) (##fx= _g198978_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g198977_))
                ((let () (declare (not safe)) (##fx= _g198978_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g198977_))
                ((let () (declare (not safe)) (##fx= _g198978_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g198977_))
                ((let () (declare (not safe)) (##fx= _g198978_ 4))
                 (apply gx#macro-expand-syntax-case__% _g198977_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g198977_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx197556%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx197556%_))
            (let ((__tmp198979
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx197556%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp198979 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd197514%_ . _%rest197515%_)
        (let ((_%len197517%_ (length _%hd197514%_)))
          (let _%lp197519%_ ((_%rest197521%_ _%rest197515%_))
            (let* ((_%$%rest197522197530%_ _%rest197521%_)
                   (_%$%else197524197538%_ (lambda () '#!void))
                   (_%$%K197526197544%_
                    (lambda (_%rest197541%_ _%hd197542%_)
                      (if (let ((__tmp198980 (length _%hd197542%_)))
                            (declare (not safe))
                            (##fx= _%len197517%_ __tmp198980))
                          (_%lp197519%_ _%rest197541%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd197542%_))))))
              (if (pair? _%$%rest197522197530%_)
                  (let ((_%$%hd197527197547%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest197522197530%_)))
                        (_%$%tl197528197549%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest197522197530%_))))
                    (let* ((_%hd197552%_ _%$%hd197527197547%_)
                           (_%rest197554%_ _%$%tl197528197549%_))
                      (_%$%K197526197544%_ _%rest197554%_ _%hd197552%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx197464%_ _%n197465%_)
        (let _%lp197467%_ ((_%rest197470%_ _%stx197464%_) (_%r197472%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest197470%_))
              (let* ((_%$%g197474197481%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest197470%_)))
                     (_%$%E197476197485%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%$%g197474197481%_
                                 '([hd . rest])))
                        '#!void))
                     (_%$%K197477197492%_
                      (lambda (_%rest197488%_ _%hd197489%_)
                        (_%lp197467%_
                         _%rest197488%_
                         (cons _%hd197489%_ _%r197472%_)))))
                (if (pair? _%$%g197474197481%_)
                    (let ((_%$%hd197478197495%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%g197474197481%_)))
                          (_%$%tl197479197497%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%g197474197481%_))))
                      (let* ((_%hd197500%_ _%$%hd197478197495%_)
                             (_%rest197502%_ _%$%tl197479197497%_))
                        (_%$%K197477197492%_ _%rest197502%_ _%hd197500%_)))
                    (_%$%E197476197485%_)))
              (let _%lp197504%_ ((_%n197506%_ _%n197465%_)
                                 (_%l197507%_ _%r197472%_)
                                 (_%r197509%_ _%rest197470%_))
                (if (null? _%l197507%_)
                    (values _%l197507%_ _%r197509%_)
                    (if (fxpositive? _%n197506%_)
                        (_%lp197504%_
                         (let () (declare (not safe)) (##fx- _%n197506%_ '1))
                         (cdr _%l197507%_)
                         (cons (car _%l197507%_) _%r197509%_))
                        (values (reverse! _%l197507%_) _%r197509%_))))))))
    (define gx#syntax-split-splice->vector
      (lambda (_%stx197414%_ _%n197415%_)
        (let _%lp197417%_ ((_%rest197420%_ _%stx197414%_) (_%r197422%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest197420%_))
              (let* ((_%$%g197424197431%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest197420%_)))
                     (_%$%E197426197435%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%$%g197424197431%_
                                 '([hd . rest])))
                        '#!void))
                     (_%$%K197427197442%_
                      (lambda (_%rest197438%_ _%hd197439%_)
                        (_%lp197417%_
                         _%rest197438%_
                         (cons _%hd197439%_ _%r197422%_)))))
                (if (pair? _%$%g197424197431%_)
                    (let ((_%$%hd197428197445%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%g197424197431%_)))
                          (_%$%tl197429197447%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%g197424197431%_))))
                      (let* ((_%hd197450%_ _%$%hd197428197445%_)
                             (_%rest197452%_ _%$%tl197429197447%_))
                        (_%$%K197427197442%_ _%rest197452%_ _%hd197450%_)))
                    (_%$%E197426197435%_)))
              (let _%lp197454%_ ((_%n197456%_ _%n197415%_)
                                 (_%l197457%_ _%r197422%_)
                                 (_%r197459%_ _%rest197420%_))
                (if (null? _%l197457%_)
                    (vector _%l197457%_ _%r197459%_)
                    (if (fxpositive? _%n197456%_)
                        (_%lp197454%_
                         (let () (declare (not safe)) (##fx- _%n197456%_ '1))
                         (cdr _%l197457%_)
                         (cons (car _%l197457%_) _%r197459%_))
                        (vector (reverse! _%l197457%_) _%r197459%_))))))))))
