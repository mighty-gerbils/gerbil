(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-sugar[1]#_g45486_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/more-sugar[1]#_g45489_|
    (##structure
     gx#syntax-quote::t
     'catch
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g45490_|
    (##structure
     gx#syntax-quote::t
     'finally
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g45491_|
    (##structure
     gx#syntax-quote::t
     'finally
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g45492_|
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
      (lambda _%$args40819%_
        (apply make-instance
               |gerbil/core/more-sugar[1]#setq-macro::t|
               _%$args40819%_)))
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
      (lambda _%$args40815%_
        (apply make-instance
               |gerbil/core/more-sugar[1]#setf-macro::t|
               _%$args40815%_)))
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
      (lambda (_%stx40812%_)
        (if (gx#identifier? _%stx40812%_)
            (let ((__tmp45449 (gx#syntax-local-value _%stx40812%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/more-sugar[1]#setf-macro::t|
               __tmp45449))
            '#f)))
    (define |gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
      (lambda (_%stx40809%_)
        (if (gx#identifier? _%stx40809%_)
            (let ((__tmp45450 (gx#syntax-local-value _%stx40809%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/more-sugar[1]#setq-macro::t|
               __tmp45450))
            '#f)))
    (define |gerbil/core/more-sugar[1]#expand-set!|
      (lambda (_%stx40436%_)
        (let* ((_%__stx4497844979%_ _%stx40436%_)
               (_%g4044240505%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx4497844979%_))))
          (let ((_%__kont4498144982%_
                 (lambda (_%g4044440786%_ _%g4044540788%_)
                   (gx#core-apply-expander
                    (gx#syntax-local-e _%g4044540788%_)
                    _%stx40436%_)))
                (_%__kont4498344984%_
                 (lambda (_%g4045840675%_ _%g4045940677%_ _%g4046040678%_)
                   (let* ((_%g4070040708%_
                           (lambda (_%g4070140704%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g4070140704%_)))
                          (_%g4069940735%_
                           (lambda (_%g4070140712%_)
                             ((lambda (_%g4070240715%_)
                                (cons _%g4070240715%_
                                      (foldr (lambda (_%g4072640729%_
                                                      _%g4072740732%_)
                                               (cons _%g4072640729%_
                                                     _%g4072740732%_))
                                             (cons _%g4045840675%_ '())
                                             _%g4045940677%_)))
                              _%g4070140712%_))))
                     (_%g4069940735%_
                      (gx#stx-identifier
                       _%g4046040678%_
                       _%g4046040678%_
                       '"-set!")))))
                (_%__kont4498744988%_
                 (lambda (_%g4048240587%_)
                   (gx#core-apply-expander
                    (gx#syntax-local-e _%g4048240587%_)
                    _%stx40436%_)))
                (_%__kont4498944990%_
                 (lambda (_%g4048940542%_ _%g4049040544%_)
                   (cons (gx#datum->syntax '#f '%#set!)
                         (cons _%g4049040544%_ (cons _%g4048940542%_ '()))))))
            (let* ((_%__match4507745078%_
                    (lambda (_%e4049140512%_
                             _%hd4049240516%_
                             _%tl4049340519%_
                             _%e4049440522%_
                             _%hd4049540526%_
                             _%tl4049640529%_
                             _%e4049740532%_
                             _%hd4049840536%_
                             _%tl4049940539%_)
                      (let ((_%g4048940542%_ _%hd4049840536%_)
                            (_%g4049040544%_ _%hd4049540526%_))
                        (if (gx#identifier? _%g4049040544%_)
                            (_%__kont4498944990%_
                             _%g4048940542%_
                             _%g4049040544%_)
                            (let () (declare (not safe)) (_%g4044240505%_))))))
                   (_%__match4505745058%_
                    (lambda (_%e4048340567%_
                             _%hd4048440571%_
                             _%tl4048540574%_
                             _%e4048640577%_
                             _%hd4048740581%_
                             _%tl4048840584%_)
                      (let ((_%g4048240587%_ _%hd4048740581%_))
                        (if (|gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
                             _%g4048240587%_)
                            (_%__kont4498744988%_ _%g4048240587%_)
                            (if (gx#stx-pair? _%tl4048840584%_)
                                (let ((_%e4049740532%_
                                       (gx#syntax-e _%tl4048840584%_)))
                                  (let ((_%tl4049940539%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4049740532%_)))
                                        (_%hd4049840536%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4049740532%_))))
                                    (if (gx#stx-null? _%tl4049940539%_)
                                        (_%__match4507745078%_
                                         _%e4048340567%_
                                         _%hd4048440571%_
                                         _%tl4048540574%_
                                         _%e4048640577%_
                                         _%hd4048740581%_
                                         _%tl4048840584%_
                                         _%e4049740532%_
                                         _%hd4049840536%_
                                         _%tl4049940539%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g4044240505%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4044240505%_)))))))
                   (_%__match4504545046%_
                    (lambda (_%e4046140607%_
                             _%hd4046240611%_
                             _%tl4046340614%_
                             _%e4046440617%_
                             _%hd4046540621%_
                             _%tl4046640624%_
                             _%e4046740627%_
                             _%hd4046840631%_
                             _%tl4046940634%_
                             _%__splice4498544986%_
                             _%target4047040637%_
                             _%tl4047240640%_)
                      (letrec ((_%loop4047340643%_
                                (lambda (_%hd4047140647%_ _%arg4047740650%_)
                                  (if (gx#stx-pair? _%hd4047140647%_)
                                      (let ((_%e4047440652%_
                                             (gx#syntax-e _%hd4047140647%_)))
                                        (let ((_%lp-tl4047640659%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4047440652%_)))
                                              (_%lp-hd4047540656%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4047440652%_))))
                                          (_%loop4047340643%_
                                           _%lp-tl4047640659%_
                                           (cons _%lp-hd4047540656%_
                                                 _%arg4047740650%_))))
                                      (let ((_%arg4047840662%_
                                             (reverse _%arg4047740650%_)))
                                        (if (gx#stx-pair? _%tl4046640624%_)
                                            (let ((_%e4047940665%_
                                                   (gx#syntax-e
                                                    _%tl4046640624%_)))
                                              (let ((_%tl4048140672%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4047940665%_)))
                                                    (_%hd4048040669%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4047940665%_))))
                                                (if (gx#stx-null?
                                                     _%tl4048140672%_)
                                                    (let ((_%g4045840675%_
                                                           _%hd4048040669%_)
                                                          (_%g4045940677%_
                                                           _%arg4047840662%_)
                                                          (_%g4046040678%_
                                                           _%hd4046840631%_))
                                                      (if (gx#identifier?
                                                           _%g4046040678%_)
                                                          (_%__kont4498344984%_
                                                           _%g4045840675%_
                                                           _%g4045940677%_
                                                           _%g4046040678%_)
                                                          (_%__match4505745058%_
                                                           _%e4046140607%_
                                                           _%hd4046240611%_
                                                           _%tl4046340614%_
                                                           _%e4046440617%_
                                                           _%hd4046540621%_
                                                           _%tl4046640624%_)))
                                                    (_%__match4505745058%_
                                                     _%e4046140607%_
                                                     _%hd4046240611%_
                                                     _%tl4046340614%_
                                                     _%e4046440617%_
                                                     _%hd4046540621%_
                                                     _%tl4046640624%_))))
                                            (_%__match4505745058%_
                                             _%e4046140607%_
                                             _%hd4046240611%_
                                             _%tl4046340614%_
                                             _%e4046440617%_
                                             _%hd4046540621%_
                                             _%tl4046640624%_)))))))
                        (_%loop4047340643%_ _%target4047040637%_ '())))))
              (if (gx#stx-pair? _%__stx4497844979%_)
                  (let ((_%e4044640746%_ (gx#syntax-e _%__stx4497844979%_)))
                    (let ((_%tl4044840753%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4044640746%_)))
                          (_%hd4044740750%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4044640746%_))))
                      (if (gx#stx-pair? _%tl4044840753%_)
                          (let ((_%e4044940756%_
                                 (gx#syntax-e _%tl4044840753%_)))
                            (let ((_%tl4045140763%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4044940756%_)))
                                  (_%hd4045040760%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4044940756%_))))
                              (if (gx#stx-pair? _%hd4045040760%_)
                                  (let ((_%e4045240766%_
                                         (gx#syntax-e _%hd4045040760%_)))
                                    (let ((_%tl4045440773%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4045240766%_)))
                                          (_%hd4045340770%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4045240766%_))))
                                      (if (gx#stx-pair? _%tl4045140763%_)
                                          (let ((_%e4045540776%_
                                                 (gx#syntax-e
                                                  _%tl4045140763%_)))
                                            (let ((_%tl4045740783%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4045540776%_)))
                                                  (_%hd4045640780%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4045540776%_))))
                                              (if (gx#stx-null?
                                                   _%tl4045740783%_)
                                                  (if (|gerbil/core/more-sugar[1]#syntax-local-setf-macro?|
                                                       (gx#datum->syntax
                                                        '#f
                                                        'setfid))
                                                      (let ((_%g4044440786%_
                                                             _%hd4045640780%_)
                                                            (_%g4044540788%_
                                                             _%hd4045340770%_))
                                                        (_%__kont4498144982%_
                                                         _%g4044440786%_
                                                         _%g4044540788%_))
                                                      (if (gx#stx-pair/null?
                                                           _%tl4045440773%_)
                                                          (let ((_%__splice4498544986%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl4045440773%_ '0)))
                    (let ((_%tl4047240640%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice4498544986%_ '1)))
                          (_%target4047040637%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice4498544986%_ '0))))
                      (if (gx#stx-null? _%tl4047240640%_)
                          (_%__match4504545046%_
                           _%e4044640746%_
                           _%hd4044740750%_
                           _%tl4044840753%_
                           _%e4044940756%_
                           _%hd4045040760%_
                           _%tl4045140763%_
                           _%e4045240766%_
                           _%hd4045340770%_
                           _%tl4045440773%_
                           _%__splice4498544986%_
                           _%target4047040637%_
                           _%tl4047240640%_)
                          (_%__match4505745058%_
                           _%e4044640746%_
                           _%hd4044740750%_
                           _%tl4044840753%_
                           _%e4044940756%_
                           _%hd4045040760%_
                           _%tl4045140763%_))))
                  (_%__match4505745058%_
                   _%e4044640746%_
                   _%hd4044740750%_
                   _%tl4044840753%_
                   _%e4044940756%_
                   _%hd4045040760%_
                   _%tl4045140763%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl4045440773%_)
                                                      (let ((_%__splice4498544986%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl4045440773%_
                                                              '0)))
                                                        (let ((_%tl4047240640%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice4498544986%_ '1)))
                      (_%target4047040637%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice4498544986%_ '0))))
                  (if (gx#stx-null? _%tl4047240640%_)
                      (_%__match4504545046%_
                       _%e4044640746%_
                       _%hd4044740750%_
                       _%tl4044840753%_
                       _%e4044940756%_
                       _%hd4045040760%_
                       _%tl4045140763%_
                       _%e4045240766%_
                       _%hd4045340770%_
                       _%tl4045440773%_
                       _%__splice4498544986%_
                       _%target4047040637%_
                       _%tl4047240640%_)
                      (_%__match4505745058%_
                       _%e4044640746%_
                       _%hd4044740750%_
                       _%tl4044840753%_
                       _%e4044940756%_
                       _%hd4045040760%_
                       _%tl4045140763%_))))
              (_%__match4505745058%_
               _%e4044640746%_
               _%hd4044740750%_
               _%tl4044840753%_
               _%e4044940756%_
               _%hd4045040760%_
               _%tl4045140763%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl4045440773%_)
                                              (let ((_%__splice4498544986%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl4045440773%_
                                                      '0)))
                                                (let ((_%tl4047240640%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice4498544986%_
                                                          '1)))
                                                      (_%target4047040637%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice4498544986%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4047240640%_)
                                                      (_%__match4504545046%_
                                                       _%e4044640746%_
                                                       _%hd4044740750%_
                                                       _%tl4044840753%_
                                                       _%e4044940756%_
                                                       _%hd4045040760%_
                                                       _%tl4045140763%_
                                                       _%e4045240766%_
                                                       _%hd4045340770%_
                                                       _%tl4045440773%_
                                                       _%__splice4498544986%_
                                                       _%target4047040637%_
                                                       _%tl4047240640%_)
                                                      (_%__match4505745058%_
                                                       _%e4044640746%_
                                                       _%hd4044740750%_
                                                       _%tl4044840753%_
                                                       _%e4044940756%_
                                                       _%hd4045040760%_
                                                       _%tl4045140763%_))))
                                              (_%__match4505745058%_
                                               _%e4044640746%_
                                               _%hd4044740750%_
                                               _%tl4044840753%_
                                               _%e4044940756%_
                                               _%hd4045040760%_
                                               _%tl4045140763%_)))))
                                  (_%__match4505745058%_
                                   _%e4044640746%_
                                   _%hd4044740750%_
                                   _%tl4044840753%_
                                   _%e4044940756%_
                                   _%hd4045040760%_
                                   _%tl4045140763%_))))
                          (let () (declare (not safe)) (_%g4044240505%_)))))
                  (let () (declare (not safe)) (_%g4044240505%_))))))))
    (define |gerbil/core/more-sugar[:0:]#set!|
      (lambda (_%stx40824%_)
        (|gerbil/core/more-sugar[1]#expand-set!| _%stx40824%_)))
    (define |gerbil/core/more-sugar[:0:]#values-set!|
      (lambda (_%stx40827%_)
        (let* ((_%g4083040854%_
                (lambda (_%g4083140850%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4083140850%_)))
               (_%g4082941028%_
                (lambda (_%g4083140858%_)
                  (if (gx#stx-pair? _%g4083140858%_)
                      (let ((_%e4083440861%_ (gx#syntax-e _%g4083140858%_)))
                        (let ((_%hd4083540865%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4083440861%_)))
                              (_%tl4083640868%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4083440861%_))))
                          (if (gx#stx-pair/null? _%tl4083640868%_)
                              (if (let ((__tmp45451
                                         (gx#stx-length _%tl4083640868%_)))
                                    (declare (not safe))
                                    (##fx>= __tmp45451 '1))
                                  (let ((_g45452_
                                         (gx#syntax-split-splice
                                          _%tl4083640868%_
                                          '1)))
                                    (begin
                                      (let ((_g45453_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g45452_)
                                                   (##values-length _g45452_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g45453_ 2)))
                                            (error "Context expects 2 values"
                                                   _g45453_)))
                                      (let ((_%target4083740871%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g45452_ 0)))
                                            (_%tl4083940874%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g45452_ 1))))
                                        (if (gx#stx-pair? _%tl4083940874%_)
                                            (let ((_%e4084640877%_
                                                   (gx#syntax-e
                                                    _%tl4083940874%_)))
                                              (let ((_%hd4084740881%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4084640877%_)))
                                                    (_%tl4084840884%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4084640877%_))))
                                                (if (gx#stx-null?
                                                     _%tl4084840884%_)
                                                    (letrec ((_%loop4084040887%_
                                                              (lambda (_%hd4083840891%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tgt4084440894%_)
                        (if (gx#stx-pair? _%hd4083840891%_)
                            (let ((_%e4084140896%_
                                   (gx#syntax-e _%hd4083840891%_)))
                              (let ((_%lp-hd4084240900%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4084140896%_)))
                                    (_%lp-tl4084340903%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4084140896%_))))
                                (_%loop4084040887%_
                                 _%lp-tl4084340903%_
                                 (cons _%lp-hd4084240900%_
                                       _%tgt4084440894%_))))
                            (let ((_%tgt4084540906%_
                                   (reverse _%tgt4084440894%_)))
                              ((lambda (_%g4083240909%_ _%g4083340911%_)
                                 (let* ((_%g4092940946%_
                                         (lambda (_%g4093040942%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g4093040942%_)))
                                        (_%g4092841016%_
                                         (lambda (_%g4093040950%_)
                                           (if (gx#stx-pair/null?
                                                _%g4093040950%_)
                                               (let ((_g45454_
                                                      (gx#syntax-split-splice
                                                       _%g4093040950%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g45455_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g45454_)
                        (##values-length _g45454_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g45455_ 2)))
                 (error "Context expects 2 values" _g45455_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target4093240953%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g45454_
                                                             0)))
                                                         (_%tl4093440956%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g45454_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl4093440956%_)
                                                         (letrec ((_%loop4093540959%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd4093340963%_ _%$e4093940966%_)
                             (if (gx#stx-pair? _%hd4093340963%_)
                                 (let ((_%e4093640968%_
                                        (gx#syntax-e _%hd4093340963%_)))
                                   (let ((_%lp-hd4093740972%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4093640968%_)))
                                         (_%lp-tl4093840975%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4093640968%_))))
                                     (_%loop4093540959%_
                                      _%lp-tl4093840975%_
                                      (cons _%lp-hd4093740972%_
                                            _%$e4093940966%_))))
                                 (let ((_%$e4094040978%_
                                        (reverse _%$e4093940966%_)))
                                   ((lambda (_%g4093140981%_)
                                      (cons (gx#datum->syntax '#f 'let-values)
                                            (cons (cons (cons (foldr (lambda (_%g4099641002%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%g4099741005%_)
                               (cons _%g4099641002%_ _%g4099741005%_))
                             '()
                             _%g4093140981%_)
                      (cons _%g4083240909%_ '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    (gx#syntax-check-splice-targets
                                                     _%g4093140981%_
                                                     _%g4083340911%_)
                                                    (foldr (lambda (_%g4099841008%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g4099941011%_
                            _%g4100041013%_)
                     (cons (cons (gx#datum->syntax '#f 'set!)
                                 (cons _%g4099941011%_
                                       (cons _%g4099841008%_ '())))
                           _%g4100041013%_))
                   '()
                   _%g4093140981%_
                   _%g4083340911%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%$e4094040978%_))))))
                   (_%loop4093540959%_ _%target4093240953%_ '()))
                 (_%g4092940946%_ _%g4093040950%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g4092940946%_
                                                _%g4093040950%_)))))
                                   (_%g4092841016%_
                                    (gx#gentemps
                                     (foldr (lambda (_%g4101941022%_
                                                     _%g4102041025%_)
                                              (cons _%g4101941022%_
                                                    _%g4102041025%_))
                                            '()
                                            _%g4083340911%_)))))
                               _%hd4084740881%_
                               _%tgt4084540906%_))))))
              (_%loop4084040887%_ _%target4083740871%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4083040854%_
                                                     _%g4083140858%_))))
                                            (_%g4083040854%_
                                             _%g4083140858%_)))))
                                  (_%g4083040854%_ _%g4083140858%_))
                              (_%g4083040854%_ _%g4083140858%_))))
                      (_%g4083040854%_ _%g4083140858%_)))))
          (_%g4082941028%_ _%stx40827%_))))
    (define |gerbil/core/more-sugar[:0:]#parameterize|
      (lambda (_%$stx41034%_)
        (let* ((_%__stx4508045081%_ _%$stx41034%_)
               (_%g4104041128%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx4508045081%_))))
          (let ((_%__kont4508345084%_
                 (lambda (_%g4104241468%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g4148441487%_ _%g4148541490%_)
                                        (cons _%g4148441487%_ _%g4148541490%_))
                                      '()
                                      _%g4104241468%_)))))
                (_%__kont4508745088%_
                 (lambda (_%g4105841378%_ _%g4105941380%_ _%g4106041381%_)
                   (cons (gx#datum->syntax '#f 'call-with-parameters)
                         (cons (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '()
                                           (foldr (lambda (_%g4140441407%_
                                                           _%g4140541410%_)
                                                    (cons _%g4140441407%_
                                                          _%g4140541410%_))
                                                  '()
                                                  _%g4105841378%_)))
                               (cons _%g4106041381%_
                                     (cons _%g4105941380%_ '()))))))
                (_%__kont4509145092%_
                 (lambda (_%g4108541241%_
                          _%g4108641243%_
                          _%g4108741244%_
                          _%g4108841245%_
                          _%g4108941246%_)
                   (cons (gx#datum->syntax '#f 'call-with-parameters)
                         (cons (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '()
                                           (cons (cons _%g4108941246%_
                                                       (cons (foldr (lambda (_%g4127641281%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g4127741284%_)
                              (cons _%g4127641281%_ _%g4127741284%_))
                            '()
                            _%g4108641243%_)
                     (foldr (lambda (_%g4127841287%_ _%g4127941290%_)
                              (cons _%g4127841287%_ _%g4127941290%_))
                            '()
                            _%g4108541241%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%g4108841245%_
                                     (cons _%g4108741244%_ '())))))))
            (let* ((_%__match4520145202%_
                    (lambda (_%e4109041135%_
                             _%hd4109141139%_
                             _%tl4109241142%_
                             _%e4109341145%_
                             _%hd4109441149%_
                             _%tl4109541152%_
                             _%e4109641155%_
                             _%hd4109741159%_
                             _%tl4109841162%_
                             _%e4109941165%_
                             _%hd4110041169%_
                             _%tl4110141172%_
                             _%e4110241175%_
                             _%hd4110341179%_
                             _%tl4110441182%_
                             _%__splice4509345094%_
                             _%target4110541185%_
                             _%tl4110741188%_)
                      (letrec ((_%loop4110841191%_
                                (lambda (_%hd4110641195%_ _%rest4111241198%_)
                                  (if (gx#stx-pair? _%hd4110641195%_)
                                      (let ((_%e4110941200%_
                                             (gx#syntax-e _%hd4110641195%_)))
                                        (let ((_%lp-tl4111141207%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4110941200%_)))
                                              (_%lp-hd4111041204%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4110941200%_))))
                                          (_%loop4110841191%_
                                           _%lp-tl4111141207%_
                                           (cons _%lp-hd4111041204%_
                                                 _%rest4111241198%_))))
                                      (let ((_%rest4111341210%_
                                             (reverse _%rest4111241198%_)))
                                        (if (gx#stx-pair/null?
                                             _%tl4109541152%_)
                                            (let ((_%__splice4509545096%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4109541152%_
                                                    '0)))
                                              (let ((_%tl4111641216%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4509545096%_
                                                        '1)))
                                                    (_%target4111441213%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4509545096%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4111641216%_)
                                                    (letrec ((_%loop4111741219%_
                                                              (lambda (_%hd4111541223%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body4112141226%_)
                        (if (gx#stx-pair? _%hd4111541223%_)
                            (let ((_%e4111841228%_
                                   (gx#syntax-e _%hd4111541223%_)))
                              (let ((_%lp-tl4112041235%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4111841228%_)))
                                    (_%lp-hd4111941232%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4111841228%_))))
                                (_%loop4111741219%_
                                 _%lp-tl4112041235%_
                                 (cons _%lp-hd4111941232%_
                                       _%body4112141226%_))))
                            (let ((_%body4112241238%_
                                   (reverse _%body4112141226%_)))
                              (_%__kont4509145092%_
                               _%body4112241238%_
                               _%rest4111341210%_
                               _%hd4110341179%_
                               _%hd4110041169%_
                               _%hd4109141139%_))))))
              (_%loop4111741219%_ _%target4111441213%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4104041128%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4104041128%_))))))))
                        (_%loop4110841191%_ _%target4110541185%_ '()))))
                   (_%__match4516145162%_
                    (lambda (_%e4106141300%_
                             _%hd4106241304%_
                             _%tl4106341307%_
                             _%e4106441310%_
                             _%hd4106541314%_
                             _%tl4106641317%_
                             _%e4106741320%_
                             _%hd4106841324%_
                             _%tl4106941327%_
                             _%e4107041330%_
                             _%hd4107141334%_
                             _%tl4107241337%_
                             _%e4107341340%_
                             _%hd4107441344%_
                             _%tl4107541347%_
                             _%__splice4508945090%_
                             _%target4107641350%_
                             _%tl4107841353%_)
                      (letrec ((_%loop4107941356%_
                                (lambda (_%hd4107741360%_ _%body4108341363%_)
                                  (if (gx#stx-pair? _%hd4107741360%_)
                                      (let ((_%e4108041365%_
                                             (gx#syntax-e _%hd4107741360%_)))
                                        (let ((_%lp-tl4108241372%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4108041365%_)))
                                              (_%lp-hd4108141369%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4108041365%_))))
                                          (_%loop4107941356%_
                                           _%lp-tl4108241372%_
                                           (cons _%lp-hd4108141369%_
                                                 _%body4108341363%_))))
                                      (let ((_%body4108441375%_
                                             (reverse _%body4108341363%_)))
                                        (_%__kont4508745088%_
                                         _%body4108441375%_
                                         _%hd4107441344%_
                                         _%hd4107141334%_))))))
                        (_%loop4107941356%_ _%target4107641350%_ '()))))
                   (_%__match4511945120%_
                    (lambda (_%e4104341420%_
                             _%hd4104441424%_
                             _%tl4104541427%_
                             _%e4104641430%_
                             _%hd4104741434%_
                             _%tl4104841437%_
                             _%__splice4508545086%_
                             _%target4104941440%_
                             _%tl4105141443%_)
                      (letrec ((_%loop4105241446%_
                                (lambda (_%hd4105041450%_ _%body4105641453%_)
                                  (if (gx#stx-pair? _%hd4105041450%_)
                                      (let ((_%e4105341455%_
                                             (gx#syntax-e _%hd4105041450%_)))
                                        (let ((_%lp-tl4105541462%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4105341455%_)))
                                              (_%lp-hd4105441459%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4105341455%_))))
                                          (_%loop4105241446%_
                                           _%lp-tl4105541462%_
                                           (cons _%lp-hd4105441459%_
                                                 _%body4105641453%_))))
                                      (let ((_%body4105741465%_
                                             (reverse _%body4105641453%_)))
                                        (_%__kont4508345084%_
                                         _%body4105741465%_))))))
                        (_%loop4105241446%_ _%target4104941440%_ '())))))
              (if (gx#stx-pair? _%__stx4508045081%_)
                  (let ((_%e4104341420%_ (gx#syntax-e _%__stx4508045081%_)))
                    (let ((_%tl4104541427%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4104341420%_)))
                          (_%hd4104441424%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4104341420%_))))
                      (if (gx#stx-pair? _%tl4104541427%_)
                          (let ((_%e4104641430%_
                                 (gx#syntax-e _%tl4104541427%_)))
                            (let ((_%tl4104841437%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4104641430%_)))
                                  (_%hd4104741434%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4104641430%_))))
                              (if (gx#stx-null? _%hd4104741434%_)
                                  (if (gx#stx-pair/null? _%tl4104841437%_)
                                      (let ((_%__splice4508545086%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4104841437%_
                                              '0)))
                                        (let ((_%tl4105141443%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4508545086%_
                                                  '1)))
                                              (_%target4104941440%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4508545086%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4105141443%_)
                                              (_%__match4511945120%_
                                               _%e4104341420%_
                                               _%hd4104441424%_
                                               _%tl4104541427%_
                                               _%e4104641430%_
                                               _%hd4104741434%_
                                               _%tl4104841437%_
                                               _%__splice4508545086%_
                                               _%target4104941440%_
                                               _%tl4105141443%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4104041128%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4104041128%_)))
                                  (if (gx#stx-pair? _%hd4104741434%_)
                                      (let ((_%e4106741320%_
                                             (gx#syntax-e _%hd4104741434%_)))
                                        (let ((_%tl4106941327%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4106741320%_)))
                                              (_%hd4106841324%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4106741320%_))))
                                          (if (gx#stx-pair? _%hd4106841324%_)
                                              (let ((_%e4107041330%_
                                                     (gx#syntax-e
                                                      _%hd4106841324%_)))
                                                (let ((_%tl4107241337%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4107041330%_)))
                                                      (_%hd4107141334%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4107041330%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl4107241337%_)
                                                      (let ((_%e4107341340%_
                                                             (gx#syntax-e
                                                              _%tl4107241337%_)))
                                                        (let ((_%tl4107541347%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4107341340%_)))
                      (_%hd4107441344%_
                       (let () (declare (not safe)) (##car _%e4107341340%_))))
                  (if (gx#stx-null? _%tl4107541347%_)
                      (if (gx#stx-null? _%tl4106941327%_)
                          (if (gx#stx-pair/null? _%tl4104841437%_)
                              (let ((_%__splice4508945090%_
                                     (gx#syntax-split-splice->vector
                                      _%tl4104841437%_
                                      '0)))
                                (let ((_%tl4107841353%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4508945090%_
                                          '1)))
                                      (_%target4107641350%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4508945090%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4107841353%_)
                                      (_%__match4516145162%_
                                       _%e4104341420%_
                                       _%hd4104441424%_
                                       _%tl4104541427%_
                                       _%e4104641430%_
                                       _%hd4104741434%_
                                       _%tl4104841437%_
                                       _%e4106741320%_
                                       _%hd4106841324%_
                                       _%tl4106941327%_
                                       _%e4107041330%_
                                       _%hd4107141334%_
                                       _%tl4107241337%_
                                       _%e4107341340%_
                                       _%hd4107441344%_
                                       _%tl4107541347%_
                                       _%__splice4508945090%_
                                       _%target4107641350%_
                                       _%tl4107841353%_)
                                      (if (gx#stx-pair/null? _%tl4106941327%_)
                                          (let ((_%__splice4509345094%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl4106941327%_
                                                  '0)))
                                            (let ((_%tl4110741188%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4509345094%_
                                                      '1)))
                                                  (_%target4110541185%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4509345094%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4110741188%_)
                                                  (_%__match4520145202%_
                                                   _%e4104341420%_
                                                   _%hd4104441424%_
                                                   _%tl4104541427%_
                                                   _%e4104641430%_
                                                   _%hd4104741434%_
                                                   _%tl4104841437%_
                                                   _%e4106741320%_
                                                   _%hd4106841324%_
                                                   _%tl4106941327%_
                                                   _%e4107041330%_
                                                   _%hd4107141334%_
                                                   _%tl4107241337%_
                                                   _%e4107341340%_
                                                   _%hd4107441344%_
                                                   _%tl4107541347%_
                                                   _%__splice4509345094%_
                                                   _%target4110541185%_
                                                   _%tl4110741188%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4104041128%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4104041128%_))))))
                              (if (gx#stx-pair/null? _%tl4106941327%_)
                                  (let ((_%__splice4509345094%_
                                         (gx#syntax-split-splice->vector
                                          _%tl4106941327%_
                                          '0)))
                                    (let ((_%tl4110741188%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice4509345094%_
                                              '1)))
                                          (_%target4110541185%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice4509345094%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4110741188%_)
                                          (_%__match4520145202%_
                                           _%e4104341420%_
                                           _%hd4104441424%_
                                           _%tl4104541427%_
                                           _%e4104641430%_
                                           _%hd4104741434%_
                                           _%tl4104841437%_
                                           _%e4106741320%_
                                           _%hd4106841324%_
                                           _%tl4106941327%_
                                           _%e4107041330%_
                                           _%hd4107141334%_
                                           _%tl4107241337%_
                                           _%e4107341340%_
                                           _%hd4107441344%_
                                           _%tl4107541347%_
                                           _%__splice4509345094%_
                                           _%target4110541185%_
                                           _%tl4110741188%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4104041128%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4104041128%_))))
                          (if (gx#stx-pair/null? _%tl4106941327%_)
                              (let ((_%__splice4509345094%_
                                     (gx#syntax-split-splice->vector
                                      _%tl4106941327%_
                                      '0)))
                                (let ((_%tl4110741188%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4509345094%_
                                          '1)))
                                      (_%target4110541185%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4509345094%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4110741188%_)
                                      (_%__match4520145202%_
                                       _%e4104341420%_
                                       _%hd4104441424%_
                                       _%tl4104541427%_
                                       _%e4104641430%_
                                       _%hd4104741434%_
                                       _%tl4104841437%_
                                       _%e4106741320%_
                                       _%hd4106841324%_
                                       _%tl4106941327%_
                                       _%e4107041330%_
                                       _%hd4107141334%_
                                       _%tl4107241337%_
                                       _%e4107341340%_
                                       _%hd4107441344%_
                                       _%tl4107541347%_
                                       _%__splice4509345094%_
                                       _%target4110541185%_
                                       _%tl4110741188%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4104041128%_)))))
                              (let () (declare (not safe)) (_%g4104041128%_))))
                      (let () (declare (not safe)) (_%g4104041128%_)))))
              (let () (declare (not safe)) (_%g4104041128%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4104041128%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4104041128%_))))))
                          (let () (declare (not safe)) (_%g4104041128%_)))))
                  (let () (declare (not safe)) (_%g4104041128%_))))))))
    (define |gerbil/core/more-sugar[:0:]#let/cc|
      (lambda (_%$stx41501%_)
        (let* ((_%g4150541529%_
                (lambda (_%g4150641525%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4150641525%_)))
               (_%g4150441612%_
                (lambda (_%g4150641533%_)
                  (if (gx#stx-pair? _%g4150641533%_)
                      (let ((_%e4150941536%_ (gx#syntax-e _%g4150641533%_)))
                        (let ((_%hd4151041540%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4150941536%_)))
                              (_%tl4151141543%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4150941536%_))))
                          (if (gx#stx-pair? _%tl4151141543%_)
                              (let ((_%e4151241546%_
                                     (gx#syntax-e _%tl4151141543%_)))
                                (let ((_%hd4151341550%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4151241546%_)))
                                      (_%tl4151441553%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4151241546%_))))
                                  (if (gx#stx-pair/null? _%tl4151441553%_)
                                      (let ((_g45456_
                                             (gx#syntax-split-splice
                                              _%tl4151441553%_
                                              '0)))
                                        (begin
                                          (let ((_g45457_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45456_)
                                                       (##values-length
                                                        _g45456_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45457_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45457_)))
                                          (let ((_%target4151541556%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45456_ 0)))
                                                (_%tl4151741559%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45456_ 1))))
                                            (if (gx#stx-null? _%tl4151741559%_)
                                                (letrec ((_%loop4151841562%_
                                                          (lambda (_%hd4151641566%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4152241569%_)
                    (if (gx#stx-pair? _%hd4151641566%_)
                        (let ((_%e4151941571%_ (gx#syntax-e _%hd4151641566%_)))
                          (let ((_%lp-hd4152041575%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4151941571%_)))
                                (_%lp-tl4152141578%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4151941571%_))))
                            (_%loop4151841562%_
                             _%lp-tl4152141578%_
                             (cons _%lp-hd4152041575%_ _%body4152241569%_))))
                        (let ((_%body4152341581%_
                               (reverse _%body4152241569%_)))
                          ((lambda (_%g4150741584%_ _%g4150841586%_)
                             (if (gx#identifier? _%g4150841586%_)
                                 (cons (gx#datum->syntax '#f 'call/cc)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons (cons _%g4150841586%_
                                                               '())
                                                         (foldr (lambda (_%g4160341606%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g4160441609%_)
                          (cons _%g4160341606%_ _%g4160441609%_))
                        '()
                        _%g4150741584%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (_%g4150541529%_ _%g4150641533%_)))
                           _%body4152341581%_
                           _%hd4151341550%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4151841562%_
                                                   _%target4151541556%_
                                                   '()))
                                                (_%g4150541529%_
                                                 _%g4150641533%_)))))
                                      (_%g4150541529%_ _%g4150641533%_))))
                              (_%g4150541529%_ _%g4150641533%_))))
                      (_%g4150541529%_ _%g4150641533%_)))))
          (_%g4150441612%_ _%$stx41501%_))))
    (define |gerbil/core/more-sugar[:0:]#unwind-protect|
      (lambda (_%$stx41617%_)
        (let* ((_%g4162141649%_
                (lambda (_%g4162241645%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4162241645%_)))
               (_%g4162041746%_
                (lambda (_%g4162241653%_)
                  (if (gx#stx-pair? _%g4162241653%_)
                      (let ((_%e4162641656%_ (gx#syntax-e _%g4162241653%_)))
                        (let ((_%hd4162741660%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4162641656%_)))
                              (_%tl4162841663%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4162641656%_))))
                          (if (gx#stx-pair? _%tl4162841663%_)
                              (let ((_%e4162941666%_
                                     (gx#syntax-e _%tl4162841663%_)))
                                (let ((_%hd4163041670%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4162941666%_)))
                                      (_%tl4163141673%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4162941666%_))))
                                  (if (gx#stx-pair? _%tl4163141673%_)
                                      (let ((_%e4163241676%_
                                             (gx#syntax-e _%tl4163141673%_)))
                                        (let ((_%hd4163341680%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4163241676%_)))
                                              (_%tl4163441683%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4163241676%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4163441683%_)
                                              (let ((_g45458_
                                                     (gx#syntax-split-splice
                                                      _%tl4163441683%_
                                                      '0)))
                                                (begin
                                                  (let ((_g45459_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g45458_)
                                                               (##values-length
                                                                _g45458_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g45459_ 2)))
                (error "Context expects 2 values" _g45459_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target4163541686%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45458_
                                                            0)))
                                                        (_%tl4163741689%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45458_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl4163741689%_)
                                                        (letrec ((_%loop4163841692%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd4163641696%_ _%rest4164241699%_)
                            (if (gx#stx-pair? _%hd4163641696%_)
                                (let ((_%e4163941701%_
                                       (gx#syntax-e _%hd4163641696%_)))
                                  (let ((_%lp-hd4164041705%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4163941701%_)))
                                        (_%lp-tl4164141708%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4163941701%_))))
                                    (_%loop4163841692%_
                                     _%lp-tl4164141708%_
                                     (cons _%lp-hd4164041705%_
                                           _%rest4164241699%_))))
                                (let ((_%rest4164341711%_
                                       (reverse _%rest4164241699%_)))
                                  ((lambda (_%g4162341714%_
                                            _%g4162441716%_
                                            _%g4162541717%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'with-unwind-protect)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons '()
                                                             (cons _%g4162541717%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%g4162441716%_
                                 (foldr (lambda (_%g4173741740%_
                                                 _%g4173841743%_)
                                          (cons _%g4173741740%_
                                                _%g4173841743%_))
                                        '()
                                        _%g4162341714%_))))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%rest4164341711%_
                                   _%hd4163341680%_
                                   _%hd4163041670%_))))))
                  (_%loop4163841692%_ _%target4163541686%_ '()))
                (_%g4162141649%_ _%g4162241653%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4162141649%_
                                               _%g4162241653%_))))
                                      (_%g4162141649%_ _%g4162241653%_))))
                              (_%g4162141649%_ _%g4162241653%_))))
                      (_%g4162141649%_ _%g4162241653%_)))))
          (_%g4162041746%_ _%$stx41617%_))))
    (define |gerbil/core/more-sugar[:0:]#do|
      (lambda (_%$stx41751%_)
        (let* ((_%g4175541826%_
                (lambda (_%g4175641822%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4175641822%_)))
               (_%g4175442103%_
                (lambda (_%g4175641830%_)
                  (if (gx#stx-pair? _%g4175641830%_)
                      (let ((_%e4176341833%_ (gx#syntax-e _%g4175641830%_)))
                        (let ((_%hd4176441837%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4176341833%_)))
                              (_%tl4176541840%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4176341833%_))))
                          (if (gx#stx-pair? _%tl4176541840%_)
                              (let ((_%e4176641843%_
                                     (gx#syntax-e _%tl4176541840%_)))
                                (let ((_%hd4176741847%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4176641843%_)))
                                      (_%tl4176841850%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4176641843%_))))
                                  (if (gx#stx-pair/null? _%hd4176741847%_)
                                      (let ((_g45460_
                                             (gx#syntax-split-splice
                                              _%hd4176741847%_
                                              '0)))
                                        (begin
                                          (let ((_g45461_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45460_)
                                                       (##values-length
                                                        _g45460_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45461_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45461_)))
                                          (let ((_%target4176941853%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45460_ 0)))
                                                (_%tl4177141856%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45460_ 1))))
                                            (if (gx#stx-null? _%tl4177141856%_)
                                                (letrec ((_%loop4177241859%_
                                                          (lambda (_%hd4177041863%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%step4177641866%_
                           _%init4177741867%_
                           _%var4177841868%_)
                    (if (gx#stx-pair? _%hd4177041863%_)
                        (let ((_%e4177341870%_ (gx#syntax-e _%hd4177041863%_)))
                          (let ((_%lp-hd4177441874%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4177341870%_)))
                                (_%lp-tl4177541877%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4177341870%_))))
                            (if (gx#stx-pair? _%lp-hd4177441874%_)
                                (let ((_%e4178241880%_
                                       (gx#syntax-e _%lp-hd4177441874%_)))
                                  (let ((_%hd4178341884%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4178241880%_)))
                                        (_%tl4178441887%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4178241880%_))))
                                    (if (gx#stx-pair? _%tl4178441887%_)
                                        (let ((_%e4178541890%_
                                               (gx#syntax-e _%tl4178441887%_)))
                                          (let ((_%hd4178641894%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4178541890%_)))
                                                (_%tl4178741897%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4178541890%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl4178741897%_)
                                                (let ((_g45462_
                                                       (gx#syntax-split-splice
                                                        _%tl4178741897%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g45463_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g45462_)
                         (##values-length _g45462_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g45463_ 2)))
                  (error "Context expects 2 values" _g45463_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target4178841900%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g45462_
                                                              0)))
                                                          (_%tl4179041903%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g45462_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl4179041903%_)
                                                          (letrec ((_%loop4179141906%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd4178941910%_ _%step4179541913%_)
                              (if (gx#stx-pair? _%hd4178941910%_)
                                  (let ((_%e4179241915%_
                                         (gx#syntax-e _%hd4178941910%_)))
                                    (let ((_%lp-hd4179341919%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4179241915%_)))
                                          (_%lp-tl4179441922%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4179241915%_))))
                                      (_%loop4179141906%_
                                       _%lp-tl4179441922%_
                                       (cons _%lp-hd4179341919%_
                                             _%step4179541913%_))))
                                  (let ((_%step4179641925%_
                                         (reverse _%step4179541913%_)))
                                    (_%loop4177241859%_
                                     _%lp-tl4177541877%_
                                     (cons _%step4179641925%_
                                           _%step4177641866%_)
                                     (cons _%hd4178641894%_ _%init4177741867%_)
                                     (cons _%hd4178341884%_
                                           _%var4177841868%_)))))))
                    (_%loop4179141906%_ _%target4178841900%_ '()))
                  (_%g4175541826%_ _%g4175641830%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g4175541826%_
                                                 _%g4175641830%_))))
                                        (_%g4175541826%_ _%g4175641830%_))))
                                (_%g4175541826%_ _%g4175641830%_))))
                        (let ((_%step4177941928%_ (reverse _%step4177641866%_))
                              (_%init4178041930%_ (reverse _%init4177741867%_))
                              (_%var4178141931%_ (reverse _%var4177841868%_)))
                          (if (gx#stx-pair? _%tl4176841850%_)
                              (let ((_%e4179741933%_
                                     (gx#syntax-e _%tl4176841850%_)))
                                (let ((_%hd4179841937%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4179741933%_)))
                                      (_%tl4179941940%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4179741933%_))))
                                  (if (gx#stx-pair? _%hd4179841937%_)
                                      (let ((_%e4180041943%_
                                             (gx#syntax-e _%hd4179841937%_)))
                                        (let ((_%hd4180141947%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4180041943%_)))
                                              (_%tl4180241950%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4180041943%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4180241950%_)
                                              (let ((_g45464_
                                                     (gx#syntax-split-splice
                                                      _%tl4180241950%_
                                                      '0)))
                                                (begin
                                                  (let ((_g45465_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g45464_)
                                                               (##values-length
                                                                _g45464_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g45465_ 2)))
                (error "Context expects 2 values" _g45465_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target4180341953%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45464_
                                                            0)))
                                                        (_%tl4180541956%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45464_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl4180541956%_)
                                                        (letrec ((_%loop4180641959%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd4180441963%_ _%fini4181041966%_)
                            (if (gx#stx-pair? _%hd4180441963%_)
                                (let ((_%e4180741968%_
                                       (gx#syntax-e _%hd4180441963%_)))
                                  (let ((_%lp-hd4180841972%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4180741968%_)))
                                        (_%lp-tl4180941975%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4180741968%_))))
                                    (_%loop4180641959%_
                                     _%lp-tl4180941975%_
                                     (cons _%lp-hd4180841972%_
                                           _%fini4181041966%_))))
                                (let ((_%fini4181141978%_
                                       (reverse _%fini4181041966%_)))
                                  (if (gx#stx-pair/null? _%tl4179941940%_)
                                      (let ((_g45466_
                                             (gx#syntax-split-splice
                                              _%tl4179941940%_
                                              '0)))
                                        (begin
                                          (let ((_g45467_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45466_)
                                                       (##values-length
                                                        _g45466_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45467_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45467_)))
                                          (let ((_%target4181241981%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45466_ 0)))
                                                (_%tl4181441984%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45466_ 1))))
                                            (if (gx#stx-null? _%tl4181441984%_)
                                                (letrec ((_%loop4181541987%_
                                                          (lambda (_%hd4181341991%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4181941994%_)
                    (if (gx#stx-pair? _%hd4181341991%_)
                        (let ((_%e4181641996%_ (gx#syntax-e _%hd4181341991%_)))
                          (let ((_%lp-hd4181742000%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4181641996%_)))
                                (_%lp-tl4181842003%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4181641996%_))))
                            (_%loop4181541987%_
                             _%lp-tl4181842003%_
                             (cons _%lp-hd4181742000%_ _%body4181941994%_))))
                        (let ((_%body4182042006%_
                               (reverse _%body4181941994%_)))
                          ((lambda (_%g4175742009%_
                                    _%g4175842011%_
                                    _%g4175942012%_
                                    _%g4176042013%_
                                    _%g4176142014%_
                                    _%g4176242015%_)
                             (if (gx#stx-andmap
                                  gx#identifier?
                                  (foldr (lambda (_%g4204842051%_
                                                  _%g4204942054%_)
                                           (cons _%g4204842051%_
                                                 _%g4204942054%_))
                                         '()
                                         _%g4176242015%_))
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (gx#datum->syntax '#f '$loop)
                                             (cons (begin
                                                     (gx#syntax-check-splice-targets
                                                      _%g4176142014%_
                                                      _%g4176242015%_)
                                                     (foldr (lambda (_%g4205642069%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g4205742072%_
                             _%g4205842074%_)
                      (cons (cons _%g4205742072%_ (cons _%g4205642069%_ '()))
                            _%g4205842074%_))
                    '()
                    _%g4176142014%_
                    _%g4176242015%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'if)
                                                               (cons _%g4175942012%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'begin)
                                         (cons '#!void
                                               (foldr (lambda (_%g4205942077%_
                                                               _%g4206042080%_)
                                                        (cons _%g4205942077%_
                                                              _%g4206042080%_))
                                                      '()
                                                      _%g4175842011%_)))
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g4206142083%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g4206242086%_)
                      (cons _%g4206142083%_ _%g4206242086%_))
                    (cons (cons (gx#datum->syntax '#f '$loop)
                                (begin
                                  (gx#syntax-check-splice-targets
                                   _%g4176042013%_
                                   _%g4176242015%_)
                                  (foldr (lambda (_%g4206342089%_
                                                  _%g4206442092%_
                                                  _%g4206542094%_)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (cons _%g4206442092%_
                                                             (foldr (lambda (_%g4206642097%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g4206742100%_)
                              (cons _%g4206642097%_ _%g4206742100%_))
                            '()
                            _%g4206342089%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g4206542094%_))
                                         '()
                                         _%g4176042013%_
                                         _%g4176242015%_)))
                          '())
                    _%g4175742009%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (_%g4175541826%_ _%g4175641830%_)))
                           _%body4182042006%_
                           _%fini4181141978%_
                           _%hd4180141947%_
                           _%step4177941928%_
                           _%init4178041930%_
                           _%var4178141931%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4181541987%_
                                                   _%target4181241981%_
                                                   '()))
                                                (_%g4175541826%_
                                                 _%g4175641830%_)))))
                                      (_%g4175541826%_ _%g4175641830%_)))))))
                  (_%loop4180641959%_ _%target4180341953%_ '()))
                (_%g4175541826%_ _%g4175641830%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4175541826%_
                                               _%g4175641830%_))))
                                      (_%g4175541826%_ _%g4175641830%_))))
                              (_%g4175541826%_ _%g4175641830%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4177241859%_
                                                   _%target4176941853%_
                                                   '()
                                                   '()
                                                   '()))
                                                (_%g4175541826%_
                                                 _%g4175641830%_)))))
                                      (_%g4175541826%_ _%g4175641830%_))))
                              (_%g4175541826%_ _%g4175641830%_))))
                      (_%g4175541826%_ _%g4175641830%_)))))
          (_%g4175442103%_ _%$stx41751%_))))
    (define |gerbil/core/more-sugar[:0:]#do-while|
      (lambda (_%$stx42111%_)
        (let* ((_%g4211542186%_
                (lambda (_%g4211642182%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4211642182%_)))
               (_%g4211442463%_
                (lambda (_%g4211642190%_)
                  (if (gx#stx-pair? _%g4211642190%_)
                      (let ((_%e4212342193%_ (gx#syntax-e _%g4211642190%_)))
                        (let ((_%hd4212442197%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4212342193%_)))
                              (_%tl4212542200%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4212342193%_))))
                          (if (gx#stx-pair? _%tl4212542200%_)
                              (let ((_%e4212642203%_
                                     (gx#syntax-e _%tl4212542200%_)))
                                (let ((_%hd4212742207%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4212642203%_)))
                                      (_%tl4212842210%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4212642203%_))))
                                  (if (gx#stx-pair/null? _%hd4212742207%_)
                                      (let ((_g45468_
                                             (gx#syntax-split-splice
                                              _%hd4212742207%_
                                              '0)))
                                        (begin
                                          (let ((_g45469_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45468_)
                                                       (##values-length
                                                        _g45468_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45469_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45469_)))
                                          (let ((_%target4212942213%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45468_ 0)))
                                                (_%tl4213142216%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45468_ 1))))
                                            (if (gx#stx-null? _%tl4213142216%_)
                                                (letrec ((_%loop4213242219%_
                                                          (lambda (_%hd4213042223%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%step4213642226%_
                           _%init4213742227%_
                           _%var4213842228%_)
                    (if (gx#stx-pair? _%hd4213042223%_)
                        (let ((_%e4213342230%_ (gx#syntax-e _%hd4213042223%_)))
                          (let ((_%lp-hd4213442234%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4213342230%_)))
                                (_%lp-tl4213542237%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4213342230%_))))
                            (if (gx#stx-pair? _%lp-hd4213442234%_)
                                (let ((_%e4214242240%_
                                       (gx#syntax-e _%lp-hd4213442234%_)))
                                  (let ((_%hd4214342244%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4214242240%_)))
                                        (_%tl4214442247%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4214242240%_))))
                                    (if (gx#stx-pair? _%tl4214442247%_)
                                        (let ((_%e4214542250%_
                                               (gx#syntax-e _%tl4214442247%_)))
                                          (let ((_%hd4214642254%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4214542250%_)))
                                                (_%tl4214742257%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4214542250%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl4214742257%_)
                                                (let ((_g45470_
                                                       (gx#syntax-split-splice
                                                        _%tl4214742257%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g45471_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g45470_)
                         (##values-length _g45470_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g45471_ 2)))
                  (error "Context expects 2 values" _g45471_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target4214842260%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g45470_
                                                              0)))
                                                          (_%tl4215042263%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g45470_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl4215042263%_)
                                                          (letrec ((_%loop4215142266%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd4214942270%_ _%step4215542273%_)
                              (if (gx#stx-pair? _%hd4214942270%_)
                                  (let ((_%e4215242275%_
                                         (gx#syntax-e _%hd4214942270%_)))
                                    (let ((_%lp-hd4215342279%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4215242275%_)))
                                          (_%lp-tl4215442282%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4215242275%_))))
                                      (_%loop4215142266%_
                                       _%lp-tl4215442282%_
                                       (cons _%lp-hd4215342279%_
                                             _%step4215542273%_))))
                                  (let ((_%step4215642285%_
                                         (reverse _%step4215542273%_)))
                                    (_%loop4213242219%_
                                     _%lp-tl4213542237%_
                                     (cons _%step4215642285%_
                                           _%step4213642226%_)
                                     (cons _%hd4214642254%_ _%init4213742227%_)
                                     (cons _%hd4214342244%_
                                           _%var4213842228%_)))))))
                    (_%loop4215142266%_ _%target4214842260%_ '()))
                  (_%g4211542186%_ _%g4211642190%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g4211542186%_
                                                 _%g4211642190%_))))
                                        (_%g4211542186%_ _%g4211642190%_))))
                                (_%g4211542186%_ _%g4211642190%_))))
                        (let ((_%step4213942288%_ (reverse _%step4213642226%_))
                              (_%init4214042290%_ (reverse _%init4213742227%_))
                              (_%var4214142291%_ (reverse _%var4213842228%_)))
                          (if (gx#stx-pair? _%tl4212842210%_)
                              (let ((_%e4215742293%_
                                     (gx#syntax-e _%tl4212842210%_)))
                                (let ((_%hd4215842297%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4215742293%_)))
                                      (_%tl4215942300%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4215742293%_))))
                                  (if (gx#stx-pair? _%hd4215842297%_)
                                      (let ((_%e4216042303%_
                                             (gx#syntax-e _%hd4215842297%_)))
                                        (let ((_%hd4216142307%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4216042303%_)))
                                              (_%tl4216242310%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4216042303%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4216242310%_)
                                              (let ((_g45472_
                                                     (gx#syntax-split-splice
                                                      _%tl4216242310%_
                                                      '0)))
                                                (begin
                                                  (let ((_g45473_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g45472_)
                                                               (##values-length
                                                                _g45472_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g45473_ 2)))
                (error "Context expects 2 values" _g45473_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target4216342313%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45472_
                                                            0)))
                                                        (_%tl4216542316%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45472_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl4216542316%_)
                                                        (letrec ((_%loop4216642319%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd4216442323%_ _%fini4217042326%_)
                            (if (gx#stx-pair? _%hd4216442323%_)
                                (let ((_%e4216742328%_
                                       (gx#syntax-e _%hd4216442323%_)))
                                  (let ((_%lp-hd4216842332%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4216742328%_)))
                                        (_%lp-tl4216942335%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4216742328%_))))
                                    (_%loop4216642319%_
                                     _%lp-tl4216942335%_
                                     (cons _%lp-hd4216842332%_
                                           _%fini4217042326%_))))
                                (let ((_%fini4217142338%_
                                       (reverse _%fini4217042326%_)))
                                  (if (gx#stx-pair/null? _%tl4215942300%_)
                                      (let ((_g45474_
                                             (gx#syntax-split-splice
                                              _%tl4215942300%_
                                              '0)))
                                        (begin
                                          (let ((_g45475_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45474_)
                                                       (##values-length
                                                        _g45474_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45475_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45475_)))
                                          (let ((_%target4217242341%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45474_ 0)))
                                                (_%tl4217442344%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45474_ 1))))
                                            (if (gx#stx-null? _%tl4217442344%_)
                                                (letrec ((_%loop4217542347%_
                                                          (lambda (_%hd4217342351%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4217942354%_)
                    (if (gx#stx-pair? _%hd4217342351%_)
                        (let ((_%e4217642356%_ (gx#syntax-e _%hd4217342351%_)))
                          (let ((_%lp-hd4217742360%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4217642356%_)))
                                (_%lp-tl4217842363%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4217642356%_))))
                            (_%loop4217542347%_
                             _%lp-tl4217842363%_
                             (cons _%lp-hd4217742360%_ _%body4217942354%_))))
                        (let ((_%body4218042366%_
                               (reverse _%body4217942354%_)))
                          ((lambda (_%g4211742369%_
                                    _%g4211842371%_
                                    _%g4211942372%_
                                    _%g4212042373%_
                                    _%g4212142374%_
                                    _%g4212242375%_)
                             (if (gx#stx-andmap
                                  gx#identifier?
                                  (foldr (lambda (_%g4240842411%_
                                                  _%g4240942414%_)
                                           (cons _%g4240842411%_
                                                 _%g4240942414%_))
                                         '()
                                         _%g4212242375%_))
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (gx#datum->syntax '#f '$loop)
                                             (cons (begin
                                                     (gx#syntax-check-splice-targets
                                                      _%g4212142374%_
                                                      _%g4212242375%_)
                                                     (foldr (lambda (_%g4241642429%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g4241742432%_
                             _%g4241842434%_)
                      (cons (cons _%g4241742432%_ (cons _%g4241642429%_ '()))
                            _%g4241842434%_))
                    '()
                    _%g4212142374%_
                    _%g4212242375%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (foldr (lambda (_%g4241942437%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g4242042440%_)
                    (cons _%g4241942437%_ _%g4242042440%_))
                  (cons (cons (gx#datum->syntax '#f 'if)
                              (cons _%g4211942372%_
                                    (cons (cons (gx#datum->syntax '#f '$loop)
                                                (begin
                                                  (gx#syntax-check-splice-targets
                                                   _%g4212042373%_
                                                   _%g4212242375%_)
                                                  (foldr (lambda (_%g4242142443%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g4242242446%_
                          _%g4242342448%_)
                   (cons (cons (gx#datum->syntax '#f 'begin)
                               (cons _%g4242242446%_
                                     (foldr (lambda (_%g4242442451%_
                                                     _%g4242542454%_)
                                              (cons _%g4242442451%_
                                                    _%g4242542454%_))
                                            '()
                                            _%g4242142443%_)))
                         _%g4242342448%_))
                 '()
                 _%g4212042373%_
                 _%g4212242375%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'begin)
                                                      (cons '#!void
                                                            (foldr (lambda (_%g4242642457%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g4242742460%_)
                             (cons _%g4242642457%_ _%g4242742460%_))
                           '()
                           _%g4211842371%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                        '())
                  _%g4211742369%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (_%g4211542186%_ _%g4211642190%_)))
                           _%body4218042366%_
                           _%fini4217142338%_
                           _%hd4216142307%_
                           _%step4213942288%_
                           _%init4214042290%_
                           _%var4214142291%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4217542347%_
                                                   _%target4217242341%_
                                                   '()))
                                                (_%g4211542186%_
                                                 _%g4211642190%_)))))
                                      (_%g4211542186%_ _%g4211642190%_)))))))
                  (_%loop4216642319%_ _%target4216342313%_ '()))
                (_%g4211542186%_ _%g4211642190%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4211542186%_
                                               _%g4211642190%_))))
                                      (_%g4211542186%_ _%g4211642190%_))))
                              (_%g4211542186%_ _%g4211642190%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4213242219%_
                                                   _%target4212942213%_
                                                   '()
                                                   '()
                                                   '()))
                                                (_%g4211542186%_
                                                 _%g4211642190%_)))))
                                      (_%g4211542186%_ _%g4211642190%_))))
                              (_%g4211542186%_ _%g4211642190%_))))
                      (_%g4211542186%_ _%g4211642190%_)))))
          (_%g4211442463%_ _%$stx42111%_))))
    (define |gerbil/core/more-sugar[:0:]#while|
      (lambda (_%$stx42471%_)
        (let* ((_%g4247542499%_
                (lambda (_%g4247642495%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4247642495%_)))
               (_%g4247442582%_
                (lambda (_%g4247642503%_)
                  (if (gx#stx-pair? _%g4247642503%_)
                      (let ((_%e4247942506%_ (gx#syntax-e _%g4247642503%_)))
                        (let ((_%hd4248042510%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4247942506%_)))
                              (_%tl4248142513%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4247942506%_))))
                          (if (gx#stx-pair? _%tl4248142513%_)
                              (let ((_%e4248242516%_
                                     (gx#syntax-e _%tl4248142513%_)))
                                (let ((_%hd4248342520%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4248242516%_)))
                                      (_%tl4248442523%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4248242516%_))))
                                  (if (gx#stx-pair/null? _%tl4248442523%_)
                                      (let ((_g45476_
                                             (gx#syntax-split-splice
                                              _%tl4248442523%_
                                              '0)))
                                        (begin
                                          (let ((_g45477_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45476_)
                                                       (##values-length
                                                        _g45476_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45477_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45477_)))
                                          (let ((_%target4248542526%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45476_ 0)))
                                                (_%tl4248742529%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45476_ 1))))
                                            (if (gx#stx-null? _%tl4248742529%_)
                                                (letrec ((_%loop4248842532%_
                                                          (lambda (_%hd4248642536%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4249242539%_)
                    (if (gx#stx-pair? _%hd4248642536%_)
                        (let ((_%e4248942541%_ (gx#syntax-e _%hd4248642536%_)))
                          (let ((_%lp-hd4249042545%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4248942541%_)))
                                (_%lp-tl4249142548%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4248942541%_))))
                            (_%loop4248842532%_
                             _%lp-tl4249142548%_
                             (cons _%lp-hd4249042545%_ _%body4249242539%_))))
                        (let ((_%body4249342551%_
                               (reverse _%body4249242539%_)))
                          ((lambda (_%g4247742554%_ _%g4247842556%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (gx#datum->syntax '#f 'lp)
                                         (cons '()
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'when)
                                                           (cons _%g4247842556%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g4257342576%_ _%g4257442579%_)
                                  (cons _%g4257342576%_ _%g4257442579%_))
                                (cons (cons (gx#datum->syntax '#f 'lp) '())
                                      '())
                                _%g4247742554%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                           _%body4249342551%_
                           _%hd4248342520%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4248842532%_
                                                   _%target4248542526%_
                                                   '()))
                                                (_%g4247542499%_
                                                 _%g4247642503%_)))))
                                      (_%g4247542499%_ _%g4247642503%_))))
                              (_%g4247542499%_ _%g4247642503%_))))
                      (_%g4247542499%_ _%g4247642503%_)))))
          (_%g4247442582%_ _%$stx42471%_))))
    (define |gerbil/core/more-sugar[:0:]#until|
      (lambda (_%$stx42587%_)
        (let* ((_%g4259142615%_
                (lambda (_%g4259242611%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4259242611%_)))
               (_%g4259042698%_
                (lambda (_%g4259242619%_)
                  (if (gx#stx-pair? _%g4259242619%_)
                      (let ((_%e4259542622%_ (gx#syntax-e _%g4259242619%_)))
                        (let ((_%hd4259642626%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4259542622%_)))
                              (_%tl4259742629%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4259542622%_))))
                          (if (gx#stx-pair? _%tl4259742629%_)
                              (let ((_%e4259842632%_
                                     (gx#syntax-e _%tl4259742629%_)))
                                (let ((_%hd4259942636%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4259842632%_)))
                                      (_%tl4260042639%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4259842632%_))))
                                  (if (gx#stx-pair/null? _%tl4260042639%_)
                                      (let ((_g45478_
                                             (gx#syntax-split-splice
                                              _%tl4260042639%_
                                              '0)))
                                        (begin
                                          (let ((_g45479_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45478_)
                                                       (##values-length
                                                        _g45478_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45479_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45479_)))
                                          (let ((_%target4260142642%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45478_ 0)))
                                                (_%tl4260342645%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45478_ 1))))
                                            (if (gx#stx-null? _%tl4260342645%_)
                                                (letrec ((_%loop4260442648%_
                                                          (lambda (_%hd4260242652%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4260842655%_)
                    (if (gx#stx-pair? _%hd4260242652%_)
                        (let ((_%e4260542657%_ (gx#syntax-e _%hd4260242652%_)))
                          (let ((_%lp-hd4260642661%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4260542657%_)))
                                (_%lp-tl4260742664%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4260542657%_))))
                            (_%loop4260442648%_
                             _%lp-tl4260742664%_
                             (cons _%lp-hd4260642661%_ _%body4260842655%_))))
                        (let ((_%body4260942667%_
                               (reverse _%body4260842655%_)))
                          ((lambda (_%g4259342670%_ _%g4259442672%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (gx#datum->syntax '#f 'lp)
                                         (cons '()
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'unless)
                                                           (cons _%g4259442672%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g4268942692%_ _%g4269042695%_)
                                  (cons _%g4268942692%_ _%g4269042695%_))
                                (cons (cons (gx#datum->syntax '#f 'lp) '())
                                      '())
                                _%g4259342670%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                           _%body4260942667%_
                           _%hd4259942636%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4260442648%_
                                                   _%target4260142642%_
                                                   '()))
                                                (_%g4259142615%_
                                                 _%g4259242619%_)))))
                                      (_%g4259142615%_ _%g4259242619%_))))
                              (_%g4259142615%_ _%g4259242619%_))))
                      (_%g4259142615%_ _%g4259242619%_)))))
          (_%g4259042698%_ _%$stx42587%_))))
    (define |gerbil/core/more-sugar[:0:]#catch|
      (lambda (_%$stx42703%_)
        (let ((_%g4270642713%_
               (lambda (_%g4270742709%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4270742709%_))))
          (_%g4270642713%_ _%$stx42703%_))))
    (define |gerbil/core/more-sugar[:0:]#finally|
      (lambda (_%$stx42717%_)
        (let ((_%g4272042727%_
               (lambda (_%g4272142723%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4272142723%_))))
          (_%g4272042727%_ _%$stx42717%_))))
    (define |gerbil/core/more-sugar[:0:]#try|
      (lambda (_%stx42731%_)
        (letrec ((_%generate-thunk42734%_
                  (lambda (_%body44053%_)
                    (if (null? _%body44053%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; missing body"
                         _%stx42731%_)
                        (let* ((_%g4405644073%_
                                (lambda (_%g4405744069%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g4405744069%_)))
                               (_%g4405544132%_
                                (lambda (_%g4405744077%_)
                                  (if (gx#stx-pair/null? _%g4405744077%_)
                                      (let ((_g45480_
                                             (gx#syntax-split-splice
                                              _%g4405744077%_
                                              '0)))
                                        (begin
                                          (let ((_g45481_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45480_)
                                                       (##values-length
                                                        _g45480_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45481_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45481_)))
                                          (let ((_%target4405944080%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45480_ 0)))
                                                (_%tl4406144083%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45480_ 1))))
                                            (if (gx#stx-null? _%tl4406144083%_)
                                                (letrec ((_%loop4406244086%_
                                                          (lambda (_%hd4406044090%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%e4406644093%_)
                    (if (gx#stx-pair? _%hd4406044090%_)
                        (let ((_%e4406344095%_ (gx#syntax-e _%hd4406044090%_)))
                          (let ((_%lp-hd4406444099%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4406344095%_)))
                                (_%lp-tl4406544102%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4406344095%_))))
                            (_%loop4406244086%_
                             _%lp-tl4406544102%_
                             (cons _%lp-hd4406444099%_ _%e4406644093%_))))
                        (let ((_%e4406744105%_ (reverse _%e4406644093%_)))
                          ((lambda (_%g4405844108%_)
                             (cons (gx#datum->syntax '#f 'lambda)
                                   (cons '()
                                         (foldr (lambda (_%g4412344126%_
                                                         _%g4412444129%_)
                                                  (cons _%g4412344126%_
                                                        _%g4412444129%_))
                                                '()
                                                _%g4405844108%_))))
                           _%e4406744105%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4406244086%_
                                                   _%target4405944080%_
                                                   '()))
                                                (_%g4405644073%_
                                                 _%g4405744077%_)))))
                                      (_%g4405644073%_ _%g4405744077%_)))))
                          (_%g4405544132%_ (reverse _%body44053%_))))))
                 (_%generate-fini42736%_
                  (lambda (_%thunk43936%_ _%fini43938%_)
                    (let* ((_%g4394043964%_
                            (lambda (_%g4394143960%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4394143960%_)))
                           (_%g4393944049%_
                            (lambda (_%g4394143968%_)
                              (if (gx#stx-pair? _%g4394143968%_)
                                  (let ((_%e4394443971%_
                                         (gx#syntax-e _%g4394143968%_)))
                                    (let ((_%hd4394543975%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4394443971%_)))
                                          (_%tl4394643978%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4394443971%_))))
                                      (if (gx#stx-pair? _%tl4394643978%_)
                                          (let ((_%e4394743981%_
                                                 (gx#syntax-e
                                                  _%tl4394643978%_)))
                                            (let ((_%hd4394843985%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4394743981%_)))
                                                  (_%tl4394943988%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4394743981%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd4394843985%_)
                                                  (let ((_g45482_
                                                         (gx#syntax-split-splice
                                                          _%hd4394843985%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g45483_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g45482_)
                           (##values-length _g45482_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g45483_ 2)))
                    (error "Context expects 2 values" _g45483_)))
              (let ((_%target4395043991%_
                     (let () (declare (not safe)) (##values-ref _g45482_ 0)))
                    (_%tl4395243994%_
                     (let () (declare (not safe)) (##values-ref _g45482_ 1))))
                (if (gx#stx-null? _%tl4395243994%_)
                    (letrec ((_%loop4395343997%_
                              (lambda (_%hd4395144001%_ _%e4395744004%_)
                                (if (gx#stx-pair? _%hd4395144001%_)
                                    (let ((_%e4395444006%_
                                           (gx#syntax-e _%hd4395144001%_)))
                                      (let ((_%lp-hd4395544010%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4395444006%_)))
                                            (_%lp-tl4395644013%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4395444006%_))))
                                        (_%loop4395343997%_
                                         _%lp-tl4395644013%_
                                         (cons _%lp-hd4395544010%_
                                               _%e4395744004%_))))
                                    (let ((_%e4395844016%_
                                           (reverse _%e4395744004%_)))
                                      (if (gx#stx-null? _%tl4394943988%_)
                                          ((lambda (_%g4394244019%_
                                                    _%g4394344021%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'with-unwind-protect)
                                                   (cons _%g4394344021%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'lambda)
                             (cons '()
                                   (foldr (lambda (_%g4404044043%_
                                                   _%g4404144046%_)
                                            (cons _%g4404044043%_
                                                  _%g4404144046%_))
                                          '()
                                          _%g4394244019%_)))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%e4395844016%_
                                           _%hd4394543975%_)
                                          (_%g4394043964%_
                                           _%g4394143968%_)))))))
                      (_%loop4395343997%_ _%target4395043991%_ '()))
                    (_%g4394043964%_ _%g4394143968%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4394043964%_
                                                   _%g4394143968%_))))
                                          (_%g4394043964%_ _%g4394143968%_))))
                                  (_%g4394043964%_ _%g4394143968%_)))))
                      (_%g4393944049%_ (list _%thunk43936%_ _%fini43938%_)))))
                 (_%generate-catch42737%_
                  (lambda (_%handlers43351%_ _%thunk43353%_)
                    (let* ((_%g4335543363%_
                            (lambda (_%g4335643359%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4335643359%_)))
                           (_%g4335443932%_
                            (lambda (_%g4335643367%_)
                              ((lambda (_%g4335743370%_)
                                 (let _%lp43382%_ ((_%rest43385%_
                                                    _%handlers43351%_)
                                                   (_%clauses43387%_ '()))
                                   (let* ((_%rest4338843396%_ _%rest43385%_)
                                          (_%else4339043527%_
                                           (lambda ()
                                             (let* ((_%g4340843432%_
                                                     (lambda (_%g4340943428%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g4340943428%_)))
                                                    (_%g4340743523%_
                                                     (lambda (_%g4340943436%_)
                                                       (if (gx#stx-pair?
                                                            _%g4340943436%_)
                                                           (let ((_%e4341243439%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%g4340943436%_)))
                     (let ((_%hd4341343443%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4341243439%_)))
                           (_%tl4341443446%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4341243439%_))))
                       (if (gx#stx-pair/null? _%hd4341343443%_)
                           (let ((_g45484_
                                  (gx#syntax-split-splice
                                   _%hd4341343443%_
                                   '0)))
                             (begin
                               (let ((_g45485_
                                      (let ()
                                        (declare (not safe))
                                        (if (##values? _g45484_)
                                            (##values-length _g45484_)
                                            1))))
                                 (if (not (let ()
                                            (declare (not safe))
                                            (##fx= _g45485_ 2)))
                                     (error "Context expects 2 values"
                                            _g45485_)))
                               (let ((_%target4341543449%_
                                      (let ()
                                        (declare (not safe))
                                        (##values-ref _g45484_ 0)))
                                     (_%tl4341743452%_
                                      (let ()
                                        (declare (not safe))
                                        (##values-ref _g45484_ 1))))
                                 (if (gx#stx-null? _%tl4341743452%_)
                                     (letrec ((_%loop4341843455%_
                                               (lambda (_%hd4341643459%_
                                                        _%clause4342243462%_)
                                                 (if (gx#stx-pair?
                                                      _%hd4341643459%_)
                                                     (let ((_%e4341943464%_
                                                            (gx#syntax-e
                                                             _%hd4341643459%_)))
                                                       (let ((_%lp-hd4342043468%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e4341943464%_)))
                     (_%lp-tl4342143471%_
                      (let () (declare (not safe)) (##cdr _%e4341943464%_))))
                 (_%loop4341843455%_
                  _%lp-tl4342143471%_
                  (cons _%lp-hd4342043468%_ _%clause4342243462%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%clause4342343474%_
                                                            (reverse _%clause4342243462%_)))
                                                       (if (gx#stx-pair?
                                                            _%tl4341443446%_)
                                                           (let ((_%e4342443477%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl4341443446%_)))
                     (let ((_%hd4342543481%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4342443477%_)))
                           (_%tl4342643484%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4342443477%_))))
                       (if (gx#stx-null? _%tl4342643484%_)
                           ((lambda (_%g4341043487%_ _%g4341143489%_)
                              (cons (gx#datum->syntax '#f 'with-catch)
                                    (cons (cons (gx#datum->syntax '#f 'lambda)
                                                (cons (cons _%g4335743370%_
                                                            '())
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'cond)
                          (foldr (lambda (_%g4351443517%_ _%g4351543520%_)
                                   (cons _%g4351443517%_ _%g4351543520%_))
                                 (cons (cons (gx#datum->syntax '#f 'else)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'raise)
                                                         (cons _%g4335743370%_
                                                               '()))
                                                   '()))
                                       '())
                                 _%g4341143489%_))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons _%g4341043487%_ '()))))
                            _%hd4342543481%_
                            _%clause4342343474%_)
                           (_%g4340843432%_ _%g4340943436%_))))
                   (_%g4340843432%_ _%g4340943436%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%loop4341843455%_
                                        _%target4341543449%_
                                        '()))
                                     (_%g4340843432%_ _%g4340943436%_)))))
                           (_%g4340843432%_ _%g4340943436%_))))
                   (_%g4340843432%_ _%g4340943436%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g4340743523%_
                                                (list _%clauses43387%_
                                                      _%thunk43353%_)))))
                                          (_%K4339243916%_
                                           (lambda (_%rest43531%_ _%hd43533%_)
                                             (let* ((_%__stx4520445205%_
                                                     _%hd43533%_)
                                                    (_%g4353843608%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx4520445205%_))))
                                               (let ((_%__kont4520745208%_
                                                      (lambda (_%g4354043895%_
                                                               _%g4354143897%_)
                                                        (_%lp43382%_
                                                         _%rest43531%_
                                                         (cons (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '#f
                                          '?)
                                         (cons _%g4354143897%_ '()))
                                   (cons _%g4335743370%_ '()))
                             (cons (gx#datum->syntax '#f '=>)
                                   (cons _%g4354043895%_ '())))
                       _%clauses43387%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont4520945210%_
                                                      (lambda (_%g4355143827%_
                                                               _%g4355243829%_
                                                               _%g4355343830%_)
                                                        (_%lp43382%_
                                                         _%rest43531%_
                                                         (cons (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '#f
                                          '?)
                                         (cons _%g4355343830%_ '()))
                                   (cons _%g4335743370%_ '()))
                             (cons (cons (gx#datum->syntax '#f 'let)
                                         (cons (cons (cons _%g4355243829%_
                                                           (cons _%g4335743370%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (foldr (lambda (_%g4384943852%_
                                                               _%g4385043855%_)
                                                        (cons _%g4384943852%_
                                                              _%g4385043855%_))
                                                      '()
                                                      _%g4355143827%_)))
                                   '()))
                       _%clauses43387%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont4521345214%_
                                                      (lambda (_%g4357243735%_
                                                               _%g4357343737%_)
                                                        (_%lp43382%_
                                                         _%rest43531%_
                                                         (cons (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'let)
                                         (cons (cons (cons _%g4357343737%_
                                                           (cons _%g4335743370%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (foldr (lambda (_%g4375343756%_
                                                               _%g4375443759%_)
                                                        (cons _%g4375343756%_
                                                              _%g4375443759%_))
                                                      '()
                                                      _%g4357243735%_)))
                                   '()))
                       _%clauses43387%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont4521745218%_
                                                      (lambda (_%g4358943653%_
                                                               _%g4359043655%_)
                                                        (_%lp43382%_
                                                         _%rest43531%_
                                                         (cons (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'begin)
                                         (foldr (lambda (_%g4367143674%_
                                                         _%g4367243677%_)
                                                  (cons _%g4367143674%_
                                                        _%g4367243677%_))
                                                '()
                                                _%g4358943653%_))
                                   '()))
                       _%clauses43387%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let* ((_%__match4530945310%_
                                                         (lambda (_%e4359143615%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%hd4359243619%_
                          _%tl4359343622%_
                          _%__splice4521945220%_
                          _%target4359443625%_
                          _%tl4359643628%_)
                   (letrec ((_%loop4359743631%_
                             (lambda (_%hd4359543635%_ _%body4360143638%_)
                               (if (gx#stx-pair? _%hd4359543635%_)
                                   (let ((_%e4359843640%_
                                          (gx#syntax-e _%hd4359543635%_)))
                                     (let ((_%lp-tl4360043647%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4359843640%_)))
                                           (_%lp-hd4359943644%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4359843640%_))))
                                       (_%loop4359743631%_
                                        _%lp-tl4360043647%_
                                        (cons _%lp-hd4359943644%_
                                              _%body4360143638%_))))
                                   (let ((_%body4360243650%_
                                          (reverse _%body4360143638%_)))
                                     (let ((_%g4358943653%_ _%body4360243650%_)
                                           (_%g4359043655%_ _%hd4359243619%_))
                                       (if (gx#underscore? _%g4359043655%_)
                                           (_%__kont4521745218%_
                                            _%g4358943653%_
                                            _%g4359043655%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g4353843608%_)))))))))
                     (_%loop4359743631%_ _%target4359443625%_ '()))))
                (_%__match4529545296%_
                 (lambda (_%e4357443687%_
                          _%hd4357543691%_
                          _%tl4357643694%_
                          _%e4357743697%_
                          _%hd4357843701%_
                          _%tl4357943704%_
                          _%__splice4521545216%_
                          _%target4358043707%_
                          _%tl4358243710%_)
                   (letrec ((_%loop4358343713%_
                             (lambda (_%hd4358143717%_ _%body4358743720%_)
                               (if (gx#stx-pair? _%hd4358143717%_)
                                   (let ((_%e4358443722%_
                                          (gx#syntax-e _%hd4358143717%_)))
                                     (let ((_%lp-tl4358643729%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4358443722%_)))
                                           (_%lp-hd4358543726%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4358443722%_))))
                                       (_%loop4358343713%_
                                        _%lp-tl4358643729%_
                                        (cons _%lp-hd4358543726%_
                                              _%body4358743720%_))))
                                   (let ((_%body4358843732%_
                                          (reverse _%body4358743720%_)))
                                     (let ((_%g4357243735%_ _%body4358843732%_)
                                           (_%g4357343737%_ _%hd4357843701%_))
                                       (if (gx#identifier? _%g4357343737%_)
                                           (_%__kont4521345214%_
                                            _%g4357243735%_
                                            _%g4357343737%_)
                                           (_%__match4530945310%_
                                            _%e4357443687%_
                                            _%hd4357543691%_
                                            _%tl4357643694%_
                                            _%__splice4521545216%_
                                            _%target4358043707%_
                                            _%tl4358243710%_))))))))
                     (_%loop4358343713%_ _%target4358043707%_ '()))))
                (_%__match4527345274%_
                 (lambda (_%e4355443769%_
                          _%hd4355543773%_
                          _%tl4355643776%_
                          _%e4355743779%_
                          _%hd4355843783%_
                          _%tl4355943786%_
                          _%e4356043789%_
                          _%hd4356143793%_
                          _%tl4356243796%_
                          _%__splice4521145212%_
                          _%target4356343799%_
                          _%tl4356543802%_)
                   (letrec ((_%loop4356643805%_
                             (lambda (_%hd4356443809%_ _%body4357043812%_)
                               (if (gx#stx-pair? _%hd4356443809%_)
                                   (let ((_%e4356743814%_
                                          (gx#syntax-e _%hd4356443809%_)))
                                     (let ((_%lp-tl4356943821%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4356743814%_)))
                                           (_%lp-hd4356843818%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4356743814%_))))
                                       (_%loop4356643805%_
                                        _%lp-tl4356943821%_
                                        (cons _%lp-hd4356843818%_
                                              _%body4357043812%_))))
                                   (let ((_%body4357143824%_
                                          (reverse _%body4357043812%_)))
                                     (let ((_%g4355143827%_ _%body4357143824%_)
                                           (_%g4355243829%_ _%hd4356143793%_)
                                           (_%g4355343830%_ _%hd4355843783%_))
                                       (if (gx#identifier? _%g4355243829%_)
                                           (_%__kont4520945210%_
                                            _%g4355143827%_
                                            _%g4355243829%_
                                            _%g4355343830%_)
                                           (_%__match4530945310%_
                                            _%e4355443769%_
                                            _%hd4355543773%_
                                            _%tl4355643776%_
                                            _%__splice4521145212%_
                                            _%target4356343799%_
                                            _%tl4356543802%_))))))))
                     (_%loop4356643805%_ _%target4356343799%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair?
                                                        _%__stx4520445205%_)
                                                       (let ((_%e4354243865%_
                                                              (gx#syntax-e
                                                               _%__stx4520445205%_)))
                                                         (let ((_%tl4354443872%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e4354243865%_)))
                       (_%hd4354343869%_
                        (let () (declare (not safe)) (##car _%e4354243865%_))))
                   (if (gx#stx-pair? _%tl4354443872%_)
                       (let ((_%e4354543875%_ (gx#syntax-e _%tl4354443872%_)))
                         (let ((_%tl4354743882%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4354543875%_)))
                               (_%hd4354643879%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4354543875%_))))
                           (if (gx#identifier? _%hd4354643879%_)
                               (if (gx#free-identifier=?
                                    |gerbil/core/more-sugar[1]#_g45486_|
                                    _%hd4354643879%_)
                                   (if (gx#stx-pair? _%tl4354743882%_)
                                       (let ((_%e4354843885%_
                                              (gx#syntax-e _%tl4354743882%_)))
                                         (let ((_%tl4355043892%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4354843885%_)))
                                               (_%hd4354943889%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4354843885%_))))
                                           (if (gx#stx-null? _%tl4355043892%_)
                                               (_%__kont4520745208%_
                                                _%hd4354943889%_
                                                _%hd4354343869%_)
                                               (if (gx#stx-pair?
                                                    _%hd4354343869%_)
                                                   (let ((_%e4355743779%_
                                                          (gx#syntax-e
                                                           _%hd4354343869%_)))
                                                     (let ((_%tl4355943786%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e4355743779%_)))
                                                           (_%hd4355843783%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e4355743779%_))))
                                                       (if (gx#stx-pair?
                                                            _%tl4355943786%_)
                                                           (let ((_%e4356043789%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl4355943786%_)))
                     (let ((_%tl4356243796%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4356043789%_)))
                           (_%hd4356143793%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4356043789%_))))
                       (if (gx#stx-null? _%tl4356243796%_)
                           (if (gx#stx-pair/null? _%tl4354443872%_)
                               (let ((_%__splice4521145212%_
                                      (gx#syntax-split-splice->vector
                                       _%tl4354443872%_
                                       '0)))
                                 (let ((_%tl4356543802%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4521145212%_
                                           '1)))
                                       (_%target4356343799%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4521145212%_
                                           '0))))
                                   (if (gx#stx-null? _%tl4356543802%_)
                                       (_%__match4527345274%_
                                        _%e4354243865%_
                                        _%hd4354343869%_
                                        _%tl4354443872%_
                                        _%e4355743779%_
                                        _%hd4355843783%_
                                        _%tl4355943786%_
                                        _%e4356043789%_
                                        _%hd4356143793%_
                                        _%tl4356243796%_
                                        _%__splice4521145212%_
                                        _%target4356343799%_
                                        _%tl4356543802%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4353843608%_)))))
                               (let () (declare (not safe)) (_%g4353843608%_)))
                           (if (gx#stx-pair/null? _%tl4354443872%_)
                               (let ((_%__splice4521945220%_
                                      (gx#syntax-split-splice->vector
                                       _%tl4354443872%_
                                       '0)))
                                 (let ((_%tl4359643628%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4521945220%_
                                           '1)))
                                       (_%target4359443625%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4521945220%_
                                           '0))))
                                   (if (gx#stx-null? _%tl4359643628%_)
                                       (_%__match4530945310%_
                                        _%e4354243865%_
                                        _%hd4354343869%_
                                        _%tl4354443872%_
                                        _%__splice4521945220%_
                                        _%target4359443625%_
                                        _%tl4359643628%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4353843608%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g4353843608%_))))))
                   (if (gx#stx-null? _%tl4355943786%_)
                       (if (gx#stx-pair/null? _%tl4354443872%_)
                           (let ((_%__splice4521545216%_
                                  (gx#syntax-split-splice->vector
                                   _%tl4354443872%_
                                   '0)))
                             (let ((_%tl4358243710%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice4521545216%_
                                       '1)))
                                   (_%target4358043707%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice4521545216%_
                                       '0))))
                               (if (gx#stx-null? _%tl4358243710%_)
                                   (_%__match4529545296%_
                                    _%e4354243865%_
                                    _%hd4354343869%_
                                    _%tl4354443872%_
                                    _%e4355743779%_
                                    _%hd4355843783%_
                                    _%tl4355943786%_
                                    _%__splice4521545216%_
                                    _%target4358043707%_
                                    _%tl4358243710%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g4353843608%_)))))
                           (let () (declare (not safe)) (_%g4353843608%_)))
                       (if (gx#stx-pair/null? _%tl4354443872%_)
                           (let ((_%__splice4521945220%_
                                  (gx#syntax-split-splice->vector
                                   _%tl4354443872%_
                                   '0)))
                             (let ((_%tl4359643628%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice4521945220%_
                                       '1)))
                                   (_%target4359443625%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice4521945220%_
                                       '0))))
                               (if (gx#stx-null? _%tl4359643628%_)
                                   (_%__match4530945310%_
                                    _%e4354243865%_
                                    _%hd4354343869%_
                                    _%tl4354443872%_
                                    _%__splice4521945220%_
                                    _%target4359443625%_
                                    _%tl4359643628%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g4353843608%_)))))
                           (let () (declare (not safe)) (_%g4353843608%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _%tl4354443872%_)
                                                       (let ((_%__splice4521945220%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4354443872%_
                                                               '0)))
                                                         (let ((_%tl4359643628%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4521945220%_ '1)))
                       (_%target4359443625%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4521945220%_ '0))))
                   (if (gx#stx-null? _%tl4359643628%_)
                       (_%__match4530945310%_
                        _%e4354243865%_
                        _%hd4354343869%_
                        _%tl4354443872%_
                        _%__splice4521945220%_
                        _%target4359443625%_
                        _%tl4359643628%_)
                       (let () (declare (not safe)) (_%g4353843608%_)))))
               (let () (declare (not safe)) (_%g4353843608%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (gx#stx-pair? _%hd4354343869%_)
                                           (let ((_%e4355743779%_
                                                  (gx#syntax-e
                                                   _%hd4354343869%_)))
                                             (let ((_%tl4355943786%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e4355743779%_)))
                                                   (_%hd4355843783%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e4355743779%_))))
                                               (if (gx#stx-pair?
                                                    _%tl4355943786%_)
                                                   (let ((_%e4356043789%_
                                                          (gx#syntax-e
                                                           _%tl4355943786%_)))
                                                     (let ((_%tl4356243796%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e4356043789%_)))
                                                           (_%hd4356143793%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e4356043789%_))))
                                                       (if (gx#stx-null?
                                                            _%tl4356243796%_)
                                                           (if (gx#stx-pair/null?
                                                                _%tl4354443872%_)
                                                               (let ((_%__splice4521145212%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-split-splice->vector
                               _%tl4354443872%_
                               '0)))
                         (let ((_%tl4356543802%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4521145212%_ '1)))
                               (_%target4356343799%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4521145212%_ '0))))
                           (if (gx#stx-null? _%tl4356543802%_)
                               (_%__match4527345274%_
                                _%e4354243865%_
                                _%hd4354343869%_
                                _%tl4354443872%_
                                _%e4355743779%_
                                _%hd4355843783%_
                                _%tl4355943786%_
                                _%e4356043789%_
                                _%hd4356143793%_
                                _%tl4356243796%_
                                _%__splice4521145212%_
                                _%target4356343799%_
                                _%tl4356543802%_)
                               (let ()
                                 (declare (not safe))
                                 (_%g4353843608%_)))))
                       (let () (declare (not safe)) (_%g4353843608%_)))
                   (if (gx#stx-pair/null? _%tl4354443872%_)
                       (let ((_%__splice4521945220%_
                              (gx#syntax-split-splice->vector
                               _%tl4354443872%_
                               '0)))
                         (let ((_%tl4359643628%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4521945220%_ '1)))
                               (_%target4359443625%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4521945220%_ '0))))
                           (if (gx#stx-null? _%tl4359643628%_)
                               (_%__match4530945310%_
                                _%e4354243865%_
                                _%hd4354343869%_
                                _%tl4354443872%_
                                _%__splice4521945220%_
                                _%target4359443625%_
                                _%tl4359643628%_)
                               (let ()
                                 (declare (not safe))
                                 (_%g4353843608%_)))))
                       (let () (declare (not safe)) (_%g4353843608%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-null?
                                                        _%tl4355943786%_)
                                                       (if (gx#stx-pair/null?
                                                            _%tl4354443872%_)
                                                           (let ((_%__splice4521545216%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice->vector
                           _%tl4354443872%_
                           '0)))
                     (let ((_%tl4358243710%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4521545216%_ '1)))
                           (_%target4358043707%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4521545216%_ '0))))
                       (if (gx#stx-null? _%tl4358243710%_)
                           (_%__match4529545296%_
                            _%e4354243865%_
                            _%hd4354343869%_
                            _%tl4354443872%_
                            _%e4355743779%_
                            _%hd4355843783%_
                            _%tl4355943786%_
                            _%__splice4521545216%_
                            _%target4358043707%_
                            _%tl4358243710%_)
                           (let () (declare (not safe)) (_%g4353843608%_)))))
                   (let () (declare (not safe)) (_%g4353843608%_)))
               (if (gx#stx-pair/null? _%tl4354443872%_)
                   (let ((_%__splice4521945220%_
                          (gx#syntax-split-splice->vector
                           _%tl4354443872%_
                           '0)))
                     (let ((_%tl4359643628%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4521945220%_ '1)))
                           (_%target4359443625%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4521945220%_ '0))))
                       (if (gx#stx-null? _%tl4359643628%_)
                           (_%__match4530945310%_
                            _%e4354243865%_
                            _%hd4354343869%_
                            _%tl4354443872%_
                            _%__splice4521945220%_
                            _%target4359443625%_
                            _%tl4359643628%_)
                           (let () (declare (not safe)) (_%g4353843608%_)))))
                   (let () (declare (not safe)) (_%g4353843608%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (gx#stx-pair/null?
                                                _%tl4354443872%_)
                                               (let ((_%__splice4521945220%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl4354443872%_
                                                       '0)))
                                                 (let ((_%tl4359643628%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4521945220%_
                                                           '1)))
                                                       (_%target4359443625%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4521945220%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl4359643628%_)
                                                       (_%__match4530945310%_
                                                        _%e4354243865%_
                                                        _%hd4354343869%_
                                                        _%tl4354443872%_
                                                        _%__splice4521945220%_
                                                        _%target4359443625%_
                                                        _%tl4359643628%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g4353843608%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4353843608%_)))))
                                   (if (gx#stx-pair? _%hd4354343869%_)
                                       (let ((_%e4355743779%_
                                              (gx#syntax-e _%hd4354343869%_)))
                                         (let ((_%tl4355943786%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4355743779%_)))
                                               (_%hd4355843783%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4355743779%_))))
                                           (if (gx#stx-pair? _%tl4355943786%_)
                                               (let ((_%e4356043789%_
                                                      (gx#syntax-e
                                                       _%tl4355943786%_)))
                                                 (let ((_%tl4356243796%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e4356043789%_)))
                                                       (_%hd4356143793%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e4356043789%_))))
                                                   (if (gx#stx-null?
                                                        _%tl4356243796%_)
                                                       (if (gx#stx-pair/null?
                                                            _%tl4354443872%_)
                                                           (let ((_%__splice4521145212%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice->vector
                           _%tl4354443872%_
                           '0)))
                     (let ((_%tl4356543802%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4521145212%_ '1)))
                           (_%target4356343799%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4521145212%_ '0))))
                       (if (gx#stx-null? _%tl4356543802%_)
                           (_%__match4527345274%_
                            _%e4354243865%_
                            _%hd4354343869%_
                            _%tl4354443872%_
                            _%e4355743779%_
                            _%hd4355843783%_
                            _%tl4355943786%_
                            _%e4356043789%_
                            _%hd4356143793%_
                            _%tl4356243796%_
                            _%__splice4521145212%_
                            _%target4356343799%_
                            _%tl4356543802%_)
                           (let () (declare (not safe)) (_%g4353843608%_)))))
                   (let () (declare (not safe)) (_%g4353843608%_)))
               (if (gx#stx-pair/null? _%tl4354443872%_)
                   (let ((_%__splice4521945220%_
                          (gx#syntax-split-splice->vector
                           _%tl4354443872%_
                           '0)))
                     (let ((_%tl4359643628%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4521945220%_ '1)))
                           (_%target4359443625%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4521945220%_ '0))))
                       (if (gx#stx-null? _%tl4359643628%_)
                           (_%__match4530945310%_
                            _%e4354243865%_
                            _%hd4354343869%_
                            _%tl4354443872%_
                            _%__splice4521945220%_
                            _%target4359443625%_
                            _%tl4359643628%_)
                           (let () (declare (not safe)) (_%g4353843608%_)))))
                   (let () (declare (not safe)) (_%g4353843608%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-null?
                                                    _%tl4355943786%_)
                                                   (if (gx#stx-pair/null?
                                                        _%tl4354443872%_)
                                                       (let ((_%__splice4521545216%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4354443872%_
                                                               '0)))
                                                         (let ((_%tl4358243710%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4521545216%_ '1)))
                       (_%target4358043707%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4521545216%_ '0))))
                   (if (gx#stx-null? _%tl4358243710%_)
                       (_%__match4529545296%_
                        _%e4354243865%_
                        _%hd4354343869%_
                        _%tl4354443872%_
                        _%e4355743779%_
                        _%hd4355843783%_
                        _%tl4355943786%_
                        _%__splice4521545216%_
                        _%target4358043707%_
                        _%tl4358243710%_)
                       (let () (declare (not safe)) (_%g4353843608%_)))))
               (let () (declare (not safe)) (_%g4353843608%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _%tl4354443872%_)
                                                       (let ((_%__splice4521945220%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4354443872%_
                                                               '0)))
                                                         (let ((_%tl4359643628%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4521945220%_ '1)))
                       (_%target4359443625%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4521945220%_ '0))))
                   (if (gx#stx-null? _%tl4359643628%_)
                       (_%__match4530945310%_
                        _%e4354243865%_
                        _%hd4354343869%_
                        _%tl4354443872%_
                        _%__splice4521945220%_
                        _%target4359443625%_
                        _%tl4359643628%_)
                       (let () (declare (not safe)) (_%g4353843608%_)))))
               (let () (declare (not safe)) (_%g4353843608%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (gx#stx-pair/null? _%tl4354443872%_)
                                           (let ((_%__splice4521945220%_
                                                  (gx#syntax-split-splice->vector
                                                   _%tl4354443872%_
                                                   '0)))
                                             (let ((_%tl4359643628%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4521945220%_
                                                       '1)))
                                                   (_%target4359443625%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4521945220%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl4359643628%_)
                                                   (_%__match4530945310%_
                                                    _%e4354243865%_
                                                    _%hd4354343869%_
                                                    _%tl4354443872%_
                                                    _%__splice4521945220%_
                                                    _%target4359443625%_
                                                    _%tl4359643628%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4353843608%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4353843608%_)))))
                               (if (gx#stx-pair? _%hd4354343869%_)
                                   (let ((_%e4355743779%_
                                          (gx#syntax-e _%hd4354343869%_)))
                                     (let ((_%tl4355943786%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4355743779%_)))
                                           (_%hd4355843783%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4355743779%_))))
                                       (if (gx#stx-pair? _%tl4355943786%_)
                                           (let ((_%e4356043789%_
                                                  (gx#syntax-e
                                                   _%tl4355943786%_)))
                                             (let ((_%tl4356243796%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e4356043789%_)))
                                                   (_%hd4356143793%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e4356043789%_))))
                                               (if (gx#stx-null?
                                                    _%tl4356243796%_)
                                                   (if (gx#stx-pair/null?
                                                        _%tl4354443872%_)
                                                       (let ((_%__splice4521145212%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4354443872%_
                                                               '0)))
                                                         (let ((_%tl4356543802%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4521145212%_ '1)))
                       (_%target4356343799%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4521145212%_ '0))))
                   (if (gx#stx-null? _%tl4356543802%_)
                       (_%__match4527345274%_
                        _%e4354243865%_
                        _%hd4354343869%_
                        _%tl4354443872%_
                        _%e4355743779%_
                        _%hd4355843783%_
                        _%tl4355943786%_
                        _%e4356043789%_
                        _%hd4356143793%_
                        _%tl4356243796%_
                        _%__splice4521145212%_
                        _%target4356343799%_
                        _%tl4356543802%_)
                       (let () (declare (not safe)) (_%g4353843608%_)))))
               (let () (declare (not safe)) (_%g4353843608%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _%tl4354443872%_)
                                                       (let ((_%__splice4521945220%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4354443872%_
                                                               '0)))
                                                         (let ((_%tl4359643628%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4521945220%_ '1)))
                       (_%target4359443625%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4521945220%_ '0))))
                   (if (gx#stx-null? _%tl4359643628%_)
                       (_%__match4530945310%_
                        _%e4354243865%_
                        _%hd4354343869%_
                        _%tl4354443872%_
                        _%__splice4521945220%_
                        _%target4359443625%_
                        _%tl4359643628%_)
                       (let () (declare (not safe)) (_%g4353843608%_)))))
               (let () (declare (not safe)) (_%g4353843608%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (gx#stx-null? _%tl4355943786%_)
                                               (if (gx#stx-pair/null?
                                                    _%tl4354443872%_)
                                                   (let ((_%__splice4521545216%_
                                                          (gx#syntax-split-splice->vector
                                                           _%tl4354443872%_
                                                           '0)))
                                                     (let ((_%tl4358243710%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice4521545216%_
                                                               '1)))
                                                           (_%target4358043707%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice4521545216%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%tl4358243710%_)
                                                           (_%__match4529545296%_
                                                            _%e4354243865%_
                                                            _%hd4354343869%_
                                                            _%tl4354443872%_
                                                            _%e4355743779%_
                                                            _%hd4355843783%_
                                                            _%tl4355943786%_
                                                            _%__splice4521545216%_
                                                            _%target4358043707%_
                                                            _%tl4358243710%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g4353843608%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4353843608%_)))
                                               (if (gx#stx-pair/null?
                                                    _%tl4354443872%_)
                                                   (let ((_%__splice4521945220%_
                                                          (gx#syntax-split-splice->vector
                                                           _%tl4354443872%_
                                                           '0)))
                                                     (let ((_%tl4359643628%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice4521945220%_
                                                               '1)))
                                                           (_%target4359443625%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice4521945220%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%tl4359643628%_)
                                                           (_%__match4530945310%_
                                                            _%e4354243865%_
                                                            _%hd4354343869%_
                                                            _%tl4354443872%_
                                                            _%__splice4521945220%_
                                                            _%target4359443625%_
                                                            _%tl4359643628%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g4353843608%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4353843608%_)))))))
                                   (if (gx#stx-pair/null? _%tl4354443872%_)
                                       (let ((_%__splice4521945220%_
                                              (gx#syntax-split-splice->vector
                                               _%tl4354443872%_
                                               '0)))
                                         (let ((_%tl4359643628%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4521945220%_
                                                   '1)))
                                               (_%target4359443625%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4521945220%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl4359643628%_)
                                               (_%__match4530945310%_
                                                _%e4354243865%_
                                                _%hd4354343869%_
                                                _%tl4354443872%_
                                                _%__splice4521945220%_
                                                _%target4359443625%_
                                                _%tl4359643628%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4353843608%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g4353843608%_)))))))
                       (if (gx#stx-pair? _%hd4354343869%_)
                           (let ((_%e4355743779%_
                                  (gx#syntax-e _%hd4354343869%_)))
                             (let ((_%tl4355943786%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e4355743779%_)))
                                   (_%hd4355843783%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e4355743779%_))))
                               (if (gx#stx-pair? _%tl4355943786%_)
                                   (let ((_%e4356043789%_
                                          (gx#syntax-e _%tl4355943786%_)))
                                     (let ((_%tl4356243796%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4356043789%_)))
                                           (_%hd4356143793%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4356043789%_))))
                                       (if (gx#stx-null? _%tl4356243796%_)
                                           (if (gx#stx-pair/null?
                                                _%tl4354443872%_)
                                               (let ((_%__splice4521145212%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl4354443872%_
                                                       '0)))
                                                 (let ((_%tl4356543802%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4521145212%_
                                                           '1)))
                                                       (_%target4356343799%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4521145212%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl4356543802%_)
                                                       (_%__match4527345274%_
                                                        _%e4354243865%_
                                                        _%hd4354343869%_
                                                        _%tl4354443872%_
                                                        _%e4355743779%_
                                                        _%hd4355843783%_
                                                        _%tl4355943786%_
                                                        _%e4356043789%_
                                                        _%hd4356143793%_
                                                        _%tl4356243796%_
                                                        _%__splice4521145212%_
                                                        _%target4356343799%_
                                                        _%tl4356543802%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g4353843608%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4353843608%_)))
                                           (if (gx#stx-pair/null?
                                                _%tl4354443872%_)
                                               (let ((_%__splice4521945220%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl4354443872%_
                                                       '0)))
                                                 (let ((_%tl4359643628%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4521945220%_
                                                           '1)))
                                                       (_%target4359443625%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4521945220%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl4359643628%_)
                                                       (_%__match4530945310%_
                                                        _%e4354243865%_
                                                        _%hd4354343869%_
                                                        _%tl4354443872%_
                                                        _%__splice4521945220%_
                                                        _%target4359443625%_
                                                        _%tl4359643628%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g4353843608%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4353843608%_))))))
                                   (if (gx#stx-null? _%tl4355943786%_)
                                       (if (gx#stx-pair/null? _%tl4354443872%_)
                                           (let ((_%__splice4521545216%_
                                                  (gx#syntax-split-splice->vector
                                                   _%tl4354443872%_
                                                   '0)))
                                             (let ((_%tl4358243710%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4521545216%_
                                                       '1)))
                                                   (_%target4358043707%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4521545216%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl4358243710%_)
                                                   (_%__match4529545296%_
                                                    _%e4354243865%_
                                                    _%hd4354343869%_
                                                    _%tl4354443872%_
                                                    _%e4355743779%_
                                                    _%hd4355843783%_
                                                    _%tl4355943786%_
                                                    _%__splice4521545216%_
                                                    _%target4358043707%_
                                                    _%tl4358243710%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4353843608%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4353843608%_)))
                                       (if (gx#stx-pair/null? _%tl4354443872%_)
                                           (let ((_%__splice4521945220%_
                                                  (gx#syntax-split-splice->vector
                                                   _%tl4354443872%_
                                                   '0)))
                                             (let ((_%tl4359643628%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4521945220%_
                                                       '1)))
                                                   (_%target4359443625%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4521945220%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl4359643628%_)
                                                   (_%__match4530945310%_
                                                    _%e4354243865%_
                                                    _%hd4354343869%_
                                                    _%tl4354443872%_
                                                    _%__splice4521945220%_
                                                    _%target4359443625%_
                                                    _%tl4359643628%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4353843608%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4353843608%_)))))))
                           (if (gx#stx-pair/null? _%tl4354443872%_)
                               (let ((_%__splice4521945220%_
                                      (gx#syntax-split-splice->vector
                                       _%tl4354443872%_
                                       '0)))
                                 (let ((_%tl4359643628%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4521945220%_
                                           '1)))
                                       (_%target4359443625%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4521945220%_
                                           '0))))
                                   (if (gx#stx-null? _%tl4359643628%_)
                                       (_%__match4530945310%_
                                        _%e4354243865%_
                                        _%hd4354343869%_
                                        _%tl4354443872%_
                                        _%__splice4521945220%_
                                        _%target4359443625%_
                                        _%tl4359643628%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4353843608%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g4353843608%_)))))))
               (let () (declare (not safe)) (_%g4353843608%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (if (pair? _%rest4338843396%_)
                                         (let ((_%hd4339343920%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%rest4338843396%_)))
                                               (_%tl4339443923%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%rest4338843396%_))))
                                           (let* ((_%hd43926%_
                                                   _%hd4339343920%_)
                                                  (_%rest43929%_
                                                   _%tl4339443923%_))
                                             (_%K4339243916%_
                                              _%rest43929%_
                                              _%hd43926%_)))
                                         (_%else4339043527%_)))))
                               _%g4335643367%_))))
                      (_%g4335443932%_ (gx#genident))))))
          (let* ((_%g4273942759%_
                  (lambda (_%g4274042755%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g4274042755%_)))
                 (_%g4273843347%_
                  (lambda (_%g4274042763%_)
                    (if (gx#stx-pair? _%g4274042763%_)
                        (let ((_%e4274242766%_ (gx#syntax-e _%g4274042763%_)))
                          (let ((_%hd4274342770%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4274242766%_)))
                                (_%tl4274442773%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4274242766%_))))
                            (if (gx#stx-pair/null? _%tl4274442773%_)
                                (let ((_g45487_
                                       (gx#syntax-split-splice
                                        _%tl4274442773%_
                                        '0)))
                                  (begin
                                    (let ((_g45488_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g45487_)
                                                 (##values-length _g45487_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g45488_ 2)))
                                          (error "Context expects 2 values"
                                                 _g45488_)))
                                    (let ((_%target4274542776%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g45487_ 0)))
                                          (_%tl4274742779%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g45487_ 1))))
                                      (if (gx#stx-null? _%tl4274742779%_)
                                          (letrec ((_%loop4274842782%_
                                                    (lambda (_%hd4274642786%_
                                                             _%e4275242789%_)
                                                      (if (gx#stx-pair?
                                                           _%hd4274642786%_)
                                                          (let ((_%e4274942791%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd4274642786%_)))
                    (let ((_%lp-hd4275042795%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4274942791%_)))
                          (_%lp-tl4275142798%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4274942791%_))))
                      (_%loop4274842782%_
                       _%lp-tl4275142798%_
                       (cons _%lp-hd4275042795%_ _%e4275242789%_))))
                  (let ((_%e4275342801%_ (reverse _%e4275242789%_)))
                    ((lambda (_%g4274142804%_)
                       (let _%lp42821%_ ((_%rest42824%_
                                          (foldr (lambda (_%g4333843341%_
                                                          _%g4333943344%_)
                                                   (cons _%g4333843341%_
                                                         _%g4333943344%_))
                                                 '()
                                                 _%g4274142804%_))
                                         (_%body42826%_ '()))
                         (let* ((_%__stx4543045431%_ _%rest42824%_)
                                (_%g4282942841%_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%__stx4543045431%_))))
                           (let ((_%__kont4543345434%_
                                  (lambda (_%g4283142869%_ _%g4283242871%_)
                                    (let* ((_%__stx4537845379%_
                                            _%g4283242871%_)
                                           (_%g4288842921%_
                                            (lambda ()
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%__stx4537845379%_))))
                                      (let ((_%__kont4538145382%_
                                             (lambda (_%g4289043308%_)
                                               (if (gx#stx-null?
                                                    _%g4283142869%_)
                                                   (_%generate-fini42736%_
                                                    (_%generate-thunk42734%_
                                                     _%body42826%_)
                                                    (foldr (lambda (_%g4332243325%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g4332343328%_)
                     (cons _%g4332243325%_ _%g4332343328%_))
                   '()
                   _%g4289043308%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Misplaced finally clause"
                                                    _%stx42731%_))))
                                            (_%__kont4538545386%_
                                             (lambda (_%g4290342977%_)
                                               (let _%lp42994%_ ((_%rest42997%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g4283142869%_)
                         (_%handlers42999%_
                          (cons (foldr (lambda (_%g4325443257%_
                                                _%g4325543260%_)
                                         (cons _%g4325443257%_
                                               _%g4325543260%_))
                                       '()
                                       _%g4290342977%_)
                                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let* ((_%__stx4531245313%_
                                                         _%rest42997%_)
                                                        (_%g4300343043%_
                                                         (lambda ()
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%__stx4531245313%_))))
                                                   (let ((_%__kont4531545316%_
                                                          (lambda (_%g4300543224%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g4300643226%_)
                    (_%lp42994%_
                     _%g4300543224%_
                     (cons (foldr (lambda (_%g4324243245%_ _%g4324343248%_)
                                    (cons _%g4324243245%_ _%g4324343248%_))
                                  '()
                                  _%g4300643226%_)
                           _%handlers42999%_))))
                 (_%__kont4531945320%_
                  (lambda (_%g4302243109%_)
                    (let* ((_%g4313043138%_
                            (lambda (_%g4313143134%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4313143134%_)))
                           (_%g4312943165%_
                            (lambda (_%g4313143142%_)
                              ((lambda (_%g4313243145%_)
                                 (_%generate-fini42736%_
                                  (cons (gx#datum->syntax '#f 'lambda)
                                        (cons '() (cons _%g4313243145%_ '())))
                                  (foldr (lambda (_%g4315643159%_
                                                  _%g4315743162%_)
                                           (cons _%g4315643159%_
                                                 _%g4315743162%_))
                                         '()
                                         _%g4302243109%_)))
                               _%g4313143142%_))))
                      (_%g4312943165%_
                       (_%generate-catch42737%_
                        _%handlers42999%_
                        (_%generate-thunk42734%_ _%body42826%_))))))
                 (_%__kont4532345324%_
                  (lambda ()
                    (_%generate-catch42737%_
                     _%handlers42999%_
                     (_%generate-thunk42734%_ _%body42826%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%g4300243054%_
                                                             (lambda ()
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%__stx4531245313%_)
                           (_%__kont4532345324%_)
                           (let () (declare (not safe)) (_%g4300343043%_)))))
                    (_%__match4537345374%_
                     (lambda (_%e4302343061%_
                              _%hd4302443065%_
                              _%tl4302543068%_
                              _%e4302643071%_
                              _%hd4302743075%_
                              _%tl4302843078%_
                              _%__splice4532145322%_
                              _%target4302943081%_
                              _%tl4303143084%_)
                       (letrec ((_%loop4303243087%_
                                 (lambda (_%hd4303043091%_ _%fini4303643094%_)
                                   (if (gx#stx-pair? _%hd4303043091%_)
                                       (let ((_%e4303343096%_
                                              (gx#syntax-e _%hd4303043091%_)))
                                         (let ((_%lp-tl4303543103%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4303343096%_)))
                                               (_%lp-hd4303443100%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4303343096%_))))
                                           (_%loop4303243087%_
                                            _%lp-tl4303543103%_
                                            (cons _%lp-hd4303443100%_
                                                  _%fini4303643094%_))))
                                       (let ((_%fini4303743106%_
                                              (reverse _%fini4303643094%_)))
                                         (if (gx#stx-null? _%tl4302543068%_)
                                             (_%__kont4531945320%_
                                              _%fini4303743106%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%g4300343043%_))))))))
                         (_%loop4303243087%_ _%target4302943081%_ '()))))
                    (_%__match4534945350%_
                     (lambda (_%e4300743176%_
                              _%hd4300843180%_
                              _%tl4300943183%_
                              _%e4301043186%_
                              _%hd4301143190%_
                              _%tl4301243193%_
                              _%__splice4531745318%_
                              _%target4301343196%_
                              _%tl4301543199%_)
                       (letrec ((_%loop4301643202%_
                                 (lambda (_%hd4301443206%_
                                          _%handler4302043209%_)
                                   (if (gx#stx-pair? _%hd4301443206%_)
                                       (let ((_%e4301743211%_
                                              (gx#syntax-e _%hd4301443206%_)))
                                         (let ((_%lp-tl4301943218%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4301743211%_)))
                                               (_%lp-hd4301843215%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4301743211%_))))
                                           (_%loop4301643202%_
                                            _%lp-tl4301943218%_
                                            (cons _%lp-hd4301843215%_
                                                  _%handler4302043209%_))))
                                       (let ((_%handler4302143221%_
                                              (reverse _%handler4302043209%_)))
                                         (_%__kont4531545316%_
                                          _%tl4300943183%_
                                          _%handler4302143221%_))))))
                         (_%loop4301643202%_ _%target4301343196%_ '())))))
               (if (gx#stx-pair? _%__stx4531245313%_)
                   (let ((_%e4300743176%_ (gx#syntax-e _%__stx4531245313%_)))
                     (let ((_%tl4300943183%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4300743176%_)))
                           (_%hd4300843180%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4300743176%_))))
                       (if (gx#stx-pair? _%hd4300843180%_)
                           (let ((_%e4301043186%_
                                  (gx#syntax-e _%hd4300843180%_)))
                             (let ((_%tl4301243193%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e4301043186%_)))
                                   (_%hd4301143190%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e4301043186%_))))
                               (if (gx#identifier? _%hd4301143190%_)
                                   (if (gx#free-identifier=?
                                        |gerbil/core/more-sugar[1]#_g45489_|
                                        _%hd4301143190%_)
                                       (if (gx#stx-pair/null? _%tl4301243193%_)
                                           (let ((_%__splice4531745318%_
                                                  (gx#syntax-split-splice->vector
                                                   _%tl4301243193%_
                                                   '0)))
                                             (let ((_%tl4301543199%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4531745318%_
                                                       '1)))
                                                   (_%target4301343196%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4531745318%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl4301543199%_)
                                                   (_%__match4534945350%_
                                                    _%e4300743176%_
                                                    _%hd4300843180%_
                                                    _%tl4300943183%_
                                                    _%e4301043186%_
                                                    _%hd4301143190%_
                                                    _%tl4301243193%_
                                                    _%__splice4531745318%_
                                                    _%target4301343196%_
                                                    _%tl4301543199%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4300343043%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4300343043%_)))
                                       (if (gx#free-identifier=?
                                            |gerbil/core/more-sugar[1]#_g45490_|
                                            _%hd4301143190%_)
                                           (if (gx#stx-pair/null?
                                                _%tl4301243193%_)
                                               (let ((_%__splice4532145322%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl4301243193%_
                                                       '0)))
                                                 (let ((_%tl4303143084%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4532145322%_
                                                           '1)))
                                                       (_%target4302943081%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4532145322%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl4303143084%_)
                                                       (_%__match4537345374%_
                                                        _%e4300743176%_
                                                        _%hd4300843180%_
                                                        _%tl4300943183%_
                                                        _%e4301043186%_
                                                        _%hd4301143190%_
                                                        _%tl4301243193%_
                                                        _%__splice4532145322%_
                                                        _%target4302943081%_
                                                        _%tl4303143084%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g4300343043%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4300343043%_)))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4300343043%_))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g4300343043%_)))))
                           (let () (declare (not safe)) (_%g4300343043%_)))))
                   (let () (declare (not safe)) (_%g4300243054%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont4538945390%_
                                             (lambda ()
                                               (_%lp42821%_
                                                _%g4283142869%_
                                                (cons _%g4283242871%_
                                                      _%body42826%_)))))
                                        (let* ((_%__match4542745428%_
                                                (lambda (_%e4290442939%_
                                                         _%hd4290542943%_
                                                         _%tl4290642946%_
                                                         _%__splice4538745388%_
                                                         _%target4290742949%_
                                                         _%tl4290942952%_)
                                                  (letrec ((_%loop4291042955%_
                                                            (lambda (_%hd4290842959%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%handler4291442962%_)
                      (if (gx#stx-pair? _%hd4290842959%_)
                          (let ((_%e4291142964%_
                                 (gx#syntax-e _%hd4290842959%_)))
                            (let ((_%lp-tl4291342971%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4291142964%_)))
                                  (_%lp-hd4291242968%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4291142964%_))))
                              (_%loop4291042955%_
                               _%lp-tl4291342971%_
                               (cons _%lp-hd4291242968%_
                                     _%handler4291442962%_))))
                          (let ((_%handler4291542974%_
                                 (reverse _%handler4291442962%_)))
                            (_%__kont4538545386%_ _%handler4291542974%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop4291042955%_
                                                     _%target4290742949%_
                                                     '()))))
                                               (_%__match4540945410%_
                                                (lambda (_%e4289143270%_
                                                         _%hd4289243274%_
                                                         _%tl4289343277%_
                                                         _%__splice4538345384%_
                                                         _%target4289443280%_
                                                         _%tl4289643283%_)
                                                  (letrec ((_%loop4289743286%_
                                                            (lambda (_%hd4289543290%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%fini4290143293%_)
                      (if (gx#stx-pair? _%hd4289543290%_)
                          (let ((_%e4289843295%_
                                 (gx#syntax-e _%hd4289543290%_)))
                            (let ((_%lp-tl4290043302%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4289843295%_)))
                                  (_%lp-hd4289943299%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4289843295%_))))
                              (_%loop4289743286%_
                               _%lp-tl4290043302%_
                               (cons _%lp-hd4289943299%_ _%fini4290143293%_))))
                          (let ((_%fini4290243305%_
                                 (reverse _%fini4290143293%_)))
                            (_%__kont4538145382%_ _%fini4290243305%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop4289743286%_
                                                     _%target4289443280%_
                                                     '())))))
                                          (if (gx#stx-pair?
                                               _%__stx4537845379%_)
                                              (let ((_%e4289143270%_
                                                     (gx#syntax-e
                                                      _%__stx4537845379%_)))
                                                (let ((_%tl4289343277%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4289143270%_)))
                                                      (_%hd4289243274%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4289143270%_))))
                                                  (if (gx#identifier?
                                                       _%hd4289243274%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/more-sugar[1]#_g45491_|
                                                           _%hd4289243274%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4289343277%_)
                                                              (let ((_%__splice4538345384%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl4289343277%_
                              '0)))
                        (let ((_%tl4289643283%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice4538345384%_ '1)))
                              (_%target4289443280%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice4538345384%_ '0))))
                          (if (gx#stx-null? _%tl4289643283%_)
                              (_%__match4540945410%_
                               _%e4289143270%_
                               _%hd4289243274%_
                               _%tl4289343277%_
                               _%__splice4538345384%_
                               _%target4289443280%_
                               _%tl4289643283%_)
                              (_%__kont4538945390%_))))
                      (_%__kont4538945390%_))
                  (if (gx#free-identifier=?
                       |gerbil/core/more-sugar[1]#_g45492_|
                       _%hd4289243274%_)
                      (if (gx#stx-pair/null? _%tl4289343277%_)
                          (let ((_%__splice4538745388%_
                                 (gx#syntax-split-splice->vector
                                  _%tl4289343277%_
                                  '0)))
                            (let ((_%tl4290942952%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice4538745388%_ '1)))
                                  (_%target4290742949%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice4538745388%_
                                      '0))))
                              (if (gx#stx-null? _%tl4290942952%_)
                                  (_%__match4542745428%_
                                   _%e4289143270%_
                                   _%hd4289243274%_
                                   _%tl4289343277%_
                                   _%__splice4538745388%_
                                   _%target4290742949%_
                                   _%tl4290942952%_)
                                  (_%__kont4538945390%_))))
                          (_%__kont4538945390%_))
                      (_%__kont4538945390%_)))
              (_%__kont4538945390%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont4538945390%_)))))))
                                 (_%__kont4543545436%_
                                  (lambda ()
                                    (cons 'begin (reverse _%body42826%_)))))
                             (let ((_%g4282842852%_
                                    (lambda ()
                                      (if (gx#stx-null? _%__stx4543045431%_)
                                          (_%__kont4543545436%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4282942841%_))))))
                               (if (gx#stx-pair? _%__stx4543045431%_)
                                   (let ((_%e4283342859%_
                                          (gx#syntax-e _%__stx4543045431%_)))
                                     (let ((_%tl4283542866%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4283342859%_)))
                                           (_%hd4283442863%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4283342859%_))))
                                       (_%__kont4543345434%_
                                        _%tl4283542866%_
                                        _%hd4283442863%_)))
                                   (let ()
                                     (declare (not safe))
                                     (_%g4282842852%_))))))))
                     _%e4275342801%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop4274842782%_
                                             _%target4274542776%_
                                             '()))
                                          (_%g4273942759%_ _%g4274042763%_)))))
                                (_%g4273942759%_ _%g4274042763%_))))
                        (_%g4273942759%_ _%g4274042763%_)))))
            (_%g4273843347%_ _%stx42731%_)))))
    (define |gerbil/core/more-sugar[:0:]#hash|
      (lambda (_%$stx44147%_)
        (let* ((_%g4415144180%_
                (lambda (_%g4415244176%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4415244176%_)))
               (_%g4415044276%_
                (lambda (_%g4415244184%_)
                  (if (gx#stx-pair? _%g4415244184%_)
                      (let ((_%e4415544187%_ (gx#syntax-e _%g4415244184%_)))
                        (let ((_%hd4415644191%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4415544187%_)))
                              (_%tl4415744194%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4415544187%_))))
                          (if (gx#stx-pair/null? _%tl4415744194%_)
                              (let ((_g45493_
                                     (gx#syntax-split-splice
                                      _%tl4415744194%_
                                      '0)))
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
                                  (let ((_%target4415844197%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45493_ 0)))
                                        (_%tl4416044200%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45493_ 1))))
                                    (if (gx#stx-null? _%tl4416044200%_)
                                        (letrec ((_%loop4416144203%_
                                                  (lambda (_%hd4415944207%_
                                                           _%val4416544210%_
                                                           _%key4416644211%_)
                                                    (if (gx#stx-pair?
                                                         _%hd4415944207%_)
                                                        (let ((_%e4416244213%_
                                                               (gx#syntax-e
                                                                _%hd4415944207%_)))
                                                          (let ((_%lp-hd4416344217%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4416244213%_)))
                        (_%lp-tl4416444220%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4416244213%_))))
                    (if (gx#stx-pair? _%lp-hd4416344217%_)
                        (let ((_%e4416944223%_
                               (gx#syntax-e _%lp-hd4416344217%_)))
                          (let ((_%hd4417044227%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4416944223%_)))
                                (_%tl4417144230%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4416944223%_))))
                            (if (gx#stx-pair? _%tl4417144230%_)
                                (let ((_%e4417244233%_
                                       (gx#syntax-e _%tl4417144230%_)))
                                  (let ((_%hd4417344237%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4417244233%_)))
                                        (_%tl4417444240%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4417244233%_))))
                                    (if (gx#stx-null? _%tl4417444240%_)
                                        (_%loop4416144203%_
                                         _%lp-tl4416444220%_
                                         (cons _%hd4417344237%_
                                               _%val4416544210%_)
                                         (cons _%hd4417044227%_
                                               _%key4416644211%_))
                                        (_%g4415144180%_ _%g4415244184%_))))
                                (_%g4415144180%_ _%g4415244184%_))))
                        (_%g4415144180%_ _%g4415244184%_))))
                (let ((_%val4416744243%_ (reverse _%val4416544210%_))
                      (_%key4416844245%_ (reverse _%key4416644211%_)))
                  ((lambda (_%g4415344247%_ _%g4415444249%_)
                     (cons (gx#datum->syntax '#f '~hash-table)
                           (cons (gx#datum->syntax '#f 'make-hash-table)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _%g4415344247%_
                                    _%g4415444249%_)
                                   (foldr (lambda (_%g4426444268%_
                                                   _%g4426544271%_
                                                   _%g4426644273%_)
                                            (cons (cons _%g4426544271%_
                                                        (cons _%g4426444268%_
                                                              '()))
                                                  _%g4426644273%_))
                                          '()
                                          _%g4415344247%_
                                          _%g4415444249%_)))))
                   _%val4416744243%_
                   _%key4416844245%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop4416144203%_
                                           _%target4415844197%_
                                           '()
                                           '()))
                                        (_%g4415144180%_ _%g4415244184%_)))))
                              (_%g4415144180%_ _%g4415244184%_))))
                      (_%g4415144180%_ _%g4415244184%_)))))
          (_%g4415044276%_ _%$stx44147%_))))
    (define |gerbil/core/more-sugar[:0:]#hash-eq|
      (lambda (_%$stx44281%_)
        (let* ((_%g4428544314%_
                (lambda (_%g4428644310%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4428644310%_)))
               (_%g4428444410%_
                (lambda (_%g4428644318%_)
                  (if (gx#stx-pair? _%g4428644318%_)
                      (let ((_%e4428944321%_ (gx#syntax-e _%g4428644318%_)))
                        (let ((_%hd4429044325%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4428944321%_)))
                              (_%tl4429144328%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4428944321%_))))
                          (if (gx#stx-pair/null? _%tl4429144328%_)
                              (let ((_g45495_
                                     (gx#syntax-split-splice
                                      _%tl4429144328%_
                                      '0)))
                                (begin
                                  (let ((_g45496_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g45495_)
                                               (##values-length _g45495_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g45496_ 2)))
                                        (error "Context expects 2 values"
                                               _g45496_)))
                                  (let ((_%target4429244331%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45495_ 0)))
                                        (_%tl4429444334%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45495_ 1))))
                                    (if (gx#stx-null? _%tl4429444334%_)
                                        (letrec ((_%loop4429544337%_
                                                  (lambda (_%hd4429344341%_
                                                           _%val4429944344%_
                                                           _%key4430044345%_)
                                                    (if (gx#stx-pair?
                                                         _%hd4429344341%_)
                                                        (let ((_%e4429644347%_
                                                               (gx#syntax-e
                                                                _%hd4429344341%_)))
                                                          (let ((_%lp-hd4429744351%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4429644347%_)))
                        (_%lp-tl4429844354%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4429644347%_))))
                    (if (gx#stx-pair? _%lp-hd4429744351%_)
                        (let ((_%e4430344357%_
                               (gx#syntax-e _%lp-hd4429744351%_)))
                          (let ((_%hd4430444361%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4430344357%_)))
                                (_%tl4430544364%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4430344357%_))))
                            (if (gx#stx-pair? _%tl4430544364%_)
                                (let ((_%e4430644367%_
                                       (gx#syntax-e _%tl4430544364%_)))
                                  (let ((_%hd4430744371%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4430644367%_)))
                                        (_%tl4430844374%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4430644367%_))))
                                    (if (gx#stx-null? _%tl4430844374%_)
                                        (_%loop4429544337%_
                                         _%lp-tl4429844354%_
                                         (cons _%hd4430744371%_
                                               _%val4429944344%_)
                                         (cons _%hd4430444361%_
                                               _%key4430044345%_))
                                        (_%g4428544314%_ _%g4428644318%_))))
                                (_%g4428544314%_ _%g4428644318%_))))
                        (_%g4428544314%_ _%g4428644318%_))))
                (let ((_%val4430144377%_ (reverse _%val4429944344%_))
                      (_%key4430244379%_ (reverse _%key4430044345%_)))
                  ((lambda (_%g4428744381%_ _%g4428844383%_)
                     (cons (gx#datum->syntax '#f '~hash-table)
                           (cons (gx#datum->syntax '#f 'make-hash-table-eq)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _%g4428744381%_
                                    _%g4428844383%_)
                                   (foldr (lambda (_%g4439844402%_
                                                   _%g4439944405%_
                                                   _%g4440044407%_)
                                            (cons (cons _%g4439944405%_
                                                        (cons _%g4439844402%_
                                                              '()))
                                                  _%g4440044407%_))
                                          '()
                                          _%g4428744381%_
                                          _%g4428844383%_)))))
                   _%val4430144377%_
                   _%key4430244379%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop4429544337%_
                                           _%target4429244331%_
                                           '()
                                           '()))
                                        (_%g4428544314%_ _%g4428644318%_)))))
                              (_%g4428544314%_ _%g4428644318%_))))
                      (_%g4428544314%_ _%g4428644318%_)))))
          (_%g4428444410%_ _%$stx44281%_))))
    (define |gerbil/core/more-sugar[:0:]#hash-eqv|
      (lambda (_%$stx44415%_)
        (let* ((_%g4441944448%_
                (lambda (_%g4442044444%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4442044444%_)))
               (_%g4441844544%_
                (lambda (_%g4442044452%_)
                  (if (gx#stx-pair? _%g4442044452%_)
                      (let ((_%e4442344455%_ (gx#syntax-e _%g4442044452%_)))
                        (let ((_%hd4442444459%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4442344455%_)))
                              (_%tl4442544462%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4442344455%_))))
                          (if (gx#stx-pair/null? _%tl4442544462%_)
                              (let ((_g45497_
                                     (gx#syntax-split-splice
                                      _%tl4442544462%_
                                      '0)))
                                (begin
                                  (let ((_g45498_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g45497_)
                                               (##values-length _g45497_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g45498_ 2)))
                                        (error "Context expects 2 values"
                                               _g45498_)))
                                  (let ((_%target4442644465%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45497_ 0)))
                                        (_%tl4442844468%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45497_ 1))))
                                    (if (gx#stx-null? _%tl4442844468%_)
                                        (letrec ((_%loop4442944471%_
                                                  (lambda (_%hd4442744475%_
                                                           _%val4443344478%_
                                                           _%key4443444479%_)
                                                    (if (gx#stx-pair?
                                                         _%hd4442744475%_)
                                                        (let ((_%e4443044481%_
                                                               (gx#syntax-e
                                                                _%hd4442744475%_)))
                                                          (let ((_%lp-hd4443144485%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4443044481%_)))
                        (_%lp-tl4443244488%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4443044481%_))))
                    (if (gx#stx-pair? _%lp-hd4443144485%_)
                        (let ((_%e4443744491%_
                               (gx#syntax-e _%lp-hd4443144485%_)))
                          (let ((_%hd4443844495%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4443744491%_)))
                                (_%tl4443944498%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4443744491%_))))
                            (if (gx#stx-pair? _%tl4443944498%_)
                                (let ((_%e4444044501%_
                                       (gx#syntax-e _%tl4443944498%_)))
                                  (let ((_%hd4444144505%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4444044501%_)))
                                        (_%tl4444244508%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4444044501%_))))
                                    (if (gx#stx-null? _%tl4444244508%_)
                                        (_%loop4442944471%_
                                         _%lp-tl4443244488%_
                                         (cons _%hd4444144505%_
                                               _%val4443344478%_)
                                         (cons _%hd4443844495%_
                                               _%key4443444479%_))
                                        (_%g4441944448%_ _%g4442044452%_))))
                                (_%g4441944448%_ _%g4442044452%_))))
                        (_%g4441944448%_ _%g4442044452%_))))
                (let ((_%val4443544511%_ (reverse _%val4443344478%_))
                      (_%key4443644513%_ (reverse _%key4443444479%_)))
                  ((lambda (_%g4442144515%_ _%g4442244517%_)
                     (cons (gx#datum->syntax '#f '~hash-table)
                           (cons (gx#datum->syntax '#f 'make-hash-table-eqv)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _%g4442144515%_
                                    _%g4442244517%_)
                                   (foldr (lambda (_%g4453244536%_
                                                   _%g4453344539%_
                                                   _%g4453444541%_)
                                            (cons (cons _%g4453344539%_
                                                        (cons _%g4453244536%_
                                                              '()))
                                                  _%g4453444541%_))
                                          '()
                                          _%g4442144515%_
                                          _%g4442244517%_)))))
                   _%val4443544511%_
                   _%key4443644513%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop4442944471%_
                                           _%target4442644465%_
                                           '()
                                           '()))
                                        (_%g4441944448%_ _%g4442044452%_)))))
                              (_%g4441944448%_ _%g4442044452%_))))
                      (_%g4441944448%_ _%g4442044452%_)))))
          (_%g4441844544%_ _%$stx44415%_))))
    (define |gerbil/core/more-sugar[:0:]#~hash-table|
      (lambda (_%stx44549%_)
        (let* ((_%g4455244576%_
                (lambda (_%g4455344572%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4455344572%_)))
               (_%g4455144817%_
                (lambda (_%g4455344580%_)
                  (if (gx#stx-pair? _%g4455344580%_)
                      (let ((_%e4455644583%_ (gx#syntax-e _%g4455344580%_)))
                        (let ((_%hd4455744587%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4455644583%_)))
                              (_%tl4455844590%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4455644583%_))))
                          (if (gx#stx-pair? _%tl4455844590%_)
                              (let ((_%e4455944593%_
                                     (gx#syntax-e _%tl4455844590%_)))
                                (let ((_%hd4456044597%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4455944593%_)))
                                      (_%tl4456144600%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4455944593%_))))
                                  (if (gx#stx-pair/null? _%tl4456144600%_)
                                      (let ((_g45499_
                                             (gx#syntax-split-splice
                                              _%tl4456144600%_
                                              '0)))
                                        (begin
                                          (let ((_g45500_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45499_)
                                                       (##values-length
                                                        _g45499_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45500_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45500_)))
                                          (let ((_%target4456244603%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45499_ 0)))
                                                (_%tl4456444606%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45499_ 1))))
                                            (if (gx#stx-null? _%tl4456444606%_)
                                                (letrec ((_%loop4456544609%_
                                                          (lambda (_%hd4456344613%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%entry4456944616%_)
                    (if (gx#stx-pair? _%hd4456344613%_)
                        (let ((_%e4456644618%_ (gx#syntax-e _%hd4456344613%_)))
                          (let ((_%lp-hd4456744622%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4456644618%_)))
                                (_%lp-tl4456844625%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4456644618%_))))
                            (_%loop4456544609%_
                             _%lp-tl4456844625%_
                             (cons _%lp-hd4456744622%_ _%entry4456944616%_))))
                        (let ((_%entry4457044628%_
                               (reverse _%entry4456944616%_)))
                          ((lambda (_%g4455444631%_ _%g4455544633%_)
                             (let* ((_%g4465144659%_
                                     (lambda (_%g4465244655%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g4465244655%_)))
                                    (_%g4465044805%_
                                     (lambda (_%g4465244663%_)
                                       ((lambda (_%g4465344666%_)
                                          (let* ((_%g4467844704%_
                                                  (lambda (_%g4467944700%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g4467944700%_)))
                                                 (_%g4467744793%_
                                                  (lambda (_%g4467944708%_)
                                                    (if (gx#stx-pair/null?
                                                         _%g4467944708%_)
                                                        (let ((_g45501_
                                                               (gx#syntax-split-splice
                                                                _%g4467944708%_
                                                                '0)))
                                                          (begin
                                                            (let ((_g45502_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (if (##values? _g45501_)
                                 (##values-length _g45501_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g45502_ 2)))
                          (error "Context expects 2 values" _g45502_)))
                    (let ((_%target4468244711%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g45501_ 0)))
                          (_%tl4468444714%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g45501_ 1))))
                      (if (gx#stx-null? _%tl4468444714%_)
                          (letrec ((_%loop4468544717%_
                                    (lambda (_%hd4468344721%_
                                             _%val4468944724%_
                                             _%key4469044725%_)
                                      (if (gx#stx-pair? _%hd4468344721%_)
                                          (let ((_%e4468644727%_
                                                 (gx#syntax-e
                                                  _%hd4468344721%_)))
                                            (let ((_%lp-hd4468744731%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4468644727%_)))
                                                  (_%lp-tl4468844734%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4468644727%_))))
                                              (if (gx#stx-pair?
                                                   _%lp-hd4468744731%_)
                                                  (let ((_%e4469344737%_
                                                         (gx#syntax-e
                                                          _%lp-hd4468744731%_)))
                                                    (let ((_%hd4469444741%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4469344737%_)))
                                                          (_%tl4469544744%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4469344737%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl4469544744%_)
                                                          (let ((_%e4469644747%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4469544744%_)))
                    (let ((_%hd4469744751%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4469644747%_)))
                          (_%tl4469844754%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4469644747%_))))
                      (if (gx#stx-null? _%tl4469844754%_)
                          (_%loop4468544717%_
                           _%lp-tl4468844734%_
                           (cons _%hd4469744751%_ _%val4468944724%_)
                           (cons _%hd4469444741%_ _%key4469044725%_))
                          (_%g4467844704%_ _%g4467944708%_))))
                  (_%g4467844704%_ _%g4467944708%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4467844704%_
                                                   _%g4467944708%_))))
                                          (let ((_%val4469144757%_
                                                 (reverse _%val4468944724%_))
                                                (_%key4469244759%_
                                                 (reverse _%key4469044725%_)))
                                            ((lambda (_%g4468044761%_
                                                      _%g4468144763%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'ht)
                         (cons (cons _%g4455544633%_
                                     (cons 'size: (cons _%g4465344666%_ '())))
                               '()))
                   (begin
                     (gx#syntax-check-splice-targets
                      _%g4468044761%_
                      _%g4468144763%_)
                     (foldr (lambda (_%g4478144785%_
                                     _%g4478244788%_
                                     _%g4478344790%_)
                              (cons (cons (gx#datum->syntax '#f 'hash-put!)
                                          (cons (gx#datum->syntax '#f 'ht)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quasiquote)
                                                            (cons _%g4478244788%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%g4478144785%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%g4478344790%_))
                            (cons (gx#datum->syntax '#f 'ht) '())
                            _%g4468044761%_
                            _%g4468144763%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%val4469144757%_
                                             _%key4469244759%_))))))
                            (_%loop4468544717%_ _%target4468244711%_ '() '()))
                          (_%g4467844704%_ _%g4467944708%_)))))
                (_%g4467844704%_ _%g4467944708%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g4467744793%_
                                             (foldr (lambda (_%g4479644799%_
                                                             _%g4479744802%_)
                                                      (cons _%g4479644799%_
                                                            _%g4479744802%_))
                                                    '()
                                                    _%g4455444631%_))))
                                        _%g4465244663%_))))
                               (_%g4465044805%_
                                (gx#stx-length
                                 (foldr (lambda (_%g4480844811%_
                                                 _%g4480944814%_)
                                          (cons _%g4480844811%_
                                                _%g4480944814%_))
                                        '()
                                        _%g4455444631%_)))))
                           _%entry4457044628%_
                           _%hd4456044597%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4456544609%_
                                                   _%target4456244603%_
                                                   '()))
                                                (_%g4455244576%_
                                                 _%g4455344580%_)))))
                                      (_%g4455244576%_ _%g4455344580%_))))
                              (_%g4455244576%_ _%g4455344580%_))))
                      (_%g4455244576%_ _%g4455344580%_)))))
          (_%g4455144817%_ _%stx44549%_))))
    (define |gerbil/core/more-sugar[:0:]#@bytes|
      (lambda (_%stx44823%_)
        (let* ((_%g4482644840%_
                (lambda (_%g4482744836%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4482744836%_)))
               (_%g4482544912%_
                (lambda (_%g4482744844%_)
                  (if (gx#stx-pair? _%g4482744844%_)
                      (let ((_%e4482944847%_ (gx#syntax-e _%g4482744844%_)))
                        (let ((_%hd4483044851%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4482944847%_)))
                              (_%tl4483144854%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4482944847%_))))
                          (if (gx#stx-pair? _%tl4483144854%_)
                              (let ((_%e4483244857%_
                                     (gx#syntax-e _%tl4483144854%_)))
                                (let ((_%hd4483344861%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4483244857%_)))
                                      (_%tl4483444864%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4483244857%_))))
                                  (if (gx#stx-null? _%tl4483444864%_)
                                      ((lambda (_%g4482844867%_)
                                         (if (gx#stx-string? _%g4482844867%_)
                                             (let* ((_%g4488144889%_
                                                     (lambda (_%g4488244885%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g4488244885%_)))
                                                    (_%g4488044908%_
                                                     (lambda (_%g4488244893%_)
                                                       ((lambda (_%g4488344896%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%g4488344896%_ '())))
                _%g4488244893%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g4488044908%_
                                                (string->bytes
                                                 (gx#stx-e _%g4482844867%_))))
                                             (_%g4482644840%_
                                              _%g4482744844%_)))
                                       _%hd4483344861%_)
                                      (_%g4482644840%_ _%g4482744844%_))))
                              (_%g4482644840%_ _%g4482744844%_))))
                      (_%g4482644840%_ _%g4482744844%_)))))
          (_%g4482544912%_ _%stx44823%_))))
    (define |gerbil/core/more-sugar[:0:]#eval-when-compile|
      (lambda (_%stx44916%_)
        (let* ((_%g4491944933%_
                (lambda (_%g4492044929%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4492044929%_)))
               (_%g4491844974%_
                (lambda (_%g4492044937%_)
                  (if (gx#stx-pair? _%g4492044937%_)
                      (let ((_%e4492244940%_ (gx#syntax-e _%g4492044937%_)))
                        (let ((_%hd4492344944%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4492244940%_)))
                              (_%tl4492444947%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4492244940%_))))
                          (if (gx#stx-pair? _%tl4492444947%_)
                              (let ((_%e4492544950%_
                                     (gx#syntax-e _%tl4492444947%_)))
                                (let ((_%hd4492644954%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4492544950%_)))
                                      (_%tl4492744957%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4492544950%_))))
                                  (if (gx#stx-null? _%tl4492744957%_)
                                      ((lambda (_%g4492144960%_)
                                         (if (gx#current-expander-compiling?)
                                             (gx#eval-syntax _%g4492144960%_)
                                             '#!void)
                                         (cons (gx#datum->syntax '#f 'void)
                                               '()))
                                       _%hd4492644954%_)
                                      (_%g4491944933%_ _%g4492044937%_))))
                              (_%g4491944933%_ _%g4492044937%_))))
                      (_%g4491944933%_ _%g4492044937%_)))))
          (_%g4491844974%_ _%stx44916%_))))))
