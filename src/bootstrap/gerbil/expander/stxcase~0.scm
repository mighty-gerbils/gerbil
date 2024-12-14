(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1734131747)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp133071 (list gx#expander::t))
            (__tmp133070 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp133071
         '(id depth)
         __tmp133070
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args133067%_
        (apply make-instance gx#syntax-pattern::t _%$args133067%_)))
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
      (lambda (_%self131674133051%_ _%stx133053%_)
        (let* ((_%self133055%_ _%self131674133051%_)
               (_%self133057%_ _%self133055%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx133053%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx132517%_)
        (letrec ((_%generate132519%_
                  (lambda (_%e132759%_)
                    (letrec ((_%BUG132761%_
                              (lambda (_%q132926%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx132517%_
                                         _%e132759%_
                                         _%q132926%_))))
                             (_%local-pattern-e132762%_
                              (lambda (_%pat132924%_)
                                (let ((__tmp133072
                                       (##structure-ref
                                        _%pat132924%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp133072))))
                             (_%getvar132763%_
                              (lambda (_%q132921%_ _%vars132922%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q132921%_
                                   _%vars132922%_
                                   _%BUG132761%_))))
                             (_%getarg132764%_
                              (lambda (_%arg132887%_ _%vars132888%_)
                                (let* ((_%arg132889132896%_ _%arg132887%_)
                                       (_%E132891132900%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg132889132896%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K132892132909%_
                                        (lambda (_%e132903%_ _%tag132904%_)
                                          (let ((_%$e132906%_ _%tag132904%_))
                                            (if (eq? 'ref _%$e132906%_)
                                                (_%getvar132763%_
                                                 _%e132903%_
                                                 _%vars132888%_)
                                                (if (eq? 'pattern _%$e132906%_)
                                                    (_%local-pattern-e132762%_
                                                     _%e132903%_)
                                                    (_%BUG132761%_
                                                     _%arg132887%_)))))))
                                  (if (pair? _%arg132889132896%_)
                                      (let ((_%hd132893132912%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg132889132896%_)))
                                            (_%tl132894132914%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg132889132896%_))))
                                        (let* ((_%tag132917%_
                                                _%hd132893132912%_)
                                               (_%e132919%_
                                                _%tl132894132914%_))
                                          (_%K132892132909%_
                                           _%e132919%_
                                           _%tag132917%_)))
                                      (_%E132891132900%_))))))
                      (let _%recur132766%_ ((_%e132768%_ _%e132759%_)
                                            (_%vars132769%_ '()))
                        (let* ((_%e132770132777%_ _%e132768%_)
                               (_%E132772132781%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e132770132777%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K132773132875%_
                                (lambda (_%body132784%_ _%tag132785%_)
                                  (let ((_%$e132787%_ _%tag132785%_))
                                    (if (eq? 'datum _%$e132787%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body132784%_))
                                        (if (eq? 'term _%$e132787%_)
                                            (let ((_%id132790%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body132784%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id132790%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks132793%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id132790%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks132793%_)
                                                        (let ((__tmp133073
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body132784%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp133073))
                (let ((__tmp133075
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body132784%_)))
                      (__tmp133074
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body132784%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp133075
                   __tmp133074
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id132790%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body132784%_))
                                                      (_%BUG132761%_
                                                       _%e132768%_))))
                                            (if (eq? 'pattern _%$e132787%_)
                                                (_%local-pattern-e132762%_
                                                 _%body132784%_)
                                                (if (eq? 'ref _%$e132787%_)
                                                    (_%getvar132763%_
                                                     _%body132784%_
                                                     _%vars132769%_)
                                                    (if (eq? 'cons
                                                             _%$e132787%_)
                                                        (let ((__tmp133077
                                                               (_%recur132766%_
                                                                (car _%body132784%_)
                                                                _%vars132769%_))
                                                              (__tmp133076
                                                               (_%recur132766%_
                                                                (cdr _%body132784%_)
                                                                _%vars132769%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp133077
                                                           __tmp133076))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e132787%_)
                    (let ((__tmp133078
                           (_%recur132766%_ _%body132784%_ _%vars132769%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp133078))
                    (if (eq? 'box _%$e132787%_)
                        (let ((__tmp133079
                               (_%recur132766%_
                                _%body132784%_
                                _%vars132769%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp133079))
                        (if (eq? 'splice _%$e132787%_)
                            (let* ((_%body132796132807%_ _%body132784%_)
                                   (_%E132798132811%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body132796132807%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K132799132849%_
                                    (lambda (_%args132814%_
                                             _%iv132815%_
                                             _%hd132816%_
                                             _%depth132817%_)
                                      (let* ((_%targets132823%_
                                              (map (lambda (_%g132818132820%_)
                                                     (_%getarg132764%_
                                                      _%g132818132820%_
                                                      _%vars132769%_))
                                                   _%args132814%_))
                                             (_%fold-in132825%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args132814%_)))
                                             (_%fold-out132827%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args132829%_
                                              (let ((__tmp133080
                                                     (cons _%fold-out132827%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp133080
                                                 _%fold-in132825%_)))
                                             (_%lambda-body132846%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth132817%_ '1))
                                                  (let ((_%r-args132837%_
                                                         (map (lambda (_%arg132831%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg132831%_)))
                      _%args132814%_))
                (_%r-vars132838%_
                 (let ((__tmp133081
                        (lambda (_%arg132833%_ _%var132834%_ _%r132835%_)
                          (cons (cons (cdr _%arg132833%_) _%var132834%_)
                                _%r132835%_))))
                   (declare (not safe))
                   (__foldr2
                    __tmp133081
                    _%vars132769%_
                    _%args132814%_
                    _%fold-in132825%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur132766%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth132817%_ '1))
                         (cons _%hd132816%_
                               (cons (cons 'var _%fold-out132827%_)
                                     _%r-args132837%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars132838%_))
                                                  (let* ((_%hd-vars132844%_
                                                          (let ((__tmp133082
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg132840%_ _%var132841%_ _%r132842%_)
                           (cons (cons (cdr _%arg132840%_) _%var132841%_)
                                 _%r132842%_))))
                    (declare (not safe))
                    (__foldr2
                     __tmp133082
                     _%vars132769%_
                     _%args132814%_
                     _%fold-in132825%_)))
                 (__tmp133083
                  (_%recur132766%_ _%hd132816%_ _%hd-vars132844%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp133083
                                                     _%fold-out132827%_)))))
                                        (let ((__tmp133087
                                               (if (let ((__tmp133088
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets132823%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp133088 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets132823%_))
                                                   '#!void))
                                              (__tmp133084
                                               (let ((__tmp133086
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args132829%_
                                                         _%lambda-body132846%_)))
                                                     (__tmp133085
                                                      (_%recur132766%_
                                                       _%iv132815%_
                                                       _%vars132769%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp133086
                                                  __tmp133085
                                                  _%targets132823%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp133087
                                           __tmp133084))))))
                              (if (pair? _%body132796132807%_)
                                  (let ((_%hd132800132852%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body132796132807%_)))
                                        (_%tl132801132854%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body132796132807%_))))
                                    (let ((_%depth132857%_ _%hd132800132852%_))
                                      (if (pair? _%tl132801132854%_)
                                          (let ((_%hd132802132859%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl132801132854%_)))
                                                (_%tl132803132861%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl132801132854%_))))
                                            (let ((_%hd132864%_
                                                   _%hd132802132859%_))
                                              (if (pair? _%tl132803132861%_)
                                                  (let ((_%hd132804132866%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl132803132861%_)))
                                                        (_%tl132805132868%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl132803132861%_))))
                                                    (let* ((_%iv132871%_
                                                            _%hd132804132866%_)
                                                           (_%args132873%_
                                                            _%tl132805132868%_))
                                                      (_%K132799132849%_
                                                       _%args132873%_
                                                       _%iv132871%_
                                                       _%hd132864%_
                                                       _%depth132857%_)))
                                                  (_%E132798132811%_))))
                                          (_%E132798132811%_))))
                                  (_%E132798132811%_)))
                            (if (eq? 'var _%$e132787%_)
                                _%body132784%_
                                (_%BUG132761%_ _%e132768%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (pair? _%e132770132777%_)
                              (let ((_%hd132774132878%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e132770132777%_)))
                                    (_%tl132775132880%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e132770132777%_))))
                                (let* ((_%tag132883%_ _%hd132774132878%_)
                                       (_%body132885%_ _%tl132775132880%_))
                                  (_%K132773132875%_
                                   _%body132885%_
                                   _%tag132883%_)))
                              (_%E132772132781%_)))))))
                 (_%parse132520%_
                  (lambda (_%e132561%_)
                    (letrec ((_%make-cons132563%_
                              (lambda (_%hd132751%_ _%tl132752%_)
                                (let ((_g133089_ _%hd132751%_)
                                      (_g133091_ _%tl132752%_))
                                  (begin
                                    (let ((_g133090_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g133089_)
                                                 (##values-length _g133089_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g133090_ 2)))
                                          (error "Context expects 2 values"
                                                 _g133090_)))
                                    (let ((_g133092_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g133091_)
                                                 (##values-length _g133091_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g133092_ 2)))
                                          (error "Context expects 2 values"
                                                 _g133092_)))
                                    (let ((_%hd-e132754%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g133089_ 0)))
                                          (_%hd-vars132755%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g133089_ 1))))
                                      (let ((_%tl-e132756%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g133091_ 0)))
                                            (_%tl-vars132757%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g133091_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e132754%_
                                                            _%tl-e132756%_))
                                                (append _%hd-vars132755%_
                                                        _%tl-vars132757%_))))))))
                             (_%make-splice132564%_
                              (lambda (_%where132687%_
                                       _%depth132688%_
                                       _%hd132689%_
                                       _%tl132690%_)
                                (let ((_g133093_ _%hd132689%_)
                                      (_g133095_ _%tl132690%_))
                                  (begin
                                    (let ((_g133094_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g133093_)
                                                 (##values-length _g133093_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g133094_ 2)))
                                          (error "Context expects 2 values"
                                                 _g133094_)))
                                    (let ((_g133096_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g133095_)
                                                 (##values-length _g133095_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g133096_ 2)))
                                          (error "Context expects 2 values"
                                                 _g133096_)))
                                    (let ((_%hd-e132692%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g133093_ 0)))
                                          (_%hd-vars132693%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g133093_ 1))))
                                      (let ((_%tl-e132694%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g133095_ 0)))
                                            (_%tl-vars132695%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g133095_ 1))))
                                        (let _%lp132697%_ ((_%rest132699%_
                                                            _%hd-vars132693%_)
                                                           (_%targets132700%_
                                                            '())
                                                           (_%vars132701%_
                                                            _%tl-vars132695%_))
                                          (let* ((_%rest132702132712%_
                                                  _%rest132699%_)
                                                 (_%else132704132720%_
                                                  (lambda ()
                                                    (if (null? _%targets132700%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx132517%_
                                                           _%where132687%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth132688%_
                                    (cons _%hd-e132692%_
                                          (cons _%tl-e132694%_
                                                _%targets132700%_))))
                        _%vars132701%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K132706132732%_
                                                  (lambda (_%rest132723%_
                                                           _%hd-pat132724%_
                                                           _%hd-depth*132725%_)
                                                    (let ((_%hd-depth132727%_
                                                           (fx- _%hd-depth*132725%_
                                                                _%depth132688%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth132727%_))
                                                          (_%lp132697%_
                                                           _%rest132723%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat132724%_)
                         _%targets132700%_)
                   (cons (cons _%hd-depth132727%_ _%hd-pat132724%_)
                         _%vars132701%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth132727%_))
                      (_%lp132697%_
                       _%rest132723%_
                       (cons (cons 'pattern _%hd-pat132724%_)
                             _%targets132700%_)
                       _%vars132701%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx132517%_
                         _%where132687%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%rest132702132712%_)
                                                (let ((_%hd132707132735%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest132702132712%_)))
                                                      (_%tl132708132737%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest132702132712%_))))
                                                  (if (pair? _%hd132707132735%_)
                                                      (let ((_%hd132709132740%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd132707132735%_)))
                    (_%tl132710132742%_
                     (let () (declare (not safe)) (##cdr _%hd132707132735%_))))
                (let* ((_%hd-depth*132745%_ _%hd132709132740%_)
                       (_%hd-pat132747%_ _%tl132710132742%_)
                       (_%rest132749%_ _%tl132708132737%_))
                  (_%K132706132732%_
                   _%rest132749%_
                   _%hd-pat132747%_
                   _%hd-depth*132745%_)))
              (_%else132704132720%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else132704132720%_))))))))))
                             (_%recur132565%_
                              (lambda (_%e132570%_ _%is-e?132571%_)
                                (if (_%is-e?132571%_ _%e132570%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx132517%_))
                                    (if (gx#syntax-local-pattern? _%e132570%_)
                                        (let* ((_%pat132575%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e132570%_)))
                                               (_%depth132577%_
                                                (##structure-ref
                                                 _%pat132575%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth132577%_)
                                              (values (cons 'ref _%pat132575%_)
                                                      (cons (cons _%depth132577%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat132575%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat132575%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e132570%_))
                                            (values (cons 'term _%e132570%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e132570%_))
                                                (let* ((_%e132581132588%_
                                                        _%e132570%_)
                                                       (_%E132583132592%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e132581132588%_))))
                                                       (_%E132582132674%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%e132581132588%_))
                      (let ((_%e132584132596%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e132581132588%_))))
                        (let ((_%hd132585132599%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e132584132596%_)))
                              (_%tl132586132601%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e132584132596%_))))
                          (let* ((_%hd132604%_ _%hd132585132599%_)
                                 (_%rest132606%_ _%tl132586132601%_))
                            (if (_%is-e?132571%_ _%hd132604%_)
                                (let* ((_%e132607132614%_ _%rest132606%_)
                                       (_%E132609132618%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx132517%_
                                             _%e132570%_))))
                                       (_%E132608132632%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e132607132614%_))
                                              (let ((_%e132610132622%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e132607132614%_))))
                                                (let ((_%hd132611132625%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e132610132622%_)))
                                                      (_%tl132612132627%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e132610132622%_))))
                                                  (let ((_%rest132630%_
                                                         _%hd132611132625%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl132612132627%_))
                                                        (_%recur132565%_
                                                         _%rest132630%_
                                                         false)
                                                        (_%E132609132618%_)))))
                                              (_%E132609132618%_)))))
                                  (_%E132608132632%_))
                                (let _%lp132636%_ ((_%rest132638%_
                                                    _%rest132606%_)
                                                   (_%depth132639%_ '0))
                                  (let* ((_%e132640132647%_ _%rest132638%_)
                                         (_%E132642132651%_
                                          (lambda ()
                                            (if (fxpositive? _%depth132639%_)
                                                (_%make-splice132564%_
                                                 _%e132570%_
                                                 _%depth132639%_
                                                 (_%recur132565%_
                                                  _%hd132604%_
                                                  _%is-e?132571%_)
                                                 (_%recur132565%_
                                                  _%rest132638%_
                                                  _%is-e?132571%_))
                                                (_%make-cons132563%_
                                                 (_%recur132565%_
                                                  _%hd132604%_
                                                  _%is-e?132571%_)
                                                 (_%recur132565%_
                                                  _%rest132638%_
                                                  _%is-e?132571%_)))))
                                         (_%E132641132670%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%e132640132647%_))
                                                (let ((_%e132643132655%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%e132640132647%_))))
                                                  (let ((_%hd132644132658%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e132643132655%_)))
                                                        (_%tl132645132660%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e132643132655%_))))
                                                    (let* ((_%rest-hd132663%_
                                                            _%hd132644132658%_)
                                                           (_%rest-tl132665%_
                                                            _%tl132645132660%_))
                                                      (if (_%is-e?132571%_
                                                           _%rest-hd132663%_)
                                                          (_%lp132636%_
                                                           _%rest-tl132665%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth132639%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth132639%_)
                      (_%make-splice132564%_
                       _%e132570%_
                       _%depth132639%_
                       (_%recur132565%_ _%hd132604%_ _%is-e?132571%_)
                       (_%recur132565%_ _%rest132638%_ _%is-e?132571%_))
                      (_%make-cons132563%_
                       (_%recur132565%_ _%hd132604%_ _%is-e?132571%_)
                       (_%recur132565%_ _%rest132638%_ _%is-e?132571%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E132642132651%_)))))
                                    (_%E132641132670%_)))))))
                      (_%E132583132592%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E132582132674%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e132570%_))
                                                    (let ((_g133097_
                                                           (_%recur132565%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e132570%_)))
                    _%is-e?132571%_)))
              (begin
                (let ((_g133098_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g133097_)
                             (##values-length _g133097_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g133098_ 2)))
                      (error "Context expects 2 values" _g133098_)))
                (let ((_%e132679%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g133097_ 0)))
                      (_%vars132680%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g133097_ 1))))
                  (values (cons 'vector _%e132679%_) _%vars132680%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e132570%_))
                                                        (let ((_g133099_
                                                               (_%recur132565%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e132570%_)))
                        _%is-e?132571%_)))
                  (begin
                    (let ((_g133100_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g133099_)
                                 (##values-length _g133099_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g133100_ 2)))
                          (error "Context expects 2 values" _g133100_)))
                    (let ((_%e132683%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g133099_ 0)))
                          (_%vars132684%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g133099_ 1))))
                      (values (cons 'box _%e132683%_) _%vars132684%_))))
                (values (cons 'datum _%e132570%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g133101_
                             (_%recur132565%_ _%e132561%_ gx#ellipsis?)))
                        (begin
                          (let ((_g133102_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g133101_)
                                       (##values-length _g133101_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g133102_ 2)))
                                (error "Context expects 2 values" _g133102_)))
                          (let ((_%tree132567%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g133101_ 0)))
                                (_%vars132568%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g133101_ 1))))
                            (if (null? _%vars132568%_)
                                _%tree132567%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx132517%_
                                   _%vars132568%_))))))))))
          (let* ((_%e132521132531%_ _%stx132517%_)
                 (_%E132523132535%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx132517%_))))
                 (_%E132522132557%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e132521132531%_))
                        (let ((_%e132524132539%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e132521132531%_))))
                          (let ((_%hd132525132542%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e132524132539%_)))
                                (_%tl132526132544%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e132524132539%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl132526132544%_))
                                (let ((_%e132527132547%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl132526132544%_))))
                                  (let ((_%hd132528132550%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e132527132547%_)))
                                        (_%tl132529132552%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e132527132547%_))))
                                    (let ((_%form132555%_ _%hd132528132550%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl132529132552%_))
                                          (let ((__tmp133104
                                                 (_%generate132519%_
                                                  (_%parse132520%_
                                                   _%form132555%_)))
                                                (__tmp133103
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx132517%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp133104
                                             __tmp133103))
                                          (_%E132523132535%_)))))
                                (_%E132523132535%_))))
                        (_%E132523132535%_)))))
            (_%E132522132557%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx131766%_
               _%identifier=?131767%_
               _%unwrap-e131768%_
               _%wrap-e131769%_)
        (letrec ((_%generate-bindings131771%_
                  (lambda (_%target132381%_
                           _%ids132382%_
                           _%clauses132383%_
                           _%clause-ids132384%_
                           _%E132385%_)
                    (letrec ((_%generate1132387%_
                              (lambda (_%clause132484%_
                                       _%clause-id132485%_
                                       _%E132486%_)
                                (cons (cons _%clause-id132485%_ '())
                                      (cons (let ((__tmp133106
                                                   (cons _%target132381%_ '()))
                                                  (__tmp133105
                                                   (_%generate-clause131773%_
                                                    _%target132381%_
                                                    _%ids132382%_
                                                    _%clause132484%_
                                                    _%E132486%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp133106
                                               __tmp133105))
                                            '())))))
                      (let _%lp132389%_ ((_%rest132391%_ _%clauses132383%_)
                                         (_%rest-ids132392%_
                                          _%clause-ids132384%_)
                                         (_%bindings132393%_ '()))
                        (let* ((_%rest132394132402%_ _%rest132391%_)
                               (_%else132396132410%_
                                (lambda () _%bindings132393%_))
                               (_%K132398132472%_
                                (lambda (_%rest132413%_ _%clause132414%_)
                                  (let* ((_%rest-ids132415132422%_
                                          _%rest-ids132392%_)
                                         (_%E132417132426%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids132415132422%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K132418132460%_
                                          (lambda (_%rest-ids132429%_
                                                   _%clause-id132430%_)
                                            (let* ((_%rest-ids132431132439%_
                                                    _%rest-ids132429%_)
                                                   (_%else132433132447%_
                                                    (lambda ()
                                                      (cons (_%generate1132387%_
                                                             _%clause132414%_
                                                             _%clause-id132430%_
                                                             _%E132385%_)
                                                            _%bindings132393%_)))
                                                   (_%K132435132452%_
                                                    (lambda (_%next-clause-id132450%_)
                                                      (_%lp132389%_
                                                       _%rest132413%_
                                                       _%rest-ids132429%_
                                                       (cons (_%generate1132387%_
                                                              _%clause132414%_
                                                              _%clause-id132430%_
                                                              _%next-clause-id132450%_)
                                                             _%bindings132393%_)))))
                                              (if (pair? _%rest-ids132431132439%_)
                                                  (let* ((_%hd132436132455%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids132431132439%_)))
                                                         (_%next-clause-id132458%_
                                                          _%hd132436132455%_))
                                                    (_%K132435132452%_
                                                     _%next-clause-id132458%_))
                                                  (_%else132433132447%_))))))
                                    (if (pair? _%rest-ids132415132422%_)
                                        (let ((_%hd132419132463%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids132415132422%_)))
                                              (_%tl132420132465%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids132415132422%_))))
                                          (let* ((_%clause-id132468%_
                                                  _%hd132419132463%_)
                                                 (_%rest-ids132470%_
                                                  _%tl132420132465%_))
                                            (_%K132418132460%_
                                             _%rest-ids132470%_
                                             _%clause-id132468%_)))
                                        (_%E132417132426%_))))))
                          (if (pair? _%rest132394132402%_)
                              (let ((_%hd132399132475%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest132394132402%_)))
                                    (_%tl132400132477%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest132394132402%_))))
                                (let* ((_%clause132480%_ _%hd132399132475%_)
                                       (_%rest132482%_ _%tl132400132477%_))
                                  (_%K132398132472%_
                                   _%rest132482%_
                                   _%clause132480%_)))
                              (_%else132396132410%_)))))))
                 (_%generate-body131772%_
                  (lambda (_%bindings132341%_ _%body132342%_)
                    (let _%recur132344%_ ((_%rest132346%_ _%bindings132341%_))
                      (let* ((_%rest132347132355%_ _%rest132346%_)
                             (_%else132349132363%_ (lambda () _%body132342%_))
                             (_%K132351132369%_
                              (lambda (_%rest132366%_ _%hd132367%_)
                                (let ((__tmp133108 (cons _%hd132367%_ '()))
                                      (__tmp133107
                                       (_%recur132344%_ _%rest132366%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp133108
                                   __tmp133107)))))
                        (if (pair? _%rest132347132355%_)
                            (let ((_%hd132352132372%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest132347132355%_)))
                                  (_%tl132353132374%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest132347132355%_))))
                              (let* ((_%hd132377%_ _%hd132352132372%_)
                                     (_%rest132379%_ _%tl132353132374%_))
                                (_%K132351132369%_
                                 _%rest132379%_
                                 _%hd132377%_)))
                            (_%else132349132363%_))))))
                 (_%generate-clause131773%_
                  (lambda (_%target132204%_
                           _%ids132205%_
                           _%clause132206%_
                           _%E132207%_)
                    (letrec ((_%generate1132209%_
                              (lambda (_%hd132296%_
                                       _%fender132297%_
                                       _%body132298%_)
                                (let ((_g133109_
                                       (_%parse-clause131775%_
                                        _%hd132296%_
                                        _%ids132205%_)))
                                  (begin
                                    (let ((_g133110_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g133109_)
                                                 (##values-length _g133109_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g133110_ 2)))
                                          (error "Context expects 2 values"
                                                 _g133110_)))
                                    (let ((_%e132300%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g133109_ 0)))
                                          (_%mvars132301%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g133109_ 1))))
                                      (let* ((_%pvars132303%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars132301%_))))
                                             (_%E132305%_
                                              (cons _%E132207%_
                                                    (cons _%target132204%_
                                                          '())))
                                             (_%K132338%_
                                              (let ((__tmp133111
                                                     (let ((__tmp133113
                                                            (map (lambda (_%mvar132307%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar132308%_)
                           (let* ((_%mvar132309132316%_ _%mvar132307%_)
                                  (_%E132311132320%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar132309132316%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K132312132326%_
                                   (lambda (_%depth132323%_ _%id132324%_)
                                     (cons _%id132324%_
                                           (cons (let ((__tmp133115
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id132324%_)))
                                                       (__tmp133114
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar132308%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp133115
                                                    __tmp133114
                                                    _%depth132323%_))
                                                 '())))))
                             (if (pair? _%mvar132309132316%_)
                                 (let ((_%hd132313132329%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar132309132316%_)))
                                       (_%tl132314132331%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar132309132316%_))))
                                   (let* ((_%id132334%_ _%hd132313132329%_)
                                          (_%depth132336%_ _%tl132314132331%_))
                                     (_%K132312132326%_
                                      _%depth132336%_
                                      _%id132334%_)))
                                 (_%E132311132320%_))))
                         _%mvars132301%_
                         _%pvars132303%_))
                   (__tmp133112
                    (if (eq? _%fender132297%_ '#t)
                        _%body132298%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender132297%_
                           _%body132298%_
                           _%E132305%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp133113 __tmp133112))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars132303%_
                                                 __tmp133111))))
                                        (_%generate-match131774%_
                                         _%hd132296%_
                                         _%target132204%_
                                         _%e132300%_
                                         _%mvars132301%_
                                         _%K132338%_
                                         _%E132305%_))))))))
                      (let* ((_%e132210132230%_ _%clause132206%_)
                             (_%E132219132234%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e132210132230%_))))
                             (_%E132212132268%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e132210132230%_))
                                    (let ((_%e132220132238%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e132210132230%_))))
                                      (let ((_%hd132221132241%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e132220132238%_)))
                                            (_%tl132222132243%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e132220132238%_))))
                                        (let ((_%hd132246%_
                                               _%hd132221132241%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl132222132243%_))
                                              (let ((_%e132223132248%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl132222132243%_))))
                                                (let ((_%hd132224132251%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e132223132248%_)))
                                                      (_%tl132225132253%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e132223132248%_))))
                                                  (let ((_%fender132256%_
                                                         _%hd132224132251%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl132225132253%_))
                                                        (let ((_%e132226132258%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl132225132253%_))))
                  (let ((_%hd132227132261%_
                         (let ()
                           (declare (not safe))
                           (##car _%e132226132258%_)))
                        (_%tl132228132263%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e132226132258%_))))
                    (let ((_%body132266%_ _%hd132227132261%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl132228132263%_))
                          (_%generate1132209%_
                           _%hd132246%_
                           _%fender132256%_
                           _%body132266%_)
                          (_%E132219132234%_)))))
                (_%E132219132234%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E132219132234%_)))))
                                    (_%E132219132234%_))))
                             (_%E132211132292%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e132210132230%_))
                                    (let ((_%e132213132272%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e132210132230%_))))
                                      (let ((_%hd132214132275%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e132213132272%_)))
                                            (_%tl132215132277%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e132213132272%_))))
                                        (let ((_%hd132280%_
                                               _%hd132214132275%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl132215132277%_))
                                              (let ((_%e132216132282%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl132215132277%_))))
                                                (let ((_%hd132217132285%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e132216132282%_)))
                                                      (_%tl132218132287%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e132216132282%_))))
                                                  (let ((_%body132290%_
                                                         _%hd132217132285%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl132218132287%_))
                                                        (_%generate1132209%_
                                                         _%hd132280%_
                                                         '#t
                                                         _%body132290%_)
                                                        (_%E132212132268%_)))))
                                              (_%E132212132268%_)))))
                                    (_%E132212132268%_)))))
                        (_%E132211132292%_)))))
                 (_%generate-match131774%_
                  (lambda (_%where131953%_
                           _%target131954%_
                           _%hd131955%_
                           _%mvars131956%_
                           _%K131957%_
                           _%E131958%_)
                    (letrec ((_%BUG131960%_
                              (lambda (_%q132202%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx131766%_
                                         _%hd131955%_
                                         _%q132202%_))))
                             (_%recur131961%_
                              (lambda (_%e132052%_
                                       _%vars132053%_
                                       _%target132054%_
                                       _%E132055%_
                                       _%k132056%_)
                                (let* ((_%e132057132064%_ _%e132052%_)
                                       (_%E132059132068%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e132057132064%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K132060132190%_
                                        (lambda (_%body132071%_ _%tag132072%_)
                                          (let ((_%$e132074%_ _%tag132072%_))
                                            (if (eq? 'any _%$e132074%_)
                                                (_%k132056%_ _%vars132053%_)
                                                (if (eq? 'id _%$e132074%_)
                                                    (let ((__tmp133120
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target132054%_)))
                                                          (__tmp133116
                                                           (let ((__tmp133118
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp133119
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e131769%_
                                    _%body132071%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?131767%_
                             __tmp133119
                             _%target132054%_)))
                         (__tmp133117 (_%k132056%_ _%vars132053%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp133118 __tmp133117 _%E132055%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp133120 __tmp133116 _%E132055%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e132074%_)
                                                        (_%k132056%_
                                                         (cons (cons _%body132071%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target132054%_)
                       _%vars132053%_))
                (if (eq? 'cons _%$e132074%_)
                    (let ((_%$e132077%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd132078%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl132079%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp133126
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target132054%_)))
                            (__tmp133121
                             (let ((__tmp133125
                                    (cons (cons (cons _%$e132077%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e131768%_
                                                         _%target132054%_))
                                                      '()))
                                          '()))
                                   (__tmp133122
                                    (let ((__tmp133124
                                           (cons (cons (cons _%$hd132078%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e132077%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl132079%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e132077%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp133123
                                           (let* ((_%body132080132087%_
                                                   _%body132071%_)
                                                  (_%E132082132091%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body132080132087%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K132083132099%_
                                                   (lambda (_%tl132094%_
                                                            _%hd132095%_)
                                                     (_%recur131961%_
                                                      _%hd132095%_
                                                      _%vars132053%_
                                                      _%$hd132078%_
                                                      _%E132055%_
                                                      (lambda (_%vars132097%_)
                                                        (_%recur131961%_
                                                         _%tl132094%_
                                                         _%vars132097%_
                                                         _%$tl132079%_
                                                         _%E132055%_
                                                         _%k132056%_))))))
                                             (if (pair? _%body132080132087%_)
                                                 (let ((_%hd132084132102%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body132080132087%_)))
                                                       (_%tl132085132104%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body132080132087%_))))
                                                   (let* ((_%hd132107%_
                                                           _%hd132084132102%_)
                                                          (_%tl132109%_
                                                           _%tl132085132104%_))
                                                     (_%K132083132099%_
                                                      _%tl132109%_
                                                      _%hd132107%_)))
                                                 (_%E132082132091%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp133124
                                       __tmp133123))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp133125
                                __tmp133122))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp133126
                         __tmp133121
                         _%E132055%_)))
                    (if (eq? 'splice _%$e132074%_)
                        (let* ((_%body132110132117%_ _%body132071%_)
                               (_%E132112132121%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body132110132117%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K132113132172%_
                                (lambda (_%tl132124%_ _%hd132125%_)
                                  (let* ((_%rlen132127%_
                                          (_%splice-rlen131962%_ _%tl132124%_))
                                         (_%$target132129%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd132131%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl132133%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp132135%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e132137%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd132139%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl132141%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars132143%_
                                          (_%splice-vars131963%_ _%hd132125%_))
                                         (_%lvars132145%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars132143%_)))
                                         (_%tlvars132147%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars132143%_)))
                                         (_%linit132151%_
                                          (map (lambda (_%var132149%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars132145%_)))
                                    (letrec ((_%make-loop132154%_
                                              (lambda (_%vars132158%_)
                                                (let ((__tmp133128
                                                       (cons (cons (cons _%$lp132135%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp133141
                                        (cons _%$hd132131%_ _%lvars132145%_))
                                       (__tmp133129
                                        (let ((__tmp133140
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd132131%_)))
                                              (__tmp133134
                                               (let ((__tmp133139
                                                      (cons (cons (cons _%$lp-e132137%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e131768%_
                                   _%$hd132131%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp133135
                                                      (let ((__tmp133138
                                                             (cons (cons (cons _%$lp-hd132139%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e132137%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl132141%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e132137%_))
                                             '()))
                                 '())))
                    (__tmp133136
                     (_%recur131961%_
                      _%hd132125%_
                      '()
                      _%$lp-hd132139%_
                      _%E132055%_
                      (lambda (_%hdvars132160%_)
                        (cons _%$lp132135%_
                              (cons _%$lp-tl132141%_
                                    (map (lambda (_%svar132162%_
                                                  _%lvar132163%_)
                                           (let ((__tmp133137
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar132162%_
                                                     _%hdvars132160%_
                                                     _%BUG131960%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp133137
                                              _%lvar132163%_)))
                                         _%svars132143%_
                                         _%lvars132145%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp133138 __tmp133136))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp133139
                                                  __tmp133135)))
                                              (__tmp133130
                                               (let ((__tmp133133
                                                      (map (lambda (_%lvar132165%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar132166%_)
                     (cons (cons _%tlvar132166%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar132165%_))
                                 '())))
                   _%lvars132145%_
                   _%tlvars132147%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp133131
                                                      (_%k132056%_
                                                       (let ((__tmp133132
                                                              (lambda (_%svar132168%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar132169%_
                               _%r132170%_)
                        (cons (cons _%svar132168%_ _%tlvar132169%_)
                              _%r132170%_))))
                 (declare (not safe))
                 (__foldl2
                  __tmp133132
                  _%vars132158%_
                  _%svars132143%_
                  _%tlvars132147%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp133133
                                                  __tmp133131))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp133140
                                           __tmp133134
                                           __tmp133130))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp133141
                                    __tmp133129))
                                 '()))
                     '()))
              (__tmp133127
               (cons _%$lp132135%_ (cons _%$target132129%_ _%linit132151%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp133128
                                                   __tmp133127)))))
                                      (let ((_%body132156%_
                                             (let ((__tmp133143
                                                    (cons (cons (cons _%$target132129%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl132133%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target132054%_
                                 _%rlen132127%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp133142
                                                    (_%recur131961%_
                                                     _%tl132124%_
                                                     _%vars132053%_
                                                     _%$tl132133%_
                                                     _%E132055%_
                                                     _%make-loop132154%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp133143
                                                __tmp133142))))
                                        (let ((__tmp133147
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target132054%_)))
                                              (__tmp133144
                                               (if (zero? _%rlen132127%_)
                                                   _%body132156%_
                                                   (let ((__tmp133145
                                                          (let ((__tmp133146
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target132054%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp133146 _%rlen132127%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp133145
                                                      _%body132156%_
                                                      _%E132055%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp133147
                                           __tmp133144
                                           _%E132055%_))))))))
                          (if (pair? _%body132110132117%_)
                              (let ((_%hd132114132175%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body132110132117%_)))
                                    (_%tl132115132177%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body132110132117%_))))
                                (let* ((_%hd132180%_ _%hd132114132175%_)
                                       (_%tl132182%_ _%tl132115132177%_))
                                  (_%K132113132172%_
                                   _%tl132182%_
                                   _%hd132180%_)))
                              (_%E132112132121%_)))
                        (if (eq? 'null _%$e132074%_)
                            (let ((__tmp133149
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target132054%_)))
                                  (__tmp133148 (_%k132056%_ _%vars132053%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp133149
                               __tmp133148
                               _%E132055%_))
                            (if (eq? 'vector _%$e132074%_)
                                (let ((_%$e132184%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp133154
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target132054%_)))
                                        (__tmp133150
                                         (let ((__tmp133152
                                                (cons (cons (cons _%$e132184%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp133153
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e131768%_
                                    _%target132054%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp133153))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp133151
                                                (_%recur131961%_
                                                 _%body132071%_
                                                 _%vars132053%_
                                                 _%$e132184%_
                                                 _%E132055%_
                                                 _%k132056%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp133152
                                            __tmp133151))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp133154
                                     __tmp133150
                                     _%E132055%_)))
                                (if (eq? 'box _%$e132074%_)
                                    (let ((_%$e132186%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp133159
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target132054%_)))
                                            (__tmp133155
                                             (let ((__tmp133157
                                                    (cons (cons (cons _%$e132186%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp133158
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e131768%_
                                        _%target132054%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp133158))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp133156
                                                    (_%recur131961%_
                                                     _%body132071%_
                                                     _%vars132053%_
                                                     _%$e132186%_
                                                     _%E132055%_
                                                     _%k132056%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp133157
                                                __tmp133156))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp133159
                                         __tmp133155
                                         _%E132055%_)))
                                    (if (eq? 'datum _%$e132074%_)
                                        (let ((_%$e132188%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp133165
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target132054%_)))
                                                (__tmp133160
                                                 (let ((__tmp133164
                                                        (cons (cons (cons _%$e132188%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target132054%_))
                                  '()))
                      '()))
               (__tmp133161
                (let ((__tmp133163
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e132188%_ _%body132071%_)))
                      (__tmp133162 (_%k132056%_ _%vars132053%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp133163 __tmp133162 _%E132055%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp133164
                                                    __tmp133161))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp133165
                                             __tmp133160
                                             _%E132055%_)))
                                        (_%BUG131960%_
                                         _%e132052%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (pair? _%e132057132064%_)
                                      (let ((_%hd132061132193%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e132057132064%_)))
                                            (_%tl132062132195%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e132057132064%_))))
                                        (let* ((_%tag132198%_
                                                _%hd132061132193%_)
                                               (_%body132200%_
                                                _%tl132062132195%_))
                                          (_%K132060132190%_
                                           _%body132200%_
                                           _%tag132198%_)))
                                      (_%E132059132068%_)))))
                             (_%splice-rlen131962%_
                              (lambda (_%e132014%_)
                                (let _%lp132016%_ ((_%e132018%_ _%e132014%_)
                                                   (_%n132019%_ '0))
                                  (let* ((_%e132020132027%_ _%e132018%_)
                                         (_%E132022132031%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e132020132027%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K132023132040%_
                                          (lambda (_%body132034%_
                                                   _%tag132035%_)
                                            (let ((_%$e132037%_ _%tag132035%_))
                                              (if (eq? 'splice _%$e132037%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx131766%_
                                                     _%where131953%_))
                                                  (if (eq? 'cons _%$e132037%_)
                                                      (_%lp132016%_
                                                       (cdr _%body132034%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n132019%_
                                                                '1)))
                                                      _%n132019%_))))))
                                    (if (pair? _%e132020132027%_)
                                        (let ((_%hd132024132043%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e132020132027%_)))
                                              (_%tl132025132045%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e132020132027%_))))
                                          (let* ((_%tag132048%_
                                                  _%hd132024132043%_)
                                                 (_%body132050%_
                                                  _%tl132025132045%_))
                                            (_%K132023132040%_
                                             _%body132050%_
                                             _%tag132048%_)))
                                        (_%E132022132031%_))))))
                             (_%splice-vars131963%_
                              (lambda (_%e131970%_)
                                (let _%recur131972%_ ((_%e131974%_ _%e131970%_)
                                                      (_%vars131975%_ '()))
                                  (let* ((_%e131976131983%_ _%e131974%_)
                                         (_%E131978131987%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e131976131983%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K131979132002%_
                                          (lambda (_%body131990%_
                                                   _%tag131991%_)
                                            (let ((_%$e131993%_ _%tag131991%_))
                                              (if (eq? 'var _%$e131993%_)
                                                  (cons _%body131990%_
                                                        _%vars131975%_)
                                                  (if (or (eq? 'cons
                                                               _%$e131993%_)
                                                          (eq? 'splice
                                                               _%$e131993%_))
                                                      (_%recur131972%_
                                                       (cdr _%body131990%_)
                                                       (_%recur131972%_
                                                        (car _%body131990%_)
                                                        _%vars131975%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e131993%_)
                      (eq? 'box _%$e131993%_))
                  (_%recur131972%_ _%body131990%_ _%vars131975%_)
                  _%vars131975%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%e131976131983%_)
                                        (let ((_%hd131980132005%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e131976131983%_)))
                                              (_%tl131981132007%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e131976131983%_))))
                                          (let* ((_%tag132010%_
                                                  _%hd131980132005%_)
                                                 (_%body132012%_
                                                  _%tl131981132007%_))
                                            (_%K131979132002%_
                                             _%body132012%_
                                             _%tag132010%_)))
                                        (_%E131978131987%_))))))
                             (_%make-body131964%_
                              (lambda (_%vars131966%_)
                                (cons _%K131957%_
                                      (map (lambda (_%mvar131968%_)
                                             (let ((__tmp133166
                                                    (car _%mvar131968%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp133166
                                                _%vars131966%_
                                                _%BUG131960%_)))
                                           _%mvars131956%_)))))
                      (_%recur131961%_
                       _%hd131955%_
                       '()
                       _%target131954%_
                       _%E131958%_
                       _%make-body131964%_))))
                 (_%parse-clause131775%_
                  (lambda (_%hd131847%_ _%ids131848%_)
                    (let _%recur131850%_ ((_%e131852%_ _%hd131847%_)
                                          (_%vars131853%_ '())
                                          (_%depth131854%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e131852%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e131852%_))
                              (values '(any) _%vars131853%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e131852%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx131766%_
                                     _%hd131847%_))
                                  (if (let ((__tmp133167
                                             (lambda (_%id131859%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e131852%_
                                                  _%id131859%_)))))
                                        (declare (not safe))
                                        (__find __tmp133167 _%ids131848%_))
                                      (values (cons 'id _%e131852%_)
                                              _%vars131853%_)
                                      (if (let ((__tmp133168
                                                 (lambda (_%var131862%_)
                                                   (let ((__tmp133169
                                                          (car _%var131862%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e131852%_
                                                      __tmp133169)))))
                                            (declare (not safe))
                                            (__find __tmp133168
                                                    _%vars131853%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx131766%_
                                             _%e131852%_))
                                          (values (cons 'var _%e131852%_)
                                                  (cons (cons _%e131852%_
                                                              _%depth131854%_)
                                                        _%vars131853%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e131852%_))
                              (let* ((_%e131866131873%_ _%e131852%_)
                                     (_%E131868131877%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%e131866131873%_))))
                                     (_%E131867131938%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%e131866131873%_))
                                            (let ((_%e131869131881%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%e131866131873%_))))
                                              (let ((_%hd131870131884%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e131869131881%_)))
                                                    (_%tl131871131886%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e131869131881%_))))
                                                (let* ((_%hd131889%_
                                                        _%hd131870131884%_)
                                                       (_%rest131891%_
                                                        _%tl131871131886%_)
                                                       (_%make-pair131906%_
                                                        (lambda (_%tag131893%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd131894%_
                         _%tl131895%_)
                  (let* ((_%hd-depth131897%_
                          (if (eq? _%tag131893%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth131854%_ '1))
                              _%depth131854%_))
                         (_g133170_
                          (_%recur131850%_
                           _%hd131894%_
                           _%vars131853%_
                           _%hd-depth131897%_)))
                    (begin
                      (let ((_g133171_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g133170_)
                                   (##values-length _g133170_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g133171_ 2)))
                            (error "Context expects 2 values" _g133171_)))
                      (let ((_%hd131899%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g133170_ 0)))
                            (_%vars131900%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g133170_ 1))))
                        (let ((_g133172_
                               (_%recur131850%_
                                _%tl131895%_
                                _%vars131900%_
                                _%depth131854%_)))
                          (begin
                            (let ((_g133173_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g133172_)
                                         (##values-length _g133172_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g133173_ 2)))
                                  (error "Context expects 2 values"
                                         _g133173_)))
                            (let ((_%tl131902%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g133172_ 0)))
                                  (_%vars131903%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g133172_ 1))))
                              (values (cons _%tag131893%_
                                            (cons _%hd131899%_ _%tl131902%_))
                                      _%vars131903%_)))))))))
               (_%e131907131914%_ _%rest131891%_)
               (_%E131909131918%_
                (lambda ()
                  (_%make-pair131906%_ 'cons _%hd131889%_ _%rest131891%_)))
               (_%E131908131934%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%e131907131914%_))
                      (let ((_%e131910131922%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e131907131914%_))))
                        (let ((_%hd131911131925%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e131910131922%_)))
                              (_%tl131912131927%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e131910131922%_))))
                          (let* ((_%rest-hd131930%_ _%hd131911131925%_)
                                 (_%rest-tl131932%_ _%tl131912131927%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd131930%_))
                                (_%make-pair131906%_
                                 'splice
                                 _%hd131889%_
                                 _%rest-tl131932%_)
                                (_%make-pair131906%_
                                 'cons
                                 _%hd131889%_
                                 _%rest131891%_)))))
                      (_%E131909131918%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E131908131934%_))))
                                            (_%E131868131877%_)))))
                                (_%E131867131938%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e131852%_))
                                  (values '(null) _%vars131853%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e131852%_))
                                      (let ((_g133174_
                                             (_%recur131850%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e131852%_)))
                                              _%vars131853%_
                                              _%depth131854%_)))
                                        (begin
                                          (let ((_g133175_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g133174_)
                                                       (##values-length
                                                        _g133174_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g133175_ 2)))
                                                (error "Context expects 2 values"
                                                       _g133175_)))
                                          (let ((_%e131944%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g133174_ 0)))
                                                (_%vars131945%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g133174_
                                                    1))))
                                            (values (cons 'vector _%e131944%_)
                                                    _%vars131945%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e131852%_))
                                          (let ((_g133176_
                                                 (_%recur131850%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e131852%_)))
                                                  _%vars131853%_
                                                  _%depth131854%_)))
                                            (begin
                                              (let ((_g133177_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g133176_)
                                                           (##values-length
                                                            _g133176_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g133177_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g133177_)))
                                              (let ((_%e131948%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g133176_
                                                        0)))
                                                    (_%vars131949%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g133176_
                                                        1))))
                                                (values (cons 'box _%e131948%_)
                                                        _%vars131949%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e131852%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e131852%_)))
                                                      _%vars131853%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx131766%_
                                                 _%e131852%_))))))))))))
          (let* ((_%e131776131789%_ _%stx131766%_)
                 (_%E131778131793%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e131776131789%_))))
                 (_%E131777131843%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e131776131789%_))
                        (let ((_%e131779131797%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e131776131789%_))))
                          (let ((_%hd131780131800%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e131779131797%_)))
                                (_%tl131781131802%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e131779131797%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl131781131802%_))
                                (let ((_%e131782131805%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl131781131802%_))))
                                  (let ((_%hd131783131808%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e131782131805%_)))
                                        (_%tl131784131810%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e131782131805%_))))
                                    (let ((_%expr131813%_ _%hd131783131808%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl131784131810%_))
                                          (let ((_%e131785131815%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl131784131810%_))))
                                            (let ((_%hd131786131818%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e131785131815%_)))
                                                  (_%tl131787131820%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e131785131815%_))))
                                              (let* ((_%ids131823%_
                                                      _%hd131786131818%_)
                                                     (_%clauses131825%_
                                                      _%tl131787131820%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids131823%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses131825%_))
                                                        (let* ((_%ids131830%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids131823%_)))
                       (_%clauses131832%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses131825%_)))
                       (_%clause-ids131834%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses131832%_)))
                       (_%E131836%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target131838%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first131840%_
                        (if (null? _%clauses131832%_)
                            _%E131836%_
                            (car _%clause-ids131834%_))))
                  (let ((__tmp133179
                         (let ((__tmp133180
                                (let ((__tmp133182
                                       (let ((__tmp133184
                                              (cons (cons (cons _%E131836%_
                                                                '())
                                                          (cons (let ((__tmp133186
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target131838%_ '()))
                              (__tmp133185
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target131838%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp133186 __tmp133185))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp133183
                                              (_%generate-body131772%_
                                               (_%generate-bindings131771%_
                                                _%target131838%_
                                                _%ids131830%_
                                                _%clauses131832%_
                                                _%clause-ids131834%_
                                                _%E131836%_)
                                               (cons _%first131840%_
                                                     (cons _%expr131813%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp133184
                                          __tmp133183)))
                                      (__tmp133181
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx131766%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp133182
                                   __tmp133181))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp133180)))
                        (__tmp133178
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx131766%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp133179 __tmp133178)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx131766%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx131766%_
                                                       _%ids131823%_))))))
                                          (_%E131778131793%_)))))
                                (_%E131778131793%_))))
                        (_%E131778131793%_)))))
            (_%E131777131843%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx132491%_)
        (let* ((_%identifier=?132493%_ 'free-identifier=?)
               (_%unwrap-e132495%_ 'syntax-e)
               (_%wrap-e132497%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx132491%_
           _%identifier=?132493%_
           _%unwrap-e132495%_
           _%wrap-e132497%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx132499%_ _%identifier=?132500%_)
        (let* ((_%unwrap-e132502%_ 'syntax-e) (_%wrap-e132504%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx132499%_
           _%identifier=?132500%_
           _%unwrap-e132502%_
           _%wrap-e132504%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx132506%_ _%identifier=?132507%_ _%unwrap-e132508%_)
        (let ((_%wrap-e132510%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx132506%_
           _%identifier=?132507%_
           _%unwrap-e132508%_
           _%wrap-e132510%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g133188_
        (let ((_g133187_ (let () (declare (not safe)) (##length _g133188_))))
          (cond ((let () (declare (not safe)) (##fx= _g133187_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g133188_))
                ((let () (declare (not safe)) (##fx= _g133187_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g133188_))
                ((let () (declare (not safe)) (##fx= _g133187_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g133188_))
                ((let () (declare (not safe)) (##fx= _g133187_ 4))
                 (apply gx#macro-expand-syntax-case__% _g133188_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g133188_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx131763%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx131763%_))
            (let ((__tmp133189
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx131763%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp133189 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd131721%_ . _%rest131722%_)
        (let ((_%len131724%_ (length _%hd131721%_)))
          (let _%lp131726%_ ((_%rest131728%_ _%rest131722%_))
            (let* ((_%rest131729131737%_ _%rest131728%_)
                   (_%else131731131745%_ (lambda () '#!void))
                   (_%K131733131751%_
                    (lambda (_%rest131748%_ _%hd131749%_)
                      (if (let ((__tmp133190 (length _%hd131749%_)))
                            (declare (not safe))
                            (##fx= _%len131724%_ __tmp133190))
                          (_%lp131726%_ _%rest131748%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd131749%_))))))
              (if (pair? _%rest131729131737%_)
                  (let ((_%hd131734131754%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest131729131737%_)))
                        (_%tl131735131756%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest131729131737%_))))
                    (let* ((_%hd131759%_ _%hd131734131754%_)
                           (_%rest131761%_ _%tl131735131756%_))
                      (_%K131733131751%_ _%rest131761%_ _%hd131759%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx131676%_ _%n131677%_)
        (let _%lp131679%_ ((_%rest131681%_ _%stx131676%_) (_%r131682%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest131681%_))
              (let* ((_%g131683131690%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest131681%_)))
                     (_%E131685131694%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g131683131690%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K131686131700%_
                      (lambda (_%rest131697%_ _%hd131698%_)
                        (_%lp131679%_
                         _%rest131697%_
                         (cons _%hd131698%_ _%r131682%_)))))
                (if (pair? _%g131683131690%_)
                    (let ((_%hd131687131703%_
                           (let ()
                             (declare (not safe))
                             (##car _%g131683131690%_)))
                          (_%tl131688131705%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g131683131690%_))))
                      (let* ((_%hd131708%_ _%hd131687131703%_)
                             (_%rest131710%_ _%tl131688131705%_))
                        (_%K131686131700%_ _%rest131710%_ _%hd131708%_)))
                    (_%E131685131694%_)))
              (let _%lp131712%_ ((_%n131714%_ _%n131677%_)
                                 (_%l131715%_ _%r131682%_)
                                 (_%r131716%_ _%rest131681%_))
                (if (null? _%l131715%_)
                    (values _%l131715%_ _%r131716%_)
                    (if (fxpositive? _%n131714%_)
                        (_%lp131712%_
                         (let () (declare (not safe)) (##fx- _%n131714%_ '1))
                         (cdr _%l131715%_)
                         (cons (car _%l131715%_) _%r131716%_))
                        (values (reverse _%l131715%_) _%r131716%_))))))))))
