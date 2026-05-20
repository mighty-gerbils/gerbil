(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-sugar[1]#_g45527_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/more-sugar[1]#_g45530_|
    (##structure
     gx#syntax-quote::t
     'catch
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g45531_|
    (##structure
     gx#syntax-quote::t
     'finally
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g45532_|
    (##structure
     gx#syntax-quote::t
     'finally
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g45533_|
    (##structure
     gx#syntax-quote::t
     'catch
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/more-sugar[1]#setq-macro::t|
      (make-class-type
       'gerbil/core/more-sugar#setq-macro::t
       'setq-macro
       (list gerbil/core/macro-object#macro-object::t)
       '()
       '()
       '#f))
    (define |gerbil/core/more-sugar[1]#setq-macro?|
      (make-class-predicate |gerbil/core/more-sugar[1]#setq-macro::t|))
    (define |gerbil/core/more-sugar[1]#make-setq-macro|
      (lambda _%$args40860%_
        (apply make-instance
               |gerbil/core/more-sugar[1]#setq-macro::t|
               _%$args40860%_)))
    (define |gerbil/core/more-sugar[1]#setq-macro-macro|
      (make-class-slot-accessor
       |gerbil/core/more-sugar[1]#setq-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#setq-macro-macro-set!|
      (make-class-slot-mutator
       |gerbil/core/more-sugar[1]#setq-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#&setq-macro-macro|
      (make-class-slot-unchecked-accessor
       |gerbil/core/more-sugar[1]#setq-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#&setq-macro-macro-set!|
      (make-class-slot-unchecked-mutator
       |gerbil/core/more-sugar[1]#setq-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#setf-macro::t|
      (make-class-type
       'gerbil/core/more-sugar#setf-macro::t
       'setf-macro
       (list gerbil/core/macro-object#macro-object::t)
       '()
       '()
       '#f))
    (define |gerbil/core/more-sugar[1]#setf-macro?|
      (make-class-predicate |gerbil/core/more-sugar[1]#setf-macro::t|))
    (define |gerbil/core/more-sugar[1]#make-setf-macro|
      (lambda _%$args40856%_
        (apply make-instance
               |gerbil/core/more-sugar[1]#setf-macro::t|
               _%$args40856%_)))
    (define |gerbil/core/more-sugar[1]#setf-macro-macro|
      (make-class-slot-accessor
       |gerbil/core/more-sugar[1]#setf-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#setf-macro-macro-set!|
      (make-class-slot-mutator
       |gerbil/core/more-sugar[1]#setf-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#&setf-macro-macro|
      (make-class-slot-unchecked-accessor
       |gerbil/core/more-sugar[1]#setf-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#&setf-macro-macro-set!|
      (make-class-slot-unchecked-mutator
       |gerbil/core/more-sugar[1]#setf-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#syntax-local-setf-macro?|
      (lambda (_%stx40853%_)
        (if (gx#identifier? _%stx40853%_)
            (let ((__tmp45490 (gx#syntax-local-value _%stx40853%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/more-sugar[1]#setf-macro::t|
               __tmp45490))
            '#f)))
    (define |gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
      (lambda (_%stx40850%_)
        (if (gx#identifier? _%stx40850%_)
            (let ((__tmp45491 (gx#syntax-local-value _%stx40850%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/more-sugar[1]#setq-macro::t|
               __tmp45491))
            '#f)))
    (define |gerbil/core/more-sugar[1]#expand-set!|
      (lambda (_%stx40477%_)
        (let* ((_%__stx4501945020%_ _%stx40477%_)
               (_%g4048340546%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx4501945020%_))))
          (let ((_%__kont4502245023%_
                 (lambda (_%g4048540827%_ _%g4048640829%_)
                   (gx#core-apply-expander
                    (gx#syntax-local-e _%g4048640829%_)
                    _%stx40477%_)))
                (_%__kont4502445025%_
                 (lambda (_%g4049940716%_ _%g4050040718%_ _%g4050140719%_)
                   (let* ((_%g4074140749%_
                           (lambda (_%g4074240745%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g4074240745%_)))
                          (_%g4074040776%_
                           (lambda (_%g4074240753%_)
                             (cons _%g4074240753%_
                                   (foldr (lambda (_%g4076740770%_
                                                   _%g4076840773%_)
                                            (cons _%g4076740770%_
                                                  _%g4076840773%_))
                                          (cons _%g4049940716%_ '())
                                          _%g4050040718%_)))))
                     (_%g4074040776%_
                      (gx#stx-identifier
                       _%g4050140719%_
                       _%g4050140719%_
                       '"-set!")))))
                (_%__kont4502845029%_
                 (lambda (_%g4052340628%_)
                   (gx#core-apply-expander
                    (gx#syntax-local-e _%g4052340628%_)
                    _%stx40477%_)))
                (_%__kont4503045031%_
                 (lambda (_%g4053040583%_ _%g4053140585%_)
                   (cons (gx#datum->syntax '#f '%#set!)
                         (cons _%g4053140585%_ (cons _%g4053040583%_ '()))))))
            (let* ((_%__match4511845119%_
                    (lambda (_%e4053240553%_
                             _%hd4053340557%_
                             _%tl4053440560%_
                             _%e4053540563%_
                             _%hd4053640567%_
                             _%tl4053740570%_
                             _%e4053840573%_
                             _%hd4053940577%_
                             _%tl4054040580%_)
                      (let ((_%g4053040583%_ _%hd4053940577%_)
                            (_%g4053140585%_ _%hd4053640567%_))
                        (if (gx#identifier? _%g4053140585%_)
                            (_%__kont4503045031%_
                             _%g4053040583%_
                             _%g4053140585%_)
                            (let () (declare (not safe)) (_%g4048340546%_))))))
                   (_%__match4509845099%_
                    (lambda (_%e4052440608%_
                             _%hd4052540612%_
                             _%tl4052640615%_
                             _%e4052740618%_
                             _%hd4052840622%_
                             _%tl4052940625%_)
                      (let ((_%g4052340628%_ _%hd4052840622%_))
                        (if (|gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
                             _%g4052340628%_)
                            (_%__kont4502845029%_ _%g4052340628%_)
                            (if (gx#stx-pair? _%tl4052940625%_)
                                (let ((_%e4053840573%_
                                       (gx#syntax-e _%tl4052940625%_)))
                                  (let ((_%tl4054040580%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4053840573%_)))
                                        (_%hd4053940577%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4053840573%_))))
                                    (if (gx#stx-null? _%tl4054040580%_)
                                        (_%__match4511845119%_
                                         _%e4052440608%_
                                         _%hd4052540612%_
                                         _%tl4052640615%_
                                         _%e4052740618%_
                                         _%hd4052840622%_
                                         _%tl4052940625%_
                                         _%e4053840573%_
                                         _%hd4053940577%_
                                         _%tl4054040580%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g4048340546%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4048340546%_)))))))
                   (_%__match4508645087%_
                    (lambda (_%e4050240648%_
                             _%hd4050340652%_
                             _%tl4050440655%_
                             _%e4050540658%_
                             _%hd4050640662%_
                             _%tl4050740665%_
                             _%e4050840668%_
                             _%hd4050940672%_
                             _%tl4051040675%_
                             _%__splice4502645027%_
                             _%target4051140678%_
                             _%tl4051340681%_)
                      (letrec ((_%loop4051440684%_
                                (lambda (_%hd4051240688%_ _%arg4051840691%_)
                                  (if (gx#stx-pair? _%hd4051240688%_)
                                      (let ((_%e4051540693%_
                                             (gx#syntax-e _%hd4051240688%_)))
                                        (let ((_%lp-tl4051740700%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4051540693%_)))
                                              (_%lp-hd4051640697%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4051540693%_))))
                                          (_%loop4051440684%_
                                           _%lp-tl4051740700%_
                                           (cons _%lp-hd4051640697%_
                                                 _%arg4051840691%_))))
                                      (let ((_%arg4051940703%_
                                             (reverse _%arg4051840691%_)))
                                        (if (gx#stx-pair? _%tl4050740665%_)
                                            (let ((_%e4052040706%_
                                                   (gx#syntax-e
                                                    _%tl4050740665%_)))
                                              (let ((_%tl4052240713%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4052040706%_)))
                                                    (_%hd4052140710%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4052040706%_))))
                                                (if (gx#stx-null?
                                                     _%tl4052240713%_)
                                                    (let ((_%g4049940716%_
                                                           _%hd4052140710%_)
                                                          (_%g4050040718%_
                                                           _%arg4051940703%_)
                                                          (_%g4050140719%_
                                                           _%hd4050940672%_))
                                                      (if (gx#identifier?
                                                           _%g4050140719%_)
                                                          (_%__kont4502445025%_
                                                           _%g4049940716%_
                                                           _%g4050040718%_
                                                           _%g4050140719%_)
                                                          (_%__match4509845099%_
                                                           _%e4050240648%_
                                                           _%hd4050340652%_
                                                           _%tl4050440655%_
                                                           _%e4050540658%_
                                                           _%hd4050640662%_
                                                           _%tl4050740665%_)))
                                                    (_%__match4509845099%_
                                                     _%e4050240648%_
                                                     _%hd4050340652%_
                                                     _%tl4050440655%_
                                                     _%e4050540658%_
                                                     _%hd4050640662%_
                                                     _%tl4050740665%_))))
                                            (_%__match4509845099%_
                                             _%e4050240648%_
                                             _%hd4050340652%_
                                             _%tl4050440655%_
                                             _%e4050540658%_
                                             _%hd4050640662%_
                                             _%tl4050740665%_)))))))
                        (_%loop4051440684%_ _%target4051140678%_ '())))))
              (if (gx#stx-pair? _%__stx4501945020%_)
                  (let ((_%e4048740787%_ (gx#syntax-e _%__stx4501945020%_)))
                    (let ((_%tl4048940794%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4048740787%_)))
                          (_%hd4048840791%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4048740787%_))))
                      (if (gx#stx-pair? _%tl4048940794%_)
                          (let ((_%e4049040797%_
                                 (gx#syntax-e _%tl4048940794%_)))
                            (let ((_%tl4049240804%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4049040797%_)))
                                  (_%hd4049140801%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4049040797%_))))
                              (if (gx#stx-pair? _%hd4049140801%_)
                                  (let ((_%e4049340807%_
                                         (gx#syntax-e _%hd4049140801%_)))
                                    (let ((_%tl4049540814%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4049340807%_)))
                                          (_%hd4049440811%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4049340807%_))))
                                      (if (gx#stx-pair? _%tl4049240804%_)
                                          (let ((_%e4049640817%_
                                                 (gx#syntax-e
                                                  _%tl4049240804%_)))
                                            (let ((_%tl4049840824%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4049640817%_)))
                                                  (_%hd4049740821%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4049640817%_))))
                                              (if (gx#stx-null?
                                                   _%tl4049840824%_)
                                                  (if (|gerbil/core/more-sugar[1]#syntax-local-setf-macro?|
                                                       (gx#datum->syntax
                                                        '#f
                                                        'setfid))
                                                      (let ((_%g4048540827%_
                                                             _%hd4049740821%_)
                                                            (_%g4048640829%_
                                                             _%hd4049440811%_))
                                                        (_%__kont4502245023%_
                                                         _%g4048540827%_
                                                         _%g4048640829%_))
                                                      (if (gx#stx-pair/null?
                                                           _%tl4049540814%_)
                                                          (let ((_%__splice4502645027%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl4049540814%_ '0)))
                    (let ((_%tl4051340681%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice4502645027%_ '1)))
                          (_%target4051140678%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice4502645027%_ '0))))
                      (if (gx#stx-null? _%tl4051340681%_)
                          (_%__match4508645087%_
                           _%e4048740787%_
                           _%hd4048840791%_
                           _%tl4048940794%_
                           _%e4049040797%_
                           _%hd4049140801%_
                           _%tl4049240804%_
                           _%e4049340807%_
                           _%hd4049440811%_
                           _%tl4049540814%_
                           _%__splice4502645027%_
                           _%target4051140678%_
                           _%tl4051340681%_)
                          (_%__match4509845099%_
                           _%e4048740787%_
                           _%hd4048840791%_
                           _%tl4048940794%_
                           _%e4049040797%_
                           _%hd4049140801%_
                           _%tl4049240804%_))))
                  (_%__match4509845099%_
                   _%e4048740787%_
                   _%hd4048840791%_
                   _%tl4048940794%_
                   _%e4049040797%_
                   _%hd4049140801%_
                   _%tl4049240804%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl4049540814%_)
                                                      (let ((_%__splice4502645027%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl4049540814%_
                                                              '0)))
                                                        (let ((_%tl4051340681%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice4502645027%_ '1)))
                      (_%target4051140678%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice4502645027%_ '0))))
                  (if (gx#stx-null? _%tl4051340681%_)
                      (_%__match4508645087%_
                       _%e4048740787%_
                       _%hd4048840791%_
                       _%tl4048940794%_
                       _%e4049040797%_
                       _%hd4049140801%_
                       _%tl4049240804%_
                       _%e4049340807%_
                       _%hd4049440811%_
                       _%tl4049540814%_
                       _%__splice4502645027%_
                       _%target4051140678%_
                       _%tl4051340681%_)
                      (_%__match4509845099%_
                       _%e4048740787%_
                       _%hd4048840791%_
                       _%tl4048940794%_
                       _%e4049040797%_
                       _%hd4049140801%_
                       _%tl4049240804%_))))
              (_%__match4509845099%_
               _%e4048740787%_
               _%hd4048840791%_
               _%tl4048940794%_
               _%e4049040797%_
               _%hd4049140801%_
               _%tl4049240804%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl4049540814%_)
                                              (let ((_%__splice4502645027%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl4049540814%_
                                                      '0)))
                                                (let ((_%tl4051340681%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice4502645027%_
                                                          '1)))
                                                      (_%target4051140678%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice4502645027%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4051340681%_)
                                                      (_%__match4508645087%_
                                                       _%e4048740787%_
                                                       _%hd4048840791%_
                                                       _%tl4048940794%_
                                                       _%e4049040797%_
                                                       _%hd4049140801%_
                                                       _%tl4049240804%_
                                                       _%e4049340807%_
                                                       _%hd4049440811%_
                                                       _%tl4049540814%_
                                                       _%__splice4502645027%_
                                                       _%target4051140678%_
                                                       _%tl4051340681%_)
                                                      (_%__match4509845099%_
                                                       _%e4048740787%_
                                                       _%hd4048840791%_
                                                       _%tl4048940794%_
                                                       _%e4049040797%_
                                                       _%hd4049140801%_
                                                       _%tl4049240804%_))))
                                              (_%__match4509845099%_
                                               _%e4048740787%_
                                               _%hd4048840791%_
                                               _%tl4048940794%_
                                               _%e4049040797%_
                                               _%hd4049140801%_
                                               _%tl4049240804%_)))))
                                  (_%__match4509845099%_
                                   _%e4048740787%_
                                   _%hd4048840791%_
                                   _%tl4048940794%_
                                   _%e4049040797%_
                                   _%hd4049140801%_
                                   _%tl4049240804%_))))
                          (let () (declare (not safe)) (_%g4048340546%_)))))
                  (let () (declare (not safe)) (_%g4048340546%_))))))))
    (define |gerbil/core/more-sugar[:0:]#set!|
      (lambda (_%stx40865%_)
        (|gerbil/core/more-sugar[1]#expand-set!| _%stx40865%_)))
    (define |gerbil/core/more-sugar[:0:]#values-set!|
      (lambda (_%stx40868%_)
        (let* ((_%g4087140895%_
                (lambda (_%g4087240891%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4087240891%_)))
               (_%g4087041069%_
                (lambda (_%g4087240899%_)
                  (if (gx#stx-pair? _%g4087240899%_)
                      (let ((_%e4087540902%_ (gx#syntax-e _%g4087240899%_)))
                        (let ((_%hd4087640906%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4087540902%_)))
                              (_%tl4087740909%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4087540902%_))))
                          (if (gx#stx-pair/null? _%tl4087740909%_)
                              (if (let ((__tmp45492
                                         (gx#stx-length _%tl4087740909%_)))
                                    (declare (not safe))
                                    (##fx>= __tmp45492 '1))
                                  (let ((_g45493_
                                         (gx#syntax-split-splice
                                          _%tl4087740909%_
                                          '1)))
                                    (begin
                                      (let ((_g45494_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g45493_)
                                                   (##values-length _g45493_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g45494_ 2)))
                                            (error "Context expects 2 values"
                                                   _g45494_)))
                                      (let ((_%target4087840912%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g45493_ 0)))
                                            (_%tl4088040915%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g45493_ 1))))
                                        (if (gx#stx-pair? _%tl4088040915%_)
                                            (let ((_%e4088740918%_
                                                   (gx#syntax-e
                                                    _%tl4088040915%_)))
                                              (let ((_%hd4088840922%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4088740918%_)))
                                                    (_%tl4088940925%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4088740918%_))))
                                                (if (gx#stx-null?
                                                     _%tl4088940925%_)
                                                    (letrec ((_%loop4088140928%_
                                                              (lambda (_%hd4087940932%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tgt4088540935%_)
                        (if (gx#stx-pair? _%hd4087940932%_)
                            (let ((_%e4088240937%_
                                   (gx#syntax-e _%hd4087940932%_)))
                              (let ((_%lp-hd4088340941%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4088240937%_)))
                                    (_%lp-tl4088440944%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4088240937%_))))
                                (_%loop4088140928%_
                                 _%lp-tl4088440944%_
                                 (cons _%lp-hd4088340941%_
                                       _%tgt4088540935%_))))
                            (let* ((_%tgt4088640947%_
                                    (reverse _%tgt4088540935%_))
                                   (_%g4097040987%_
                                    (lambda (_%g4097140983%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g4097140983%_)))
                                   (_%g4096941057%_
                                    (lambda (_%g4097140991%_)
                                      (if (gx#stx-pair/null? _%g4097140991%_)
                                          (let ((_g45495_
                                                 (gx#syntax-split-splice
                                                  _%g4097140991%_
                                                  '0)))
                                            (begin
                                              (let ((_g45496_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g45495_)
                                                           (##values-length
                                                            _g45495_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g45496_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g45496_)))
                                              (let ((_%target4097340994%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g45495_
                                                        0)))
                                                    (_%tl4097540997%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g45495_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%tl4097540997%_)
                                                    (letrec ((_%loop4097641000%_
                                                              (lambda (_%hd4097441004%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$e4098041007%_)
                        (if (gx#stx-pair? _%hd4097441004%_)
                            (let ((_%e4097741009%_
                                   (gx#syntax-e _%hd4097441004%_)))
                              (let ((_%lp-hd4097841013%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4097741009%_)))
                                    (_%lp-tl4097941016%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4097741009%_))))
                                (_%loop4097641000%_
                                 _%lp-tl4097941016%_
                                 (cons _%lp-hd4097841013%_ _%$e4098041007%_))))
                            (let ((_%$e4098141019%_
                                   (reverse _%$e4098041007%_)))
                              (cons (gx#datum->syntax '#f 'let-values)
                                    (cons (cons (cons (foldr (lambda (_%g4103741043%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g4103841046%_)
                       (cons _%g4103741043%_ _%g4103841046%_))
                     '()
                     _%$e4098141019%_)
              (cons _%hd4088840922%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (begin
                                            (gx#syntax-check-splice-targets
                                             _%$e4098141019%_
                                             _%tgt4088640947%_)
                                            (foldr (lambda (_%g4103941049%_
                                                            _%g4104041052%_
                                                            _%g4104141054%_)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'set!)
                         (cons _%g4104041052%_ (cons _%g4103941049%_ '())))
                   _%g4104141054%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()
                                                   _%$e4098141019%_
                                                   _%tgt4088640947%_)))))))))
              (_%loop4097641000%_ _%target4097340994%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4097040987%_
                                                     _%g4097140991%_)))))
                                          (_%g4097040987%_ _%g4097140991%_)))))
                              (_%g4096941057%_
                               (gx#gentemps
                                (foldr (lambda (_%g4106041063%_
                                                _%g4106141066%_)
                                         (cons _%g4106041063%_
                                               _%g4106141066%_))
                                       '()
                                       _%tgt4088640947%_))))))))
              (_%loop4088140928%_ _%target4087840912%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4087140895%_
                                                     _%g4087240899%_))))
                                            (_%g4087140895%_
                                             _%g4087240899%_)))))
                                  (_%g4087140895%_ _%g4087240899%_))
                              (_%g4087140895%_ _%g4087240899%_))))
                      (_%g4087140895%_ _%g4087240899%_)))))
          (_%g4087041069%_ _%stx40868%_))))
    (define |gerbil/core/more-sugar[:0:]#parameterize|
      (lambda (_%$stx41075%_)
        (let* ((_%__stx4512145122%_ _%$stx41075%_)
               (_%g4108141169%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx4512145122%_))))
          (let ((_%__kont4512445125%_
                 (lambda (_%g4108341509%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g4152541528%_ _%g4152641531%_)
                                        (cons _%g4152541528%_ _%g4152641531%_))
                                      '()
                                      _%g4108341509%_)))))
                (_%__kont4512845129%_
                 (lambda (_%g4109941419%_ _%g4110041421%_ _%g4110141422%_)
                   (cons (gx#datum->syntax '#f 'call-with-parameters)
                         (cons (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '()
                                           (foldr (lambda (_%g4144541448%_
                                                           _%g4144641451%_)
                                                    (cons _%g4144541448%_
                                                          _%g4144641451%_))
                                                  '()
                                                  _%g4109941419%_)))
                               (cons _%g4110141422%_
                                     (cons _%g4110041421%_ '()))))))
                (_%__kont4513245133%_
                 (lambda (_%g4112641282%_
                          _%g4112741284%_
                          _%g4112841285%_
                          _%g4112941286%_
                          _%g4113041287%_)
                   (cons (gx#datum->syntax '#f 'call-with-parameters)
                         (cons (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '()
                                           (cons (cons _%g4113041287%_
                                                       (cons (foldr (lambda (_%g4131741322%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g4131841325%_)
                              (cons _%g4131741322%_ _%g4131841325%_))
                            '()
                            _%g4112741284%_)
                     (foldr (lambda (_%g4131941328%_ _%g4132041331%_)
                              (cons _%g4131941328%_ _%g4132041331%_))
                            '()
                            _%g4112641282%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%g4112941286%_
                                     (cons _%g4112841285%_ '())))))))
            (let* ((_%__match4524245243%_
                    (lambda (_%e4113141176%_
                             _%hd4113241180%_
                             _%tl4113341183%_
                             _%e4113441186%_
                             _%hd4113541190%_
                             _%tl4113641193%_
                             _%e4113741196%_
                             _%hd4113841200%_
                             _%tl4113941203%_
                             _%e4114041206%_
                             _%hd4114141210%_
                             _%tl4114241213%_
                             _%e4114341216%_
                             _%hd4114441220%_
                             _%tl4114541223%_
                             _%__splice4513445135%_
                             _%target4114641226%_
                             _%tl4114841229%_)
                      (letrec ((_%loop4114941232%_
                                (lambda (_%hd4114741236%_ _%rest4115341239%_)
                                  (if (gx#stx-pair? _%hd4114741236%_)
                                      (let ((_%e4115041241%_
                                             (gx#syntax-e _%hd4114741236%_)))
                                        (let ((_%lp-tl4115241248%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4115041241%_)))
                                              (_%lp-hd4115141245%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4115041241%_))))
                                          (_%loop4114941232%_
                                           _%lp-tl4115241248%_
                                           (cons _%lp-hd4115141245%_
                                                 _%rest4115341239%_))))
                                      (let ((_%rest4115441251%_
                                             (reverse _%rest4115341239%_)))
                                        (if (gx#stx-pair/null?
                                             _%tl4113641193%_)
                                            (let ((_%__splice4513645137%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4113641193%_
                                                    '0)))
                                              (let ((_%tl4115741257%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4513645137%_
                                                        '1)))
                                                    (_%target4115541254%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4513645137%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4115741257%_)
                                                    (letrec ((_%loop4115841260%_
                                                              (lambda (_%hd4115641264%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body4116241267%_)
                        (if (gx#stx-pair? _%hd4115641264%_)
                            (let ((_%e4115941269%_
                                   (gx#syntax-e _%hd4115641264%_)))
                              (let ((_%lp-tl4116141276%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4115941269%_)))
                                    (_%lp-hd4116041273%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4115941269%_))))
                                (_%loop4115841260%_
                                 _%lp-tl4116141276%_
                                 (cons _%lp-hd4116041273%_
                                       _%body4116241267%_))))
                            (let ((_%body4116341279%_
                                   (reverse _%body4116241267%_)))
                              (_%__kont4513245133%_
                               _%body4116341279%_
                               _%rest4115441251%_
                               _%hd4114441220%_
                               _%hd4114141210%_
                               _%hd4113241180%_))))))
              (_%loop4115841260%_ _%target4115541254%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4108141169%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4108141169%_))))))))
                        (_%loop4114941232%_ _%target4114641226%_ '()))))
                   (_%__match4520245203%_
                    (lambda (_%e4110241341%_
                             _%hd4110341345%_
                             _%tl4110441348%_
                             _%e4110541351%_
                             _%hd4110641355%_
                             _%tl4110741358%_
                             _%e4110841361%_
                             _%hd4110941365%_
                             _%tl4111041368%_
                             _%e4111141371%_
                             _%hd4111241375%_
                             _%tl4111341378%_
                             _%e4111441381%_
                             _%hd4111541385%_
                             _%tl4111641388%_
                             _%__splice4513045131%_
                             _%target4111741391%_
                             _%tl4111941394%_)
                      (letrec ((_%loop4112041397%_
                                (lambda (_%hd4111841401%_ _%body4112441404%_)
                                  (if (gx#stx-pair? _%hd4111841401%_)
                                      (let ((_%e4112141406%_
                                             (gx#syntax-e _%hd4111841401%_)))
                                        (let ((_%lp-tl4112341413%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4112141406%_)))
                                              (_%lp-hd4112241410%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4112141406%_))))
                                          (_%loop4112041397%_
                                           _%lp-tl4112341413%_
                                           (cons _%lp-hd4112241410%_
                                                 _%body4112441404%_))))
                                      (let ((_%body4112541416%_
                                             (reverse _%body4112441404%_)))
                                        (_%__kont4512845129%_
                                         _%body4112541416%_
                                         _%hd4111541385%_
                                         _%hd4111241375%_))))))
                        (_%loop4112041397%_ _%target4111741391%_ '()))))
                   (_%__match4516045161%_
                    (lambda (_%e4108441461%_
                             _%hd4108541465%_
                             _%tl4108641468%_
                             _%e4108741471%_
                             _%hd4108841475%_
                             _%tl4108941478%_
                             _%__splice4512645127%_
                             _%target4109041481%_
                             _%tl4109241484%_)
                      (letrec ((_%loop4109341487%_
                                (lambda (_%hd4109141491%_ _%body4109741494%_)
                                  (if (gx#stx-pair? _%hd4109141491%_)
                                      (let ((_%e4109441496%_
                                             (gx#syntax-e _%hd4109141491%_)))
                                        (let ((_%lp-tl4109641503%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4109441496%_)))
                                              (_%lp-hd4109541500%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4109441496%_))))
                                          (_%loop4109341487%_
                                           _%lp-tl4109641503%_
                                           (cons _%lp-hd4109541500%_
                                                 _%body4109741494%_))))
                                      (let ((_%body4109841506%_
                                             (reverse _%body4109741494%_)))
                                        (_%__kont4512445125%_
                                         _%body4109841506%_))))))
                        (_%loop4109341487%_ _%target4109041481%_ '())))))
              (if (gx#stx-pair? _%__stx4512145122%_)
                  (let ((_%e4108441461%_ (gx#syntax-e _%__stx4512145122%_)))
                    (let ((_%tl4108641468%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4108441461%_)))
                          (_%hd4108541465%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4108441461%_))))
                      (if (gx#stx-pair? _%tl4108641468%_)
                          (let ((_%e4108741471%_
                                 (gx#syntax-e _%tl4108641468%_)))
                            (let ((_%tl4108941478%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4108741471%_)))
                                  (_%hd4108841475%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4108741471%_))))
                              (if (gx#stx-null? _%hd4108841475%_)
                                  (if (gx#stx-pair/null? _%tl4108941478%_)
                                      (let ((_%__splice4512645127%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4108941478%_
                                              '0)))
                                        (let ((_%tl4109241484%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4512645127%_
                                                  '1)))
                                              (_%target4109041481%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4512645127%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4109241484%_)
                                              (_%__match4516045161%_
                                               _%e4108441461%_
                                               _%hd4108541465%_
                                               _%tl4108641468%_
                                               _%e4108741471%_
                                               _%hd4108841475%_
                                               _%tl4108941478%_
                                               _%__splice4512645127%_
                                               _%target4109041481%_
                                               _%tl4109241484%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4108141169%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4108141169%_)))
                                  (if (gx#stx-pair? _%hd4108841475%_)
                                      (let ((_%e4110841361%_
                                             (gx#syntax-e _%hd4108841475%_)))
                                        (let ((_%tl4111041368%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4110841361%_)))
                                              (_%hd4110941365%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4110841361%_))))
                                          (if (gx#stx-pair? _%hd4110941365%_)
                                              (let ((_%e4111141371%_
                                                     (gx#syntax-e
                                                      _%hd4110941365%_)))
                                                (let ((_%tl4111341378%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4111141371%_)))
                                                      (_%hd4111241375%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4111141371%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl4111341378%_)
                                                      (let ((_%e4111441381%_
                                                             (gx#syntax-e
                                                              _%tl4111341378%_)))
                                                        (let ((_%tl4111641388%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4111441381%_)))
                      (_%hd4111541385%_
                       (let () (declare (not safe)) (##car _%e4111441381%_))))
                  (if (gx#stx-null? _%tl4111641388%_)
                      (if (gx#stx-null? _%tl4111041368%_)
                          (if (gx#stx-pair/null? _%tl4108941478%_)
                              (let ((_%__splice4513045131%_
                                     (gx#syntax-split-splice->vector
                                      _%tl4108941478%_
                                      '0)))
                                (let ((_%tl4111941394%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4513045131%_
                                          '1)))
                                      (_%target4111741391%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4513045131%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4111941394%_)
                                      (_%__match4520245203%_
                                       _%e4108441461%_
                                       _%hd4108541465%_
                                       _%tl4108641468%_
                                       _%e4108741471%_
                                       _%hd4108841475%_
                                       _%tl4108941478%_
                                       _%e4110841361%_
                                       _%hd4110941365%_
                                       _%tl4111041368%_
                                       _%e4111141371%_
                                       _%hd4111241375%_
                                       _%tl4111341378%_
                                       _%e4111441381%_
                                       _%hd4111541385%_
                                       _%tl4111641388%_
                                       _%__splice4513045131%_
                                       _%target4111741391%_
                                       _%tl4111941394%_)
                                      (if (gx#stx-pair/null? _%tl4111041368%_)
                                          (let ((_%__splice4513445135%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl4111041368%_
                                                  '0)))
                                            (let ((_%tl4114841229%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4513445135%_
                                                      '1)))
                                                  (_%target4114641226%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4513445135%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4114841229%_)
                                                  (_%__match4524245243%_
                                                   _%e4108441461%_
                                                   _%hd4108541465%_
                                                   _%tl4108641468%_
                                                   _%e4108741471%_
                                                   _%hd4108841475%_
                                                   _%tl4108941478%_
                                                   _%e4110841361%_
                                                   _%hd4110941365%_
                                                   _%tl4111041368%_
                                                   _%e4111141371%_
                                                   _%hd4111241375%_
                                                   _%tl4111341378%_
                                                   _%e4111441381%_
                                                   _%hd4111541385%_
                                                   _%tl4111641388%_
                                                   _%__splice4513445135%_
                                                   _%target4114641226%_
                                                   _%tl4114841229%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4108141169%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4108141169%_))))))
                              (if (gx#stx-pair/null? _%tl4111041368%_)
                                  (let ((_%__splice4513445135%_
                                         (gx#syntax-split-splice->vector
                                          _%tl4111041368%_
                                          '0)))
                                    (let ((_%tl4114841229%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice4513445135%_
                                              '1)))
                                          (_%target4114641226%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice4513445135%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4114841229%_)
                                          (_%__match4524245243%_
                                           _%e4108441461%_
                                           _%hd4108541465%_
                                           _%tl4108641468%_
                                           _%e4108741471%_
                                           _%hd4108841475%_
                                           _%tl4108941478%_
                                           _%e4110841361%_
                                           _%hd4110941365%_
                                           _%tl4111041368%_
                                           _%e4111141371%_
                                           _%hd4111241375%_
                                           _%tl4111341378%_
                                           _%e4111441381%_
                                           _%hd4111541385%_
                                           _%tl4111641388%_
                                           _%__splice4513445135%_
                                           _%target4114641226%_
                                           _%tl4114841229%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4108141169%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4108141169%_))))
                          (if (gx#stx-pair/null? _%tl4111041368%_)
                              (let ((_%__splice4513445135%_
                                     (gx#syntax-split-splice->vector
                                      _%tl4111041368%_
                                      '0)))
                                (let ((_%tl4114841229%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4513445135%_
                                          '1)))
                                      (_%target4114641226%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4513445135%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4114841229%_)
                                      (_%__match4524245243%_
                                       _%e4108441461%_
                                       _%hd4108541465%_
                                       _%tl4108641468%_
                                       _%e4108741471%_
                                       _%hd4108841475%_
                                       _%tl4108941478%_
                                       _%e4110841361%_
                                       _%hd4110941365%_
                                       _%tl4111041368%_
                                       _%e4111141371%_
                                       _%hd4111241375%_
                                       _%tl4111341378%_
                                       _%e4111441381%_
                                       _%hd4111541385%_
                                       _%tl4111641388%_
                                       _%__splice4513445135%_
                                       _%target4114641226%_
                                       _%tl4114841229%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4108141169%_)))))
                              (let () (declare (not safe)) (_%g4108141169%_))))
                      (let () (declare (not safe)) (_%g4108141169%_)))))
              (let () (declare (not safe)) (_%g4108141169%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4108141169%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4108141169%_))))))
                          (let () (declare (not safe)) (_%g4108141169%_)))))
                  (let () (declare (not safe)) (_%g4108141169%_))))))))
    (define |gerbil/core/more-sugar[:0:]#let/cc|
      (lambda (_%$stx41542%_)
        (let* ((_%g4154641570%_
                (lambda (_%g4154741566%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4154741566%_)))
               (_%g4154541653%_
                (lambda (_%g4154741574%_)
                  (if (gx#stx-pair? _%g4154741574%_)
                      (let ((_%e4155041577%_ (gx#syntax-e _%g4154741574%_)))
                        (let ((_%hd4155141581%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4155041577%_)))
                              (_%tl4155241584%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4155041577%_))))
                          (if (gx#stx-pair? _%tl4155241584%_)
                              (let ((_%e4155341587%_
                                     (gx#syntax-e _%tl4155241584%_)))
                                (let ((_%hd4155441591%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4155341587%_)))
                                      (_%tl4155541594%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4155341587%_))))
                                  (if (gx#stx-pair/null? _%tl4155541594%_)
                                      (let ((_g45497_
                                             (gx#syntax-split-splice
                                              _%tl4155541594%_
                                              '0)))
                                        (begin
                                          (let ((_g45498_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45497_)
                                                       (##values-length
                                                        _g45497_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45498_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45498_)))
                                          (let ((_%target4155641597%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45497_ 0)))
                                                (_%tl4155841600%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45497_ 1))))
                                            (if (gx#stx-null? _%tl4155841600%_)
                                                (letrec ((_%loop4155941603%_
                                                          (lambda (_%hd4155741607%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4156341610%_)
                    (if (gx#stx-pair? _%hd4155741607%_)
                        (let ((_%e4156041612%_ (gx#syntax-e _%hd4155741607%_)))
                          (let ((_%lp-hd4156141616%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4156041612%_)))
                                (_%lp-tl4156241619%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4156041612%_))))
                            (_%loop4155941603%_
                             _%lp-tl4156241619%_
                             (cons _%lp-hd4156141616%_ _%body4156341610%_))))
                        (let ((_%body4156441622%_
                               (reverse _%body4156341610%_)))
                          (if (gx#identifier? _%hd4155441591%_)
                              (cons (gx#datum->syntax '#f 'call/cc)
                                    (cons (cons (gx#datum->syntax '#f 'lambda)
                                                (cons (cons _%hd4155441591%_
                                                            '())
                                                      (foldr (lambda (_%g4164441647%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g4164541650%_)
                       (cons _%g4164441647%_ _%g4164541650%_))
                     '()
                     _%body4156441622%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              (_%g4154641570%_ _%g4154741574%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4155941603%_
                                                   _%target4155641597%_
                                                   '()))
                                                (_%g4154641570%_
                                                 _%g4154741574%_)))))
                                      (_%g4154641570%_ _%g4154741574%_))))
                              (_%g4154641570%_ _%g4154741574%_))))
                      (_%g4154641570%_ _%g4154741574%_)))))
          (_%g4154541653%_ _%$stx41542%_))))
    (define |gerbil/core/more-sugar[:0:]#unwind-protect|
      (lambda (_%$stx41658%_)
        (let* ((_%g4166241690%_
                (lambda (_%g4166341686%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4166341686%_)))
               (_%g4166141787%_
                (lambda (_%g4166341694%_)
                  (if (gx#stx-pair? _%g4166341694%_)
                      (let ((_%e4166741697%_ (gx#syntax-e _%g4166341694%_)))
                        (let ((_%hd4166841701%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4166741697%_)))
                              (_%tl4166941704%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4166741697%_))))
                          (if (gx#stx-pair? _%tl4166941704%_)
                              (let ((_%e4167041707%_
                                     (gx#syntax-e _%tl4166941704%_)))
                                (let ((_%hd4167141711%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4167041707%_)))
                                      (_%tl4167241714%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4167041707%_))))
                                  (if (gx#stx-pair? _%tl4167241714%_)
                                      (let ((_%e4167341717%_
                                             (gx#syntax-e _%tl4167241714%_)))
                                        (let ((_%hd4167441721%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4167341717%_)))
                                              (_%tl4167541724%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4167341717%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4167541724%_)
                                              (let ((_g45499_
                                                     (gx#syntax-split-splice
                                                      _%tl4167541724%_
                                                      '0)))
                                                (begin
                                                  (let ((_g45500_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g45499_)
                                                               (##values-length
                                                                _g45499_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g45500_ 2)))
                (error "Context expects 2 values" _g45500_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target4167641727%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45499_
                                                            0)))
                                                        (_%tl4167841730%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45499_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl4167841730%_)
                                                        (letrec ((_%loop4167941733%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd4167741737%_ _%rest4168341740%_)
                            (if (gx#stx-pair? _%hd4167741737%_)
                                (let ((_%e4168041742%_
                                       (gx#syntax-e _%hd4167741737%_)))
                                  (let ((_%lp-hd4168141746%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4168041742%_)))
                                        (_%lp-tl4168241749%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4168041742%_))))
                                    (_%loop4167941733%_
                                     _%lp-tl4168241749%_
                                     (cons _%lp-hd4168141746%_
                                           _%rest4168341740%_))))
                                (let ((_%rest4168441752%_
                                       (reverse _%rest4168341740%_)))
                                  (cons (gx#datum->syntax
                                         '#f
                                         'with-unwind-protect)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons _%hd4167141711%_
                                                                '())))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'lambda)
                                                          (cons '()
                                                                (cons _%hd4167441721%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (foldr (lambda (_%g4177841781%_ _%g4177941784%_)
                                       (cons _%g4177841781%_ _%g4177941784%_))
                                     '()
                                     _%rest4168441752%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))))
                  (_%loop4167941733%_ _%target4167641727%_ '()))
                (_%g4166241690%_ _%g4166341694%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4166241690%_
                                               _%g4166341694%_))))
                                      (_%g4166241690%_ _%g4166341694%_))))
                              (_%g4166241690%_ _%g4166341694%_))))
                      (_%g4166241690%_ _%g4166341694%_)))))
          (_%g4166141787%_ _%$stx41658%_))))
    (define |gerbil/core/more-sugar[:0:]#do|
      (lambda (_%$stx41792%_)
        (let* ((_%g4179641867%_
                (lambda (_%g4179741863%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4179741863%_)))
               (_%g4179542144%_
                (lambda (_%g4179741871%_)
                  (if (gx#stx-pair? _%g4179741871%_)
                      (let ((_%e4180441874%_ (gx#syntax-e _%g4179741871%_)))
                        (let ((_%hd4180541878%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4180441874%_)))
                              (_%tl4180641881%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4180441874%_))))
                          (if (gx#stx-pair? _%tl4180641881%_)
                              (let ((_%e4180741884%_
                                     (gx#syntax-e _%tl4180641881%_)))
                                (let ((_%hd4180841888%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4180741884%_)))
                                      (_%tl4180941891%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4180741884%_))))
                                  (if (gx#stx-pair/null? _%hd4180841888%_)
                                      (let ((_g45501_
                                             (gx#syntax-split-splice
                                              _%hd4180841888%_
                                              '0)))
                                        (begin
                                          (let ((_g45502_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45501_)
                                                       (##values-length
                                                        _g45501_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45502_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45502_)))
                                          (let ((_%target4181041894%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45501_ 0)))
                                                (_%tl4181241897%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45501_ 1))))
                                            (if (gx#stx-null? _%tl4181241897%_)
                                                (letrec ((_%loop4181341900%_
                                                          (lambda (_%hd4181141904%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%step4181741907%_
                           _%init4181841908%_
                           _%var4181941909%_)
                    (if (gx#stx-pair? _%hd4181141904%_)
                        (let ((_%e4181441911%_ (gx#syntax-e _%hd4181141904%_)))
                          (let ((_%lp-hd4181541915%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4181441911%_)))
                                (_%lp-tl4181641918%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4181441911%_))))
                            (if (gx#stx-pair? _%lp-hd4181541915%_)
                                (let ((_%e4182341921%_
                                       (gx#syntax-e _%lp-hd4181541915%_)))
                                  (let ((_%hd4182441925%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4182341921%_)))
                                        (_%tl4182541928%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4182341921%_))))
                                    (if (gx#stx-pair? _%tl4182541928%_)
                                        (let ((_%e4182641931%_
                                               (gx#syntax-e _%tl4182541928%_)))
                                          (let ((_%hd4182741935%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4182641931%_)))
                                                (_%tl4182841938%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4182641931%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl4182841938%_)
                                                (let ((_g45503_
                                                       (gx#syntax-split-splice
                                                        _%tl4182841938%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g45504_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g45503_)
                         (##values-length _g45503_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g45504_ 2)))
                  (error "Context expects 2 values" _g45504_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target4182941941%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g45503_
                                                              0)))
                                                          (_%tl4183141944%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g45503_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl4183141944%_)
                                                          (letrec ((_%loop4183241947%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd4183041951%_ _%step4183641954%_)
                              (if (gx#stx-pair? _%hd4183041951%_)
                                  (let ((_%e4183341956%_
                                         (gx#syntax-e _%hd4183041951%_)))
                                    (let ((_%lp-hd4183441960%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4183341956%_)))
                                          (_%lp-tl4183541963%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4183341956%_))))
                                      (_%loop4183241947%_
                                       _%lp-tl4183541963%_
                                       (cons _%lp-hd4183441960%_
                                             _%step4183641954%_))))
                                  (let ((_%step4183741966%_
                                         (reverse _%step4183641954%_)))
                                    (_%loop4181341900%_
                                     _%lp-tl4181641918%_
                                     (cons _%step4183741966%_
                                           _%step4181741907%_)
                                     (cons _%hd4182741935%_ _%init4181841908%_)
                                     (cons _%hd4182441925%_
                                           _%var4181941909%_)))))))
                    (_%loop4183241947%_ _%target4182941941%_ '()))
                  (_%g4179641867%_ _%g4179741871%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g4179641867%_
                                                 _%g4179741871%_))))
                                        (_%g4179641867%_ _%g4179741871%_))))
                                (_%g4179641867%_ _%g4179741871%_))))
                        (let ((_%step4182041969%_ (reverse _%step4181741907%_))
                              (_%init4182141971%_ (reverse _%init4181841908%_))
                              (_%var4182241972%_ (reverse _%var4181941909%_)))
                          (if (gx#stx-pair? _%tl4180941891%_)
                              (let ((_%e4183841974%_
                                     (gx#syntax-e _%tl4180941891%_)))
                                (let ((_%hd4183941978%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4183841974%_)))
                                      (_%tl4184041981%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4183841974%_))))
                                  (if (gx#stx-pair? _%hd4183941978%_)
                                      (let ((_%e4184141984%_
                                             (gx#syntax-e _%hd4183941978%_)))
                                        (let ((_%hd4184241988%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4184141984%_)))
                                              (_%tl4184341991%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4184141984%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4184341991%_)
                                              (let ((_g45505_
                                                     (gx#syntax-split-splice
                                                      _%tl4184341991%_
                                                      '0)))
                                                (begin
                                                  (let ((_g45506_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g45505_)
                                                               (##values-length
                                                                _g45505_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g45506_ 2)))
                (error "Context expects 2 values" _g45506_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target4184441994%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45505_
                                                            0)))
                                                        (_%tl4184641997%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45505_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl4184641997%_)
                                                        (letrec ((_%loop4184742000%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd4184542004%_ _%fini4185142007%_)
                            (if (gx#stx-pair? _%hd4184542004%_)
                                (let ((_%e4184842009%_
                                       (gx#syntax-e _%hd4184542004%_)))
                                  (let ((_%lp-hd4184942013%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4184842009%_)))
                                        (_%lp-tl4185042016%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4184842009%_))))
                                    (_%loop4184742000%_
                                     _%lp-tl4185042016%_
                                     (cons _%lp-hd4184942013%_
                                           _%fini4185142007%_))))
                                (let ((_%fini4185242019%_
                                       (reverse _%fini4185142007%_)))
                                  (if (gx#stx-pair/null? _%tl4184041981%_)
                                      (let ((_g45507_
                                             (gx#syntax-split-splice
                                              _%tl4184041981%_
                                              '0)))
                                        (begin
                                          (let ((_g45508_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45507_)
                                                       (##values-length
                                                        _g45507_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45508_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45508_)))
                                          (let ((_%target4185342022%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45507_ 0)))
                                                (_%tl4185542025%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45507_ 1))))
                                            (if (gx#stx-null? _%tl4185542025%_)
                                                (letrec ((_%loop4185642028%_
                                                          (lambda (_%hd4185442032%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4186042035%_)
                    (if (gx#stx-pair? _%hd4185442032%_)
                        (let ((_%e4185742037%_ (gx#syntax-e _%hd4185442032%_)))
                          (let ((_%lp-hd4185842041%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4185742037%_)))
                                (_%lp-tl4185942044%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4185742037%_))))
                            (_%loop4185642028%_
                             _%lp-tl4185942044%_
                             (cons _%lp-hd4185842041%_ _%body4186042035%_))))
                        (let ((_%body4186142047%_
                               (reverse _%body4186042035%_)))
                          (if (gx#stx-andmap
                               gx#identifier?
                               (foldr (lambda (_%g4208942092%_ _%g4209042095%_)
                                        (cons _%g4208942092%_ _%g4209042095%_))
                                      '()
                                      _%var4182241972%_))
                              (cons (gx#datum->syntax '#f 'let)
                                    (cons (gx#datum->syntax '#f '$loop)
                                          (cons (begin
                                                  (gx#syntax-check-splice-targets
                                                   _%init4182141971%_
                                                   _%var4182241972%_)
                                                  (foldr (lambda (_%g4209742110%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g4209842113%_
                          _%g4209942115%_)
                   (cons (cons _%g4209842113%_ (cons _%g4209742110%_ '()))
                         _%g4209942115%_))
                 '()
                 _%init4182141971%_
                 _%var4182241972%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'if)
                                                            (cons _%hd4184241988%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'begin)
                                      (cons '#!void
                                            (foldr (lambda (_%g4210042118%_
                                                            _%g4210142121%_)
                                                     (cons _%g4210042118%_
                                                           _%g4210142121%_))
                                                   '()
                                                   _%fini4185242019%_)))
                                (cons (cons (gx#datum->syntax '#f 'let)
                                            (cons '()
                                                  (foldr (lambda (_%g4210242124%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g4210342127%_)
                   (cons _%g4210242124%_ _%g4210342127%_))
                 (cons (cons (gx#datum->syntax '#f '$loop)
                             (begin
                               (gx#syntax-check-splice-targets
                                _%step4182041969%_
                                _%var4182241972%_)
                               (foldr (lambda (_%g4210442130%_
                                               _%g4210542133%_
                                               _%g4210642135%_)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'begin)
                                                    (cons _%g4210542133%_
                                                          (foldr (lambda (_%g4210742138%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%g4210842141%_)
                           (cons _%g4210742138%_ _%g4210842141%_))
                         '()
                         _%g4210442130%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%g4210642135%_))
                                      '()
                                      _%step4182041969%_
                                      _%var4182241972%_)))
                       '())
                 _%body4186142047%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '()))))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%g4179641867%_ _%g4179741871%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4185642028%_
                                                   _%target4185342022%_
                                                   '()))
                                                (_%g4179641867%_
                                                 _%g4179741871%_)))))
                                      (_%g4179641867%_ _%g4179741871%_)))))))
                  (_%loop4184742000%_ _%target4184441994%_ '()))
                (_%g4179641867%_ _%g4179741871%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4179641867%_
                                               _%g4179741871%_))))
                                      (_%g4179641867%_ _%g4179741871%_))))
                              (_%g4179641867%_ _%g4179741871%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4181341900%_
                                                   _%target4181041894%_
                                                   '()
                                                   '()
                                                   '()))
                                                (_%g4179641867%_
                                                 _%g4179741871%_)))))
                                      (_%g4179641867%_ _%g4179741871%_))))
                              (_%g4179641867%_ _%g4179741871%_))))
                      (_%g4179641867%_ _%g4179741871%_)))))
          (_%g4179542144%_ _%$stx41792%_))))
    (define |gerbil/core/more-sugar[:0:]#do-while|
      (lambda (_%$stx42152%_)
        (let* ((_%g4215642227%_
                (lambda (_%g4215742223%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4215742223%_)))
               (_%g4215542504%_
                (lambda (_%g4215742231%_)
                  (if (gx#stx-pair? _%g4215742231%_)
                      (let ((_%e4216442234%_ (gx#syntax-e _%g4215742231%_)))
                        (let ((_%hd4216542238%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4216442234%_)))
                              (_%tl4216642241%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4216442234%_))))
                          (if (gx#stx-pair? _%tl4216642241%_)
                              (let ((_%e4216742244%_
                                     (gx#syntax-e _%tl4216642241%_)))
                                (let ((_%hd4216842248%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4216742244%_)))
                                      (_%tl4216942251%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4216742244%_))))
                                  (if (gx#stx-pair/null? _%hd4216842248%_)
                                      (let ((_g45509_
                                             (gx#syntax-split-splice
                                              _%hd4216842248%_
                                              '0)))
                                        (begin
                                          (let ((_g45510_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45509_)
                                                       (##values-length
                                                        _g45509_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45510_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45510_)))
                                          (let ((_%target4217042254%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45509_ 0)))
                                                (_%tl4217242257%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45509_ 1))))
                                            (if (gx#stx-null? _%tl4217242257%_)
                                                (letrec ((_%loop4217342260%_
                                                          (lambda (_%hd4217142264%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%step4217742267%_
                           _%init4217842268%_
                           _%var4217942269%_)
                    (if (gx#stx-pair? _%hd4217142264%_)
                        (let ((_%e4217442271%_ (gx#syntax-e _%hd4217142264%_)))
                          (let ((_%lp-hd4217542275%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4217442271%_)))
                                (_%lp-tl4217642278%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4217442271%_))))
                            (if (gx#stx-pair? _%lp-hd4217542275%_)
                                (let ((_%e4218342281%_
                                       (gx#syntax-e _%lp-hd4217542275%_)))
                                  (let ((_%hd4218442285%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4218342281%_)))
                                        (_%tl4218542288%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4218342281%_))))
                                    (if (gx#stx-pair? _%tl4218542288%_)
                                        (let ((_%e4218642291%_
                                               (gx#syntax-e _%tl4218542288%_)))
                                          (let ((_%hd4218742295%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4218642291%_)))
                                                (_%tl4218842298%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4218642291%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl4218842298%_)
                                                (let ((_g45511_
                                                       (gx#syntax-split-splice
                                                        _%tl4218842298%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g45512_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g45511_)
                         (##values-length _g45511_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g45512_ 2)))
                  (error "Context expects 2 values" _g45512_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target4218942301%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g45511_
                                                              0)))
                                                          (_%tl4219142304%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g45511_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl4219142304%_)
                                                          (letrec ((_%loop4219242307%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd4219042311%_ _%step4219642314%_)
                              (if (gx#stx-pair? _%hd4219042311%_)
                                  (let ((_%e4219342316%_
                                         (gx#syntax-e _%hd4219042311%_)))
                                    (let ((_%lp-hd4219442320%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4219342316%_)))
                                          (_%lp-tl4219542323%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4219342316%_))))
                                      (_%loop4219242307%_
                                       _%lp-tl4219542323%_
                                       (cons _%lp-hd4219442320%_
                                             _%step4219642314%_))))
                                  (let ((_%step4219742326%_
                                         (reverse _%step4219642314%_)))
                                    (_%loop4217342260%_
                                     _%lp-tl4217642278%_
                                     (cons _%step4219742326%_
                                           _%step4217742267%_)
                                     (cons _%hd4218742295%_ _%init4217842268%_)
                                     (cons _%hd4218442285%_
                                           _%var4217942269%_)))))))
                    (_%loop4219242307%_ _%target4218942301%_ '()))
                  (_%g4215642227%_ _%g4215742231%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g4215642227%_
                                                 _%g4215742231%_))))
                                        (_%g4215642227%_ _%g4215742231%_))))
                                (_%g4215642227%_ _%g4215742231%_))))
                        (let ((_%step4218042329%_ (reverse _%step4217742267%_))
                              (_%init4218142331%_ (reverse _%init4217842268%_))
                              (_%var4218242332%_ (reverse _%var4217942269%_)))
                          (if (gx#stx-pair? _%tl4216942251%_)
                              (let ((_%e4219842334%_
                                     (gx#syntax-e _%tl4216942251%_)))
                                (let ((_%hd4219942338%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4219842334%_)))
                                      (_%tl4220042341%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4219842334%_))))
                                  (if (gx#stx-pair? _%hd4219942338%_)
                                      (let ((_%e4220142344%_
                                             (gx#syntax-e _%hd4219942338%_)))
                                        (let ((_%hd4220242348%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4220142344%_)))
                                              (_%tl4220342351%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4220142344%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4220342351%_)
                                              (let ((_g45513_
                                                     (gx#syntax-split-splice
                                                      _%tl4220342351%_
                                                      '0)))
                                                (begin
                                                  (let ((_g45514_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g45513_)
                                                               (##values-length
                                                                _g45513_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g45514_ 2)))
                (error "Context expects 2 values" _g45514_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target4220442354%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45513_
                                                            0)))
                                                        (_%tl4220642357%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45513_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl4220642357%_)
                                                        (letrec ((_%loop4220742360%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd4220542364%_ _%fini4221142367%_)
                            (if (gx#stx-pair? _%hd4220542364%_)
                                (let ((_%e4220842369%_
                                       (gx#syntax-e _%hd4220542364%_)))
                                  (let ((_%lp-hd4220942373%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4220842369%_)))
                                        (_%lp-tl4221042376%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4220842369%_))))
                                    (_%loop4220742360%_
                                     _%lp-tl4221042376%_
                                     (cons _%lp-hd4220942373%_
                                           _%fini4221142367%_))))
                                (let ((_%fini4221242379%_
                                       (reverse _%fini4221142367%_)))
                                  (if (gx#stx-pair/null? _%tl4220042341%_)
                                      (let ((_g45515_
                                             (gx#syntax-split-splice
                                              _%tl4220042341%_
                                              '0)))
                                        (begin
                                          (let ((_g45516_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45515_)
                                                       (##values-length
                                                        _g45515_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45516_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45516_)))
                                          (let ((_%target4221342382%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45515_ 0)))
                                                (_%tl4221542385%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45515_ 1))))
                                            (if (gx#stx-null? _%tl4221542385%_)
                                                (letrec ((_%loop4221642388%_
                                                          (lambda (_%hd4221442392%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4222042395%_)
                    (if (gx#stx-pair? _%hd4221442392%_)
                        (let ((_%e4221742397%_ (gx#syntax-e _%hd4221442392%_)))
                          (let ((_%lp-hd4221842401%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4221742397%_)))
                                (_%lp-tl4221942404%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4221742397%_))))
                            (_%loop4221642388%_
                             _%lp-tl4221942404%_
                             (cons _%lp-hd4221842401%_ _%body4222042395%_))))
                        (let ((_%body4222142407%_
                               (reverse _%body4222042395%_)))
                          (if (gx#stx-andmap
                               gx#identifier?
                               (foldr (lambda (_%g4244942452%_ _%g4245042455%_)
                                        (cons _%g4244942452%_ _%g4245042455%_))
                                      '()
                                      _%var4218242332%_))
                              (cons (gx#datum->syntax '#f 'let)
                                    (cons (gx#datum->syntax '#f '$loop)
                                          (cons (begin
                                                  (gx#syntax-check-splice-targets
                                                   _%init4218142331%_
                                                   _%var4218242332%_)
                                                  (foldr (lambda (_%g4245742470%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g4245842473%_
                          _%g4245942475%_)
                   (cons (cons _%g4245842473%_ (cons _%g4245742470%_ '()))
                         _%g4245942475%_))
                 '()
                 _%init4218142331%_
                 _%var4218242332%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (foldr (lambda (_%g4246042478%_
                                                                _%g4246142481%_)
                                                         (cons _%g4246042478%_
                                                               _%g4246142481%_))
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'if)
                           (cons _%hd4220242348%_
                                 (cons (cons (gx#datum->syntax '#f '$loop)
                                             (begin
                                               (gx#syntax-check-splice-targets
                                                _%step4218042329%_
                                                _%var4218242332%_)
                                               (foldr (lambda (_%g4246242484%_
                                                               _%g4246342487%_
                                                               _%g4246442489%_)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'begin)
                            (cons _%g4246342487%_
                                  (foldr (lambda (_%g4246542492%_
                                                  _%g4246642495%_)
                                           (cons _%g4246542492%_
                                                 _%g4246642495%_))
                                         '()
                                         _%g4246242484%_)))
                      _%g4246442489%_))
              '()
              _%step4218042329%_
              _%var4218242332%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'begin)
                                                   (cons '#!void
                                                         (foldr (lambda (_%g4246742498%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g4246842501%_)
                          (cons _%g4246742498%_ _%g4246842501%_))
                        '()
                        _%fini4221242379%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))))
                     '())
               _%body4222142407%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%g4215642227%_ _%g4215742231%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4221642388%_
                                                   _%target4221342382%_
                                                   '()))
                                                (_%g4215642227%_
                                                 _%g4215742231%_)))))
                                      (_%g4215642227%_ _%g4215742231%_)))))))
                  (_%loop4220742360%_ _%target4220442354%_ '()))
                (_%g4215642227%_ _%g4215742231%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4215642227%_
                                               _%g4215742231%_))))
                                      (_%g4215642227%_ _%g4215742231%_))))
                              (_%g4215642227%_ _%g4215742231%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4217342260%_
                                                   _%target4217042254%_
                                                   '()
                                                   '()
                                                   '()))
                                                (_%g4215642227%_
                                                 _%g4215742231%_)))))
                                      (_%g4215642227%_ _%g4215742231%_))))
                              (_%g4215642227%_ _%g4215742231%_))))
                      (_%g4215642227%_ _%g4215742231%_)))))
          (_%g4215542504%_ _%$stx42152%_))))
    (define |gerbil/core/more-sugar[:0:]#while|
      (lambda (_%$stx42512%_)
        (let* ((_%g4251642540%_
                (lambda (_%g4251742536%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4251742536%_)))
               (_%g4251542623%_
                (lambda (_%g4251742544%_)
                  (if (gx#stx-pair? _%g4251742544%_)
                      (let ((_%e4252042547%_ (gx#syntax-e _%g4251742544%_)))
                        (let ((_%hd4252142551%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4252042547%_)))
                              (_%tl4252242554%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4252042547%_))))
                          (if (gx#stx-pair? _%tl4252242554%_)
                              (let ((_%e4252342557%_
                                     (gx#syntax-e _%tl4252242554%_)))
                                (let ((_%hd4252442561%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4252342557%_)))
                                      (_%tl4252542564%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4252342557%_))))
                                  (if (gx#stx-pair/null? _%tl4252542564%_)
                                      (let ((_g45517_
                                             (gx#syntax-split-splice
                                              _%tl4252542564%_
                                              '0)))
                                        (begin
                                          (let ((_g45518_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45517_)
                                                       (##values-length
                                                        _g45517_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45518_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45518_)))
                                          (let ((_%target4252642567%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45517_ 0)))
                                                (_%tl4252842570%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45517_ 1))))
                                            (if (gx#stx-null? _%tl4252842570%_)
                                                (letrec ((_%loop4252942573%_
                                                          (lambda (_%hd4252742577%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4253342580%_)
                    (if (gx#stx-pair? _%hd4252742577%_)
                        (let ((_%e4253042582%_ (gx#syntax-e _%hd4252742577%_)))
                          (let ((_%lp-hd4253142586%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4253042582%_)))
                                (_%lp-tl4253242589%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4253042582%_))))
                            (_%loop4252942573%_
                             _%lp-tl4253242589%_
                             (cons _%lp-hd4253142586%_ _%body4253342580%_))))
                        (let ((_%body4253442592%_
                               (reverse _%body4253342580%_)))
                          (cons (gx#datum->syntax '#f 'let)
                                (cons (gx#datum->syntax '#f 'lp)
                                      (cons '()
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'when)
                                                        (cons _%hd4252442561%_
                                                              (foldr (lambda (_%g4261442617%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%g4261542620%_)
                               (cons _%g4261442617%_ _%g4261542620%_))
                             (cons (cons (gx#datum->syntax '#f 'lp) '()) '())
                             _%body4253442592%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4252942573%_
                                                   _%target4252642567%_
                                                   '()))
                                                (_%g4251642540%_
                                                 _%g4251742544%_)))))
                                      (_%g4251642540%_ _%g4251742544%_))))
                              (_%g4251642540%_ _%g4251742544%_))))
                      (_%g4251642540%_ _%g4251742544%_)))))
          (_%g4251542623%_ _%$stx42512%_))))
    (define |gerbil/core/more-sugar[:0:]#until|
      (lambda (_%$stx42628%_)
        (let* ((_%g4263242656%_
                (lambda (_%g4263342652%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4263342652%_)))
               (_%g4263142739%_
                (lambda (_%g4263342660%_)
                  (if (gx#stx-pair? _%g4263342660%_)
                      (let ((_%e4263642663%_ (gx#syntax-e _%g4263342660%_)))
                        (let ((_%hd4263742667%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4263642663%_)))
                              (_%tl4263842670%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4263642663%_))))
                          (if (gx#stx-pair? _%tl4263842670%_)
                              (let ((_%e4263942673%_
                                     (gx#syntax-e _%tl4263842670%_)))
                                (let ((_%hd4264042677%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4263942673%_)))
                                      (_%tl4264142680%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4263942673%_))))
                                  (if (gx#stx-pair/null? _%tl4264142680%_)
                                      (let ((_g45519_
                                             (gx#syntax-split-splice
                                              _%tl4264142680%_
                                              '0)))
                                        (begin
                                          (let ((_g45520_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45519_)
                                                       (##values-length
                                                        _g45519_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45520_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45520_)))
                                          (let ((_%target4264242683%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45519_ 0)))
                                                (_%tl4264442686%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45519_ 1))))
                                            (if (gx#stx-null? _%tl4264442686%_)
                                                (letrec ((_%loop4264542689%_
                                                          (lambda (_%hd4264342693%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4264942696%_)
                    (if (gx#stx-pair? _%hd4264342693%_)
                        (let ((_%e4264642698%_ (gx#syntax-e _%hd4264342693%_)))
                          (let ((_%lp-hd4264742702%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4264642698%_)))
                                (_%lp-tl4264842705%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4264642698%_))))
                            (_%loop4264542689%_
                             _%lp-tl4264842705%_
                             (cons _%lp-hd4264742702%_ _%body4264942696%_))))
                        (let ((_%body4265042708%_
                               (reverse _%body4264942696%_)))
                          (cons (gx#datum->syntax '#f 'let)
                                (cons (gx#datum->syntax '#f 'lp)
                                      (cons '()
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'unless)
                                                        (cons _%hd4264042677%_
                                                              (foldr (lambda (_%g4273042733%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%g4273142736%_)
                               (cons _%g4273042733%_ _%g4273142736%_))
                             (cons (cons (gx#datum->syntax '#f 'lp) '()) '())
                             _%body4265042708%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4264542689%_
                                                   _%target4264242683%_
                                                   '()))
                                                (_%g4263242656%_
                                                 _%g4263342660%_)))))
                                      (_%g4263242656%_ _%g4263342660%_))))
                              (_%g4263242656%_ _%g4263342660%_))))
                      (_%g4263242656%_ _%g4263342660%_)))))
          (_%g4263142739%_ _%$stx42628%_))))
    (define |gerbil/core/more-sugar[:0:]#catch|
      (lambda (_%$stx42744%_)
        (let ((_%g4274742754%_
               (lambda (_%g4274842750%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4274842750%_))))
          (_%g4274742754%_ _%$stx42744%_))))
    (define |gerbil/core/more-sugar[:0:]#finally|
      (lambda (_%$stx42758%_)
        (let ((_%g4276142768%_
               (lambda (_%g4276242764%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4276242764%_))))
          (_%g4276142768%_ _%$stx42758%_))))
    (define |gerbil/core/more-sugar[:0:]#try|
      (lambda (_%stx42772%_)
        (letrec ((_%generate-thunk42775%_
                  (lambda (_%body44094%_)
                    (if (null? _%body44094%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; missing body"
                         _%stx42772%_)
                        (let* ((_%g4409744114%_
                                (lambda (_%g4409844110%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g4409844110%_)))
                               (_%g4409644173%_
                                (lambda (_%g4409844118%_)
                                  (if (gx#stx-pair/null? _%g4409844118%_)
                                      (let ((_g45521_
                                             (gx#syntax-split-splice
                                              _%g4409844118%_
                                              '0)))
                                        (begin
                                          (let ((_g45522_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45521_)
                                                       (##values-length
                                                        _g45521_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45522_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45522_)))
                                          (let ((_%target4410044121%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45521_ 0)))
                                                (_%tl4410244124%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45521_ 1))))
                                            (if (gx#stx-null? _%tl4410244124%_)
                                                (letrec ((_%loop4410344127%_
                                                          (lambda (_%hd4410144131%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%e4410744134%_)
                    (if (gx#stx-pair? _%hd4410144131%_)
                        (let ((_%e4410444136%_ (gx#syntax-e _%hd4410144131%_)))
                          (let ((_%lp-hd4410544140%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4410444136%_)))
                                (_%lp-tl4410644143%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4410444136%_))))
                            (_%loop4410344127%_
                             _%lp-tl4410644143%_
                             (cons _%lp-hd4410544140%_ _%e4410744134%_))))
                        (let ((_%e4410844146%_ (reverse _%e4410744134%_)))
                          (cons (gx#datum->syntax '#f 'lambda)
                                (cons '()
                                      (foldr (lambda (_%g4416444167%_
                                                      _%g4416544170%_)
                                               (cons _%g4416444167%_
                                                     _%g4416544170%_))
                                             '()
                                             _%e4410844146%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4410344127%_
                                                   _%target4410044121%_
                                                   '()))
                                                (_%g4409744114%_
                                                 _%g4409844118%_)))))
                                      (_%g4409744114%_ _%g4409844118%_)))))
                          (_%g4409644173%_ (reverse _%body44094%_))))))
                 (_%generate-fini42777%_
                  (lambda (_%thunk43977%_ _%fini43979%_)
                    (let* ((_%g4398144005%_
                            (lambda (_%g4398244001%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4398244001%_)))
                           (_%g4398044090%_
                            (lambda (_%g4398244009%_)
                              (if (gx#stx-pair? _%g4398244009%_)
                                  (let ((_%e4398544012%_
                                         (gx#syntax-e _%g4398244009%_)))
                                    (let ((_%hd4398644016%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4398544012%_)))
                                          (_%tl4398744019%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4398544012%_))))
                                      (if (gx#stx-pair? _%tl4398744019%_)
                                          (let ((_%e4398844022%_
                                                 (gx#syntax-e
                                                  _%tl4398744019%_)))
                                            (let ((_%hd4398944026%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4398844022%_)))
                                                  (_%tl4399044029%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4398844022%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd4398944026%_)
                                                  (let ((_g45523_
                                                         (gx#syntax-split-splice
                                                          _%hd4398944026%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g45524_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g45523_)
                           (##values-length _g45523_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g45524_ 2)))
                    (error "Context expects 2 values" _g45524_)))
              (let ((_%target4399144032%_
                     (let () (declare (not safe)) (##values-ref _g45523_ 0)))
                    (_%tl4399344035%_
                     (let () (declare (not safe)) (##values-ref _g45523_ 1))))
                (if (gx#stx-null? _%tl4399344035%_)
                    (letrec ((_%loop4399444038%_
                              (lambda (_%hd4399244042%_ _%e4399844045%_)
                                (if (gx#stx-pair? _%hd4399244042%_)
                                    (let ((_%e4399544047%_
                                           (gx#syntax-e _%hd4399244042%_)))
                                      (let ((_%lp-hd4399644051%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4399544047%_)))
                                            (_%lp-tl4399744054%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4399544047%_))))
                                        (_%loop4399444038%_
                                         _%lp-tl4399744054%_
                                         (cons _%lp-hd4399644051%_
                                               _%e4399844045%_))))
                                    (let ((_%e4399944057%_
                                           (reverse _%e4399844045%_)))
                                      (if (gx#stx-null? _%tl4399044029%_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'with-unwind-protect)
                                                (cons _%hd4398644016%_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'lambda)
                          (cons '()
                                (foldr (lambda (_%g4408144084%_
                                                _%g4408244087%_)
                                         (cons _%g4408144084%_
                                               _%g4408244087%_))
                                       '()
                                       _%e4399944057%_)))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g4398144005%_
                                           _%g4398244009%_)))))))
                      (_%loop4399444038%_ _%target4399144032%_ '()))
                    (_%g4398144005%_ _%g4398244009%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4398144005%_
                                                   _%g4398244009%_))))
                                          (_%g4398144005%_ _%g4398244009%_))))
                                  (_%g4398144005%_ _%g4398244009%_)))))
                      (_%g4398044090%_ (list _%thunk43977%_ _%fini43979%_)))))
                 (_%generate-catch42778%_
                  (lambda (_%handlers43392%_ _%thunk43394%_)
                    (let* ((_%g4339643404%_
                            (lambda (_%g4339743400%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4339743400%_)))
                           (_%g4339543973%_
                            (lambda (_%g4339743408%_)
                              (let _%lp43423%_ ((_%rest43426%_
                                                 _%handlers43392%_)
                                                (_%clauses43428%_ '()))
                                (let* ((_%rest4342943437%_ _%rest43426%_)
                                       (_%else4343143568%_
                                        (lambda ()
                                          (let* ((_%g4344943473%_
                                                  (lambda (_%g4345043469%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g4345043469%_)))
                                                 (_%g4344843564%_
                                                  (lambda (_%g4345043477%_)
                                                    (if (gx#stx-pair?
                                                         _%g4345043477%_)
                                                        (let ((_%e4345343480%_
                                                               (gx#syntax-e
                                                                _%g4345043477%_)))
                                                          (let ((_%hd4345443484%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4345343480%_)))
                        (_%tl4345543487%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4345343480%_))))
                    (if (gx#stx-pair/null? _%hd4345443484%_)
                        (let ((_g45525_
                               (gx#syntax-split-splice _%hd4345443484%_ '0)))
                          (begin
                            (let ((_g45526_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g45525_)
                                         (##values-length _g45525_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g45526_ 2)))
                                  (error "Context expects 2 values" _g45526_)))
                            (let ((_%target4345643490%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g45525_ 0)))
                                  (_%tl4345843493%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g45525_ 1))))
                              (if (gx#stx-null? _%tl4345843493%_)
                                  (letrec ((_%loop4345943496%_
                                            (lambda (_%hd4345743500%_
                                                     _%clause4346343503%_)
                                              (if (gx#stx-pair?
                                                   _%hd4345743500%_)
                                                  (let ((_%e4346043505%_
                                                         (gx#syntax-e
                                                          _%hd4345743500%_)))
                                                    (let ((_%lp-hd4346143509%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4346043505%_)))
                                                          (_%lp-tl4346243512%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4346043505%_))))
                                                      (_%loop4345943496%_
                                                       _%lp-tl4346243512%_
                                                       (cons _%lp-hd4346143509%_
                                                             _%clause4346343503%_))))
                                                  (let ((_%clause4346443515%_
                                                         (reverse _%clause4346343503%_)))
                                                    (if (gx#stx-pair?
                                                         _%tl4345543487%_)
                                                        (let ((_%e4346543518%_
                                                               (gx#syntax-e
                                                                _%tl4345543487%_)))
                                                          (let ((_%hd4346643522%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4346543518%_)))
                        (_%tl4346743525%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4346543518%_))))
                    (if (gx#stx-null? _%tl4346743525%_)
                        (cons (gx#datum->syntax '#f 'with-catch)
                              (cons (cons (gx#datum->syntax '#f 'lambda)
                                          (cons (cons _%g4339743408%_ '())
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'cond)
                                                            (foldr (lambda (_%g4355543558%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g4355643561%_)
                             (cons _%g4355543558%_ _%g4355643561%_))
                           (cons (cons (gx#datum->syntax '#f 'else)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'raise)
                                                   (cons _%g4339743408%_ '()))
                                             '()))
                                 '())
                           _%clause4346443515%_))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons _%hd4346643522%_ '())))
                        (_%g4344943473%_ _%g4345043477%_))))
                (_%g4344943473%_ _%g4345043477%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop4345943496%_
                                     _%target4345643490%_
                                     '()))
                                  (_%g4344943473%_ _%g4345043477%_)))))
                        (_%g4344943473%_ _%g4345043477%_))))
                (_%g4344943473%_ _%g4345043477%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g4344843564%_
                                             (list _%clauses43428%_
                                                   _%thunk43394%_)))))
                                       (_%K4343343957%_
                                        (lambda (_%rest43572%_ _%hd43574%_)
                                          (let* ((_%__stx4524545246%_
                                                  _%hd43574%_)
                                                 (_%g4357943649%_
                                                  (lambda ()
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%__stx4524545246%_))))
                                            (let ((_%__kont4524845249%_
                                                   (lambda (_%g4358143936%_
                                                            _%g4358243938%_)
                                                     (_%lp43423%_
                                                      _%rest43572%_
                                                      (cons (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '#f
                                       '?)
                                      (cons _%g4358243938%_ '()))
                                (cons _%g4339743408%_ '()))
                          (cons (gx#datum->syntax '#f '=>)
                                (cons _%g4358143936%_ '())))
                    _%clauses43428%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont4525045251%_
                                                   (lambda (_%g4359243868%_
                                                            _%g4359343870%_
                                                            _%g4359443871%_)
                                                     (_%lp43423%_
                                                      _%rest43572%_
                                                      (cons (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '#f
                                       '?)
                                      (cons _%g4359443871%_ '()))
                                (cons _%g4339743408%_ '()))
                          (cons (cons (gx#datum->syntax '#f 'let)
                                      (cons (cons (cons _%g4359343870%_
                                                        (cons _%g4339743408%_
                                                              '()))
                                                  '())
                                            (foldr (lambda (_%g4389043893%_
                                                            _%g4389143896%_)
                                                     (cons _%g4389043893%_
                                                           _%g4389143896%_))
                                                   '()
                                                   _%g4359243868%_)))
                                '()))
                    _%clauses43428%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont4525445255%_
                                                   (lambda (_%g4361343776%_
                                                            _%g4361443778%_)
                                                     (_%lp43423%_
                                                      _%rest43572%_
                                                      (cons (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'let)
                                      (cons (cons (cons _%g4361443778%_
                                                        (cons _%g4339743408%_
                                                              '()))
                                                  '())
                                            (foldr (lambda (_%g4379443797%_
                                                            _%g4379543800%_)
                                                     (cons _%g4379443797%_
                                                           _%g4379543800%_))
                                                   '()
                                                   _%g4361343776%_)))
                                '()))
                    _%clauses43428%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont4525845259%_
                                                   (lambda (_%g4363043694%_
                                                            _%g4363143696%_)
                                                     (_%lp43423%_
                                                      _%rest43572%_
                                                      (cons (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'begin)
                                      (foldr (lambda (_%g4371243715%_
                                                      _%g4371343718%_)
                                               (cons _%g4371243715%_
                                                     _%g4371343718%_))
                                             '()
                                             _%g4363043694%_))
                                '()))
                    _%clauses43428%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let* ((_%__match4535045351%_
                                                      (lambda (_%e4363243656%_
                                                               _%hd4363343660%_
                                                               _%tl4363443663%_
                                                               _%__splice4526045261%_
                                                               _%target4363543666%_
                                                               _%tl4363743669%_)
                                                        (letrec ((_%loop4363843672%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd4363643676%_ _%body4364243679%_)
                            (if (gx#stx-pair? _%hd4363643676%_)
                                (let ((_%e4363943681%_
                                       (gx#syntax-e _%hd4363643676%_)))
                                  (let ((_%lp-tl4364143688%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4363943681%_)))
                                        (_%lp-hd4364043685%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4363943681%_))))
                                    (_%loop4363843672%_
                                     _%lp-tl4364143688%_
                                     (cons _%lp-hd4364043685%_
                                           _%body4364243679%_))))
                                (let ((_%body4364343691%_
                                       (reverse _%body4364243679%_)))
                                  (let ((_%g4363043694%_ _%body4364343691%_)
                                        (_%g4363143696%_ _%hd4363343660%_))
                                    (if (gx#underscore? _%g4363143696%_)
                                        (_%__kont4525845259%_
                                         _%g4363043694%_
                                         _%g4363143696%_)
                                        (_%g4357943649%_))))))))
                  (_%loop4363843672%_ _%target4363543666%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__match4533645337%_
                                                      (lambda (_%e4361543728%_
                                                               _%hd4361643732%_
                                                               _%tl4361743735%_
                                                               _%e4361843738%_
                                                               _%hd4361943742%_
                                                               _%tl4362043745%_
                                                               _%__splice4525645257%_
                                                               _%target4362143748%_
                                                               _%tl4362343751%_)
                                                        (letrec ((_%loop4362443754%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd4362243758%_ _%body4362843761%_)
                            (if (gx#stx-pair? _%hd4362243758%_)
                                (let ((_%e4362543763%_
                                       (gx#syntax-e _%hd4362243758%_)))
                                  (let ((_%lp-tl4362743770%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4362543763%_)))
                                        (_%lp-hd4362643767%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4362543763%_))))
                                    (_%loop4362443754%_
                                     _%lp-tl4362743770%_
                                     (cons _%lp-hd4362643767%_
                                           _%body4362843761%_))))
                                (let ((_%body4362943773%_
                                       (reverse _%body4362843761%_)))
                                  (let ((_%g4361343776%_ _%body4362943773%_)
                                        (_%g4361443778%_ _%hd4361943742%_))
                                    (if (gx#identifier? _%g4361443778%_)
                                        (_%__kont4525445255%_
                                         _%g4361343776%_
                                         _%g4361443778%_)
                                        (_%__match4535045351%_
                                         _%e4361543728%_
                                         _%hd4361643732%_
                                         _%tl4361743735%_
                                         _%__splice4525645257%_
                                         _%target4362143748%_
                                         _%tl4362343751%_))))))))
                  (_%loop4362443754%_ _%target4362143748%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__match4531445315%_
                                                      (lambda (_%e4359543810%_
                                                               _%hd4359643814%_
                                                               _%tl4359743817%_
                                                               _%e4359843820%_
                                                               _%hd4359943824%_
                                                               _%tl4360043827%_
                                                               _%e4360143830%_
                                                               _%hd4360243834%_
                                                               _%tl4360343837%_
                                                               _%__splice4525245253%_
                                                               _%target4360443840%_
                                                               _%tl4360643843%_)
                                                        (letrec ((_%loop4360743846%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd4360543850%_ _%body4361143853%_)
                            (if (gx#stx-pair? _%hd4360543850%_)
                                (let ((_%e4360843855%_
                                       (gx#syntax-e _%hd4360543850%_)))
                                  (let ((_%lp-tl4361043862%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4360843855%_)))
                                        (_%lp-hd4360943859%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4360843855%_))))
                                    (_%loop4360743846%_
                                     _%lp-tl4361043862%_
                                     (cons _%lp-hd4360943859%_
                                           _%body4361143853%_))))
                                (let ((_%body4361243865%_
                                       (reverse _%body4361143853%_)))
                                  (let ((_%g4359243868%_ _%body4361243865%_)
                                        (_%g4359343870%_ _%hd4360243834%_)
                                        (_%g4359443871%_ _%hd4359943824%_))
                                    (if (gx#identifier? _%g4359343870%_)
                                        (_%__kont4525045251%_
                                         _%g4359243868%_
                                         _%g4359343870%_
                                         _%g4359443871%_)
                                        (_%__match4535045351%_
                                         _%e4359543810%_
                                         _%hd4359643814%_
                                         _%tl4359743817%_
                                         _%__splice4525245253%_
                                         _%target4360443840%_
                                         _%tl4360643843%_))))))))
                  (_%loop4360743846%_ _%target4360443840%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx4524545246%_)
                                                    (let ((_%e4358343906%_
                                                           (gx#syntax-e
                                                            _%__stx4524545246%_)))
                                                      (let ((_%tl4358543913%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4358343906%_)))
                    (_%hd4358443910%_
                     (let () (declare (not safe)) (##car _%e4358343906%_))))
                (if (gx#stx-pair? _%tl4358543913%_)
                    (let ((_%e4358643916%_ (gx#syntax-e _%tl4358543913%_)))
                      (let ((_%tl4358843923%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4358643916%_)))
                            (_%hd4358743920%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4358643916%_))))
                        (if (gx#identifier? _%hd4358743920%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/more-sugar[1]#_g45527_|
                                 _%hd4358743920%_)
                                (if (gx#stx-pair? _%tl4358843923%_)
                                    (let ((_%e4358943926%_
                                           (gx#syntax-e _%tl4358843923%_)))
                                      (let ((_%tl4359143933%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4358943926%_)))
                                            (_%hd4359043930%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4358943926%_))))
                                        (if (gx#stx-null? _%tl4359143933%_)
                                            (_%__kont4524845249%_
                                             _%hd4359043930%_
                                             _%hd4358443910%_)
                                            (if (gx#stx-pair? _%hd4358443910%_)
                                                (let ((_%e4359843820%_
                                                       (gx#syntax-e
                                                        _%hd4358443910%_)))
                                                  (let ((_%tl4360043827%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e4359843820%_)))
                                                        (_%hd4359943824%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e4359843820%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl4360043827%_)
                                                        (let ((_%e4360143830%_
                                                               (gx#syntax-e
                                                                _%tl4360043827%_)))
                                                          (let ((_%tl4360343837%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e4360143830%_)))
                        (_%hd4360243834%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4360143830%_))))
                    (if (gx#stx-null? _%tl4360343837%_)
                        (if (gx#stx-pair/null? _%tl4358543913%_)
                            (let ((_%__splice4525245253%_
                                   (gx#syntax-split-splice->vector
                                    _%tl4358543913%_
                                    '0)))
                              (let ((_%tl4360643843%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice4525245253%_
                                        '1)))
                                    (_%target4360443840%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice4525245253%_
                                        '0))))
                                (if (gx#stx-null? _%tl4360643843%_)
                                    (_%__match4531445315%_
                                     _%e4358343906%_
                                     _%hd4358443910%_
                                     _%tl4358543913%_
                                     _%e4359843820%_
                                     _%hd4359943824%_
                                     _%tl4360043827%_
                                     _%e4360143830%_
                                     _%hd4360243834%_
                                     _%tl4360343837%_
                                     _%__splice4525245253%_
                                     _%target4360443840%_
                                     _%tl4360643843%_)
                                    (_%g4357943649%_))))
                            (_%g4357943649%_))
                        (if (gx#stx-pair/null? _%tl4358543913%_)
                            (let ((_%__splice4526045261%_
                                   (gx#syntax-split-splice->vector
                                    _%tl4358543913%_
                                    '0)))
                              (let ((_%tl4363743669%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice4526045261%_
                                        '1)))
                                    (_%target4363543666%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice4526045261%_
                                        '0))))
                                (if (gx#stx-null? _%tl4363743669%_)
                                    (_%__match4535045351%_
                                     _%e4358343906%_
                                     _%hd4358443910%_
                                     _%tl4358543913%_
                                     _%__splice4526045261%_
                                     _%target4363543666%_
                                     _%tl4363743669%_)
                                    (_%g4357943649%_))))
                            (_%g4357943649%_)))))
                (if (gx#stx-null? _%tl4360043827%_)
                    (if (gx#stx-pair/null? _%tl4358543913%_)
                        (let ((_%__splice4525645257%_
                               (gx#syntax-split-splice->vector
                                _%tl4358543913%_
                                '0)))
                          (let ((_%tl4362343751%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice4525645257%_ '1)))
                                (_%target4362143748%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice4525645257%_ '0))))
                            (if (gx#stx-null? _%tl4362343751%_)
                                (_%__match4533645337%_
                                 _%e4358343906%_
                                 _%hd4358443910%_
                                 _%tl4358543913%_
                                 _%e4359843820%_
                                 _%hd4359943824%_
                                 _%tl4360043827%_
                                 _%__splice4525645257%_
                                 _%target4362143748%_
                                 _%tl4362343751%_)
                                (_%g4357943649%_))))
                        (_%g4357943649%_))
                    (if (gx#stx-pair/null? _%tl4358543913%_)
                        (let ((_%__splice4526045261%_
                               (gx#syntax-split-splice->vector
                                _%tl4358543913%_
                                '0)))
                          (let ((_%tl4363743669%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice4526045261%_ '1)))
                                (_%target4363543666%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice4526045261%_ '0))))
                            (if (gx#stx-null? _%tl4363743669%_)
                                (_%__match4535045351%_
                                 _%e4358343906%_
                                 _%hd4358443910%_
                                 _%tl4358543913%_
                                 _%__splice4526045261%_
                                 _%target4363543666%_
                                 _%tl4363743669%_)
                                (_%g4357943649%_))))
                        (_%g4357943649%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _%tl4358543913%_)
                                                    (let ((_%__splice4526045261%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl4358543913%_
                                                            '0)))
                                                      (let ((_%tl4363743669%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4526045261%_ '1)))
                    (_%target4363543666%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4526045261%_ '0))))
                (if (gx#stx-null? _%tl4363743669%_)
                    (_%__match4535045351%_
                     _%e4358343906%_
                     _%hd4358443910%_
                     _%tl4358543913%_
                     _%__splice4526045261%_
                     _%target4363543666%_
                     _%tl4363743669%_)
                    (_%g4357943649%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4357943649%_))))))
                                    (if (gx#stx-pair? _%hd4358443910%_)
                                        (let ((_%e4359843820%_
                                               (gx#syntax-e _%hd4358443910%_)))
                                          (let ((_%tl4360043827%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4359843820%_)))
                                                (_%hd4359943824%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4359843820%_))))
                                            (if (gx#stx-pair? _%tl4360043827%_)
                                                (let ((_%e4360143830%_
                                                       (gx#syntax-e
                                                        _%tl4360043827%_)))
                                                  (let ((_%tl4360343837%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e4360143830%_)))
                                                        (_%hd4360243834%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e4360143830%_))))
                                                    (if (gx#stx-null?
                                                         _%tl4360343837%_)
                                                        (if (gx#stx-pair/null?
                                                             _%tl4358543913%_)
                                                            (let ((_%__splice4525245253%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice->vector
                            _%tl4358543913%_
                            '0)))
                      (let ((_%tl4360643843%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice4525245253%_ '1)))
                            (_%target4360443840%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice4525245253%_ '0))))
                        (if (gx#stx-null? _%tl4360643843%_)
                            (_%__match4531445315%_
                             _%e4358343906%_
                             _%hd4358443910%_
                             _%tl4358543913%_
                             _%e4359843820%_
                             _%hd4359943824%_
                             _%tl4360043827%_
                             _%e4360143830%_
                             _%hd4360243834%_
                             _%tl4360343837%_
                             _%__splice4525245253%_
                             _%target4360443840%_
                             _%tl4360643843%_)
                            (_%g4357943649%_))))
                    (_%g4357943649%_))
                (if (gx#stx-pair/null? _%tl4358543913%_)
                    (let ((_%__splice4526045261%_
                           (gx#syntax-split-splice->vector
                            _%tl4358543913%_
                            '0)))
                      (let ((_%tl4363743669%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice4526045261%_ '1)))
                            (_%target4363543666%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice4526045261%_ '0))))
                        (if (gx#stx-null? _%tl4363743669%_)
                            (_%__match4535045351%_
                             _%e4358343906%_
                             _%hd4358443910%_
                             _%tl4358543913%_
                             _%__splice4526045261%_
                             _%target4363543666%_
                             _%tl4363743669%_)
                            (_%g4357943649%_))))
                    (_%g4357943649%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _%tl4360043827%_)
                                                    (if (gx#stx-pair/null?
                                                         _%tl4358543913%_)
                                                        (let ((_%__splice4525645257%_
                                                               (gx#syntax-split-splice->vector
                                                                _%tl4358543913%_
                                                                '0)))
                                                          (let ((_%tl4362343751%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4525645257%_ '1)))
                        (_%target4362143748%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4525645257%_ '0))))
                    (if (gx#stx-null? _%tl4362343751%_)
                        (_%__match4533645337%_
                         _%e4358343906%_
                         _%hd4358443910%_
                         _%tl4358543913%_
                         _%e4359843820%_
                         _%hd4359943824%_
                         _%tl4360043827%_
                         _%__splice4525645257%_
                         _%target4362143748%_
                         _%tl4362343751%_)
                        (_%g4357943649%_))))
                (_%g4357943649%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _%tl4358543913%_)
                                                        (let ((_%__splice4526045261%_
                                                               (gx#syntax-split-splice->vector
                                                                _%tl4358543913%_
                                                                '0)))
                                                          (let ((_%tl4363743669%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4526045261%_ '1)))
                        (_%target4363543666%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4526045261%_ '0))))
                    (if (gx#stx-null? _%tl4363743669%_)
                        (_%__match4535045351%_
                         _%e4358343906%_
                         _%hd4358443910%_
                         _%tl4358543913%_
                         _%__splice4526045261%_
                         _%target4363543666%_
                         _%tl4363743669%_)
                        (_%g4357943649%_))))
                (_%g4357943649%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (gx#stx-pair/null?
                                             _%tl4358543913%_)
                                            (let ((_%__splice4526045261%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4358543913%_
                                                    '0)))
                                              (let ((_%tl4363743669%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4526045261%_
                                                        '1)))
                                                    (_%target4363543666%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4526045261%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4363743669%_)
                                                    (_%__match4535045351%_
                                                     _%e4358343906%_
                                                     _%hd4358443910%_
                                                     _%tl4358543913%_
                                                     _%__splice4526045261%_
                                                     _%target4363543666%_
                                                     _%tl4363743669%_)
                                                    (_%g4357943649%_))))
                                            (_%g4357943649%_))))
                                (if (gx#stx-pair? _%hd4358443910%_)
                                    (let ((_%e4359843820%_
                                           (gx#syntax-e _%hd4358443910%_)))
                                      (let ((_%tl4360043827%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4359843820%_)))
                                            (_%hd4359943824%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4359843820%_))))
                                        (if (gx#stx-pair? _%tl4360043827%_)
                                            (let ((_%e4360143830%_
                                                   (gx#syntax-e
                                                    _%tl4360043827%_)))
                                              (let ((_%tl4360343837%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4360143830%_)))
                                                    (_%hd4360243834%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4360143830%_))))
                                                (if (gx#stx-null?
                                                     _%tl4360343837%_)
                                                    (if (gx#stx-pair/null?
                                                         _%tl4358543913%_)
                                                        (let ((_%__splice4525245253%_
                                                               (gx#syntax-split-splice->vector
                                                                _%tl4358543913%_
                                                                '0)))
                                                          (let ((_%tl4360643843%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4525245253%_ '1)))
                        (_%target4360443840%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4525245253%_ '0))))
                    (if (gx#stx-null? _%tl4360643843%_)
                        (_%__match4531445315%_
                         _%e4358343906%_
                         _%hd4358443910%_
                         _%tl4358543913%_
                         _%e4359843820%_
                         _%hd4359943824%_
                         _%tl4360043827%_
                         _%e4360143830%_
                         _%hd4360243834%_
                         _%tl4360343837%_
                         _%__splice4525245253%_
                         _%target4360443840%_
                         _%tl4360643843%_)
                        (_%g4357943649%_))))
                (_%g4357943649%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _%tl4358543913%_)
                                                        (let ((_%__splice4526045261%_
                                                               (gx#syntax-split-splice->vector
                                                                _%tl4358543913%_
                                                                '0)))
                                                          (let ((_%tl4363743669%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4526045261%_ '1)))
                        (_%target4363543666%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4526045261%_ '0))))
                    (if (gx#stx-null? _%tl4363743669%_)
                        (_%__match4535045351%_
                         _%e4358343906%_
                         _%hd4358443910%_
                         _%tl4358543913%_
                         _%__splice4526045261%_
                         _%target4363543666%_
                         _%tl4363743669%_)
                        (_%g4357943649%_))))
                (_%g4357943649%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-null? _%tl4360043827%_)
                                                (if (gx#stx-pair/null?
                                                     _%tl4358543913%_)
                                                    (let ((_%__splice4525645257%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl4358543913%_
                                                            '0)))
                                                      (let ((_%tl4362343751%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4525645257%_ '1)))
                    (_%target4362143748%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4525645257%_ '0))))
                (if (gx#stx-null? _%tl4362343751%_)
                    (_%__match4533645337%_
                     _%e4358343906%_
                     _%hd4358443910%_
                     _%tl4358543913%_
                     _%e4359843820%_
                     _%hd4359943824%_
                     _%tl4360043827%_
                     _%__splice4525645257%_
                     _%target4362143748%_
                     _%tl4362343751%_)
                    (_%g4357943649%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4357943649%_))
                                                (if (gx#stx-pair/null?
                                                     _%tl4358543913%_)
                                                    (let ((_%__splice4526045261%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl4358543913%_
                                                            '0)))
                                                      (let ((_%tl4363743669%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4526045261%_ '1)))
                    (_%target4363543666%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4526045261%_ '0))))
                (if (gx#stx-null? _%tl4363743669%_)
                    (_%__match4535045351%_
                     _%e4358343906%_
                     _%hd4358443910%_
                     _%tl4358543913%_
                     _%__splice4526045261%_
                     _%target4363543666%_
                     _%tl4363743669%_)
                    (_%g4357943649%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4357943649%_))))))
                                    (if (gx#stx-pair/null? _%tl4358543913%_)
                                        (let ((_%__splice4526045261%_
                                               (gx#syntax-split-splice->vector
                                                _%tl4358543913%_
                                                '0)))
                                          (let ((_%tl4363743669%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4526045261%_
                                                    '1)))
                                                (_%target4363543666%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4526045261%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl4363743669%_)
                                                (_%__match4535045351%_
                                                 _%e4358343906%_
                                                 _%hd4358443910%_
                                                 _%tl4358543913%_
                                                 _%__splice4526045261%_
                                                 _%target4363543666%_
                                                 _%tl4363743669%_)
                                                (_%g4357943649%_))))
                                        (_%g4357943649%_))))
                            (if (gx#stx-pair? _%hd4358443910%_)
                                (let ((_%e4359843820%_
                                       (gx#syntax-e _%hd4358443910%_)))
                                  (let ((_%tl4360043827%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4359843820%_)))
                                        (_%hd4359943824%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4359843820%_))))
                                    (if (gx#stx-pair? _%tl4360043827%_)
                                        (let ((_%e4360143830%_
                                               (gx#syntax-e _%tl4360043827%_)))
                                          (let ((_%tl4360343837%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4360143830%_)))
                                                (_%hd4360243834%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4360143830%_))))
                                            (if (gx#stx-null? _%tl4360343837%_)
                                                (if (gx#stx-pair/null?
                                                     _%tl4358543913%_)
                                                    (let ((_%__splice4525245253%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl4358543913%_
                                                            '0)))
                                                      (let ((_%tl4360643843%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4525245253%_ '1)))
                    (_%target4360443840%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4525245253%_ '0))))
                (if (gx#stx-null? _%tl4360643843%_)
                    (_%__match4531445315%_
                     _%e4358343906%_
                     _%hd4358443910%_
                     _%tl4358543913%_
                     _%e4359843820%_
                     _%hd4359943824%_
                     _%tl4360043827%_
                     _%e4360143830%_
                     _%hd4360243834%_
                     _%tl4360343837%_
                     _%__splice4525245253%_
                     _%target4360443840%_
                     _%tl4360643843%_)
                    (_%g4357943649%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4357943649%_))
                                                (if (gx#stx-pair/null?
                                                     _%tl4358543913%_)
                                                    (let ((_%__splice4526045261%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl4358543913%_
                                                            '0)))
                                                      (let ((_%tl4363743669%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4526045261%_ '1)))
                    (_%target4363543666%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4526045261%_ '0))))
                (if (gx#stx-null? _%tl4363743669%_)
                    (_%__match4535045351%_
                     _%e4358343906%_
                     _%hd4358443910%_
                     _%tl4358543913%_
                     _%__splice4526045261%_
                     _%target4363543666%_
                     _%tl4363743669%_)
                    (_%g4357943649%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4357943649%_)))))
                                        (if (gx#stx-null? _%tl4360043827%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl4358543913%_)
                                                (let ((_%__splice4525645257%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl4358543913%_
                                                        '0)))
                                                  (let ((_%tl4362343751%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice4525645257%_
                                                            '1)))
                                                        (_%target4362143748%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice4525645257%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl4362343751%_)
                                                        (_%__match4533645337%_
                                                         _%e4358343906%_
                                                         _%hd4358443910%_
                                                         _%tl4358543913%_
                                                         _%e4359843820%_
                                                         _%hd4359943824%_
                                                         _%tl4360043827%_
                                                         _%__splice4525645257%_
                                                         _%target4362143748%_
                                                         _%tl4362343751%_)
                                                        (_%g4357943649%_))))
                                                (_%g4357943649%_))
                                            (if (gx#stx-pair/null?
                                                 _%tl4358543913%_)
                                                (let ((_%__splice4526045261%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl4358543913%_
                                                        '0)))
                                                  (let ((_%tl4363743669%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice4526045261%_
                                                            '1)))
                                                        (_%target4363543666%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice4526045261%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl4363743669%_)
                                                        (_%__match4535045351%_
                                                         _%e4358343906%_
                                                         _%hd4358443910%_
                                                         _%tl4358543913%_
                                                         _%__splice4526045261%_
                                                         _%target4363543666%_
                                                         _%tl4363743669%_)
                                                        (_%g4357943649%_))))
                                                (_%g4357943649%_))))))
                                (if (gx#stx-pair/null? _%tl4358543913%_)
                                    (let ((_%__splice4526045261%_
                                           (gx#syntax-split-splice->vector
                                            _%tl4358543913%_
                                            '0)))
                                      (let ((_%tl4363743669%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice4526045261%_
                                                '1)))
                                            (_%target4363543666%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice4526045261%_
                                                '0))))
                                        (if (gx#stx-null? _%tl4363743669%_)
                                            (_%__match4535045351%_
                                             _%e4358343906%_
                                             _%hd4358443910%_
                                             _%tl4358543913%_
                                             _%__splice4526045261%_
                                             _%target4363543666%_
                                             _%tl4363743669%_)
                                            (_%g4357943649%_))))
                                    (_%g4357943649%_))))))
                    (if (gx#stx-pair? _%hd4358443910%_)
                        (let ((_%e4359843820%_ (gx#syntax-e _%hd4358443910%_)))
                          (let ((_%tl4360043827%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4359843820%_)))
                                (_%hd4359943824%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4359843820%_))))
                            (if (gx#stx-pair? _%tl4360043827%_)
                                (let ((_%e4360143830%_
                                       (gx#syntax-e _%tl4360043827%_)))
                                  (let ((_%tl4360343837%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4360143830%_)))
                                        (_%hd4360243834%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4360143830%_))))
                                    (if (gx#stx-null? _%tl4360343837%_)
                                        (if (gx#stx-pair/null?
                                             _%tl4358543913%_)
                                            (let ((_%__splice4525245253%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4358543913%_
                                                    '0)))
                                              (let ((_%tl4360643843%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4525245253%_
                                                        '1)))
                                                    (_%target4360443840%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4525245253%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4360643843%_)
                                                    (_%__match4531445315%_
                                                     _%e4358343906%_
                                                     _%hd4358443910%_
                                                     _%tl4358543913%_
                                                     _%e4359843820%_
                                                     _%hd4359943824%_
                                                     _%tl4360043827%_
                                                     _%e4360143830%_
                                                     _%hd4360243834%_
                                                     _%tl4360343837%_
                                                     _%__splice4525245253%_
                                                     _%target4360443840%_
                                                     _%tl4360643843%_)
                                                    (_%g4357943649%_))))
                                            (_%g4357943649%_))
                                        (if (gx#stx-pair/null?
                                             _%tl4358543913%_)
                                            (let ((_%__splice4526045261%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4358543913%_
                                                    '0)))
                                              (let ((_%tl4363743669%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4526045261%_
                                                        '1)))
                                                    (_%target4363543666%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4526045261%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4363743669%_)
                                                    (_%__match4535045351%_
                                                     _%e4358343906%_
                                                     _%hd4358443910%_
                                                     _%tl4358543913%_
                                                     _%__splice4526045261%_
                                                     _%target4363543666%_
                                                     _%tl4363743669%_)
                                                    (_%g4357943649%_))))
                                            (_%g4357943649%_)))))
                                (if (gx#stx-null? _%tl4360043827%_)
                                    (if (gx#stx-pair/null? _%tl4358543913%_)
                                        (let ((_%__splice4525645257%_
                                               (gx#syntax-split-splice->vector
                                                _%tl4358543913%_
                                                '0)))
                                          (let ((_%tl4362343751%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4525645257%_
                                                    '1)))
                                                (_%target4362143748%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4525645257%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl4362343751%_)
                                                (_%__match4533645337%_
                                                 _%e4358343906%_
                                                 _%hd4358443910%_
                                                 _%tl4358543913%_
                                                 _%e4359843820%_
                                                 _%hd4359943824%_
                                                 _%tl4360043827%_
                                                 _%__splice4525645257%_
                                                 _%target4362143748%_
                                                 _%tl4362343751%_)
                                                (_%g4357943649%_))))
                                        (_%g4357943649%_))
                                    (if (gx#stx-pair/null? _%tl4358543913%_)
                                        (let ((_%__splice4526045261%_
                                               (gx#syntax-split-splice->vector
                                                _%tl4358543913%_
                                                '0)))
                                          (let ((_%tl4363743669%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4526045261%_
                                                    '1)))
                                                (_%target4363543666%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4526045261%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl4363743669%_)
                                                (_%__match4535045351%_
                                                 _%e4358343906%_
                                                 _%hd4358443910%_
                                                 _%tl4358543913%_
                                                 _%__splice4526045261%_
                                                 _%target4363543666%_
                                                 _%tl4363743669%_)
                                                (_%g4357943649%_))))
                                        (_%g4357943649%_))))))
                        (if (gx#stx-pair/null? _%tl4358543913%_)
                            (let ((_%__splice4526045261%_
                                   (gx#syntax-split-splice->vector
                                    _%tl4358543913%_
                                    '0)))
                              (let ((_%tl4363743669%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice4526045261%_
                                        '1)))
                                    (_%target4363543666%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice4526045261%_
                                        '0))))
                                (if (gx#stx-null? _%tl4363743669%_)
                                    (_%__match4535045351%_
                                     _%e4358343906%_
                                     _%hd4358443910%_
                                     _%tl4358543913%_
                                     _%__splice4526045261%_
                                     _%target4363543666%_
                                     _%tl4363743669%_)
                                    (_%g4357943649%_))))
                            (_%g4357943649%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4357943649%_))))))))
                                  (if (pair? _%rest4342943437%_)
                                      (let ((_%hd4343443961%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%rest4342943437%_)))
                                            (_%tl4343543964%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%rest4342943437%_))))
                                        (let* ((_%hd43967%_ _%hd4343443961%_)
                                               (_%rest43970%_
                                                _%tl4343543964%_))
                                          (_%K4343343957%_
                                           _%rest43970%_
                                           _%hd43967%_)))
                                      (_%else4343143568%_)))))))
                      (_%g4339543973%_ (gx#genident))))))
          (let* ((_%g4278042800%_
                  (lambda (_%g4278142796%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g4278142796%_)))
                 (_%g4277943388%_
                  (lambda (_%g4278142804%_)
                    (if (gx#stx-pair? _%g4278142804%_)
                        (let ((_%e4278342807%_ (gx#syntax-e _%g4278142804%_)))
                          (let ((_%hd4278442811%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4278342807%_)))
                                (_%tl4278542814%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4278342807%_))))
                            (if (gx#stx-pair/null? _%tl4278542814%_)
                                (let ((_g45528_
                                       (gx#syntax-split-splice
                                        _%tl4278542814%_
                                        '0)))
                                  (begin
                                    (let ((_g45529_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g45528_)
                                                 (##values-length _g45528_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g45529_ 2)))
                                          (error "Context expects 2 values"
                                                 _g45529_)))
                                    (let ((_%target4278642817%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g45528_ 0)))
                                          (_%tl4278842820%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g45528_ 1))))
                                      (if (gx#stx-null? _%tl4278842820%_)
                                          (letrec ((_%loop4278942823%_
                                                    (lambda (_%hd4278742827%_
                                                             _%e4279342830%_)
                                                      (if (gx#stx-pair?
                                                           _%hd4278742827%_)
                                                          (let ((_%e4279042832%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd4278742827%_)))
                    (let ((_%lp-hd4279142836%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4279042832%_)))
                          (_%lp-tl4279242839%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4279042832%_))))
                      (_%loop4278942823%_
                       _%lp-tl4279242839%_
                       (cons _%lp-hd4279142836%_ _%e4279342830%_))))
                  (let ((_%e4279442842%_ (reverse _%e4279342830%_)))
                    (let _%lp42862%_ ((_%rest42865%_
                                       (foldr (lambda (_%g4337943382%_
                                                       _%g4338043385%_)
                                                (cons _%g4337943382%_
                                                      _%g4338043385%_))
                                              '()
                                              _%e4279442842%_))
                                      (_%body42867%_ '()))
                      (let* ((_%__stx4547145472%_ _%rest42865%_)
                             (_%g4287042882%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx4547145472%_))))
                        (let ((_%__kont4547445475%_
                               (lambda (_%g4287242910%_ _%g4287342912%_)
                                 (let* ((_%__stx4541945420%_ _%g4287342912%_)
                                        (_%g4292942962%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx4541945420%_))))
                                   (let ((_%__kont4542245423%_
                                          (lambda (_%g4293143349%_)
                                            (if (gx#stx-null? _%g4287242910%_)
                                                (_%generate-fini42777%_
                                                 (_%generate-thunk42775%_
                                                  _%body42867%_)
                                                 (foldr (lambda (_%g4336343366%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4336443369%_)
                  (cons _%g4336343366%_ _%g4336443369%_))
                '()
                _%g4293143349%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Misplaced finally clause"
                                                 _%stx42772%_))))
                                         (_%__kont4542645427%_
                                          (lambda (_%g4294443018%_)
                                            (let _%lp43035%_ ((_%rest43038%_
                                                               _%g4287242910%_)
                                                              (_%handlers43040%_
                                                               (cons (foldr (lambda (_%g4329543298%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             _%g4329643301%_)
                                      (cons _%g4329543298%_ _%g4329643301%_))
                                    '()
                                    _%g4294443018%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let* ((_%__stx4535345354%_
                                                      _%rest43038%_)
                                                     (_%g4304443084%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%__stx4535345354%_))))
                                                (let ((_%__kont4535645357%_
                                                       (lambda (_%g4304643265%_
                                                                _%g4304743267%_)
                                                         (_%lp43035%_
                                                          _%g4304643265%_
                                                          (cons (foldr (lambda (_%g4328343286%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _%g4328443289%_)
                                 (cons _%g4328343286%_ _%g4328443289%_))
                               '()
                               _%g4304743267%_)
                        _%handlers43040%_))))
              (_%__kont4536045361%_
               (lambda (_%g4306343150%_)
                 (let* ((_%g4317143179%_
                         (lambda (_%g4317243175%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g4317243175%_)))
                        (_%g4317043206%_
                         (lambda (_%g4317243183%_)
                           (_%generate-fini42777%_
                            (cons (gx#datum->syntax '#f 'lambda)
                                  (cons '() (cons _%g4317243183%_ '())))
                            (foldr (lambda (_%g4319743200%_ _%g4319843203%_)
                                     (cons _%g4319743200%_ _%g4319843203%_))
                                   '()
                                   _%g4306343150%_)))))
                   (_%g4317043206%_
                    (_%generate-catch42778%_
                     _%handlers43040%_
                     (_%generate-thunk42775%_ _%body42867%_))))))
              (_%__kont4536445365%_
               (lambda ()
                 (_%generate-catch42778%_
                  _%handlers43040%_
                  (_%generate-thunk42775%_ _%body42867%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_%g4304343095%_
                                                          (lambda ()
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%__stx4535345354%_)
                        (_%__kont4536445365%_)
                        (_%g4304443084%_))))
                 (_%__match4541445415%_
                  (lambda (_%e4306443102%_
                           _%hd4306543106%_
                           _%tl4306643109%_
                           _%e4306743112%_
                           _%hd4306843116%_
                           _%tl4306943119%_
                           _%__splice4536245363%_
                           _%target4307043122%_
                           _%tl4307243125%_)
                    (letrec ((_%loop4307343128%_
                              (lambda (_%hd4307143132%_ _%fini4307743135%_)
                                (if (gx#stx-pair? _%hd4307143132%_)
                                    (let ((_%e4307443137%_
                                           (gx#syntax-e _%hd4307143132%_)))
                                      (let ((_%lp-tl4307643144%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4307443137%_)))
                                            (_%lp-hd4307543141%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4307443137%_))))
                                        (_%loop4307343128%_
                                         _%lp-tl4307643144%_
                                         (cons _%lp-hd4307543141%_
                                               _%fini4307743135%_))))
                                    (let ((_%fini4307843147%_
                                           (reverse _%fini4307743135%_)))
                                      (if (gx#stx-null? _%tl4306643109%_)
                                          (_%__kont4536045361%_
                                           _%fini4307843147%_)
                                          (_%g4304443084%_)))))))
                      (_%loop4307343128%_ _%target4307043122%_ '()))))
                 (_%__match4539045391%_
                  (lambda (_%e4304843217%_
                           _%hd4304943221%_
                           _%tl4305043224%_
                           _%e4305143227%_
                           _%hd4305243231%_
                           _%tl4305343234%_
                           _%__splice4535845359%_
                           _%target4305443237%_
                           _%tl4305643240%_)
                    (letrec ((_%loop4305743243%_
                              (lambda (_%hd4305543247%_ _%handler4306143250%_)
                                (if (gx#stx-pair? _%hd4305543247%_)
                                    (let ((_%e4305843252%_
                                           (gx#syntax-e _%hd4305543247%_)))
                                      (let ((_%lp-tl4306043259%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4305843252%_)))
                                            (_%lp-hd4305943256%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4305843252%_))))
                                        (_%loop4305743243%_
                                         _%lp-tl4306043259%_
                                         (cons _%lp-hd4305943256%_
                                               _%handler4306143250%_))))
                                    (let ((_%handler4306243262%_
                                           (reverse _%handler4306143250%_)))
                                      (_%__kont4535645357%_
                                       _%tl4305043224%_
                                       _%handler4306243262%_))))))
                      (_%loop4305743243%_ _%target4305443237%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair?
                                                         _%__stx4535345354%_)
                                                        (let ((_%e4304843217%_
                                                               (gx#syntax-e
                                                                _%__stx4535345354%_)))
                                                          (let ((_%tl4305043224%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e4304843217%_)))
                        (_%hd4304943221%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4304843217%_))))
                    (if (gx#stx-pair? _%hd4304943221%_)
                        (let ((_%e4305143227%_ (gx#syntax-e _%hd4304943221%_)))
                          (let ((_%tl4305343234%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4305143227%_)))
                                (_%hd4305243231%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4305143227%_))))
                            (if (gx#identifier? _%hd4305243231%_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/more-sugar[1]#_g45530_|
                                     _%hd4305243231%_)
                                    (if (gx#stx-pair/null? _%tl4305343234%_)
                                        (let ((_%__splice4535845359%_
                                               (gx#syntax-split-splice->vector
                                                _%tl4305343234%_
                                                '0)))
                                          (let ((_%tl4305643240%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4535845359%_
                                                    '1)))
                                                (_%target4305443237%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4535845359%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl4305643240%_)
                                                (_%__match4539045391%_
                                                 _%e4304843217%_
                                                 _%hd4304943221%_
                                                 _%tl4305043224%_
                                                 _%e4305143227%_
                                                 _%hd4305243231%_
                                                 _%tl4305343234%_
                                                 _%__splice4535845359%_
                                                 _%target4305443237%_
                                                 _%tl4305643240%_)
                                                (_%g4304443084%_))))
                                        (_%g4304443084%_))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/more-sugar[1]#_g45531_|
                                         _%hd4305243231%_)
                                        (if (gx#stx-pair/null?
                                             _%tl4305343234%_)
                                            (let ((_%__splice4536245363%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4305343234%_
                                                    '0)))
                                              (let ((_%tl4307243125%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4536245363%_
                                                        '1)))
                                                    (_%target4307043122%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4536245363%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4307243125%_)
                                                    (_%__match4541445415%_
                                                     _%e4304843217%_
                                                     _%hd4304943221%_
                                                     _%tl4305043224%_
                                                     _%e4305143227%_
                                                     _%hd4305243231%_
                                                     _%tl4305343234%_
                                                     _%__splice4536245363%_
                                                     _%target4307043122%_
                                                     _%tl4307243125%_)
                                                    (_%g4304443084%_))))
                                            (_%g4304443084%_))
                                        (_%g4304443084%_)))
                                (_%g4304443084%_))))
                        (_%g4304443084%_))))
                (_%g4304343095%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%__kont4543045431%_
                                          (lambda ()
                                            (_%lp42862%_
                                             _%g4287242910%_
                                             (cons _%g4287342912%_
                                                   _%body42867%_)))))
                                     (let* ((_%__match4546845469%_
                                             (lambda (_%e4294542980%_
                                                      _%hd4294642984%_
                                                      _%tl4294742987%_
                                                      _%__splice4542845429%_
                                                      _%target4294842990%_
                                                      _%tl4295042993%_)
                                               (letrec ((_%loop4295142996%_
                                                         (lambda (_%hd4294943000%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%handler4295543003%_)
                   (if (gx#stx-pair? _%hd4294943000%_)
                       (let ((_%e4295243005%_ (gx#syntax-e _%hd4294943000%_)))
                         (let ((_%lp-tl4295443012%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4295243005%_)))
                               (_%lp-hd4295343009%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4295243005%_))))
                           (_%loop4295142996%_
                            _%lp-tl4295443012%_
                            (cons _%lp-hd4295343009%_ _%handler4295543003%_))))
                       (let ((_%handler4295643015%_
                              (reverse _%handler4295543003%_)))
                         (_%__kont4542645427%_ _%handler4295643015%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4295142996%_
                                                  _%target4294842990%_
                                                  '()))))
                                            (_%__match4545045451%_
                                             (lambda (_%e4293243311%_
                                                      _%hd4293343315%_
                                                      _%tl4293443318%_
                                                      _%__splice4542445425%_
                                                      _%target4293543321%_
                                                      _%tl4293743324%_)
                                               (letrec ((_%loop4293843327%_
                                                         (lambda (_%hd4293643331%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%fini4294243334%_)
                   (if (gx#stx-pair? _%hd4293643331%_)
                       (let ((_%e4293943336%_ (gx#syntax-e _%hd4293643331%_)))
                         (let ((_%lp-tl4294143343%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4293943336%_)))
                               (_%lp-hd4294043340%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4293943336%_))))
                           (_%loop4293843327%_
                            _%lp-tl4294143343%_
                            (cons _%lp-hd4294043340%_ _%fini4294243334%_))))
                       (let ((_%fini4294343346%_ (reverse _%fini4294243334%_)))
                         (_%__kont4542245423%_ _%fini4294343346%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%loop4293843327%_
                                                  _%target4293543321%_
                                                  '())))))
                                       (if (gx#stx-pair? _%__stx4541945420%_)
                                           (let ((_%e4293243311%_
                                                  (gx#syntax-e
                                                   _%__stx4541945420%_)))
                                             (let ((_%tl4293443318%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e4293243311%_)))
                                                   (_%hd4293343315%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e4293243311%_))))
                                               (if (gx#identifier?
                                                    _%hd4293343315%_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/more-sugar[1]#_g45532_|
                                                        _%hd4293343315%_)
                                                       (if (gx#stx-pair/null?
                                                            _%tl4293443318%_)
                                                           (let ((_%__splice4542445425%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice->vector
                           _%tl4293443318%_
                           '0)))
                     (let ((_%tl4293743324%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4542445425%_ '1)))
                           (_%target4293543321%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4542445425%_ '0))))
                       (if (gx#stx-null? _%tl4293743324%_)
                           (_%__match4545045451%_
                            _%e4293243311%_
                            _%hd4293343315%_
                            _%tl4293443318%_
                            _%__splice4542445425%_
                            _%target4293543321%_
                            _%tl4293743324%_)
                           (_%__kont4543045431%_))))
                   (_%__kont4543045431%_))
               (if (gx#free-identifier=?
                    |gerbil/core/more-sugar[1]#_g45533_|
                    _%hd4293343315%_)
                   (if (gx#stx-pair/null? _%tl4293443318%_)
                       (let ((_%__splice4542845429%_
                              (gx#syntax-split-splice->vector
                               _%tl4293443318%_
                               '0)))
                         (let ((_%tl4295042993%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4542845429%_ '1)))
                               (_%target4294842990%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4542845429%_ '0))))
                           (if (gx#stx-null? _%tl4295042993%_)
                               (_%__match4546845469%_
                                _%e4293243311%_
                                _%hd4293343315%_
                                _%tl4293443318%_
                                _%__splice4542845429%_
                                _%target4294842990%_
                                _%tl4295042993%_)
                               (_%__kont4543045431%_))))
                       (_%__kont4543045431%_))
                   (_%__kont4543045431%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont4543045431%_))))
                                           (_%__kont4543045431%_)))))))
                              (_%__kont4547645477%_
                               (lambda ()
                                 (cons 'begin (reverse _%body42867%_)))))
                          (let ((_%g4286942893%_
                                 (lambda ()
                                   (if (gx#stx-null? _%__stx4547145472%_)
                                       (_%__kont4547645477%_)
                                       (_%g4287042882%_)))))
                            (if (gx#stx-pair? _%__stx4547145472%_)
                                (let ((_%e4287442900%_
                                       (gx#syntax-e _%__stx4547145472%_)))
                                  (let ((_%tl4287642907%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4287442900%_)))
                                        (_%hd4287542904%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4287442900%_))))
                                    (_%__kont4547445475%_
                                     _%tl4287642907%_
                                     _%hd4287542904%_)))
                                (_%g4286942893%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop4278942823%_
                                             _%target4278642817%_
                                             '()))
                                          (_%g4278042800%_ _%g4278142804%_)))))
                                (_%g4278042800%_ _%g4278142804%_))))
                        (_%g4278042800%_ _%g4278142804%_)))))
            (_%g4277943388%_ _%stx42772%_)))))
    (define |gerbil/core/more-sugar[:0:]#hash|
      (lambda (_%$stx44188%_)
        (let* ((_%g4419244221%_
                (lambda (_%g4419344217%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4419344217%_)))
               (_%g4419144317%_
                (lambda (_%g4419344225%_)
                  (if (gx#stx-pair? _%g4419344225%_)
                      (let ((_%e4419644228%_ (gx#syntax-e _%g4419344225%_)))
                        (let ((_%hd4419744232%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4419644228%_)))
                              (_%tl4419844235%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4419644228%_))))
                          (if (gx#stx-pair/null? _%tl4419844235%_)
                              (let ((_g45534_
                                     (gx#syntax-split-splice
                                      _%tl4419844235%_
                                      '0)))
                                (begin
                                  (let ((_g45535_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g45534_)
                                               (##values-length _g45534_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g45535_ 2)))
                                        (error "Context expects 2 values"
                                               _g45535_)))
                                  (let ((_%target4419944238%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45534_ 0)))
                                        (_%tl4420144241%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45534_ 1))))
                                    (if (gx#stx-null? _%tl4420144241%_)
                                        (letrec ((_%loop4420244244%_
                                                  (lambda (_%hd4420044248%_
                                                           _%val4420644251%_
                                                           _%key4420744252%_)
                                                    (if (gx#stx-pair?
                                                         _%hd4420044248%_)
                                                        (let ((_%e4420344254%_
                                                               (gx#syntax-e
                                                                _%hd4420044248%_)))
                                                          (let ((_%lp-hd4420444258%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4420344254%_)))
                        (_%lp-tl4420544261%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4420344254%_))))
                    (if (gx#stx-pair? _%lp-hd4420444258%_)
                        (let ((_%e4421044264%_
                               (gx#syntax-e _%lp-hd4420444258%_)))
                          (let ((_%hd4421144268%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4421044264%_)))
                                (_%tl4421244271%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4421044264%_))))
                            (if (gx#stx-pair? _%tl4421244271%_)
                                (let ((_%e4421344274%_
                                       (gx#syntax-e _%tl4421244271%_)))
                                  (let ((_%hd4421444278%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4421344274%_)))
                                        (_%tl4421544281%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4421344274%_))))
                                    (if (gx#stx-null? _%tl4421544281%_)
                                        (_%loop4420244244%_
                                         _%lp-tl4420544261%_
                                         (cons _%hd4421444278%_
                                               _%val4420644251%_)
                                         (cons _%hd4421144268%_
                                               _%key4420744252%_))
                                        (_%g4419244221%_ _%g4419344225%_))))
                                (_%g4419244221%_ _%g4419344225%_))))
                        (_%g4419244221%_ _%g4419344225%_))))
                (let ((_%val4420844284%_ (reverse _%val4420644251%_))
                      (_%key4420944286%_ (reverse _%key4420744252%_)))
                  (cons (gx#datum->syntax '#f '~hash-table)
                        (cons (gx#datum->syntax '#f 'make-hash-table)
                              (begin
                                (gx#syntax-check-splice-targets
                                 _%val4420844284%_
                                 _%key4420944286%_)
                                (foldr (lambda (_%g4430544309%_
                                                _%g4430644312%_
                                                _%g4430744314%_)
                                         (cons (cons _%g4430644312%_
                                                     (cons _%g4430544309%_
                                                           '()))
                                               _%g4430744314%_))
                                       '()
                                       _%val4420844284%_
                                       _%key4420944286%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop4420244244%_
                                           _%target4419944238%_
                                           '()
                                           '()))
                                        (_%g4419244221%_ _%g4419344225%_)))))
                              (_%g4419244221%_ _%g4419344225%_))))
                      (_%g4419244221%_ _%g4419344225%_)))))
          (_%g4419144317%_ _%$stx44188%_))))
    (define |gerbil/core/more-sugar[:0:]#hash-eq|
      (lambda (_%$stx44322%_)
        (let* ((_%g4432644355%_
                (lambda (_%g4432744351%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4432744351%_)))
               (_%g4432544451%_
                (lambda (_%g4432744359%_)
                  (if (gx#stx-pair? _%g4432744359%_)
                      (let ((_%e4433044362%_ (gx#syntax-e _%g4432744359%_)))
                        (let ((_%hd4433144366%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4433044362%_)))
                              (_%tl4433244369%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4433044362%_))))
                          (if (gx#stx-pair/null? _%tl4433244369%_)
                              (let ((_g45536_
                                     (gx#syntax-split-splice
                                      _%tl4433244369%_
                                      '0)))
                                (begin
                                  (let ((_g45537_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g45536_)
                                               (##values-length _g45536_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g45537_ 2)))
                                        (error "Context expects 2 values"
                                               _g45537_)))
                                  (let ((_%target4433344372%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45536_ 0)))
                                        (_%tl4433544375%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45536_ 1))))
                                    (if (gx#stx-null? _%tl4433544375%_)
                                        (letrec ((_%loop4433644378%_
                                                  (lambda (_%hd4433444382%_
                                                           _%val4434044385%_
                                                           _%key4434144386%_)
                                                    (if (gx#stx-pair?
                                                         _%hd4433444382%_)
                                                        (let ((_%e4433744388%_
                                                               (gx#syntax-e
                                                                _%hd4433444382%_)))
                                                          (let ((_%lp-hd4433844392%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4433744388%_)))
                        (_%lp-tl4433944395%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4433744388%_))))
                    (if (gx#stx-pair? _%lp-hd4433844392%_)
                        (let ((_%e4434444398%_
                               (gx#syntax-e _%lp-hd4433844392%_)))
                          (let ((_%hd4434544402%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4434444398%_)))
                                (_%tl4434644405%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4434444398%_))))
                            (if (gx#stx-pair? _%tl4434644405%_)
                                (let ((_%e4434744408%_
                                       (gx#syntax-e _%tl4434644405%_)))
                                  (let ((_%hd4434844412%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4434744408%_)))
                                        (_%tl4434944415%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4434744408%_))))
                                    (if (gx#stx-null? _%tl4434944415%_)
                                        (_%loop4433644378%_
                                         _%lp-tl4433944395%_
                                         (cons _%hd4434844412%_
                                               _%val4434044385%_)
                                         (cons _%hd4434544402%_
                                               _%key4434144386%_))
                                        (_%g4432644355%_ _%g4432744359%_))))
                                (_%g4432644355%_ _%g4432744359%_))))
                        (_%g4432644355%_ _%g4432744359%_))))
                (let ((_%val4434244418%_ (reverse _%val4434044385%_))
                      (_%key4434344420%_ (reverse _%key4434144386%_)))
                  (cons (gx#datum->syntax '#f '~hash-table)
                        (cons (gx#datum->syntax '#f 'make-hash-table-eq)
                              (begin
                                (gx#syntax-check-splice-targets
                                 _%val4434244418%_
                                 _%key4434344420%_)
                                (foldr (lambda (_%g4443944443%_
                                                _%g4444044446%_
                                                _%g4444144448%_)
                                         (cons (cons _%g4444044446%_
                                                     (cons _%g4443944443%_
                                                           '()))
                                               _%g4444144448%_))
                                       '()
                                       _%val4434244418%_
                                       _%key4434344420%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop4433644378%_
                                           _%target4433344372%_
                                           '()
                                           '()))
                                        (_%g4432644355%_ _%g4432744359%_)))))
                              (_%g4432644355%_ _%g4432744359%_))))
                      (_%g4432644355%_ _%g4432744359%_)))))
          (_%g4432544451%_ _%$stx44322%_))))
    (define |gerbil/core/more-sugar[:0:]#hash-eqv|
      (lambda (_%$stx44456%_)
        (let* ((_%g4446044489%_
                (lambda (_%g4446144485%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4446144485%_)))
               (_%g4445944585%_
                (lambda (_%g4446144493%_)
                  (if (gx#stx-pair? _%g4446144493%_)
                      (let ((_%e4446444496%_ (gx#syntax-e _%g4446144493%_)))
                        (let ((_%hd4446544500%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4446444496%_)))
                              (_%tl4446644503%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4446444496%_))))
                          (if (gx#stx-pair/null? _%tl4446644503%_)
                              (let ((_g45538_
                                     (gx#syntax-split-splice
                                      _%tl4446644503%_
                                      '0)))
                                (begin
                                  (let ((_g45539_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g45538_)
                                               (##values-length _g45538_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g45539_ 2)))
                                        (error "Context expects 2 values"
                                               _g45539_)))
                                  (let ((_%target4446744506%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45538_ 0)))
                                        (_%tl4446944509%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45538_ 1))))
                                    (if (gx#stx-null? _%tl4446944509%_)
                                        (letrec ((_%loop4447044512%_
                                                  (lambda (_%hd4446844516%_
                                                           _%val4447444519%_
                                                           _%key4447544520%_)
                                                    (if (gx#stx-pair?
                                                         _%hd4446844516%_)
                                                        (let ((_%e4447144522%_
                                                               (gx#syntax-e
                                                                _%hd4446844516%_)))
                                                          (let ((_%lp-hd4447244526%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4447144522%_)))
                        (_%lp-tl4447344529%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4447144522%_))))
                    (if (gx#stx-pair? _%lp-hd4447244526%_)
                        (let ((_%e4447844532%_
                               (gx#syntax-e _%lp-hd4447244526%_)))
                          (let ((_%hd4447944536%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4447844532%_)))
                                (_%tl4448044539%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4447844532%_))))
                            (if (gx#stx-pair? _%tl4448044539%_)
                                (let ((_%e4448144542%_
                                       (gx#syntax-e _%tl4448044539%_)))
                                  (let ((_%hd4448244546%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4448144542%_)))
                                        (_%tl4448344549%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4448144542%_))))
                                    (if (gx#stx-null? _%tl4448344549%_)
                                        (_%loop4447044512%_
                                         _%lp-tl4447344529%_
                                         (cons _%hd4448244546%_
                                               _%val4447444519%_)
                                         (cons _%hd4447944536%_
                                               _%key4447544520%_))
                                        (_%g4446044489%_ _%g4446144493%_))))
                                (_%g4446044489%_ _%g4446144493%_))))
                        (_%g4446044489%_ _%g4446144493%_))))
                (let ((_%val4447644552%_ (reverse _%val4447444519%_))
                      (_%key4447744554%_ (reverse _%key4447544520%_)))
                  (cons (gx#datum->syntax '#f '~hash-table)
                        (cons (gx#datum->syntax '#f 'make-hash-table-eqv)
                              (begin
                                (gx#syntax-check-splice-targets
                                 _%val4447644552%_
                                 _%key4447744554%_)
                                (foldr (lambda (_%g4457344577%_
                                                _%g4457444580%_
                                                _%g4457544582%_)
                                         (cons (cons _%g4457444580%_
                                                     (cons _%g4457344577%_
                                                           '()))
                                               _%g4457544582%_))
                                       '()
                                       _%val4447644552%_
                                       _%key4447744554%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop4447044512%_
                                           _%target4446744506%_
                                           '()
                                           '()))
                                        (_%g4446044489%_ _%g4446144493%_)))))
                              (_%g4446044489%_ _%g4446144493%_))))
                      (_%g4446044489%_ _%g4446144493%_)))))
          (_%g4445944585%_ _%$stx44456%_))))
    (define |gerbil/core/more-sugar[:0:]#~hash-table|
      (lambda (_%stx44590%_)
        (let* ((_%g4459344617%_
                (lambda (_%g4459444613%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4459444613%_)))
               (_%g4459244858%_
                (lambda (_%g4459444621%_)
                  (if (gx#stx-pair? _%g4459444621%_)
                      (let ((_%e4459744624%_ (gx#syntax-e _%g4459444621%_)))
                        (let ((_%hd4459844628%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4459744624%_)))
                              (_%tl4459944631%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4459744624%_))))
                          (if (gx#stx-pair? _%tl4459944631%_)
                              (let ((_%e4460044634%_
                                     (gx#syntax-e _%tl4459944631%_)))
                                (let ((_%hd4460144638%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4460044634%_)))
                                      (_%tl4460244641%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4460044634%_))))
                                  (if (gx#stx-pair/null? _%tl4460244641%_)
                                      (let ((_g45540_
                                             (gx#syntax-split-splice
                                              _%tl4460244641%_
                                              '0)))
                                        (begin
                                          (let ((_g45541_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45540_)
                                                       (##values-length
                                                        _g45540_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45541_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45541_)))
                                          (let ((_%target4460344644%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45540_ 0)))
                                                (_%tl4460544647%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45540_ 1))))
                                            (if (gx#stx-null? _%tl4460544647%_)
                                                (letrec ((_%loop4460644650%_
                                                          (lambda (_%hd4460444654%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%entry4461044657%_)
                    (if (gx#stx-pair? _%hd4460444654%_)
                        (let ((_%e4460744659%_ (gx#syntax-e _%hd4460444654%_)))
                          (let ((_%lp-hd4460844663%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4460744659%_)))
                                (_%lp-tl4460944666%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4460744659%_))))
                            (_%loop4460644650%_
                             _%lp-tl4460944666%_
                             (cons _%lp-hd4460844663%_ _%entry4461044657%_))))
                        (let* ((_%entry4461144669%_
                                (reverse _%entry4461044657%_))
                               (_%g4469244700%_
                                (lambda (_%g4469344696%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g4469344696%_)))
                               (_%g4469144846%_
                                (lambda (_%g4469344704%_)
                                  (let* ((_%g4471944745%_
                                          (lambda (_%g4472044741%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g4472044741%_)))
                                         (_%g4471844834%_
                                          (lambda (_%g4472044749%_)
                                            (if (gx#stx-pair/null?
                                                 _%g4472044749%_)
                                                (let ((_g45542_
                                                       (gx#syntax-split-splice
                                                        _%g4472044749%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g45543_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g45542_)
                         (##values-length _g45542_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g45543_ 2)))
                  (error "Context expects 2 values" _g45543_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target4472344752%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g45542_
                                                              0)))
                                                          (_%tl4472544755%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g45542_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl4472544755%_)
                                                          (letrec ((_%loop4472644758%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd4472444762%_
                                     _%val4473044765%_
                                     _%key4473144766%_)
                              (if (gx#stx-pair? _%hd4472444762%_)
                                  (let ((_%e4472744768%_
                                         (gx#syntax-e _%hd4472444762%_)))
                                    (let ((_%lp-hd4472844772%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4472744768%_)))
                                          (_%lp-tl4472944775%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4472744768%_))))
                                      (if (gx#stx-pair? _%lp-hd4472844772%_)
                                          (let ((_%e4473444778%_
                                                 (gx#syntax-e
                                                  _%lp-hd4472844772%_)))
                                            (let ((_%hd4473544782%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4473444778%_)))
                                                  (_%tl4473644785%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4473444778%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4473644785%_)
                                                  (let ((_%e4473744788%_
                                                         (gx#syntax-e
                                                          _%tl4473644785%_)))
                                                    (let ((_%hd4473844792%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4473744788%_)))
                                                          (_%tl4473944795%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4473744788%_))))
                                                      (if (gx#stx-null?
                                                           _%tl4473944795%_)
                                                          (_%loop4472644758%_
                                                           _%lp-tl4472944775%_
                                                           (cons _%hd4473844792%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%val4473044765%_)
                   (cons _%hd4473544782%_ _%key4473144766%_))
                  (_%g4471944745%_ _%g4472044749%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4471944745%_
                                                   _%g4472044749%_))))
                                          (_%g4471944745%_ _%g4472044749%_))))
                                  (let ((_%val4473244798%_
                                         (reverse _%val4473044765%_))
                                        (_%key4473344800%_
                                         (reverse _%key4473144766%_)))
                                    (cons (gx#datum->syntax '#f 'let)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'ht)
                                                      (cons (cons _%hd4460144638%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'size: (cons _%g4469344704%_ '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (begin
                                                  (gx#syntax-check-splice-targets
                                                   _%val4473244798%_
                                                   _%key4473344800%_)
                                                  (foldr (lambda (_%g4482244826%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g4482344829%_
                          _%g4482444831%_)
                   (cons (cons (gx#datum->syntax '#f 'hash-put!)
                               (cons (gx#datum->syntax '#f 'ht)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'quasiquote)
                                                 (cons _%g4482344829%_ '()))
                                           (cons _%g4482244826%_ '()))))
                         _%g4482444831%_))
                 (cons (gx#datum->syntax '#f 'ht) '())
                 _%val4473244798%_
                 _%key4473344800%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                    (_%loop4472644758%_ _%target4472344752%_ '() '()))
                  (_%g4471944745%_ _%g4472044749%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g4471944745%_
                                                 _%g4472044749%_)))))
                                    (_%g4471844834%_
                                     (foldr (lambda (_%g4483744840%_
                                                     _%g4483844843%_)
                                              (cons _%g4483744840%_
                                                    _%g4483844843%_))
                                            '()
                                            _%entry4461144669%_))))))
                          (_%g4469144846%_
                           (gx#stx-length
                            (foldr (lambda (_%g4484944852%_ _%g4485044855%_)
                                     (cons _%g4484944852%_ _%g4485044855%_))
                                   '()
                                   _%entry4461144669%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4460644650%_
                                                   _%target4460344644%_
                                                   '()))
                                                (_%g4459344617%_
                                                 _%g4459444621%_)))))
                                      (_%g4459344617%_ _%g4459444621%_))))
                              (_%g4459344617%_ _%g4459444621%_))))
                      (_%g4459344617%_ _%g4459444621%_)))))
          (_%g4459244858%_ _%stx44590%_))))
    (define |gerbil/core/more-sugar[:0:]#@bytes|
      (lambda (_%stx44864%_)
        (let* ((_%g4486744881%_
                (lambda (_%g4486844877%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4486844877%_)))
               (_%g4486644953%_
                (lambda (_%g4486844885%_)
                  (if (gx#stx-pair? _%g4486844885%_)
                      (let ((_%e4487044888%_ (gx#syntax-e _%g4486844885%_)))
                        (let ((_%hd4487144892%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4487044888%_)))
                              (_%tl4487244895%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4487044888%_))))
                          (if (gx#stx-pair? _%tl4487244895%_)
                              (let ((_%e4487344898%_
                                     (gx#syntax-e _%tl4487244895%_)))
                                (let ((_%hd4487444902%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4487344898%_)))
                                      (_%tl4487544905%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4487344898%_))))
                                  (if (gx#stx-null? _%tl4487544905%_)
                                      (if (gx#stx-string? _%hd4487444902%_)
                                          (let* ((_%g4492244930%_
                                                  (lambda (_%g4492344926%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g4492344926%_)))
                                                 (_%g4492144949%_
                                                  (lambda (_%g4492344934%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'quote)
                                                          (cons _%g4492344934%_
                                                                '())))))
                                            (_%g4492144949%_
                                             (string->bytes
                                              (gx#stx-e _%hd4487444902%_))))
                                          (_%g4486744881%_ _%g4486844885%_))
                                      (_%g4486744881%_ _%g4486844885%_))))
                              (_%g4486744881%_ _%g4486844885%_))))
                      (_%g4486744881%_ _%g4486844885%_)))))
          (_%g4486644953%_ _%stx44864%_))))
    (define |gerbil/core/more-sugar[:0:]#eval-when-compile|
      (lambda (_%stx44957%_)
        (let* ((_%g4496044974%_
                (lambda (_%g4496144970%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4496144970%_)))
               (_%g4495945015%_
                (lambda (_%g4496144978%_)
                  (if (gx#stx-pair? _%g4496144978%_)
                      (let ((_%e4496344981%_ (gx#syntax-e _%g4496144978%_)))
                        (let ((_%hd4496444985%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4496344981%_)))
                              (_%tl4496544988%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4496344981%_))))
                          (if (gx#stx-pair? _%tl4496544988%_)
                              (let ((_%e4496644991%_
                                     (gx#syntax-e _%tl4496544988%_)))
                                (let ((_%hd4496744995%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4496644991%_)))
                                      (_%tl4496844998%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4496644991%_))))
                                  (if (gx#stx-null? _%tl4496844998%_)
                                      (let ()
                                        (if (gx#current-expander-compiling?)
                                            (gx#eval-syntax _%hd4496744995%_)
                                            '#!void)
                                        (cons (gx#datum->syntax '#f 'void)
                                              '()))
                                      (_%g4496044974%_ _%g4496144978%_))))
                              (_%g4496044974%_ _%g4496144978%_))))
                      (_%g4496044974%_ _%g4496144978%_)))))
          (_%g4495945015%_ _%stx44957%_))))))
