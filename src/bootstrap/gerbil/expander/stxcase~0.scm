(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1768864949)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp144880 (list gx#expander::t))
            (__tmp144879 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp144880
         '(id depth)
         __tmp144879
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args144876%_
        (apply make-instance gx#syntax-pattern::t _%$args144876%_)))
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
      (lambda (_%self144862%_ _%stx144863%_)
        (let ((_%self144866%_ _%self144862%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx144863%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx144329%_)
        (letrec ((_%generate144331%_
                  (lambda (_%e144571%_)
                    (letrec ((_%BUG144573%_
                              (lambda (_%q144738%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx144329%_
                                         _%e144571%_
                                         _%q144738%_))))
                             (_%local-pattern-e144574%_
                              (lambda (_%pat144736%_)
                                (let ((__tmp144881
                                       (##structure-ref
                                        _%pat144736%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp144881))))
                             (_%getvar144575%_
                              (lambda (_%q144733%_ _%vars144734%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q144733%_
                                   _%vars144734%_
                                   _%BUG144573%_))))
                             (_%getarg144576%_
                              (lambda (_%arg144699%_ _%vars144700%_)
                                (let* ((_%arg144701144708%_ _%arg144699%_)
                                       (_%E144703144712%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg144701144708%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K144704144721%_
                                        (lambda (_%e144715%_ _%tag144716%_)
                                          (let ((_%$e144718%_ _%tag144716%_))
                                            (if (eq? 'ref _%$e144718%_)
                                                (_%getvar144575%_
                                                 _%e144715%_
                                                 _%vars144700%_)
                                                (if (eq? 'pattern _%$e144718%_)
                                                    (_%local-pattern-e144574%_
                                                     _%e144715%_)
                                                    (_%BUG144573%_
                                                     _%arg144699%_)))))))
                                  (if (pair? _%arg144701144708%_)
                                      (let ((_%hd144705144724%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg144701144708%_)))
                                            (_%tl144706144726%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg144701144708%_))))
                                        (let* ((_%tag144729%_
                                                _%hd144705144724%_)
                                               (_%e144731%_
                                                _%tl144706144726%_))
                                          (_%K144704144721%_
                                           _%e144731%_
                                           _%tag144729%_)))
                                      (_%E144703144712%_))))))
                      (let _%recur144578%_ ((_%e144580%_ _%e144571%_)
                                            (_%vars144581%_ '()))
                        (let* ((_%e144582144589%_ _%e144580%_)
                               (_%E144584144593%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e144582144589%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K144585144687%_
                                (lambda (_%body144596%_ _%tag144597%_)
                                  (let ((_%$e144599%_ _%tag144597%_))
                                    (if (eq? 'datum _%$e144599%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body144596%_))
                                        (if (eq? 'term _%$e144599%_)
                                            (let ((_%id144602%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body144596%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id144602%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks144605%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id144602%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks144605%_)
                                                        (let ((__tmp144882
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body144596%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp144882))
                (let ((__tmp144884
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body144596%_)))
                      (__tmp144883
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body144596%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp144884
                   __tmp144883
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id144602%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body144596%_))
                                                      (_%BUG144573%_
                                                       _%e144580%_))))
                                            (if (eq? 'pattern _%$e144599%_)
                                                (_%local-pattern-e144574%_
                                                 _%body144596%_)
                                                (if (eq? 'ref _%$e144599%_)
                                                    (_%getvar144575%_
                                                     _%body144596%_
                                                     _%vars144581%_)
                                                    (if (eq? 'cons
                                                             _%$e144599%_)
                                                        (let ((__tmp144886
                                                               (_%recur144578%_
                                                                (car _%body144596%_)
                                                                _%vars144581%_))
                                                              (__tmp144885
                                                               (_%recur144578%_
                                                                (cdr _%body144596%_)
                                                                _%vars144581%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp144886
                                                           __tmp144885))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e144599%_)
                    (let ((__tmp144887
                           (_%recur144578%_ _%body144596%_ _%vars144581%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp144887))
                    (if (eq? 'box _%$e144599%_)
                        (let ((__tmp144888
                               (_%recur144578%_
                                _%body144596%_
                                _%vars144581%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp144888))
                        (if (eq? 'splice _%$e144599%_)
                            (let* ((_%body144608144619%_ _%body144596%_)
                                   (_%E144610144623%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body144608144619%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K144611144661%_
                                    (lambda (_%args144626%_
                                             _%iv144627%_
                                             _%hd144628%_
                                             _%depth144629%_)
                                      (let* ((_%targets144635%_
                                              (map (lambda (_%g144630144632%_)
                                                     (_%getarg144576%_
                                                      _%g144630144632%_
                                                      _%vars144581%_))
                                                   _%args144626%_))
                                             (_%fold-in144637%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args144626%_)))
                                             (_%fold-out144639%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args144641%_
                                              (let ((__tmp144889
                                                     (cons _%fold-out144639%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp144889
                                                 _%fold-in144637%_)))
                                             (_%lambda-body144658%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth144629%_ '1))
                                                  (let ((_%r-args144649%_
                                                         (map (lambda (_%arg144643%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg144643%_)))
                      _%args144626%_))
                (_%r-vars144650%_
                 (let ((__tmp144890
                        (lambda (_%arg144645%_ _%var144646%_ _%r144647%_)
                          (cons (cons (cdr _%arg144645%_) _%var144646%_)
                                _%r144647%_))))
                   (declare (not safe))
                   (__foldr2
                    __tmp144890
                    _%vars144581%_
                    _%args144626%_
                    _%fold-in144637%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur144578%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth144629%_ '1))
                         (cons _%hd144628%_
                               (cons (cons 'var _%fold-out144639%_)
                                     _%r-args144649%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars144650%_))
                                                  (let* ((_%hd-vars144656%_
                                                          (let ((__tmp144891
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg144652%_ _%var144653%_ _%r144654%_)
                           (cons (cons (cdr _%arg144652%_) _%var144653%_)
                                 _%r144654%_))))
                    (declare (not safe))
                    (__foldr2
                     __tmp144891
                     _%vars144581%_
                     _%args144626%_
                     _%fold-in144637%_)))
                 (__tmp144892
                  (_%recur144578%_ _%hd144628%_ _%hd-vars144656%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp144892
                                                     _%fold-out144639%_)))))
                                        (let ((__tmp144896
                                               (if (let ((__tmp144897
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets144635%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp144897 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets144635%_))
                                                   '#!void))
                                              (__tmp144893
                                               (let ((__tmp144895
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args144641%_
                                                         _%lambda-body144658%_)))
                                                     (__tmp144894
                                                      (_%recur144578%_
                                                       _%iv144627%_
                                                       _%vars144581%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp144895
                                                  __tmp144894
                                                  _%targets144635%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp144896
                                           __tmp144893))))))
                              (if (pair? _%body144608144619%_)
                                  (let ((_%hd144612144664%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body144608144619%_)))
                                        (_%tl144613144666%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body144608144619%_))))
                                    (let ((_%depth144669%_ _%hd144612144664%_))
                                      (if (pair? _%tl144613144666%_)
                                          (let ((_%hd144614144671%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl144613144666%_)))
                                                (_%tl144615144673%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl144613144666%_))))
                                            (let ((_%hd144676%_
                                                   _%hd144614144671%_))
                                              (if (pair? _%tl144615144673%_)
                                                  (let ((_%hd144616144678%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl144615144673%_)))
                                                        (_%tl144617144680%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl144615144673%_))))
                                                    (let* ((_%iv144683%_
                                                            _%hd144616144678%_)
                                                           (_%args144685%_
                                                            _%tl144617144680%_))
                                                      (_%K144611144661%_
                                                       _%args144685%_
                                                       _%iv144683%_
                                                       _%hd144676%_
                                                       _%depth144669%_)))
                                                  (_%E144610144623%_))))
                                          (_%E144610144623%_))))
                                  (_%E144610144623%_)))
                            (if (eq? 'var _%$e144599%_)
                                _%body144596%_
                                (_%BUG144573%_ _%e144580%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (pair? _%e144582144589%_)
                              (let ((_%hd144586144690%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e144582144589%_)))
                                    (_%tl144587144692%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e144582144589%_))))
                                (let* ((_%tag144695%_ _%hd144586144690%_)
                                       (_%body144697%_ _%tl144587144692%_))
                                  (_%K144585144687%_
                                   _%body144697%_
                                   _%tag144695%_)))
                              (_%E144584144593%_)))))))
                 (_%parse144332%_
                  (lambda (_%e144373%_)
                    (letrec ((_%make-cons144375%_
                              (lambda (_%hd144563%_ _%tl144564%_)
                                (let ((_g144898_ _%hd144563%_)
                                      (_g144900_ _%tl144564%_))
                                  (begin
                                    (let ((_g144899_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g144898_)
                                                 (##values-length _g144898_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g144899_ 2)))
                                          (error "Context expects 2 values"
                                                 _g144899_)))
                                    (let ((_g144901_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g144900_)
                                                 (##values-length _g144900_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g144901_ 2)))
                                          (error "Context expects 2 values"
                                                 _g144901_)))
                                    (let ((_%hd-e144566%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g144898_ 0)))
                                          (_%hd-vars144567%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g144898_ 1))))
                                      (let ((_%tl-e144568%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g144900_ 0)))
                                            (_%tl-vars144569%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g144900_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e144566%_
                                                            _%tl-e144568%_))
                                                (append _%hd-vars144567%_
                                                        _%tl-vars144569%_))))))))
                             (_%make-splice144376%_
                              (lambda (_%where144499%_
                                       _%depth144500%_
                                       _%hd144501%_
                                       _%tl144502%_)
                                (let ((_g144902_ _%hd144501%_)
                                      (_g144904_ _%tl144502%_))
                                  (begin
                                    (let ((_g144903_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g144902_)
                                                 (##values-length _g144902_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g144903_ 2)))
                                          (error "Context expects 2 values"
                                                 _g144903_)))
                                    (let ((_g144905_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g144904_)
                                                 (##values-length _g144904_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g144905_ 2)))
                                          (error "Context expects 2 values"
                                                 _g144905_)))
                                    (let ((_%hd-e144504%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g144902_ 0)))
                                          (_%hd-vars144505%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g144902_ 1))))
                                      (let ((_%tl-e144506%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g144904_ 0)))
                                            (_%tl-vars144507%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g144904_ 1))))
                                        (let _%lp144509%_ ((_%rest144511%_
                                                            _%hd-vars144505%_)
                                                           (_%targets144512%_
                                                            '())
                                                           (_%vars144513%_
                                                            _%tl-vars144507%_))
                                          (let* ((_%rest144514144524%_
                                                  _%rest144511%_)
                                                 (_%else144516144532%_
                                                  (lambda ()
                                                    (if (null? _%targets144512%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx144329%_
                                                           _%where144499%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth144500%_
                                    (cons _%hd-e144504%_
                                          (cons _%tl-e144506%_
                                                _%targets144512%_))))
                        _%vars144513%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K144518144544%_
                                                  (lambda (_%rest144535%_
                                                           _%hd-pat144536%_
                                                           _%hd-depth*144537%_)
                                                    (let ((_%hd-depth144539%_
                                                           (fx- _%hd-depth*144537%_
                                                                _%depth144500%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth144539%_))
                                                          (_%lp144509%_
                                                           _%rest144535%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat144536%_)
                         _%targets144512%_)
                   (cons (cons _%hd-depth144539%_ _%hd-pat144536%_)
                         _%vars144513%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth144539%_))
                      (_%lp144509%_
                       _%rest144535%_
                       (cons (cons 'pattern _%hd-pat144536%_)
                             _%targets144512%_)
                       _%vars144513%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx144329%_
                         _%where144499%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%rest144514144524%_)
                                                (let ((_%hd144519144547%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest144514144524%_)))
                                                      (_%tl144520144549%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest144514144524%_))))
                                                  (if (pair? _%hd144519144547%_)
                                                      (let ((_%hd144521144552%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd144519144547%_)))
                    (_%tl144522144554%_
                     (let () (declare (not safe)) (##cdr _%hd144519144547%_))))
                (let* ((_%hd-depth*144557%_ _%hd144521144552%_)
                       (_%hd-pat144559%_ _%tl144522144554%_)
                       (_%rest144561%_ _%tl144520144549%_))
                  (_%K144518144544%_
                   _%rest144561%_
                   _%hd-pat144559%_
                   _%hd-depth*144557%_)))
              (_%else144516144532%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else144516144532%_))))))))))
                             (_%recur144377%_
                              (lambda (_%e144382%_ _%is-e?144383%_)
                                (if (_%is-e?144383%_ _%e144382%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx144329%_))
                                    (if (gx#syntax-local-pattern? _%e144382%_)
                                        (let* ((_%pat144387%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e144382%_)))
                                               (_%depth144389%_
                                                (##structure-ref
                                                 _%pat144387%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth144389%_)
                                              (values (cons 'ref _%pat144387%_)
                                                      (cons (cons _%depth144389%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat144387%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat144387%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e144382%_))
                                            (values (cons 'term _%e144382%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e144382%_))
                                                (let* ((_%e144393144400%_
                                                        _%e144382%_)
                                                       (_%E144395144404%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e144393144400%_))))
                                                       (_%E144394144486%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%e144393144400%_))
                      (let ((_%e144396144408%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e144393144400%_))))
                        (let ((_%hd144397144411%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144396144408%_)))
                              (_%tl144398144413%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144396144408%_))))
                          (let* ((_%hd144416%_ _%hd144397144411%_)
                                 (_%rest144418%_ _%tl144398144413%_))
                            (if (_%is-e?144383%_ _%hd144416%_)
                                (let* ((_%e144419144426%_ _%rest144418%_)
                                       (_%E144421144430%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx144329%_
                                             _%e144382%_))))
                                       (_%E144420144444%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e144419144426%_))
                                              (let ((_%e144422144434%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e144419144426%_))))
                                                (let ((_%hd144423144437%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e144422144434%_)))
                                                      (_%tl144424144439%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e144422144434%_))))
                                                  (let ((_%rest144442%_
                                                         _%hd144423144437%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl144424144439%_))
                                                        (_%recur144377%_
                                                         _%rest144442%_
                                                         false)
                                                        (_%E144421144430%_)))))
                                              (_%E144421144430%_)))))
                                  (_%E144420144444%_))
                                (let _%lp144448%_ ((_%rest144450%_
                                                    _%rest144418%_)
                                                   (_%depth144451%_ '0))
                                  (let* ((_%e144452144459%_ _%rest144450%_)
                                         (_%E144454144463%_
                                          (lambda ()
                                            (if (fxpositive? _%depth144451%_)
                                                (_%make-splice144376%_
                                                 _%e144382%_
                                                 _%depth144451%_
                                                 (_%recur144377%_
                                                  _%hd144416%_
                                                  _%is-e?144383%_)
                                                 (_%recur144377%_
                                                  _%rest144450%_
                                                  _%is-e?144383%_))
                                                (_%make-cons144375%_
                                                 (_%recur144377%_
                                                  _%hd144416%_
                                                  _%is-e?144383%_)
                                                 (_%recur144377%_
                                                  _%rest144450%_
                                                  _%is-e?144383%_)))))
                                         (_%E144453144482%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%e144452144459%_))
                                                (let ((_%e144455144467%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%e144452144459%_))))
                                                  (let ((_%hd144456144470%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e144455144467%_)))
                                                        (_%tl144457144472%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e144455144467%_))))
                                                    (let* ((_%rest-hd144475%_
                                                            _%hd144456144470%_)
                                                           (_%rest-tl144477%_
                                                            _%tl144457144472%_))
                                                      (if (_%is-e?144383%_
                                                           _%rest-hd144475%_)
                                                          (_%lp144448%_
                                                           _%rest-tl144477%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth144451%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth144451%_)
                      (_%make-splice144376%_
                       _%e144382%_
                       _%depth144451%_
                       (_%recur144377%_ _%hd144416%_ _%is-e?144383%_)
                       (_%recur144377%_ _%rest144450%_ _%is-e?144383%_))
                      (_%make-cons144375%_
                       (_%recur144377%_ _%hd144416%_ _%is-e?144383%_)
                       (_%recur144377%_ _%rest144450%_ _%is-e?144383%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E144454144463%_)))))
                                    (_%E144453144482%_)))))))
                      (_%E144395144404%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E144394144486%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e144382%_))
                                                    (let ((_g144906_
                                                           (_%recur144377%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e144382%_)))
                    _%is-e?144383%_)))
              (begin
                (let ((_g144907_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g144906_)
                             (##values-length _g144906_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g144907_ 2)))
                      (error "Context expects 2 values" _g144907_)))
                (let ((_%e144491%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g144906_ 0)))
                      (_%vars144492%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g144906_ 1))))
                  (values (cons 'vector _%e144491%_) _%vars144492%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e144382%_))
                                                        (let ((_g144908_
                                                               (_%recur144377%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e144382%_)))
                        _%is-e?144383%_)))
                  (begin
                    (let ((_g144909_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g144908_)
                                 (##values-length _g144908_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g144909_ 2)))
                          (error "Context expects 2 values" _g144909_)))
                    (let ((_%e144495%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g144908_ 0)))
                          (_%vars144496%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g144908_ 1))))
                      (values (cons 'box _%e144495%_) _%vars144496%_))))
                (values (cons 'datum _%e144382%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g144910_
                             (_%recur144377%_ _%e144373%_ gx#ellipsis?)))
                        (begin
                          (let ((_g144911_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g144910_)
                                       (##values-length _g144910_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g144911_ 2)))
                                (error "Context expects 2 values" _g144911_)))
                          (let ((_%tree144379%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g144910_ 0)))
                                (_%vars144380%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g144910_ 1))))
                            (if (null? _%vars144380%_)
                                _%tree144379%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx144329%_
                                   _%vars144380%_))))))))))
          (let* ((_%e144333144343%_ _%stx144329%_)
                 (_%E144335144347%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx144329%_))))
                 (_%E144334144369%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e144333144343%_))
                        (let ((_%e144336144351%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e144333144343%_))))
                          (let ((_%hd144337144354%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144336144351%_)))
                                (_%tl144338144356%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144336144351%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl144338144356%_))
                                (let ((_%e144339144359%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl144338144356%_))))
                                  (let ((_%hd144340144362%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e144339144359%_)))
                                        (_%tl144341144364%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e144339144359%_))))
                                    (let ((_%form144367%_ _%hd144340144362%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl144341144364%_))
                                          (let ((__tmp144913
                                                 (_%generate144331%_
                                                  (_%parse144332%_
                                                   _%form144367%_)))
                                                (__tmp144912
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx144329%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp144913
                                             __tmp144912))
                                          (_%E144335144347%_)))))
                                (_%E144335144347%_))))
                        (_%E144335144347%_)))))
            (_%E144334144369%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx143578%_
               _%identifier=?143579%_
               _%unwrap-e143580%_
               _%wrap-e143581%_)
        (letrec ((_%generate-bindings143583%_
                  (lambda (_%target144193%_
                           _%ids144194%_
                           _%clauses144195%_
                           _%clause-ids144196%_
                           _%E144197%_)
                    (letrec ((_%generate1144199%_
                              (lambda (_%clause144296%_
                                       _%clause-id144297%_
                                       _%E144298%_)
                                (cons (cons _%clause-id144297%_ '())
                                      (cons (let ((__tmp144915
                                                   (cons _%target144193%_ '()))
                                                  (__tmp144914
                                                   (_%generate-clause143585%_
                                                    _%target144193%_
                                                    _%ids144194%_
                                                    _%clause144296%_
                                                    _%E144298%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp144915
                                               __tmp144914))
                                            '())))))
                      (let _%lp144201%_ ((_%rest144203%_ _%clauses144195%_)
                                         (_%rest-ids144204%_
                                          _%clause-ids144196%_)
                                         (_%bindings144205%_ '()))
                        (let* ((_%rest144206144214%_ _%rest144203%_)
                               (_%else144208144222%_
                                (lambda () _%bindings144205%_))
                               (_%K144210144284%_
                                (lambda (_%rest144225%_ _%clause144226%_)
                                  (let* ((_%rest-ids144227144234%_
                                          _%rest-ids144204%_)
                                         (_%E144229144238%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids144227144234%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K144230144272%_
                                          (lambda (_%rest-ids144241%_
                                                   _%clause-id144242%_)
                                            (let* ((_%rest-ids144243144251%_
                                                    _%rest-ids144241%_)
                                                   (_%else144245144259%_
                                                    (lambda ()
                                                      (cons (_%generate1144199%_
                                                             _%clause144226%_
                                                             _%clause-id144242%_
                                                             _%E144197%_)
                                                            _%bindings144205%_)))
                                                   (_%K144247144264%_
                                                    (lambda (_%next-clause-id144262%_)
                                                      (_%lp144201%_
                                                       _%rest144225%_
                                                       _%rest-ids144241%_
                                                       (cons (_%generate1144199%_
                                                              _%clause144226%_
                                                              _%clause-id144242%_
                                                              _%next-clause-id144262%_)
                                                             _%bindings144205%_)))))
                                              (if (pair? _%rest-ids144243144251%_)
                                                  (let* ((_%hd144248144267%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids144243144251%_)))
                                                         (_%next-clause-id144270%_
                                                          _%hd144248144267%_))
                                                    (_%K144247144264%_
                                                     _%next-clause-id144270%_))
                                                  (_%else144245144259%_))))))
                                    (if (pair? _%rest-ids144227144234%_)
                                        (let ((_%hd144231144275%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids144227144234%_)))
                                              (_%tl144232144277%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids144227144234%_))))
                                          (let* ((_%clause-id144280%_
                                                  _%hd144231144275%_)
                                                 (_%rest-ids144282%_
                                                  _%tl144232144277%_))
                                            (_%K144230144272%_
                                             _%rest-ids144282%_
                                             _%clause-id144280%_)))
                                        (_%E144229144238%_))))))
                          (if (pair? _%rest144206144214%_)
                              (let ((_%hd144211144287%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest144206144214%_)))
                                    (_%tl144212144289%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest144206144214%_))))
                                (let* ((_%clause144292%_ _%hd144211144287%_)
                                       (_%rest144294%_ _%tl144212144289%_))
                                  (_%K144210144284%_
                                   _%rest144294%_
                                   _%clause144292%_)))
                              (_%else144208144222%_)))))))
                 (_%generate-body143584%_
                  (lambda (_%bindings144153%_ _%body144154%_)
                    (let _%recur144156%_ ((_%rest144158%_ _%bindings144153%_))
                      (let* ((_%rest144159144167%_ _%rest144158%_)
                             (_%else144161144175%_ (lambda () _%body144154%_))
                             (_%K144163144181%_
                              (lambda (_%rest144178%_ _%hd144179%_)
                                (let ((__tmp144917 (cons _%hd144179%_ '()))
                                      (__tmp144916
                                       (_%recur144156%_ _%rest144178%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp144917
                                   __tmp144916)))))
                        (if (pair? _%rest144159144167%_)
                            (let ((_%hd144164144184%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest144159144167%_)))
                                  (_%tl144165144186%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest144159144167%_))))
                              (let* ((_%hd144189%_ _%hd144164144184%_)
                                     (_%rest144191%_ _%tl144165144186%_))
                                (_%K144163144181%_
                                 _%rest144191%_
                                 _%hd144189%_)))
                            (_%else144161144175%_))))))
                 (_%generate-clause143585%_
                  (lambda (_%target144016%_
                           _%ids144017%_
                           _%clause144018%_
                           _%E144019%_)
                    (letrec ((_%generate1144021%_
                              (lambda (_%hd144108%_
                                       _%fender144109%_
                                       _%body144110%_)
                                (let ((_g144918_
                                       (_%parse-clause143587%_
                                        _%hd144108%_
                                        _%ids144017%_)))
                                  (begin
                                    (let ((_g144919_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g144918_)
                                                 (##values-length _g144918_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g144919_ 2)))
                                          (error "Context expects 2 values"
                                                 _g144919_)))
                                    (let ((_%e144112%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g144918_ 0)))
                                          (_%mvars144113%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g144918_ 1))))
                                      (let* ((_%pvars144115%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars144113%_))))
                                             (_%E144117%_
                                              (cons _%E144019%_
                                                    (cons _%target144016%_
                                                          '())))
                                             (_%K144150%_
                                              (let ((__tmp144920
                                                     (let ((__tmp144922
                                                            (map (lambda (_%mvar144119%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar144120%_)
                           (let* ((_%mvar144121144128%_ _%mvar144119%_)
                                  (_%E144123144132%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar144121144128%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K144124144138%_
                                   (lambda (_%depth144135%_ _%id144136%_)
                                     (cons _%id144136%_
                                           (cons (let ((__tmp144924
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id144136%_)))
                                                       (__tmp144923
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar144120%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp144924
                                                    __tmp144923
                                                    _%depth144135%_))
                                                 '())))))
                             (if (pair? _%mvar144121144128%_)
                                 (let ((_%hd144125144141%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar144121144128%_)))
                                       (_%tl144126144143%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar144121144128%_))))
                                   (let* ((_%id144146%_ _%hd144125144141%_)
                                          (_%depth144148%_ _%tl144126144143%_))
                                     (_%K144124144138%_
                                      _%depth144148%_
                                      _%id144146%_)))
                                 (_%E144123144132%_))))
                         _%mvars144113%_
                         _%pvars144115%_))
                   (__tmp144921
                    (if (eq? _%fender144109%_ '#t)
                        _%body144110%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender144109%_
                           _%body144110%_
                           _%E144117%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp144922 __tmp144921))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars144115%_
                                                 __tmp144920))))
                                        (_%generate-match143586%_
                                         _%hd144108%_
                                         _%target144016%_
                                         _%e144112%_
                                         _%mvars144113%_
                                         _%K144150%_
                                         _%E144117%_))))))))
                      (let* ((_%e144022144042%_ _%clause144018%_)
                             (_%E144031144046%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e144022144042%_))))
                             (_%E144024144080%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e144022144042%_))
                                    (let ((_%e144032144050%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e144022144042%_))))
                                      (let ((_%hd144033144053%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e144032144050%_)))
                                            (_%tl144034144055%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e144032144050%_))))
                                        (let ((_%hd144058%_
                                               _%hd144033144053%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl144034144055%_))
                                              (let ((_%e144035144060%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl144034144055%_))))
                                                (let ((_%hd144036144063%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e144035144060%_)))
                                                      (_%tl144037144065%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e144035144060%_))))
                                                  (let ((_%fender144068%_
                                                         _%hd144036144063%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl144037144065%_))
                                                        (let ((_%e144038144070%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl144037144065%_))))
                  (let ((_%hd144039144073%_
                         (let ()
                           (declare (not safe))
                           (##car _%e144038144070%_)))
                        (_%tl144040144075%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e144038144070%_))))
                    (let ((_%body144078%_ _%hd144039144073%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl144040144075%_))
                          (_%generate1144021%_
                           _%hd144058%_
                           _%fender144068%_
                           _%body144078%_)
                          (_%E144031144046%_)))))
                (_%E144031144046%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E144031144046%_)))))
                                    (_%E144031144046%_))))
                             (_%E144023144104%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e144022144042%_))
                                    (let ((_%e144025144084%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e144022144042%_))))
                                      (let ((_%hd144026144087%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e144025144084%_)))
                                            (_%tl144027144089%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e144025144084%_))))
                                        (let ((_%hd144092%_
                                               _%hd144026144087%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl144027144089%_))
                                              (let ((_%e144028144094%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl144027144089%_))))
                                                (let ((_%hd144029144097%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e144028144094%_)))
                                                      (_%tl144030144099%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e144028144094%_))))
                                                  (let ((_%body144102%_
                                                         _%hd144029144097%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl144030144099%_))
                                                        (_%generate1144021%_
                                                         _%hd144092%_
                                                         '#t
                                                         _%body144102%_)
                                                        (_%E144024144080%_)))))
                                              (_%E144024144080%_)))))
                                    (_%E144024144080%_)))))
                        (_%E144023144104%_)))))
                 (_%generate-match143586%_
                  (lambda (_%where143765%_
                           _%target143766%_
                           _%hd143767%_
                           _%mvars143768%_
                           _%K143769%_
                           _%E143770%_)
                    (letrec ((_%BUG143772%_
                              (lambda (_%q144014%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx143578%_
                                         _%hd143767%_
                                         _%q144014%_))))
                             (_%recur143773%_
                              (lambda (_%e143864%_
                                       _%vars143865%_
                                       _%target143866%_
                                       _%E143867%_
                                       _%k143868%_)
                                (let* ((_%e143869143876%_ _%e143864%_)
                                       (_%E143871143880%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e143869143876%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K143872144002%_
                                        (lambda (_%body143883%_ _%tag143884%_)
                                          (let ((_%$e143886%_ _%tag143884%_))
                                            (if (eq? 'any _%$e143886%_)
                                                (_%k143868%_ _%vars143865%_)
                                                (if (eq? 'id _%$e143886%_)
                                                    (let ((__tmp144929
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target143866%_)))
                                                          (__tmp144925
                                                           (let ((__tmp144927
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp144928
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e143581%_
                                    _%body143883%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?143579%_
                             __tmp144928
                             _%target143866%_)))
                         (__tmp144926 (_%k143868%_ _%vars143865%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp144927 __tmp144926 _%E143867%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp144929 __tmp144925 _%E143867%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e143886%_)
                                                        (_%k143868%_
                                                         (cons (cons _%body143883%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target143866%_)
                       _%vars143865%_))
                (if (eq? 'cons _%$e143886%_)
                    (let ((_%$e143889%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd143890%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl143891%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp144935
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target143866%_)))
                            (__tmp144930
                             (let ((__tmp144934
                                    (cons (cons (cons _%$e143889%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e143580%_
                                                         _%target143866%_))
                                                      '()))
                                          '()))
                                   (__tmp144931
                                    (let ((__tmp144933
                                           (cons (cons (cons _%$hd143890%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e143889%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl143891%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e143889%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp144932
                                           (let* ((_%body143892143899%_
                                                   _%body143883%_)
                                                  (_%E143894143903%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body143892143899%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K143895143911%_
                                                   (lambda (_%tl143906%_
                                                            _%hd143907%_)
                                                     (_%recur143773%_
                                                      _%hd143907%_
                                                      _%vars143865%_
                                                      _%$hd143890%_
                                                      _%E143867%_
                                                      (lambda (_%vars143909%_)
                                                        (_%recur143773%_
                                                         _%tl143906%_
                                                         _%vars143909%_
                                                         _%$tl143891%_
                                                         _%E143867%_
                                                         _%k143868%_))))))
                                             (if (pair? _%body143892143899%_)
                                                 (let ((_%hd143896143914%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body143892143899%_)))
                                                       (_%tl143897143916%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body143892143899%_))))
                                                   (let* ((_%hd143919%_
                                                           _%hd143896143914%_)
                                                          (_%tl143921%_
                                                           _%tl143897143916%_))
                                                     (_%K143895143911%_
                                                      _%tl143921%_
                                                      _%hd143919%_)))
                                                 (_%E143894143903%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp144933
                                       __tmp144932))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp144934
                                __tmp144931))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp144935
                         __tmp144930
                         _%E143867%_)))
                    (if (eq? 'splice _%$e143886%_)
                        (let* ((_%body143922143929%_ _%body143883%_)
                               (_%E143924143933%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body143922143929%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K143925143984%_
                                (lambda (_%tl143936%_ _%hd143937%_)
                                  (let* ((_%rlen143939%_
                                          (_%splice-rlen143774%_ _%tl143936%_))
                                         (_%$target143941%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd143943%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl143945%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp143947%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e143949%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd143951%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl143953%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars143955%_
                                          (_%splice-vars143775%_ _%hd143937%_))
                                         (_%lvars143957%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars143955%_)))
                                         (_%tlvars143959%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars143955%_)))
                                         (_%linit143963%_
                                          (map (lambda (_%var143961%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars143957%_)))
                                    (letrec ((_%make-loop143966%_
                                              (lambda (_%vars143970%_)
                                                (let ((__tmp144937
                                                       (cons (cons (cons _%$lp143947%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp144950
                                        (cons _%$hd143943%_ _%lvars143957%_))
                                       (__tmp144938
                                        (let ((__tmp144949
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd143943%_)))
                                              (__tmp144943
                                               (let ((__tmp144948
                                                      (cons (cons (cons _%$lp-e143949%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e143580%_
                                   _%$hd143943%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp144944
                                                      (let ((__tmp144947
                                                             (cons (cons (cons _%$lp-hd143951%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e143949%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl143953%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e143949%_))
                                             '()))
                                 '())))
                    (__tmp144945
                     (_%recur143773%_
                      _%hd143937%_
                      '()
                      _%$lp-hd143951%_
                      _%E143867%_
                      (lambda (_%hdvars143972%_)
                        (cons _%$lp143947%_
                              (cons _%$lp-tl143953%_
                                    (map (lambda (_%svar143974%_
                                                  _%lvar143975%_)
                                           (let ((__tmp144946
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar143974%_
                                                     _%hdvars143972%_
                                                     _%BUG143772%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp144946
                                              _%lvar143975%_)))
                                         _%svars143955%_
                                         _%lvars143957%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp144947 __tmp144945))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp144948
                                                  __tmp144944)))
                                              (__tmp144939
                                               (let ((__tmp144942
                                                      (map (lambda (_%lvar143977%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar143978%_)
                     (cons (cons _%tlvar143978%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar143977%_))
                                 '())))
                   _%lvars143957%_
                   _%tlvars143959%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp144940
                                                      (_%k143868%_
                                                       (let ((__tmp144941
                                                              (lambda (_%svar143980%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar143981%_
                               _%r143982%_)
                        (cons (cons _%svar143980%_ _%tlvar143981%_)
                              _%r143982%_))))
                 (declare (not safe))
                 (__foldl2
                  __tmp144941
                  _%vars143970%_
                  _%svars143955%_
                  _%tlvars143959%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp144942
                                                  __tmp144940))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp144949
                                           __tmp144943
                                           __tmp144939))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp144950
                                    __tmp144938))
                                 '()))
                     '()))
              (__tmp144936
               (cons _%$lp143947%_ (cons _%$target143941%_ _%linit143963%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp144937
                                                   __tmp144936)))))
                                      (let ((_%body143968%_
                                             (let ((__tmp144952
                                                    (cons (cons (cons _%$target143941%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl143945%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target143866%_
                                 _%rlen143939%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp144951
                                                    (_%recur143773%_
                                                     _%tl143936%_
                                                     _%vars143865%_
                                                     _%$tl143945%_
                                                     _%E143867%_
                                                     _%make-loop143966%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp144952
                                                __tmp144951))))
                                        (let ((__tmp144956
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target143866%_)))
                                              (__tmp144953
                                               (if (zero? _%rlen143939%_)
                                                   _%body143968%_
                                                   (let ((__tmp144954
                                                          (let ((__tmp144955
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target143866%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp144955 _%rlen143939%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp144954
                                                      _%body143968%_
                                                      _%E143867%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp144956
                                           __tmp144953
                                           _%E143867%_))))))))
                          (if (pair? _%body143922143929%_)
                              (let ((_%hd143926143987%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body143922143929%_)))
                                    (_%tl143927143989%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body143922143929%_))))
                                (let* ((_%hd143992%_ _%hd143926143987%_)
                                       (_%tl143994%_ _%tl143927143989%_))
                                  (_%K143925143984%_
                                   _%tl143994%_
                                   _%hd143992%_)))
                              (_%E143924143933%_)))
                        (if (eq? 'null _%$e143886%_)
                            (let ((__tmp144958
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target143866%_)))
                                  (__tmp144957 (_%k143868%_ _%vars143865%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp144958
                               __tmp144957
                               _%E143867%_))
                            (if (eq? 'vector _%$e143886%_)
                                (let ((_%$e143996%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp144963
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target143866%_)))
                                        (__tmp144959
                                         (let ((__tmp144961
                                                (cons (cons (cons _%$e143996%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp144962
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e143580%_
                                    _%target143866%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp144962))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp144960
                                                (_%recur143773%_
                                                 _%body143883%_
                                                 _%vars143865%_
                                                 _%$e143996%_
                                                 _%E143867%_
                                                 _%k143868%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp144961
                                            __tmp144960))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp144963
                                     __tmp144959
                                     _%E143867%_)))
                                (if (eq? 'box _%$e143886%_)
                                    (let ((_%$e143998%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp144968
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target143866%_)))
                                            (__tmp144964
                                             (let ((__tmp144966
                                                    (cons (cons (cons _%$e143998%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp144967
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e143580%_
                                        _%target143866%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp144967))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp144965
                                                    (_%recur143773%_
                                                     _%body143883%_
                                                     _%vars143865%_
                                                     _%$e143998%_
                                                     _%E143867%_
                                                     _%k143868%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp144966
                                                __tmp144965))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp144968
                                         __tmp144964
                                         _%E143867%_)))
                                    (if (eq? 'datum _%$e143886%_)
                                        (let ((_%$e144000%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp144974
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target143866%_)))
                                                (__tmp144969
                                                 (let ((__tmp144973
                                                        (cons (cons (cons _%$e144000%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target143866%_))
                                  '()))
                      '()))
               (__tmp144970
                (let ((__tmp144972
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e144000%_ _%body143883%_)))
                      (__tmp144971 (_%k143868%_ _%vars143865%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp144972 __tmp144971 _%E143867%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp144973
                                                    __tmp144970))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp144974
                                             __tmp144969
                                             _%E143867%_)))
                                        (_%BUG143772%_
                                         _%e143864%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (pair? _%e143869143876%_)
                                      (let ((_%hd143873144005%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e143869143876%_)))
                                            (_%tl143874144007%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e143869143876%_))))
                                        (let* ((_%tag144010%_
                                                _%hd143873144005%_)
                                               (_%body144012%_
                                                _%tl143874144007%_))
                                          (_%K143872144002%_
                                           _%body144012%_
                                           _%tag144010%_)))
                                      (_%E143871143880%_)))))
                             (_%splice-rlen143774%_
                              (lambda (_%e143826%_)
                                (let _%lp143828%_ ((_%e143830%_ _%e143826%_)
                                                   (_%n143831%_ '0))
                                  (let* ((_%e143832143839%_ _%e143830%_)
                                         (_%E143834143843%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e143832143839%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K143835143852%_
                                          (lambda (_%body143846%_
                                                   _%tag143847%_)
                                            (let ((_%$e143849%_ _%tag143847%_))
                                              (if (eq? 'splice _%$e143849%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx143578%_
                                                     _%where143765%_))
                                                  (if (eq? 'cons _%$e143849%_)
                                                      (_%lp143828%_
                                                       (cdr _%body143846%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n143831%_
                                                                '1)))
                                                      _%n143831%_))))))
                                    (if (pair? _%e143832143839%_)
                                        (let ((_%hd143836143855%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143832143839%_)))
                                              (_%tl143837143857%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143832143839%_))))
                                          (let* ((_%tag143860%_
                                                  _%hd143836143855%_)
                                                 (_%body143862%_
                                                  _%tl143837143857%_))
                                            (_%K143835143852%_
                                             _%body143862%_
                                             _%tag143860%_)))
                                        (_%E143834143843%_))))))
                             (_%splice-vars143775%_
                              (lambda (_%e143782%_)
                                (let _%recur143784%_ ((_%e143786%_ _%e143782%_)
                                                      (_%vars143787%_ '()))
                                  (let* ((_%e143788143795%_ _%e143786%_)
                                         (_%E143790143799%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e143788143795%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K143791143814%_
                                          (lambda (_%body143802%_
                                                   _%tag143803%_)
                                            (let ((_%$e143805%_ _%tag143803%_))
                                              (if (eq? 'var _%$e143805%_)
                                                  (cons _%body143802%_
                                                        _%vars143787%_)
                                                  (if (or (eq? 'cons
                                                               _%$e143805%_)
                                                          (eq? 'splice
                                                               _%$e143805%_))
                                                      (_%recur143784%_
                                                       (cdr _%body143802%_)
                                                       (_%recur143784%_
                                                        (car _%body143802%_)
                                                        _%vars143787%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e143805%_)
                      (eq? 'box _%$e143805%_))
                  (_%recur143784%_ _%body143802%_ _%vars143787%_)
                  _%vars143787%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%e143788143795%_)
                                        (let ((_%hd143792143817%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143788143795%_)))
                                              (_%tl143793143819%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143788143795%_))))
                                          (let* ((_%tag143822%_
                                                  _%hd143792143817%_)
                                                 (_%body143824%_
                                                  _%tl143793143819%_))
                                            (_%K143791143814%_
                                             _%body143824%_
                                             _%tag143822%_)))
                                        (_%E143790143799%_))))))
                             (_%make-body143776%_
                              (lambda (_%vars143778%_)
                                (cons _%K143769%_
                                      (map (lambda (_%mvar143780%_)
                                             (let ((__tmp144975
                                                    (car _%mvar143780%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp144975
                                                _%vars143778%_
                                                _%BUG143772%_)))
                                           _%mvars143768%_)))))
                      (_%recur143773%_
                       _%hd143767%_
                       '()
                       _%target143766%_
                       _%E143770%_
                       _%make-body143776%_))))
                 (_%parse-clause143587%_
                  (lambda (_%hd143659%_ _%ids143660%_)
                    (let _%recur143662%_ ((_%e143664%_ _%hd143659%_)
                                          (_%vars143665%_ '())
                                          (_%depth143666%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e143664%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e143664%_))
                              (values '(any) _%vars143665%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e143664%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx143578%_
                                     _%hd143659%_))
                                  (if (let ((__tmp144976
                                             (lambda (_%id143671%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e143664%_
                                                  _%id143671%_)))))
                                        (declare (not safe))
                                        (__find __tmp144976 _%ids143660%_))
                                      (values (cons 'id _%e143664%_)
                                              _%vars143665%_)
                                      (if (let ((__tmp144977
                                                 (lambda (_%var143674%_)
                                                   (let ((__tmp144978
                                                          (car _%var143674%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e143664%_
                                                      __tmp144978)))))
                                            (declare (not safe))
                                            (__find __tmp144977
                                                    _%vars143665%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx143578%_
                                             _%e143664%_))
                                          (values (cons 'var _%e143664%_)
                                                  (cons (cons _%e143664%_
                                                              _%depth143666%_)
                                                        _%vars143665%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e143664%_))
                              (let* ((_%e143678143685%_ _%e143664%_)
                                     (_%E143680143689%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%e143678143685%_))))
                                     (_%E143679143750%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%e143678143685%_))
                                            (let ((_%e143681143693%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%e143678143685%_))))
                                              (let ((_%hd143682143696%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e143681143693%_)))
                                                    (_%tl143683143698%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e143681143693%_))))
                                                (let* ((_%hd143701%_
                                                        _%hd143682143696%_)
                                                       (_%rest143703%_
                                                        _%tl143683143698%_)
                                                       (_%make-pair143718%_
                                                        (lambda (_%tag143705%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd143706%_
                         _%tl143707%_)
                  (let* ((_%hd-depth143709%_
                          (if (eq? _%tag143705%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth143666%_ '1))
                              _%depth143666%_))
                         (_g144979_
                          (_%recur143662%_
                           _%hd143706%_
                           _%vars143665%_
                           _%hd-depth143709%_)))
                    (begin
                      (let ((_g144980_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g144979_)
                                   (##values-length _g144979_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g144980_ 2)))
                            (error "Context expects 2 values" _g144980_)))
                      (let ((_%hd143711%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g144979_ 0)))
                            (_%vars143712%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g144979_ 1))))
                        (let ((_g144981_
                               (_%recur143662%_
                                _%tl143707%_
                                _%vars143712%_
                                _%depth143666%_)))
                          (begin
                            (let ((_g144982_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g144981_)
                                         (##values-length _g144981_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g144982_ 2)))
                                  (error "Context expects 2 values"
                                         _g144982_)))
                            (let ((_%tl143714%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g144981_ 0)))
                                  (_%vars143715%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g144981_ 1))))
                              (values (cons _%tag143705%_
                                            (cons _%hd143711%_ _%tl143714%_))
                                      _%vars143715%_)))))))))
               (_%e143719143726%_ _%rest143703%_)
               (_%E143721143730%_
                (lambda ()
                  (_%make-pair143718%_ 'cons _%hd143701%_ _%rest143703%_)))
               (_%E143720143746%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%e143719143726%_))
                      (let ((_%e143722143734%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e143719143726%_))))
                        (let ((_%hd143723143737%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143722143734%_)))
                              (_%tl143724143739%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143722143734%_))))
                          (let* ((_%rest-hd143742%_ _%hd143723143737%_)
                                 (_%rest-tl143744%_ _%tl143724143739%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd143742%_))
                                (_%make-pair143718%_
                                 'splice
                                 _%hd143701%_
                                 _%rest-tl143744%_)
                                (_%make-pair143718%_
                                 'cons
                                 _%hd143701%_
                                 _%rest143703%_)))))
                      (_%E143721143730%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E143720143746%_))))
                                            (_%E143680143689%_)))))
                                (_%E143679143750%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e143664%_))
                                  (values '(null) _%vars143665%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e143664%_))
                                      (let ((_g144983_
                                             (_%recur143662%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e143664%_)))
                                              _%vars143665%_
                                              _%depth143666%_)))
                                        (begin
                                          (let ((_g144984_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g144983_)
                                                       (##values-length
                                                        _g144983_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g144984_ 2)))
                                                (error "Context expects 2 values"
                                                       _g144984_)))
                                          (let ((_%e143756%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g144983_ 0)))
                                                (_%vars143757%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g144983_
                                                    1))))
                                            (values (cons 'vector _%e143756%_)
                                                    _%vars143757%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e143664%_))
                                          (let ((_g144985_
                                                 (_%recur143662%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e143664%_)))
                                                  _%vars143665%_
                                                  _%depth143666%_)))
                                            (begin
                                              (let ((_g144986_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g144985_)
                                                           (##values-length
                                                            _g144985_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g144986_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g144986_)))
                                              (let ((_%e143760%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g144985_
                                                        0)))
                                                    (_%vars143761%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g144985_
                                                        1))))
                                                (values (cons 'box _%e143760%_)
                                                        _%vars143761%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e143664%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e143664%_)))
                                                      _%vars143665%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx143578%_
                                                 _%e143664%_))))))))))))
          (let* ((_%e143588143601%_ _%stx143578%_)
                 (_%E143590143605%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e143588143601%_))))
                 (_%E143589143655%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e143588143601%_))
                        (let ((_%e143591143609%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e143588143601%_))))
                          (let ((_%hd143592143612%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143591143609%_)))
                                (_%tl143593143614%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143591143609%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl143593143614%_))
                                (let ((_%e143594143617%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl143593143614%_))))
                                  (let ((_%hd143595143620%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e143594143617%_)))
                                        (_%tl143596143622%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e143594143617%_))))
                                    (let ((_%expr143625%_ _%hd143595143620%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl143596143622%_))
                                          (let ((_%e143597143627%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl143596143622%_))))
                                            (let ((_%hd143598143630%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e143597143627%_)))
                                                  (_%tl143599143632%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e143597143627%_))))
                                              (let* ((_%ids143635%_
                                                      _%hd143598143630%_)
                                                     (_%clauses143637%_
                                                      _%tl143599143632%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids143635%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses143637%_))
                                                        (let* ((_%ids143642%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids143635%_)))
                       (_%clauses143644%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses143637%_)))
                       (_%clause-ids143646%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses143644%_)))
                       (_%E143648%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target143650%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first143652%_
                        (if (null? _%clauses143644%_)
                            _%E143648%_
                            (car _%clause-ids143646%_))))
                  (let ((__tmp144988
                         (let ((__tmp144989
                                (let ((__tmp144991
                                       (let ((__tmp144993
                                              (cons (cons (cons _%E143648%_
                                                                '())
                                                          (cons (let ((__tmp144995
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target143650%_ '()))
                              (__tmp144994
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target143650%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp144995 __tmp144994))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp144992
                                              (_%generate-body143584%_
                                               (_%generate-bindings143583%_
                                                _%target143650%_
                                                _%ids143642%_
                                                _%clauses143644%_
                                                _%clause-ids143646%_
                                                _%E143648%_)
                                               (cons _%first143652%_
                                                     (cons _%expr143625%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp144993
                                          __tmp144992)))
                                      (__tmp144990
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx143578%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp144991
                                   __tmp144990))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp144989)))
                        (__tmp144987
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx143578%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp144988 __tmp144987)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx143578%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx143578%_
                                                       _%ids143635%_))))))
                                          (_%E143590143605%_)))))
                                (_%E143590143605%_))))
                        (_%E143590143605%_)))))
            (_%E143589143655%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx144303%_)
        (let* ((_%identifier=?144305%_ 'free-identifier=?)
               (_%unwrap-e144307%_ 'syntax-e)
               (_%wrap-e144309%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx144303%_
           _%identifier=?144305%_
           _%unwrap-e144307%_
           _%wrap-e144309%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx144311%_ _%identifier=?144312%_)
        (let* ((_%unwrap-e144314%_ 'syntax-e) (_%wrap-e144316%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx144311%_
           _%identifier=?144312%_
           _%unwrap-e144314%_
           _%wrap-e144316%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx144318%_ _%identifier=?144319%_ _%unwrap-e144320%_)
        (let ((_%wrap-e144322%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx144318%_
           _%identifier=?144319%_
           _%unwrap-e144320%_
           _%wrap-e144322%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g144996_
        (let ((_g144997_ (let () (declare (not safe)) (##length _g144996_))))
          (cond ((let () (declare (not safe)) (##fx= _g144997_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g144996_))
                ((let () (declare (not safe)) (##fx= _g144997_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g144996_))
                ((let () (declare (not safe)) (##fx= _g144997_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g144996_))
                ((let () (declare (not safe)) (##fx= _g144997_ 4))
                 (apply gx#macro-expand-syntax-case__% _g144996_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g144996_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx143575%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx143575%_))
            (let ((__tmp144998
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx143575%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp144998 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd143533%_ . _%rest143534%_)
        (let ((_%len143536%_ (length _%hd143533%_)))
          (let _%lp143538%_ ((_%rest143540%_ _%rest143534%_))
            (let* ((_%rest143541143549%_ _%rest143540%_)
                   (_%else143543143557%_ (lambda () '#!void))
                   (_%K143545143563%_
                    (lambda (_%rest143560%_ _%hd143561%_)
                      (if (let ((__tmp144999 (length _%hd143561%_)))
                            (declare (not safe))
                            (##fx= _%len143536%_ __tmp144999))
                          (_%lp143538%_ _%rest143560%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd143561%_))))))
              (if (pair? _%rest143541143549%_)
                  (let ((_%hd143546143566%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest143541143549%_)))
                        (_%tl143547143568%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest143541143549%_))))
                    (let* ((_%hd143571%_ _%hd143546143566%_)
                           (_%rest143573%_ _%tl143547143568%_))
                      (_%K143545143563%_ _%rest143573%_ _%hd143571%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx143483%_ _%n143484%_)
        (let _%lp143486%_ ((_%rest143489%_ _%stx143483%_) (_%r143491%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest143489%_))
              (let* ((_%g143493143500%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest143489%_)))
                     (_%E143495143504%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g143493143500%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K143496143511%_
                      (lambda (_%rest143507%_ _%hd143508%_)
                        (_%lp143486%_
                         _%rest143507%_
                         (cons _%hd143508%_ _%r143491%_)))))
                (if (pair? _%g143493143500%_)
                    (let ((_%hd143497143514%_
                           (let ()
                             (declare (not safe))
                             (##car _%g143493143500%_)))
                          (_%tl143498143516%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g143493143500%_))))
                      (let* ((_%hd143519%_ _%hd143497143514%_)
                             (_%rest143521%_ _%tl143498143516%_))
                        (_%K143496143511%_ _%rest143521%_ _%hd143519%_)))
                    (_%E143495143504%_)))
              (let _%lp143523%_ ((_%n143525%_ _%n143484%_)
                                 (_%l143526%_ _%r143491%_)
                                 (_%r143528%_ _%rest143489%_))
                (if (null? _%l143526%_)
                    (values _%l143526%_ _%r143528%_)
                    (if (fxpositive? _%n143525%_)
                        (_%lp143523%_
                         (let () (declare (not safe)) (##fx- _%n143525%_ '1))
                         (cdr _%l143526%_)
                         (cons (car _%l143526%_) _%r143528%_))
                        (values (reverse! _%l143526%_) _%r143528%_))))))))
    (define gx#syntax-split-splice->vector
      (lambda (_%stx143433%_ _%n143434%_)
        (let _%lp143436%_ ((_%rest143439%_ _%stx143433%_) (_%r143441%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest143439%_))
              (let* ((_%g143443143450%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest143439%_)))
                     (_%E143445143454%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g143443143450%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K143446143461%_
                      (lambda (_%rest143457%_ _%hd143458%_)
                        (_%lp143436%_
                         _%rest143457%_
                         (cons _%hd143458%_ _%r143441%_)))))
                (if (pair? _%g143443143450%_)
                    (let ((_%hd143447143464%_
                           (let ()
                             (declare (not safe))
                             (##car _%g143443143450%_)))
                          (_%tl143448143466%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g143443143450%_))))
                      (let* ((_%hd143469%_ _%hd143447143464%_)
                             (_%rest143471%_ _%tl143448143466%_))
                        (_%K143446143461%_ _%rest143471%_ _%hd143469%_)))
                    (_%E143445143454%_)))
              (let _%lp143473%_ ((_%n143475%_ _%n143434%_)
                                 (_%l143476%_ _%r143441%_)
                                 (_%r143478%_ _%rest143439%_))
                (if (null? _%l143476%_)
                    (vector _%l143476%_ _%r143478%_)
                    (if (fxpositive? _%n143475%_)
                        (_%lp143473%_
                         (let () (declare (not safe)) (##fx- _%n143475%_ '1))
                         (cdr _%l143476%_)
                         (cons (car _%l143476%_) _%r143478%_))
                        (vector (reverse! _%l143476%_) _%r143478%_))))))))))
