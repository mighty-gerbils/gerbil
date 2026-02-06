(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1770342549)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp179087 (list gx#expander::t))
            (__tmp179086 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp179087
         '(id depth)
         __tmp179086
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args179083%_
        (apply make-instance gx#syntax-pattern::t _%$args179083%_)))
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
      (lambda (_%self179069%_ _%stx179070%_)
        (let ((_%self179073%_ _%self179069%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx179070%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx178536%_)
        (letrec ((_%generate178538%_
                  (lambda (_%e178778%_)
                    (letrec ((_%BUG178780%_
                              (lambda (_%q178945%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx178536%_
                                         _%e178778%_
                                         _%q178945%_))))
                             (_%local-pattern-e178781%_
                              (lambda (_%pat178943%_)
                                (let ((__tmp179088
                                       (##structure-ref
                                        _%pat178943%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp179088))))
                             (_%getvar178782%_
                              (lambda (_%q178940%_ _%vars178941%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q178940%_
                                   _%vars178941%_
                                   _%BUG178780%_))))
                             (_%getarg178783%_
                              (lambda (_%arg178906%_ _%vars178907%_)
                                (let* ((_%arg178908178915%_ _%arg178906%_)
                                       (_%E178910178919%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%arg178908178915%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%K178911178928%_
                                        (lambda (_%e178922%_ _%tag178923%_)
                                          (let ((_%$e178925%_ _%tag178923%_))
                                            (if (eq? 'ref _%$e178925%_)
                                                (_%getvar178782%_
                                                 _%e178922%_
                                                 _%vars178907%_)
                                                (if (eq? 'pattern _%$e178925%_)
                                                    (_%local-pattern-e178781%_
                                                     _%e178922%_)
                                                    (_%BUG178780%_
                                                     _%arg178906%_)))))))
                                  (if (pair? _%arg178908178915%_)
                                      (let ((_%hd178912178931%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%arg178908178915%_)))
                                            (_%tl178913178933%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%arg178908178915%_))))
                                        (let* ((_%tag178936%_
                                                _%hd178912178931%_)
                                               (_%e178938%_
                                                _%tl178913178933%_))
                                          (_%K178911178928%_
                                           _%e178938%_
                                           _%tag178936%_)))
                                      (_%E178910178919%_))))))
                      (let _%recur178785%_ ((_%e178787%_ _%e178778%_)
                                            (_%vars178788%_ '()))
                        (let* ((_%e178789178796%_ _%e178787%_)
                               (_%E178791178800%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%e178789178796%_
                                           '([tag . body])))
                                  '#!void))
                               (_%K178792178894%_
                                (lambda (_%body178803%_ _%tag178804%_)
                                  (let ((_%$e178806%_ _%tag178804%_))
                                    (if (eq? 'datum _%$e178806%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body178803%_))
                                        (if (eq? 'term _%$e178806%_)
                                            (let ((_%id178809%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body178803%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id178809%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks178812%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id178809%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks178812%_)
                                                        (let ((__tmp179089
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body178803%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp179089))
                (let ((__tmp179091
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body178803%_)))
                      (__tmp179090
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body178803%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp179091
                   __tmp179090
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id178809%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body178803%_))
                                                      (_%BUG178780%_
                                                       _%e178787%_))))
                                            (if (eq? 'pattern _%$e178806%_)
                                                (_%local-pattern-e178781%_
                                                 _%body178803%_)
                                                (if (eq? 'ref _%$e178806%_)
                                                    (_%getvar178782%_
                                                     _%body178803%_
                                                     _%vars178788%_)
                                                    (if (eq? 'cons
                                                             _%$e178806%_)
                                                        (let ((__tmp179093
                                                               (_%recur178785%_
                                                                (car _%body178803%_)
                                                                _%vars178788%_))
                                                              (__tmp179092
                                                               (_%recur178785%_
                                                                (cdr _%body178803%_)
                                                                _%vars178788%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp179093
                                                           __tmp179092))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e178806%_)
                    (let ((__tmp179094
                           (_%recur178785%_ _%body178803%_ _%vars178788%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp179094))
                    (if (eq? 'box _%$e178806%_)
                        (let ((__tmp179095
                               (_%recur178785%_
                                _%body178803%_
                                _%vars178788%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp179095))
                        (if (eq? 'splice _%$e178806%_)
                            (let* ((_%body178815178826%_ _%body178803%_)
                                   (_%E178817178830%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%body178815178826%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%K178818178868%_
                                    (lambda (_%args178833%_
                                             _%iv178834%_
                                             _%hd178835%_
                                             _%depth178836%_)
                                      (let* ((_%targets178842%_
                                              (map (lambda (_%g178837178839%_)
                                                     (_%getarg178783%_
                                                      _%g178837178839%_
                                                      _%vars178788%_))
                                                   _%args178833%_))
                                             (_%fold-in178844%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args178833%_)))
                                             (_%fold-out178846%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args178848%_
                                              (let ((__tmp179096
                                                     (cons _%fold-out178846%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp179096
                                                 _%fold-in178844%_)))
                                             (_%lambda-body178865%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth178836%_ '1))
                                                  (let ((_%r-args178856%_
                                                         (map (lambda (_%arg178850%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg178850%_)))
                      _%args178833%_))
                (_%r-vars178857%_
                 (let ((__tmp179097
                        (lambda (_%arg178852%_ _%var178853%_ _%r178854%_)
                          (cons (cons (cdr _%arg178852%_) _%var178853%_)
                                _%r178854%_))))
                   (declare (not safe))
                   (__foldr2
                    __tmp179097
                    _%vars178788%_
                    _%args178833%_
                    _%fold-in178844%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur178785%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth178836%_ '1))
                         (cons _%hd178835%_
                               (cons (cons 'var _%fold-out178846%_)
                                     _%r-args178856%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars178857%_))
                                                  (let* ((_%hd-vars178863%_
                                                          (let ((__tmp179098
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg178859%_ _%var178860%_ _%r178861%_)
                           (cons (cons (cdr _%arg178859%_) _%var178860%_)
                                 _%r178861%_))))
                    (declare (not safe))
                    (__foldr2
                     __tmp179098
                     _%vars178788%_
                     _%args178833%_
                     _%fold-in178844%_)))
                 (__tmp179099
                  (_%recur178785%_ _%hd178835%_ _%hd-vars178863%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp179099
                                                     _%fold-out178846%_)))))
                                        (let ((__tmp179103
                                               (if (let ((__tmp179104
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets178842%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp179104 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets178842%_))
                                                   '#!void))
                                              (__tmp179100
                                               (let ((__tmp179102
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args178848%_
                                                         _%lambda-body178865%_)))
                                                     (__tmp179101
                                                      (_%recur178785%_
                                                       _%iv178834%_
                                                       _%vars178788%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp179102
                                                  __tmp179101
                                                  _%targets178842%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp179103
                                           __tmp179100))))))
                              (if (pair? _%body178815178826%_)
                                  (let ((_%hd178819178871%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%body178815178826%_)))
                                        (_%tl178820178873%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%body178815178826%_))))
                                    (let ((_%depth178876%_ _%hd178819178871%_))
                                      (if (pair? _%tl178820178873%_)
                                          (let ((_%hd178821178878%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl178820178873%_)))
                                                (_%tl178822178880%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl178820178873%_))))
                                            (let ((_%hd178883%_
                                                   _%hd178821178878%_))
                                              (if (pair? _%tl178822178880%_)
                                                  (let ((_%hd178823178885%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl178822178880%_)))
                                                        (_%tl178824178887%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl178822178880%_))))
                                                    (let* ((_%iv178890%_
                                                            _%hd178823178885%_)
                                                           (_%args178892%_
                                                            _%tl178824178887%_))
                                                      (_%K178818178868%_
                                                       _%args178892%_
                                                       _%iv178890%_
                                                       _%hd178883%_
                                                       _%depth178876%_)))
                                                  (_%E178817178830%_))))
                                          (_%E178817178830%_))))
                                  (_%E178817178830%_)))
                            (if (eq? 'var _%$e178806%_)
                                _%body178803%_
                                (_%BUG178780%_ _%e178787%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (pair? _%e178789178796%_)
                              (let ((_%hd178793178897%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e178789178796%_)))
                                    (_%tl178794178899%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e178789178796%_))))
                                (let* ((_%tag178902%_ _%hd178793178897%_)
                                       (_%body178904%_ _%tl178794178899%_))
                                  (_%K178792178894%_
                                   _%body178904%_
                                   _%tag178902%_)))
                              (_%E178791178800%_)))))))
                 (_%parse178539%_
                  (lambda (_%e178580%_)
                    (letrec ((_%make-cons178582%_
                              (lambda (_%hd178770%_ _%tl178771%_)
                                (let ((_g179105_ _%hd178770%_)
                                      (_g179107_ _%tl178771%_))
                                  (begin
                                    (let ((_g179106_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g179105_)
                                                 (##values-length _g179105_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g179106_ 2)))
                                          (error "Context expects 2 values"
                                                 _g179106_)))
                                    (let ((_g179108_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g179107_)
                                                 (##values-length _g179107_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g179108_ 2)))
                                          (error "Context expects 2 values"
                                                 _g179108_)))
                                    (let ((_%hd-e178773%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g179105_ 0)))
                                          (_%hd-vars178774%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g179105_ 1))))
                                      (let ((_%tl-e178775%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g179107_ 0)))
                                            (_%tl-vars178776%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g179107_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e178773%_
                                                            _%tl-e178775%_))
                                                (append _%hd-vars178774%_
                                                        _%tl-vars178776%_))))))))
                             (_%make-splice178583%_
                              (lambda (_%where178706%_
                                       _%depth178707%_
                                       _%hd178708%_
                                       _%tl178709%_)
                                (let ((_g179109_ _%hd178708%_)
                                      (_g179111_ _%tl178709%_))
                                  (begin
                                    (let ((_g179110_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g179109_)
                                                 (##values-length _g179109_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g179110_ 2)))
                                          (error "Context expects 2 values"
                                                 _g179110_)))
                                    (let ((_g179112_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g179111_)
                                                 (##values-length _g179111_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g179112_ 2)))
                                          (error "Context expects 2 values"
                                                 _g179112_)))
                                    (let ((_%hd-e178711%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g179109_ 0)))
                                          (_%hd-vars178712%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g179109_ 1))))
                                      (let ((_%tl-e178713%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g179111_ 0)))
                                            (_%tl-vars178714%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g179111_ 1))))
                                        (let _%lp178716%_ ((_%rest178718%_
                                                            _%hd-vars178712%_)
                                                           (_%targets178719%_
                                                            '())
                                                           (_%vars178720%_
                                                            _%tl-vars178714%_))
                                          (let* ((_%rest178721178731%_
                                                  _%rest178718%_)
                                                 (_%else178723178739%_
                                                  (lambda ()
                                                    (if (null? _%targets178719%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx178536%_
                                                           _%where178706%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth178707%_
                                    (cons _%hd-e178711%_
                                          (cons _%tl-e178713%_
                                                _%targets178719%_))))
                        _%vars178720%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K178725178751%_
                                                  (lambda (_%rest178742%_
                                                           _%hd-pat178743%_
                                                           _%hd-depth*178744%_)
                                                    (let ((_%hd-depth178746%_
                                                           (fx- _%hd-depth*178744%_
                                                                _%depth178707%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth178746%_))
                                                          (_%lp178716%_
                                                           _%rest178742%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat178743%_)
                         _%targets178719%_)
                   (cons (cons _%hd-depth178746%_ _%hd-pat178743%_)
                         _%vars178720%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth178746%_))
                      (_%lp178716%_
                       _%rest178742%_
                       (cons (cons 'pattern _%hd-pat178743%_)
                             _%targets178719%_)
                       _%vars178720%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx178536%_
                         _%where178706%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%rest178721178731%_)
                                                (let ((_%hd178726178754%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%rest178721178731%_)))
                                                      (_%tl178727178756%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%rest178721178731%_))))
                                                  (if (pair? _%hd178726178754%_)
                                                      (let ((_%hd178728178759%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd178726178754%_)))
                    (_%tl178729178761%_
                     (let () (declare (not safe)) (##cdr _%hd178726178754%_))))
                (let* ((_%hd-depth*178764%_ _%hd178728178759%_)
                       (_%hd-pat178766%_ _%tl178729178761%_)
                       (_%rest178768%_ _%tl178727178756%_))
                  (_%K178725178751%_
                   _%rest178768%_
                   _%hd-pat178766%_
                   _%hd-depth*178764%_)))
              (_%else178723178739%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else178723178739%_))))))))))
                             (_%recur178584%_
                              (lambda (_%e178589%_ _%is-e?178590%_)
                                (if (_%is-e?178590%_ _%e178589%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx178536%_))
                                    (if (gx#syntax-local-pattern? _%e178589%_)
                                        (let* ((_%pat178594%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e178589%_)))
                                               (_%depth178596%_
                                                (##structure-ref
                                                 _%pat178594%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth178596%_)
                                              (values (cons 'ref _%pat178594%_)
                                                      (cons (cons _%depth178596%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat178594%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat178594%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e178589%_))
                                            (values (cons 'term _%e178589%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e178589%_))
                                                (let* ((_%e178600178607%_
                                                        _%e178589%_)
                                                       (_%E178602178611%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%e178600178607%_))))
                                                       (_%E178601178693%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%e178600178607%_))
                      (let ((_%e178603178615%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e178600178607%_))))
                        (let ((_%hd178604178618%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e178603178615%_)))
                              (_%tl178605178620%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e178603178615%_))))
                          (let* ((_%hd178623%_ _%hd178604178618%_)
                                 (_%rest178625%_ _%tl178605178620%_))
                            (if (_%is-e?178590%_ _%hd178623%_)
                                (let* ((_%e178626178633%_ _%rest178625%_)
                                       (_%E178628178637%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx178536%_
                                             _%e178589%_))))
                                       (_%E178627178651%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%e178626178633%_))
                                              (let ((_%e178629178641%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%e178626178633%_))))
                                                (let ((_%hd178630178644%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e178629178641%_)))
                                                      (_%tl178631178646%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e178629178641%_))))
                                                  (let ((_%rest178649%_
                                                         _%hd178630178644%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl178631178646%_))
                                                        (_%recur178584%_
                                                         _%rest178649%_
                                                         false)
                                                        (_%E178628178637%_)))))
                                              (_%E178628178637%_)))))
                                  (_%E178627178651%_))
                                (let _%lp178655%_ ((_%rest178657%_
                                                    _%rest178625%_)
                                                   (_%depth178658%_ '0))
                                  (let* ((_%e178659178666%_ _%rest178657%_)
                                         (_%E178661178670%_
                                          (lambda ()
                                            (if (fxpositive? _%depth178658%_)
                                                (_%make-splice178583%_
                                                 _%e178589%_
                                                 _%depth178658%_
                                                 (_%recur178584%_
                                                  _%hd178623%_
                                                  _%is-e?178590%_)
                                                 (_%recur178584%_
                                                  _%rest178657%_
                                                  _%is-e?178590%_))
                                                (_%make-cons178582%_
                                                 (_%recur178584%_
                                                  _%hd178623%_
                                                  _%is-e?178590%_)
                                                 (_%recur178584%_
                                                  _%rest178657%_
                                                  _%is-e?178590%_)))))
                                         (_%E178660178689%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%e178659178666%_))
                                                (let ((_%e178662178674%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%e178659178666%_))))
                                                  (let ((_%hd178663178677%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e178662178674%_)))
                                                        (_%tl178664178679%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e178662178674%_))))
                                                    (let* ((_%rest-hd178682%_
                                                            _%hd178663178677%_)
                                                           (_%rest-tl178684%_
                                                            _%tl178664178679%_))
                                                      (if (_%is-e?178590%_
                                                           _%rest-hd178682%_)
                                                          (_%lp178655%_
                                                           _%rest-tl178684%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth178658%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth178658%_)
                      (_%make-splice178583%_
                       _%e178589%_
                       _%depth178658%_
                       (_%recur178584%_ _%hd178623%_ _%is-e?178590%_)
                       (_%recur178584%_ _%rest178657%_ _%is-e?178590%_))
                      (_%make-cons178582%_
                       (_%recur178584%_ _%hd178623%_ _%is-e?178590%_)
                       (_%recur178584%_ _%rest178657%_ _%is-e?178590%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%E178661178670%_)))))
                                    (_%E178660178689%_)))))))
                      (_%E178602178611%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E178601178693%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e178589%_))
                                                    (let ((_g179113_
                                                           (_%recur178584%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e178589%_)))
                    _%is-e?178590%_)))
              (begin
                (let ((_g179114_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g179113_)
                             (##values-length _g179113_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g179114_ 2)))
                      (error "Context expects 2 values" _g179114_)))
                (let ((_%e178698%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g179113_ 0)))
                      (_%vars178699%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g179113_ 1))))
                  (values (cons 'vector _%e178698%_) _%vars178699%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e178589%_))
                                                        (let ((_g179115_
                                                               (_%recur178584%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e178589%_)))
                        _%is-e?178590%_)))
                  (begin
                    (let ((_g179116_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g179115_)
                                 (##values-length _g179115_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g179116_ 2)))
                          (error "Context expects 2 values" _g179116_)))
                    (let ((_%e178702%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g179115_ 0)))
                          (_%vars178703%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g179115_ 1))))
                      (values (cons 'box _%e178702%_) _%vars178703%_))))
                (values (cons 'datum _%e178589%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g179117_
                             (_%recur178584%_ _%e178580%_ gx#ellipsis?)))
                        (begin
                          (let ((_g179118_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g179117_)
                                       (##values-length _g179117_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g179118_ 2)))
                                (error "Context expects 2 values" _g179118_)))
                          (let ((_%tree178586%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g179117_ 0)))
                                (_%vars178587%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g179117_ 1))))
                            (if (null? _%vars178587%_)
                                _%tree178586%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx178536%_
                                   _%vars178587%_))))))))))
          (let* ((_%e178540178550%_ _%stx178536%_)
                 (_%E178542178554%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx178536%_))))
                 (_%E178541178576%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e178540178550%_))
                        (let ((_%e178543178558%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e178540178550%_))))
                          (let ((_%hd178544178561%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e178543178558%_)))
                                (_%tl178545178563%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e178543178558%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl178545178563%_))
                                (let ((_%e178546178566%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl178545178563%_))))
                                  (let ((_%hd178547178569%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e178546178566%_)))
                                        (_%tl178548178571%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e178546178566%_))))
                                    (let ((_%form178574%_ _%hd178547178569%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl178548178571%_))
                                          (let ((__tmp179120
                                                 (_%generate178538%_
                                                  (_%parse178539%_
                                                   _%form178574%_)))
                                                (__tmp179119
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx178536%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp179120
                                             __tmp179119))
                                          (_%E178542178554%_)))))
                                (_%E178542178554%_))))
                        (_%E178542178554%_)))))
            (_%E178541178576%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx177785%_
               _%identifier=?177786%_
               _%unwrap-e177787%_
               _%wrap-e177788%_)
        (letrec ((_%generate-bindings177790%_
                  (lambda (_%target178400%_
                           _%ids178401%_
                           _%clauses178402%_
                           _%clause-ids178403%_
                           _%E178404%_)
                    (letrec ((_%generate1178406%_
                              (lambda (_%clause178503%_
                                       _%clause-id178504%_
                                       _%E178505%_)
                                (cons (cons _%clause-id178504%_ '())
                                      (cons (let ((__tmp179122
                                                   (cons _%target178400%_ '()))
                                                  (__tmp179121
                                                   (_%generate-clause177792%_
                                                    _%target178400%_
                                                    _%ids178401%_
                                                    _%clause178503%_
                                                    _%E178505%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp179122
                                               __tmp179121))
                                            '())))))
                      (let _%lp178408%_ ((_%rest178410%_ _%clauses178402%_)
                                         (_%rest-ids178411%_
                                          _%clause-ids178403%_)
                                         (_%bindings178412%_ '()))
                        (let* ((_%rest178413178421%_ _%rest178410%_)
                               (_%else178415178429%_
                                (lambda () _%bindings178412%_))
                               (_%K178417178491%_
                                (lambda (_%rest178432%_ _%clause178433%_)
                                  (let* ((_%rest-ids178434178441%_
                                          _%rest-ids178411%_)
                                         (_%E178436178445%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%rest-ids178434178441%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%K178437178479%_
                                          (lambda (_%rest-ids178448%_
                                                   _%clause-id178449%_)
                                            (let* ((_%rest-ids178450178458%_
                                                    _%rest-ids178448%_)
                                                   (_%else178452178466%_
                                                    (lambda ()
                                                      (cons (_%generate1178406%_
                                                             _%clause178433%_
                                                             _%clause-id178449%_
                                                             _%E178404%_)
                                                            _%bindings178412%_)))
                                                   (_%K178454178471%_
                                                    (lambda (_%next-clause-id178469%_)
                                                      (_%lp178408%_
                                                       _%rest178432%_
                                                       _%rest-ids178448%_
                                                       (cons (_%generate1178406%_
                                                              _%clause178433%_
                                                              _%clause-id178449%_
                                                              _%next-clause-id178469%_)
                                                             _%bindings178412%_)))))
                                              (if (pair? _%rest-ids178450178458%_)
                                                  (let* ((_%hd178455178474%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%rest-ids178450178458%_)))
                                                         (_%next-clause-id178477%_
                                                          _%hd178455178474%_))
                                                    (_%K178454178471%_
                                                     _%next-clause-id178477%_))
                                                  (_%else178452178466%_))))))
                                    (if (pair? _%rest-ids178434178441%_)
                                        (let ((_%hd178438178482%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest-ids178434178441%_)))
                                              (_%tl178439178484%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%rest-ids178434178441%_))))
                                          (let* ((_%clause-id178487%_
                                                  _%hd178438178482%_)
                                                 (_%rest-ids178489%_
                                                  _%tl178439178484%_))
                                            (_%K178437178479%_
                                             _%rest-ids178489%_
                                             _%clause-id178487%_)))
                                        (_%E178436178445%_))))))
                          (if (pair? _%rest178413178421%_)
                              (let ((_%hd178418178494%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest178413178421%_)))
                                    (_%tl178419178496%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest178413178421%_))))
                                (let* ((_%clause178499%_ _%hd178418178494%_)
                                       (_%rest178501%_ _%tl178419178496%_))
                                  (_%K178417178491%_
                                   _%rest178501%_
                                   _%clause178499%_)))
                              (_%else178415178429%_)))))))
                 (_%generate-body177791%_
                  (lambda (_%bindings178360%_ _%body178361%_)
                    (let _%recur178363%_ ((_%rest178365%_ _%bindings178360%_))
                      (let* ((_%rest178366178374%_ _%rest178365%_)
                             (_%else178368178382%_ (lambda () _%body178361%_))
                             (_%K178370178388%_
                              (lambda (_%rest178385%_ _%hd178386%_)
                                (let ((__tmp179124 (cons _%hd178386%_ '()))
                                      (__tmp179123
                                       (_%recur178363%_ _%rest178385%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp179124
                                   __tmp179123)))))
                        (if (pair? _%rest178366178374%_)
                            (let ((_%hd178371178391%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest178366178374%_)))
                                  (_%tl178372178393%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest178366178374%_))))
                              (let* ((_%hd178396%_ _%hd178371178391%_)
                                     (_%rest178398%_ _%tl178372178393%_))
                                (_%K178370178388%_
                                 _%rest178398%_
                                 _%hd178396%_)))
                            (_%else178368178382%_))))))
                 (_%generate-clause177792%_
                  (lambda (_%target178223%_
                           _%ids178224%_
                           _%clause178225%_
                           _%E178226%_)
                    (letrec ((_%generate1178228%_
                              (lambda (_%hd178315%_
                                       _%fender178316%_
                                       _%body178317%_)
                                (let ((_g179125_
                                       (_%parse-clause177794%_
                                        _%hd178315%_
                                        _%ids178224%_)))
                                  (begin
                                    (let ((_g179126_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g179125_)
                                                 (##values-length _g179125_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g179126_ 2)))
                                          (error "Context expects 2 values"
                                                 _g179126_)))
                                    (let ((_%e178319%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g179125_ 0)))
                                          (_%mvars178320%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g179125_ 1))))
                                      (let* ((_%pvars178322%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars178320%_))))
                                             (_%E178324%_
                                              (cons _%E178226%_
                                                    (cons _%target178223%_
                                                          '())))
                                             (_%K178357%_
                                              (let ((__tmp179127
                                                     (let ((__tmp179129
                                                            (map (lambda (_%mvar178326%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar178327%_)
                           (let* ((_%mvar178328178335%_ _%mvar178326%_)
                                  (_%E178330178339%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%mvar178328178335%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%K178331178345%_
                                   (lambda (_%depth178342%_ _%id178343%_)
                                     (cons _%id178343%_
                                           (cons (let ((__tmp179131
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id178343%_)))
                                                       (__tmp179130
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar178327%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp179131
                                                    __tmp179130
                                                    _%depth178342%_))
                                                 '())))))
                             (if (pair? _%mvar178328178335%_)
                                 (let ((_%hd178332178348%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%mvar178328178335%_)))
                                       (_%tl178333178350%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%mvar178328178335%_))))
                                   (let* ((_%id178353%_ _%hd178332178348%_)
                                          (_%depth178355%_ _%tl178333178350%_))
                                     (_%K178331178345%_
                                      _%depth178355%_
                                      _%id178353%_)))
                                 (_%E178330178339%_))))
                         _%mvars178320%_
                         _%pvars178322%_))
                   (__tmp179128
                    (if (eq? _%fender178316%_ '#t)
                        _%body178317%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender178316%_
                           _%body178317%_
                           _%E178324%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp179129 __tmp179128))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars178322%_
                                                 __tmp179127))))
                                        (_%generate-match177793%_
                                         _%hd178315%_
                                         _%target178223%_
                                         _%e178319%_
                                         _%mvars178320%_
                                         _%K178357%_
                                         _%E178324%_))))))))
                      (let* ((_%e178229178249%_ _%clause178225%_)
                             (_%E178238178253%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%e178229178249%_))))
                             (_%E178231178287%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e178229178249%_))
                                    (let ((_%e178239178257%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e178229178249%_))))
                                      (let ((_%hd178240178260%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e178239178257%_)))
                                            (_%tl178241178262%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e178239178257%_))))
                                        (let ((_%hd178265%_
                                               _%hd178240178260%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl178241178262%_))
                                              (let ((_%e178242178267%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl178241178262%_))))
                                                (let ((_%hd178243178270%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e178242178267%_)))
                                                      (_%tl178244178272%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e178242178267%_))))
                                                  (let ((_%fender178275%_
                                                         _%hd178243178270%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl178244178272%_))
                                                        (let ((_%e178245178277%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl178244178272%_))))
                  (let ((_%hd178246178280%_
                         (let ()
                           (declare (not safe))
                           (##car _%e178245178277%_)))
                        (_%tl178247178282%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e178245178277%_))))
                    (let ((_%body178285%_ _%hd178246178280%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl178247178282%_))
                          (_%generate1178228%_
                           _%hd178265%_
                           _%fender178275%_
                           _%body178285%_)
                          (_%E178238178253%_)))))
                (_%E178238178253%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%E178238178253%_)))))
                                    (_%E178238178253%_))))
                             (_%E178230178311%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%e178229178249%_))
                                    (let ((_%e178232178291%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _%e178229178249%_))))
                                      (let ((_%hd178233178294%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e178232178291%_)))
                                            (_%tl178234178296%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e178232178291%_))))
                                        (let ((_%hd178299%_
                                               _%hd178233178294%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl178234178296%_))
                                              (let ((_%e178235178301%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl178234178296%_))))
                                                (let ((_%hd178236178304%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e178235178301%_)))
                                                      (_%tl178237178306%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e178235178301%_))))
                                                  (let ((_%body178309%_
                                                         _%hd178236178304%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl178237178306%_))
                                                        (_%generate1178228%_
                                                         _%hd178299%_
                                                         '#t
                                                         _%body178309%_)
                                                        (_%E178231178287%_)))))
                                              (_%E178231178287%_)))))
                                    (_%E178231178287%_)))))
                        (_%E178230178311%_)))))
                 (_%generate-match177793%_
                  (lambda (_%where177972%_
                           _%target177973%_
                           _%hd177974%_
                           _%mvars177975%_
                           _%K177976%_
                           _%E177977%_)
                    (letrec ((_%BUG177979%_
                              (lambda (_%q178221%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx177785%_
                                         _%hd177974%_
                                         _%q178221%_))))
                             (_%recur177980%_
                              (lambda (_%e178071%_
                                       _%vars178072%_
                                       _%target178073%_
                                       _%E178074%_
                                       _%k178075%_)
                                (let* ((_%e178076178083%_ _%e178071%_)
                                       (_%E178078178087%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%e178076178083%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%K178079178209%_
                                        (lambda (_%body178090%_ _%tag178091%_)
                                          (let ((_%$e178093%_ _%tag178091%_))
                                            (if (eq? 'any _%$e178093%_)
                                                (_%k178075%_ _%vars178072%_)
                                                (if (eq? 'id _%$e178093%_)
                                                    (let ((__tmp179136
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target178073%_)))
                                                          (__tmp179132
                                                           (let ((__tmp179134
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp179135
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e177788%_
                                    _%body178090%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?177786%_
                             __tmp179135
                             _%target178073%_)))
                         (__tmp179133 (_%k178075%_ _%vars178072%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp179134 __tmp179133 _%E178074%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp179136 __tmp179132 _%E178074%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e178093%_)
                                                        (_%k178075%_
                                                         (cons (cons _%body178090%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target178073%_)
                       _%vars178072%_))
                (if (eq? 'cons _%$e178093%_)
                    (let ((_%$e178096%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd178097%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl178098%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp179142
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target178073%_)))
                            (__tmp179137
                             (let ((__tmp179141
                                    (cons (cons (cons _%$e178096%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e177787%_
                                                         _%target178073%_))
                                                      '()))
                                          '()))
                                   (__tmp179138
                                    (let ((__tmp179140
                                           (cons (cons (cons _%$hd178097%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e178096%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl178098%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e178096%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp179139
                                           (let* ((_%body178099178106%_
                                                   _%body178090%_)
                                                  (_%E178101178110%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%body178099178106%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%K178102178118%_
                                                   (lambda (_%tl178113%_
                                                            _%hd178114%_)
                                                     (_%recur177980%_
                                                      _%hd178114%_
                                                      _%vars178072%_
                                                      _%$hd178097%_
                                                      _%E178074%_
                                                      (lambda (_%vars178116%_)
                                                        (_%recur177980%_
                                                         _%tl178113%_
                                                         _%vars178116%_
                                                         _%$tl178098%_
                                                         _%E178074%_
                                                         _%k178075%_))))))
                                             (if (pair? _%body178099178106%_)
                                                 (let ((_%hd178103178121%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%body178099178106%_)))
                                                       (_%tl178104178123%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%body178099178106%_))))
                                                   (let* ((_%hd178126%_
                                                           _%hd178103178121%_)
                                                          (_%tl178128%_
                                                           _%tl178104178123%_))
                                                     (_%K178102178118%_
                                                      _%tl178128%_
                                                      _%hd178126%_)))
                                                 (_%E178101178110%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp179140
                                       __tmp179139))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp179141
                                __tmp179138))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp179142
                         __tmp179137
                         _%E178074%_)))
                    (if (eq? 'splice _%$e178093%_)
                        (let* ((_%body178129178136%_ _%body178090%_)
                               (_%E178131178140%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%body178129178136%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%K178132178191%_
                                (lambda (_%tl178143%_ _%hd178144%_)
                                  (let* ((_%rlen178146%_
                                          (_%splice-rlen177981%_ _%tl178143%_))
                                         (_%$target178148%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd178150%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl178152%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp178154%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e178156%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd178158%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl178160%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars178162%_
                                          (_%splice-vars177982%_ _%hd178144%_))
                                         (_%lvars178164%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars178162%_)))
                                         (_%tlvars178166%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars178162%_)))
                                         (_%linit178170%_
                                          (map (lambda (_%var178168%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars178164%_)))
                                    (letrec ((_%make-loop178173%_
                                              (lambda (_%vars178177%_)
                                                (let ((__tmp179144
                                                       (cons (cons (cons _%$lp178154%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp179157
                                        (cons _%$hd178150%_ _%lvars178164%_))
                                       (__tmp179145
                                        (let ((__tmp179156
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd178150%_)))
                                              (__tmp179150
                                               (let ((__tmp179155
                                                      (cons (cons (cons _%$lp-e178156%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e177787%_
                                   _%$hd178150%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp179151
                                                      (let ((__tmp179154
                                                             (cons (cons (cons _%$lp-hd178158%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e178156%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl178160%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e178156%_))
                                             '()))
                                 '())))
                    (__tmp179152
                     (_%recur177980%_
                      _%hd178144%_
                      '()
                      _%$lp-hd178158%_
                      _%E178074%_
                      (lambda (_%hdvars178179%_)
                        (cons _%$lp178154%_
                              (cons _%$lp-tl178160%_
                                    (map (lambda (_%svar178181%_
                                                  _%lvar178182%_)
                                           (let ((__tmp179153
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar178181%_
                                                     _%hdvars178179%_
                                                     _%BUG177979%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp179153
                                              _%lvar178182%_)))
                                         _%svars178162%_
                                         _%lvars178164%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp179154 __tmp179152))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp179155
                                                  __tmp179151)))
                                              (__tmp179146
                                               (let ((__tmp179149
                                                      (map (lambda (_%lvar178184%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar178185%_)
                     (cons (cons _%tlvar178185%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar178184%_))
                                 '())))
                   _%lvars178164%_
                   _%tlvars178166%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp179147
                                                      (_%k178075%_
                                                       (let ((__tmp179148
                                                              (lambda (_%svar178187%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar178188%_
                               _%r178189%_)
                        (cons (cons _%svar178187%_ _%tlvar178188%_)
                              _%r178189%_))))
                 (declare (not safe))
                 (__foldl2
                  __tmp179148
                  _%vars178177%_
                  _%svars178162%_
                  _%tlvars178166%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp179149
                                                  __tmp179147))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp179156
                                           __tmp179150
                                           __tmp179146))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp179157
                                    __tmp179145))
                                 '()))
                     '()))
              (__tmp179143
               (cons _%$lp178154%_ (cons _%$target178148%_ _%linit178170%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp179144
                                                   __tmp179143)))))
                                      (let ((_%body178175%_
                                             (let ((__tmp179159
                                                    (cons (cons (cons _%$target178148%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl178152%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target178073%_
                                 _%rlen178146%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp179158
                                                    (_%recur177980%_
                                                     _%tl178143%_
                                                     _%vars178072%_
                                                     _%$tl178152%_
                                                     _%E178074%_
                                                     _%make-loop178173%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp179159
                                                __tmp179158))))
                                        (let ((__tmp179163
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target178073%_)))
                                              (__tmp179160
                                               (if (zero? _%rlen178146%_)
                                                   _%body178175%_
                                                   (let ((__tmp179161
                                                          (let ((__tmp179162
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target178073%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp179162 _%rlen178146%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp179161
                                                      _%body178175%_
                                                      _%E178074%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp179163
                                           __tmp179160
                                           _%E178074%_))))))))
                          (if (pair? _%body178129178136%_)
                              (let ((_%hd178133178194%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%body178129178136%_)))
                                    (_%tl178134178196%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%body178129178136%_))))
                                (let* ((_%hd178199%_ _%hd178133178194%_)
                                       (_%tl178201%_ _%tl178134178196%_))
                                  (_%K178132178191%_
                                   _%tl178201%_
                                   _%hd178199%_)))
                              (_%E178131178140%_)))
                        (if (eq? 'null _%$e178093%_)
                            (let ((__tmp179165
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target178073%_)))
                                  (__tmp179164 (_%k178075%_ _%vars178072%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp179165
                               __tmp179164
                               _%E178074%_))
                            (if (eq? 'vector _%$e178093%_)
                                (let ((_%$e178203%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp179170
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target178073%_)))
                                        (__tmp179166
                                         (let ((__tmp179168
                                                (cons (cons (cons _%$e178203%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp179169
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e177787%_
                                    _%target178073%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp179169))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp179167
                                                (_%recur177980%_
                                                 _%body178090%_
                                                 _%vars178072%_
                                                 _%$e178203%_
                                                 _%E178074%_
                                                 _%k178075%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp179168
                                            __tmp179167))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp179170
                                     __tmp179166
                                     _%E178074%_)))
                                (if (eq? 'box _%$e178093%_)
                                    (let ((_%$e178205%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp179175
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target178073%_)))
                                            (__tmp179171
                                             (let ((__tmp179173
                                                    (cons (cons (cons _%$e178205%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp179174
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e177787%_
                                        _%target178073%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp179174))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp179172
                                                    (_%recur177980%_
                                                     _%body178090%_
                                                     _%vars178072%_
                                                     _%$e178205%_
                                                     _%E178074%_
                                                     _%k178075%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp179173
                                                __tmp179172))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp179175
                                         __tmp179171
                                         _%E178074%_)))
                                    (if (eq? 'datum _%$e178093%_)
                                        (let ((_%$e178207%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp179181
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target178073%_)))
                                                (__tmp179176
                                                 (let ((__tmp179180
                                                        (cons (cons (cons _%$e178207%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target178073%_))
                                  '()))
                      '()))
               (__tmp179177
                (let ((__tmp179179
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e178207%_ _%body178090%_)))
                      (__tmp179178 (_%k178075%_ _%vars178072%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp179179 __tmp179178 _%E178074%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp179180
                                                    __tmp179177))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp179181
                                             __tmp179176
                                             _%E178074%_)))
                                        (_%BUG177979%_
                                         _%e178071%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (pair? _%e178076178083%_)
                                      (let ((_%hd178080178212%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e178076178083%_)))
                                            (_%tl178081178214%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e178076178083%_))))
                                        (let* ((_%tag178217%_
                                                _%hd178080178212%_)
                                               (_%body178219%_
                                                _%tl178081178214%_))
                                          (_%K178079178209%_
                                           _%body178219%_
                                           _%tag178217%_)))
                                      (_%E178078178087%_)))))
                             (_%splice-rlen177981%_
                              (lambda (_%e178033%_)
                                (let _%lp178035%_ ((_%e178037%_ _%e178033%_)
                                                   (_%n178038%_ '0))
                                  (let* ((_%e178039178046%_ _%e178037%_)
                                         (_%E178041178050%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e178039178046%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K178042178059%_
                                          (lambda (_%body178053%_
                                                   _%tag178054%_)
                                            (let ((_%$e178056%_ _%tag178054%_))
                                              (if (eq? 'splice _%$e178056%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx177785%_
                                                     _%where177972%_))
                                                  (if (eq? 'cons _%$e178056%_)
                                                      (_%lp178035%_
                                                       (cdr _%body178053%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n178038%_
                                                                '1)))
                                                      _%n178038%_))))))
                                    (if (pair? _%e178039178046%_)
                                        (let ((_%hd178043178062%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e178039178046%_)))
                                              (_%tl178044178064%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e178039178046%_))))
                                          (let* ((_%tag178067%_
                                                  _%hd178043178062%_)
                                                 (_%body178069%_
                                                  _%tl178044178064%_))
                                            (_%K178042178059%_
                                             _%body178069%_
                                             _%tag178067%_)))
                                        (_%E178041178050%_))))))
                             (_%splice-vars177982%_
                              (lambda (_%e177989%_)
                                (let _%recur177991%_ ((_%e177993%_ _%e177989%_)
                                                      (_%vars177994%_ '()))
                                  (let* ((_%e177995178002%_ _%e177993%_)
                                         (_%E177997178006%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%e177995178002%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%K177998178021%_
                                          (lambda (_%body178009%_
                                                   _%tag178010%_)
                                            (let ((_%$e178012%_ _%tag178010%_))
                                              (if (eq? 'var _%$e178012%_)
                                                  (cons _%body178009%_
                                                        _%vars177994%_)
                                                  (if (or (eq? 'cons
                                                               _%$e178012%_)
                                                          (eq? 'splice
                                                               _%$e178012%_))
                                                      (_%recur177991%_
                                                       (cdr _%body178009%_)
                                                       (_%recur177991%_
                                                        (car _%body178009%_)
                                                        _%vars177994%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e178012%_)
                      (eq? 'box _%$e178012%_))
                  (_%recur177991%_ _%body178009%_ _%vars177994%_)
                  _%vars177994%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%e177995178002%_)
                                        (let ((_%hd177999178024%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e177995178002%_)))
                                              (_%tl178000178026%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e177995178002%_))))
                                          (let* ((_%tag178029%_
                                                  _%hd177999178024%_)
                                                 (_%body178031%_
                                                  _%tl178000178026%_))
                                            (_%K177998178021%_
                                             _%body178031%_
                                             _%tag178029%_)))
                                        (_%E177997178006%_))))))
                             (_%make-body177983%_
                              (lambda (_%vars177985%_)
                                (cons _%K177976%_
                                      (map (lambda (_%mvar177987%_)
                                             (let ((__tmp179182
                                                    (car _%mvar177987%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp179182
                                                _%vars177985%_
                                                _%BUG177979%_)))
                                           _%mvars177975%_)))))
                      (_%recur177980%_
                       _%hd177974%_
                       '()
                       _%target177973%_
                       _%E177977%_
                       _%make-body177983%_))))
                 (_%parse-clause177794%_
                  (lambda (_%hd177866%_ _%ids177867%_)
                    (let _%recur177869%_ ((_%e177871%_ _%hd177866%_)
                                          (_%vars177872%_ '())
                                          (_%depth177873%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e177871%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e177871%_))
                              (values '(any) _%vars177872%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e177871%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx177785%_
                                     _%hd177866%_))
                                  (if (let ((__tmp179183
                                             (lambda (_%id177878%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e177871%_
                                                  _%id177878%_)))))
                                        (declare (not safe))
                                        (__find __tmp179183 _%ids177867%_))
                                      (values (cons 'id _%e177871%_)
                                              _%vars177872%_)
                                      (if (let ((__tmp179184
                                                 (lambda (_%var177881%_)
                                                   (let ((__tmp179185
                                                          (car _%var177881%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e177871%_
                                                      __tmp179185)))))
                                            (declare (not safe))
                                            (__find __tmp179184
                                                    _%vars177872%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx177785%_
                                             _%e177871%_))
                                          (values (cons 'var _%e177871%_)
                                                  (cons (cons _%e177871%_
                                                              _%depth177873%_)
                                                        _%vars177872%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e177871%_))
                              (let* ((_%e177885177892%_ _%e177871%_)
                                     (_%E177887177896%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%e177885177892%_))))
                                     (_%E177886177957%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%e177885177892%_))
                                            (let ((_%e177888177900%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%e177885177892%_))))
                                              (let ((_%hd177889177903%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e177888177900%_)))
                                                    (_%tl177890177905%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e177888177900%_))))
                                                (let* ((_%hd177908%_
                                                        _%hd177889177903%_)
                                                       (_%rest177910%_
                                                        _%tl177890177905%_)
                                                       (_%make-pair177925%_
                                                        (lambda (_%tag177912%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd177913%_
                         _%tl177914%_)
                  (let* ((_%hd-depth177916%_
                          (if (eq? _%tag177912%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth177873%_ '1))
                              _%depth177873%_))
                         (_g179186_
                          (_%recur177869%_
                           _%hd177913%_
                           _%vars177872%_
                           _%hd-depth177916%_)))
                    (begin
                      (let ((_g179187_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g179186_)
                                   (##values-length _g179186_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g179187_ 2)))
                            (error "Context expects 2 values" _g179187_)))
                      (let ((_%hd177918%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g179186_ 0)))
                            (_%vars177919%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g179186_ 1))))
                        (let ((_g179188_
                               (_%recur177869%_
                                _%tl177914%_
                                _%vars177919%_
                                _%depth177873%_)))
                          (begin
                            (let ((_g179189_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g179188_)
                                         (##values-length _g179188_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g179189_ 2)))
                                  (error "Context expects 2 values"
                                         _g179189_)))
                            (let ((_%tl177921%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g179188_ 0)))
                                  (_%vars177922%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g179188_ 1))))
                              (values (cons _%tag177912%_
                                            (cons _%hd177918%_ _%tl177921%_))
                                      _%vars177922%_)))))))))
               (_%e177926177933%_ _%rest177910%_)
               (_%E177928177937%_
                (lambda ()
                  (_%make-pair177925%_ 'cons _%hd177908%_ _%rest177910%_)))
               (_%E177927177953%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%e177926177933%_))
                      (let ((_%e177929177941%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%e177926177933%_))))
                        (let ((_%hd177930177944%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e177929177941%_)))
                              (_%tl177931177946%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e177929177941%_))))
                          (let* ((_%rest-hd177949%_ _%hd177930177944%_)
                                 (_%rest-tl177951%_ _%tl177931177946%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd177949%_))
                                (_%make-pair177925%_
                                 'splice
                                 _%hd177908%_
                                 _%rest-tl177951%_)
                                (_%make-pair177925%_
                                 'cons
                                 _%hd177908%_
                                 _%rest177910%_)))))
                      (_%E177928177937%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E177927177953%_))))
                                            (_%E177887177896%_)))))
                                (_%E177886177957%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e177871%_))
                                  (values '(null) _%vars177872%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e177871%_))
                                      (let ((_g179190_
                                             (_%recur177869%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e177871%_)))
                                              _%vars177872%_
                                              _%depth177873%_)))
                                        (begin
                                          (let ((_g179191_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g179190_)
                                                       (##values-length
                                                        _g179190_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g179191_ 2)))
                                                (error "Context expects 2 values"
                                                       _g179191_)))
                                          (let ((_%e177963%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g179190_ 0)))
                                                (_%vars177964%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g179190_
                                                    1))))
                                            (values (cons 'vector _%e177963%_)
                                                    _%vars177964%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e177871%_))
                                          (let ((_g179192_
                                                 (_%recur177869%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e177871%_)))
                                                  _%vars177872%_
                                                  _%depth177873%_)))
                                            (begin
                                              (let ((_g179193_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g179192_)
                                                           (##values-length
                                                            _g179192_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g179193_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g179193_)))
                                              (let ((_%e177967%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g179192_
                                                        0)))
                                                    (_%vars177968%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g179192_
                                                        1))))
                                                (values (cons 'box _%e177967%_)
                                                        _%vars177968%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e177871%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e177871%_)))
                                                      _%vars177872%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx177785%_
                                                 _%e177871%_))))))))))))
          (let* ((_%e177795177808%_ _%stx177785%_)
                 (_%E177797177812%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%e177795177808%_))))
                 (_%E177796177862%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%e177795177808%_))
                        (let ((_%e177798177816%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%e177795177808%_))))
                          (let ((_%hd177799177819%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e177798177816%_)))
                                (_%tl177800177821%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e177798177816%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl177800177821%_))
                                (let ((_%e177801177824%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl177800177821%_))))
                                  (let ((_%hd177802177827%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e177801177824%_)))
                                        (_%tl177803177829%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e177801177824%_))))
                                    (let ((_%expr177832%_ _%hd177802177827%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl177803177829%_))
                                          (let ((_%e177804177834%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl177803177829%_))))
                                            (let ((_%hd177805177837%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e177804177834%_)))
                                                  (_%tl177806177839%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e177804177834%_))))
                                              (let* ((_%ids177842%_
                                                      _%hd177805177837%_)
                                                     (_%clauses177844%_
                                                      _%tl177806177839%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids177842%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses177844%_))
                                                        (let* ((_%ids177849%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids177842%_)))
                       (_%clauses177851%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses177844%_)))
                       (_%clause-ids177853%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses177851%_)))
                       (_%E177855%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target177857%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first177859%_
                        (if (null? _%clauses177851%_)
                            _%E177855%_
                            (car _%clause-ids177853%_))))
                  (let ((__tmp179195
                         (let ((__tmp179196
                                (let ((__tmp179198
                                       (let ((__tmp179200
                                              (cons (cons (cons _%E177855%_
                                                                '())
                                                          (cons (let ((__tmp179202
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target177857%_ '()))
                              (__tmp179201
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target177857%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp179202 __tmp179201))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp179199
                                              (_%generate-body177791%_
                                               (_%generate-bindings177790%_
                                                _%target177857%_
                                                _%ids177849%_
                                                _%clauses177851%_
                                                _%clause-ids177853%_
                                                _%E177855%_)
                                               (cons _%first177859%_
                                                     (cons _%expr177832%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp179200
                                          __tmp179199)))
                                      (__tmp179197
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx177785%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp179198
                                   __tmp179197))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp179196)))
                        (__tmp179194
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx177785%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp179195 __tmp179194)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx177785%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx177785%_
                                                       _%ids177842%_))))))
                                          (_%E177797177812%_)))))
                                (_%E177797177812%_))))
                        (_%E177797177812%_)))))
            (_%E177796177862%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx178510%_)
        (let* ((_%identifier=?178512%_ 'free-identifier=?)
               (_%unwrap-e178514%_ 'syntax-e)
               (_%wrap-e178516%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx178510%_
           _%identifier=?178512%_
           _%unwrap-e178514%_
           _%wrap-e178516%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx178518%_ _%identifier=?178519%_)
        (let* ((_%unwrap-e178521%_ 'syntax-e) (_%wrap-e178523%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx178518%_
           _%identifier=?178519%_
           _%unwrap-e178521%_
           _%wrap-e178523%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx178525%_ _%identifier=?178526%_ _%unwrap-e178527%_)
        (let ((_%wrap-e178529%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx178525%_
           _%identifier=?178526%_
           _%unwrap-e178527%_
           _%wrap-e178529%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g179203_
        (let ((_g179204_ (let () (declare (not safe)) (##length _g179203_))))
          (cond ((let () (declare (not safe)) (##fx= _g179204_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g179203_))
                ((let () (declare (not safe)) (##fx= _g179204_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g179203_))
                ((let () (declare (not safe)) (##fx= _g179204_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g179203_))
                ((let () (declare (not safe)) (##fx= _g179204_ 4))
                 (apply gx#macro-expand-syntax-case__% _g179203_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g179203_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx177782%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx177782%_))
            (let ((__tmp179205
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx177782%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp179205 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd177740%_ . _%rest177741%_)
        (let ((_%len177743%_ (length _%hd177740%_)))
          (let _%lp177745%_ ((_%rest177747%_ _%rest177741%_))
            (let* ((_%rest177748177756%_ _%rest177747%_)
                   (_%else177750177764%_ (lambda () '#!void))
                   (_%K177752177770%_
                    (lambda (_%rest177767%_ _%hd177768%_)
                      (if (let ((__tmp179206 (length _%hd177768%_)))
                            (declare (not safe))
                            (##fx= _%len177743%_ __tmp179206))
                          (_%lp177745%_ _%rest177767%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd177768%_))))))
              (if (pair? _%rest177748177756%_)
                  (let ((_%hd177753177773%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest177748177756%_)))
                        (_%tl177754177775%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest177748177756%_))))
                    (let* ((_%hd177778%_ _%hd177753177773%_)
                           (_%rest177780%_ _%tl177754177775%_))
                      (_%K177752177770%_ _%rest177780%_ _%hd177778%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx177690%_ _%n177691%_)
        (let _%lp177693%_ ((_%rest177696%_ _%stx177690%_) (_%r177698%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest177696%_))
              (let* ((_%g177700177707%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest177696%_)))
                     (_%E177702177711%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g177700177707%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K177703177718%_
                      (lambda (_%rest177714%_ _%hd177715%_)
                        (_%lp177693%_
                         _%rest177714%_
                         (cons _%hd177715%_ _%r177698%_)))))
                (if (pair? _%g177700177707%_)
                    (let ((_%hd177704177721%_
                           (let ()
                             (declare (not safe))
                             (##car _%g177700177707%_)))
                          (_%tl177705177723%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g177700177707%_))))
                      (let* ((_%hd177726%_ _%hd177704177721%_)
                             (_%rest177728%_ _%tl177705177723%_))
                        (_%K177703177718%_ _%rest177728%_ _%hd177726%_)))
                    (_%E177702177711%_)))
              (let _%lp177730%_ ((_%n177732%_ _%n177691%_)
                                 (_%l177733%_ _%r177698%_)
                                 (_%r177735%_ _%rest177696%_))
                (if (null? _%l177733%_)
                    (values _%l177733%_ _%r177735%_)
                    (if (fxpositive? _%n177732%_)
                        (_%lp177730%_
                         (let () (declare (not safe)) (##fx- _%n177732%_ '1))
                         (cdr _%l177733%_)
                         (cons (car _%l177733%_) _%r177735%_))
                        (values (reverse! _%l177733%_) _%r177735%_))))))))
    (define gx#syntax-split-splice->vector
      (lambda (_%stx177640%_ _%n177641%_)
        (let _%lp177643%_ ((_%rest177646%_ _%stx177640%_) (_%r177648%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest177646%_))
              (let* ((_%g177650177657%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest177646%_)))
                     (_%E177652177661%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%g177650177657%_
                                 '([hd . rest])))
                        '#!void))
                     (_%K177653177668%_
                      (lambda (_%rest177664%_ _%hd177665%_)
                        (_%lp177643%_
                         _%rest177664%_
                         (cons _%hd177665%_ _%r177648%_)))))
                (if (pair? _%g177650177657%_)
                    (let ((_%hd177654177671%_
                           (let ()
                             (declare (not safe))
                             (##car _%g177650177657%_)))
                          (_%tl177655177673%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%g177650177657%_))))
                      (let* ((_%hd177676%_ _%hd177654177671%_)
                             (_%rest177678%_ _%tl177655177673%_))
                        (_%K177653177668%_ _%rest177678%_ _%hd177676%_)))
                    (_%E177652177661%_)))
              (let _%lp177680%_ ((_%n177682%_ _%n177641%_)
                                 (_%l177683%_ _%r177648%_)
                                 (_%r177685%_ _%rest177646%_))
                (if (null? _%l177683%_)
                    (vector _%l177683%_ _%r177685%_)
                    (if (fxpositive? _%n177682%_)
                        (_%lp177680%_
                         (let () (declare (not safe)) (##fx- _%n177682%_ '1))
                         (cdr _%l177683%_)
                         (cons (car _%l177683%_) _%r177685%_))
                        (vector (reverse! _%l177683%_) _%r177685%_))))))))))
