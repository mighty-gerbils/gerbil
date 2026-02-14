(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-sugar[1]#_g45505_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/more-sugar[1]#_g45508_|
    (##structure
     gx#syntax-quote::t
     'catch
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g45509_|
    (##structure
     gx#syntax-quote::t
     'finally
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g45510_|
    (##structure
     gx#syntax-quote::t
     'finally
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g45511_|
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
      (lambda _%$args40838%_
        (apply make-instance
               |gerbil/core/more-sugar[1]#setq-macro::t|
               _%$args40838%_)))
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
      (lambda _%$args40834%_
        (apply make-instance
               |gerbil/core/more-sugar[1]#setf-macro::t|
               _%$args40834%_)))
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
      (lambda (_%stx40831%_)
        (if (gx#identifier? _%stx40831%_)
            (let ((__tmp45468 (gx#syntax-local-value _%stx40831%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/more-sugar[1]#setf-macro::t|
               __tmp45468))
            '#f)))
    (define |gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
      (lambda (_%stx40828%_)
        (if (gx#identifier? _%stx40828%_)
            (let ((__tmp45469 (gx#syntax-local-value _%stx40828%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/more-sugar[1]#setq-macro::t|
               __tmp45469))
            '#f)))
    (define |gerbil/core/more-sugar[1]#expand-set!|
      (lambda (_%stx40455%_)
        (let* ((_%__stx4499744998%_ _%stx40455%_)
               (_%g4046140524%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx4499744998%_))))
          (let ((_%__kont4500045001%_
                 (lambda (_%g4046340805%_ _%g4046440807%_)
                   (gx#core-apply-expander
                    (gx#syntax-local-e _%g4046440807%_)
                    _%stx40455%_)))
                (_%__kont4500245003%_
                 (lambda (_%g4047740694%_ _%g4047840696%_ _%g4047940697%_)
                   (let* ((_%g4071940727%_
                           (lambda (_%g4072040723%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g4072040723%_)))
                          (_%g4071840754%_
                           (lambda (_%g4072040731%_)
                             ((lambda (_%g4072140734%_)
                                (cons _%g4072140734%_
                                      (foldr (lambda (_%g4074540748%_
                                                      _%g4074640751%_)
                                               (cons _%g4074540748%_
                                                     _%g4074640751%_))
                                             (cons _%g4047740694%_ '())
                                             _%g4047840696%_)))
                              _%g4072040731%_))))
                     (_%g4071840754%_
                      (gx#stx-identifier
                       _%g4047940697%_
                       _%g4047940697%_
                       '"-set!")))))
                (_%__kont4500645007%_
                 (lambda (_%g4050140606%_)
                   (gx#core-apply-expander
                    (gx#syntax-local-e _%g4050140606%_)
                    _%stx40455%_)))
                (_%__kont4500845009%_
                 (lambda (_%g4050840561%_ _%g4050940563%_)
                   (cons (gx#datum->syntax '#f '%#set!)
                         (cons _%g4050940563%_ (cons _%g4050840561%_ '()))))))
            (let* ((_%__match4509645097%_
                    (lambda (_%e4051040531%_
                             _%hd4051140535%_
                             _%tl4051240538%_
                             _%e4051340541%_
                             _%hd4051440545%_
                             _%tl4051540548%_
                             _%e4051640551%_
                             _%hd4051740555%_
                             _%tl4051840558%_)
                      (let ((_%g4050840561%_ _%hd4051740555%_)
                            (_%g4050940563%_ _%hd4051440545%_))
                        (if (gx#identifier? _%g4050940563%_)
                            (_%__kont4500845009%_
                             _%g4050840561%_
                             _%g4050940563%_)
                            (let () (declare (not safe)) (_%g4046140524%_))))))
                   (_%__match4507645077%_
                    (lambda (_%e4050240586%_
                             _%hd4050340590%_
                             _%tl4050440593%_
                             _%e4050540596%_
                             _%hd4050640600%_
                             _%tl4050740603%_)
                      (let ((_%g4050140606%_ _%hd4050640600%_))
                        (if (|gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
                             _%g4050140606%_)
                            (_%__kont4500645007%_ _%g4050140606%_)
                            (if (gx#stx-pair? _%tl4050740603%_)
                                (let ((_%e4051640551%_
                                       (gx#syntax-e _%tl4050740603%_)))
                                  (let ((_%tl4051840558%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4051640551%_)))
                                        (_%hd4051740555%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4051640551%_))))
                                    (if (gx#stx-null? _%tl4051840558%_)
                                        (_%__match4509645097%_
                                         _%e4050240586%_
                                         _%hd4050340590%_
                                         _%tl4050440593%_
                                         _%e4050540596%_
                                         _%hd4050640600%_
                                         _%tl4050740603%_
                                         _%e4051640551%_
                                         _%hd4051740555%_
                                         _%tl4051840558%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g4046140524%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4046140524%_)))))))
                   (_%__match4506445065%_
                    (lambda (_%e4048040626%_
                             _%hd4048140630%_
                             _%tl4048240633%_
                             _%e4048340636%_
                             _%hd4048440640%_
                             _%tl4048540643%_
                             _%e4048640646%_
                             _%hd4048740650%_
                             _%tl4048840653%_
                             _%__splice4500445005%_
                             _%target4048940656%_
                             _%tl4049140659%_)
                      (letrec ((_%loop4049240662%_
                                (lambda (_%hd4049040666%_ _%arg4049640669%_)
                                  (if (gx#stx-pair? _%hd4049040666%_)
                                      (let ((_%e4049340671%_
                                             (gx#syntax-e _%hd4049040666%_)))
                                        (let ((_%lp-tl4049540678%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4049340671%_)))
                                              (_%lp-hd4049440675%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4049340671%_))))
                                          (_%loop4049240662%_
                                           _%lp-tl4049540678%_
                                           (cons _%lp-hd4049440675%_
                                                 _%arg4049640669%_))))
                                      (let ((_%arg4049740681%_
                                             (reverse _%arg4049640669%_)))
                                        (if (gx#stx-pair? _%tl4048540643%_)
                                            (let ((_%e4049840684%_
                                                   (gx#syntax-e
                                                    _%tl4048540643%_)))
                                              (let ((_%tl4050040691%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4049840684%_)))
                                                    (_%hd4049940688%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4049840684%_))))
                                                (if (gx#stx-null?
                                                     _%tl4050040691%_)
                                                    (let ((_%g4047740694%_
                                                           _%hd4049940688%_)
                                                          (_%g4047840696%_
                                                           _%arg4049740681%_)
                                                          (_%g4047940697%_
                                                           _%hd4048740650%_))
                                                      (if (gx#identifier?
                                                           _%g4047940697%_)
                                                          (_%__kont4500245003%_
                                                           _%g4047740694%_
                                                           _%g4047840696%_
                                                           _%g4047940697%_)
                                                          (_%__match4507645077%_
                                                           _%e4048040626%_
                                                           _%hd4048140630%_
                                                           _%tl4048240633%_
                                                           _%e4048340636%_
                                                           _%hd4048440640%_
                                                           _%tl4048540643%_)))
                                                    (_%__match4507645077%_
                                                     _%e4048040626%_
                                                     _%hd4048140630%_
                                                     _%tl4048240633%_
                                                     _%e4048340636%_
                                                     _%hd4048440640%_
                                                     _%tl4048540643%_))))
                                            (_%__match4507645077%_
                                             _%e4048040626%_
                                             _%hd4048140630%_
                                             _%tl4048240633%_
                                             _%e4048340636%_
                                             _%hd4048440640%_
                                             _%tl4048540643%_)))))))
                        (_%loop4049240662%_ _%target4048940656%_ '())))))
              (if (gx#stx-pair? _%__stx4499744998%_)
                  (let ((_%e4046540765%_ (gx#syntax-e _%__stx4499744998%_)))
                    (let ((_%tl4046740772%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4046540765%_)))
                          (_%hd4046640769%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4046540765%_))))
                      (if (gx#stx-pair? _%tl4046740772%_)
                          (let ((_%e4046840775%_
                                 (gx#syntax-e _%tl4046740772%_)))
                            (let ((_%tl4047040782%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4046840775%_)))
                                  (_%hd4046940779%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4046840775%_))))
                              (if (gx#stx-pair? _%hd4046940779%_)
                                  (let ((_%e4047140785%_
                                         (gx#syntax-e _%hd4046940779%_)))
                                    (let ((_%tl4047340792%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4047140785%_)))
                                          (_%hd4047240789%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4047140785%_))))
                                      (if (gx#stx-pair? _%tl4047040782%_)
                                          (let ((_%e4047440795%_
                                                 (gx#syntax-e
                                                  _%tl4047040782%_)))
                                            (let ((_%tl4047640802%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4047440795%_)))
                                                  (_%hd4047540799%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4047440795%_))))
                                              (if (gx#stx-null?
                                                   _%tl4047640802%_)
                                                  (if (|gerbil/core/more-sugar[1]#syntax-local-setf-macro?|
                                                       (gx#datum->syntax
                                                        '#f
                                                        'setfid))
                                                      (let ((_%g4046340805%_
                                                             _%hd4047540799%_)
                                                            (_%g4046440807%_
                                                             _%hd4047240789%_))
                                                        (_%__kont4500045001%_
                                                         _%g4046340805%_
                                                         _%g4046440807%_))
                                                      (if (gx#stx-pair/null?
                                                           _%tl4047340792%_)
                                                          (let ((_%__splice4500445005%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl4047340792%_ '0)))
                    (let ((_%tl4049140659%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice4500445005%_ '1)))
                          (_%target4048940656%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice4500445005%_ '0))))
                      (if (gx#stx-null? _%tl4049140659%_)
                          (_%__match4506445065%_
                           _%e4046540765%_
                           _%hd4046640769%_
                           _%tl4046740772%_
                           _%e4046840775%_
                           _%hd4046940779%_
                           _%tl4047040782%_
                           _%e4047140785%_
                           _%hd4047240789%_
                           _%tl4047340792%_
                           _%__splice4500445005%_
                           _%target4048940656%_
                           _%tl4049140659%_)
                          (_%__match4507645077%_
                           _%e4046540765%_
                           _%hd4046640769%_
                           _%tl4046740772%_
                           _%e4046840775%_
                           _%hd4046940779%_
                           _%tl4047040782%_))))
                  (_%__match4507645077%_
                   _%e4046540765%_
                   _%hd4046640769%_
                   _%tl4046740772%_
                   _%e4046840775%_
                   _%hd4046940779%_
                   _%tl4047040782%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl4047340792%_)
                                                      (let ((_%__splice4500445005%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl4047340792%_
                                                              '0)))
                                                        (let ((_%tl4049140659%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice4500445005%_ '1)))
                      (_%target4048940656%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice4500445005%_ '0))))
                  (if (gx#stx-null? _%tl4049140659%_)
                      (_%__match4506445065%_
                       _%e4046540765%_
                       _%hd4046640769%_
                       _%tl4046740772%_
                       _%e4046840775%_
                       _%hd4046940779%_
                       _%tl4047040782%_
                       _%e4047140785%_
                       _%hd4047240789%_
                       _%tl4047340792%_
                       _%__splice4500445005%_
                       _%target4048940656%_
                       _%tl4049140659%_)
                      (_%__match4507645077%_
                       _%e4046540765%_
                       _%hd4046640769%_
                       _%tl4046740772%_
                       _%e4046840775%_
                       _%hd4046940779%_
                       _%tl4047040782%_))))
              (_%__match4507645077%_
               _%e4046540765%_
               _%hd4046640769%_
               _%tl4046740772%_
               _%e4046840775%_
               _%hd4046940779%_
               _%tl4047040782%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl4047340792%_)
                                              (let ((_%__splice4500445005%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl4047340792%_
                                                      '0)))
                                                (let ((_%tl4049140659%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice4500445005%_
                                                          '1)))
                                                      (_%target4048940656%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice4500445005%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4049140659%_)
                                                      (_%__match4506445065%_
                                                       _%e4046540765%_
                                                       _%hd4046640769%_
                                                       _%tl4046740772%_
                                                       _%e4046840775%_
                                                       _%hd4046940779%_
                                                       _%tl4047040782%_
                                                       _%e4047140785%_
                                                       _%hd4047240789%_
                                                       _%tl4047340792%_
                                                       _%__splice4500445005%_
                                                       _%target4048940656%_
                                                       _%tl4049140659%_)
                                                      (_%__match4507645077%_
                                                       _%e4046540765%_
                                                       _%hd4046640769%_
                                                       _%tl4046740772%_
                                                       _%e4046840775%_
                                                       _%hd4046940779%_
                                                       _%tl4047040782%_))))
                                              (_%__match4507645077%_
                                               _%e4046540765%_
                                               _%hd4046640769%_
                                               _%tl4046740772%_
                                               _%e4046840775%_
                                               _%hd4046940779%_
                                               _%tl4047040782%_)))))
                                  (_%__match4507645077%_
                                   _%e4046540765%_
                                   _%hd4046640769%_
                                   _%tl4046740772%_
                                   _%e4046840775%_
                                   _%hd4046940779%_
                                   _%tl4047040782%_))))
                          (let () (declare (not safe)) (_%g4046140524%_)))))
                  (let () (declare (not safe)) (_%g4046140524%_))))))))
    (define |gerbil/core/more-sugar[:0:]#set!|
      (lambda (_%stx40843%_)
        (|gerbil/core/more-sugar[1]#expand-set!| _%stx40843%_)))
    (define |gerbil/core/more-sugar[:0:]#values-set!|
      (lambda (_%stx40846%_)
        (let* ((_%g4084940873%_
                (lambda (_%g4085040869%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4085040869%_)))
               (_%g4084841047%_
                (lambda (_%g4085040877%_)
                  (if (gx#stx-pair? _%g4085040877%_)
                      (let ((_%e4085340880%_ (gx#syntax-e _%g4085040877%_)))
                        (let ((_%hd4085440884%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4085340880%_)))
                              (_%tl4085540887%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4085340880%_))))
                          (if (gx#stx-pair/null? _%tl4085540887%_)
                              (if (let ((__tmp45470
                                         (gx#stx-length _%tl4085540887%_)))
                                    (declare (not safe))
                                    (##fx>= __tmp45470 '1))
                                  (let ((_g45471_
                                         (gx#syntax-split-splice
                                          _%tl4085540887%_
                                          '1)))
                                    (begin
                                      (let ((_g45472_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g45471_)
                                                   (##values-length _g45471_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g45472_ 2)))
                                            (error "Context expects 2 values"
                                                   _g45472_)))
                                      (let ((_%target4085640890%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g45471_ 0)))
                                            (_%tl4085840893%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g45471_ 1))))
                                        (if (gx#stx-pair? _%tl4085840893%_)
                                            (let ((_%e4086540896%_
                                                   (gx#syntax-e
                                                    _%tl4085840893%_)))
                                              (let ((_%hd4086640900%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4086540896%_)))
                                                    (_%tl4086740903%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4086540896%_))))
                                                (if (gx#stx-null?
                                                     _%tl4086740903%_)
                                                    (letrec ((_%loop4085940906%_
                                                              (lambda (_%hd4085740910%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tgt4086340913%_)
                        (if (gx#stx-pair? _%hd4085740910%_)
                            (let ((_%e4086040915%_
                                   (gx#syntax-e _%hd4085740910%_)))
                              (let ((_%lp-hd4086140919%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4086040915%_)))
                                    (_%lp-tl4086240922%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4086040915%_))))
                                (_%loop4085940906%_
                                 _%lp-tl4086240922%_
                                 (cons _%lp-hd4086140919%_
                                       _%tgt4086340913%_))))
                            (let ((_%tgt4086440925%_
                                   (reverse _%tgt4086340913%_)))
                              ((lambda (_%g4085140928%_ _%g4085240930%_)
                                 (let* ((_%g4094840965%_
                                         (lambda (_%g4094940961%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g4094940961%_)))
                                        (_%g4094741035%_
                                         (lambda (_%g4094940969%_)
                                           (if (gx#stx-pair/null?
                                                _%g4094940969%_)
                                               (let ((_g45473_
                                                      (gx#syntax-split-splice
                                                       _%g4094940969%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g45474_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g45473_)
                        (##values-length _g45473_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g45474_ 2)))
                 (error "Context expects 2 values" _g45474_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target4095140972%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g45473_
                                                             0)))
                                                         (_%tl4095340975%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g45473_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl4095340975%_)
                                                         (letrec ((_%loop4095440978%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd4095240982%_ _%$e4095840985%_)
                             (if (gx#stx-pair? _%hd4095240982%_)
                                 (let ((_%e4095540987%_
                                        (gx#syntax-e _%hd4095240982%_)))
                                   (let ((_%lp-hd4095640991%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4095540987%_)))
                                         (_%lp-tl4095740994%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4095540987%_))))
                                     (_%loop4095440978%_
                                      _%lp-tl4095740994%_
                                      (cons _%lp-hd4095640991%_
                                            _%$e4095840985%_))))
                                 (let ((_%$e4095940997%_
                                        (reverse _%$e4095840985%_)))
                                   ((lambda (_%g4095041000%_)
                                      (cons (gx#datum->syntax '#f 'let-values)
                                            (cons (cons (cons (foldr (lambda (_%g4101541021%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%g4101641024%_)
                               (cons _%g4101541021%_ _%g4101641024%_))
                             '()
                             _%g4095041000%_)
                      (cons _%g4085140928%_ '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    (gx#syntax-check-splice-targets
                                                     _%g4095041000%_
                                                     _%g4085240930%_)
                                                    (foldr (lambda (_%g4101741027%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g4101841030%_
                            _%g4101941032%_)
                     (cons (cons (gx#datum->syntax '#f 'set!)
                                 (cons _%g4101841030%_
                                       (cons _%g4101741027%_ '())))
                           _%g4101941032%_))
                   '()
                   _%g4095041000%_
                   _%g4085240930%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%$e4095940997%_))))))
                   (_%loop4095440978%_ _%target4095140972%_ '()))
                 (_%g4094840965%_ _%g4094940969%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g4094840965%_
                                                _%g4094940969%_)))))
                                   (_%g4094741035%_
                                    (gx#gentemps
                                     (foldr (lambda (_%g4103841041%_
                                                     _%g4103941044%_)
                                              (cons _%g4103841041%_
                                                    _%g4103941044%_))
                                            '()
                                            _%g4085240930%_)))))
                               _%hd4086640900%_
                               _%tgt4086440925%_))))))
              (_%loop4085940906%_ _%target4085640890%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4084940873%_
                                                     _%g4085040877%_))))
                                            (_%g4084940873%_
                                             _%g4085040877%_)))))
                                  (_%g4084940873%_ _%g4085040877%_))
                              (_%g4084940873%_ _%g4085040877%_))))
                      (_%g4084940873%_ _%g4085040877%_)))))
          (_%g4084841047%_ _%stx40846%_))))
    (define |gerbil/core/more-sugar[:0:]#parameterize|
      (lambda (_%$stx41053%_)
        (let* ((_%__stx4509945100%_ _%$stx41053%_)
               (_%g4105941147%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx4509945100%_))))
          (let ((_%__kont4510245103%_
                 (lambda (_%g4106141487%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g4150341506%_ _%g4150441509%_)
                                        (cons _%g4150341506%_ _%g4150441509%_))
                                      '()
                                      _%g4106141487%_)))))
                (_%__kont4510645107%_
                 (lambda (_%g4107741397%_ _%g4107841399%_ _%g4107941400%_)
                   (cons (gx#datum->syntax '#f 'call-with-parameters)
                         (cons (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '()
                                           (foldr (lambda (_%g4142341426%_
                                                           _%g4142441429%_)
                                                    (cons _%g4142341426%_
                                                          _%g4142441429%_))
                                                  '()
                                                  _%g4107741397%_)))
                               (cons _%g4107941400%_
                                     (cons _%g4107841399%_ '()))))))
                (_%__kont4511045111%_
                 (lambda (_%g4110441260%_
                          _%g4110541262%_
                          _%g4110641263%_
                          _%g4110741264%_
                          _%g4110841265%_)
                   (cons (gx#datum->syntax '#f 'call-with-parameters)
                         (cons (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '()
                                           (cons (cons _%g4110841265%_
                                                       (cons (foldr (lambda (_%g4129541300%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g4129641303%_)
                              (cons _%g4129541300%_ _%g4129641303%_))
                            '()
                            _%g4110541262%_)
                     (foldr (lambda (_%g4129741306%_ _%g4129841309%_)
                              (cons _%g4129741306%_ _%g4129841309%_))
                            '()
                            _%g4110441260%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%g4110741264%_
                                     (cons _%g4110641263%_ '())))))))
            (let* ((_%__match4522045221%_
                    (lambda (_%e4110941154%_
                             _%hd4111041158%_
                             _%tl4111141161%_
                             _%e4111241164%_
                             _%hd4111341168%_
                             _%tl4111441171%_
                             _%e4111541174%_
                             _%hd4111641178%_
                             _%tl4111741181%_
                             _%e4111841184%_
                             _%hd4111941188%_
                             _%tl4112041191%_
                             _%e4112141194%_
                             _%hd4112241198%_
                             _%tl4112341201%_
                             _%__splice4511245113%_
                             _%target4112441204%_
                             _%tl4112641207%_)
                      (letrec ((_%loop4112741210%_
                                (lambda (_%hd4112541214%_ _%rest4113141217%_)
                                  (if (gx#stx-pair? _%hd4112541214%_)
                                      (let ((_%e4112841219%_
                                             (gx#syntax-e _%hd4112541214%_)))
                                        (let ((_%lp-tl4113041226%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4112841219%_)))
                                              (_%lp-hd4112941223%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4112841219%_))))
                                          (_%loop4112741210%_
                                           _%lp-tl4113041226%_
                                           (cons _%lp-hd4112941223%_
                                                 _%rest4113141217%_))))
                                      (let ((_%rest4113241229%_
                                             (reverse _%rest4113141217%_)))
                                        (if (gx#stx-pair/null?
                                             _%tl4111441171%_)
                                            (let ((_%__splice4511445115%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4111441171%_
                                                    '0)))
                                              (let ((_%tl4113541235%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4511445115%_
                                                        '1)))
                                                    (_%target4113341232%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4511445115%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4113541235%_)
                                                    (letrec ((_%loop4113641238%_
                                                              (lambda (_%hd4113441242%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body4114041245%_)
                        (if (gx#stx-pair? _%hd4113441242%_)
                            (let ((_%e4113741247%_
                                   (gx#syntax-e _%hd4113441242%_)))
                              (let ((_%lp-tl4113941254%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4113741247%_)))
                                    (_%lp-hd4113841251%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4113741247%_))))
                                (_%loop4113641238%_
                                 _%lp-tl4113941254%_
                                 (cons _%lp-hd4113841251%_
                                       _%body4114041245%_))))
                            (let ((_%body4114141257%_
                                   (reverse _%body4114041245%_)))
                              (_%__kont4511045111%_
                               _%body4114141257%_
                               _%rest4113241229%_
                               _%hd4112241198%_
                               _%hd4111941188%_
                               _%hd4111041158%_))))))
              (_%loop4113641238%_ _%target4113341232%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4105941147%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4105941147%_))))))))
                        (_%loop4112741210%_ _%target4112441204%_ '()))))
                   (_%__match4518045181%_
                    (lambda (_%e4108041319%_
                             _%hd4108141323%_
                             _%tl4108241326%_
                             _%e4108341329%_
                             _%hd4108441333%_
                             _%tl4108541336%_
                             _%e4108641339%_
                             _%hd4108741343%_
                             _%tl4108841346%_
                             _%e4108941349%_
                             _%hd4109041353%_
                             _%tl4109141356%_
                             _%e4109241359%_
                             _%hd4109341363%_
                             _%tl4109441366%_
                             _%__splice4510845109%_
                             _%target4109541369%_
                             _%tl4109741372%_)
                      (letrec ((_%loop4109841375%_
                                (lambda (_%hd4109641379%_ _%body4110241382%_)
                                  (if (gx#stx-pair? _%hd4109641379%_)
                                      (let ((_%e4109941384%_
                                             (gx#syntax-e _%hd4109641379%_)))
                                        (let ((_%lp-tl4110141391%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4109941384%_)))
                                              (_%lp-hd4110041388%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4109941384%_))))
                                          (_%loop4109841375%_
                                           _%lp-tl4110141391%_
                                           (cons _%lp-hd4110041388%_
                                                 _%body4110241382%_))))
                                      (let ((_%body4110341394%_
                                             (reverse _%body4110241382%_)))
                                        (_%__kont4510645107%_
                                         _%body4110341394%_
                                         _%hd4109341363%_
                                         _%hd4109041353%_))))))
                        (_%loop4109841375%_ _%target4109541369%_ '()))))
                   (_%__match4513845139%_
                    (lambda (_%e4106241439%_
                             _%hd4106341443%_
                             _%tl4106441446%_
                             _%e4106541449%_
                             _%hd4106641453%_
                             _%tl4106741456%_
                             _%__splice4510445105%_
                             _%target4106841459%_
                             _%tl4107041462%_)
                      (letrec ((_%loop4107141465%_
                                (lambda (_%hd4106941469%_ _%body4107541472%_)
                                  (if (gx#stx-pair? _%hd4106941469%_)
                                      (let ((_%e4107241474%_
                                             (gx#syntax-e _%hd4106941469%_)))
                                        (let ((_%lp-tl4107441481%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4107241474%_)))
                                              (_%lp-hd4107341478%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4107241474%_))))
                                          (_%loop4107141465%_
                                           _%lp-tl4107441481%_
                                           (cons _%lp-hd4107341478%_
                                                 _%body4107541472%_))))
                                      (let ((_%body4107641484%_
                                             (reverse _%body4107541472%_)))
                                        (_%__kont4510245103%_
                                         _%body4107641484%_))))))
                        (_%loop4107141465%_ _%target4106841459%_ '())))))
              (if (gx#stx-pair? _%__stx4509945100%_)
                  (let ((_%e4106241439%_ (gx#syntax-e _%__stx4509945100%_)))
                    (let ((_%tl4106441446%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4106241439%_)))
                          (_%hd4106341443%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4106241439%_))))
                      (if (gx#stx-pair? _%tl4106441446%_)
                          (let ((_%e4106541449%_
                                 (gx#syntax-e _%tl4106441446%_)))
                            (let ((_%tl4106741456%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4106541449%_)))
                                  (_%hd4106641453%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4106541449%_))))
                              (if (gx#stx-null? _%hd4106641453%_)
                                  (if (gx#stx-pair/null? _%tl4106741456%_)
                                      (let ((_%__splice4510445105%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4106741456%_
                                              '0)))
                                        (let ((_%tl4107041462%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4510445105%_
                                                  '1)))
                                              (_%target4106841459%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4510445105%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4107041462%_)
                                              (_%__match4513845139%_
                                               _%e4106241439%_
                                               _%hd4106341443%_
                                               _%tl4106441446%_
                                               _%e4106541449%_
                                               _%hd4106641453%_
                                               _%tl4106741456%_
                                               _%__splice4510445105%_
                                               _%target4106841459%_
                                               _%tl4107041462%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4105941147%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4105941147%_)))
                                  (if (gx#stx-pair? _%hd4106641453%_)
                                      (let ((_%e4108641339%_
                                             (gx#syntax-e _%hd4106641453%_)))
                                        (let ((_%tl4108841346%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4108641339%_)))
                                              (_%hd4108741343%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4108641339%_))))
                                          (if (gx#stx-pair? _%hd4108741343%_)
                                              (let ((_%e4108941349%_
                                                     (gx#syntax-e
                                                      _%hd4108741343%_)))
                                                (let ((_%tl4109141356%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4108941349%_)))
                                                      (_%hd4109041353%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4108941349%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl4109141356%_)
                                                      (let ((_%e4109241359%_
                                                             (gx#syntax-e
                                                              _%tl4109141356%_)))
                                                        (let ((_%tl4109441366%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4109241359%_)))
                      (_%hd4109341363%_
                       (let () (declare (not safe)) (##car _%e4109241359%_))))
                  (if (gx#stx-null? _%tl4109441366%_)
                      (if (gx#stx-null? _%tl4108841346%_)
                          (if (gx#stx-pair/null? _%tl4106741456%_)
                              (let ((_%__splice4510845109%_
                                     (gx#syntax-split-splice->vector
                                      _%tl4106741456%_
                                      '0)))
                                (let ((_%tl4109741372%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4510845109%_
                                          '1)))
                                      (_%target4109541369%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4510845109%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4109741372%_)
                                      (_%__match4518045181%_
                                       _%e4106241439%_
                                       _%hd4106341443%_
                                       _%tl4106441446%_
                                       _%e4106541449%_
                                       _%hd4106641453%_
                                       _%tl4106741456%_
                                       _%e4108641339%_
                                       _%hd4108741343%_
                                       _%tl4108841346%_
                                       _%e4108941349%_
                                       _%hd4109041353%_
                                       _%tl4109141356%_
                                       _%e4109241359%_
                                       _%hd4109341363%_
                                       _%tl4109441366%_
                                       _%__splice4510845109%_
                                       _%target4109541369%_
                                       _%tl4109741372%_)
                                      (if (gx#stx-pair/null? _%tl4108841346%_)
                                          (let ((_%__splice4511245113%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl4108841346%_
                                                  '0)))
                                            (let ((_%tl4112641207%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4511245113%_
                                                      '1)))
                                                  (_%target4112441204%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4511245113%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4112641207%_)
                                                  (_%__match4522045221%_
                                                   _%e4106241439%_
                                                   _%hd4106341443%_
                                                   _%tl4106441446%_
                                                   _%e4106541449%_
                                                   _%hd4106641453%_
                                                   _%tl4106741456%_
                                                   _%e4108641339%_
                                                   _%hd4108741343%_
                                                   _%tl4108841346%_
                                                   _%e4108941349%_
                                                   _%hd4109041353%_
                                                   _%tl4109141356%_
                                                   _%e4109241359%_
                                                   _%hd4109341363%_
                                                   _%tl4109441366%_
                                                   _%__splice4511245113%_
                                                   _%target4112441204%_
                                                   _%tl4112641207%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4105941147%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4105941147%_))))))
                              (if (gx#stx-pair/null? _%tl4108841346%_)
                                  (let ((_%__splice4511245113%_
                                         (gx#syntax-split-splice->vector
                                          _%tl4108841346%_
                                          '0)))
                                    (let ((_%tl4112641207%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice4511245113%_
                                              '1)))
                                          (_%target4112441204%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice4511245113%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4112641207%_)
                                          (_%__match4522045221%_
                                           _%e4106241439%_
                                           _%hd4106341443%_
                                           _%tl4106441446%_
                                           _%e4106541449%_
                                           _%hd4106641453%_
                                           _%tl4106741456%_
                                           _%e4108641339%_
                                           _%hd4108741343%_
                                           _%tl4108841346%_
                                           _%e4108941349%_
                                           _%hd4109041353%_
                                           _%tl4109141356%_
                                           _%e4109241359%_
                                           _%hd4109341363%_
                                           _%tl4109441366%_
                                           _%__splice4511245113%_
                                           _%target4112441204%_
                                           _%tl4112641207%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4105941147%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4105941147%_))))
                          (if (gx#stx-pair/null? _%tl4108841346%_)
                              (let ((_%__splice4511245113%_
                                     (gx#syntax-split-splice->vector
                                      _%tl4108841346%_
                                      '0)))
                                (let ((_%tl4112641207%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4511245113%_
                                          '1)))
                                      (_%target4112441204%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4511245113%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4112641207%_)
                                      (_%__match4522045221%_
                                       _%e4106241439%_
                                       _%hd4106341443%_
                                       _%tl4106441446%_
                                       _%e4106541449%_
                                       _%hd4106641453%_
                                       _%tl4106741456%_
                                       _%e4108641339%_
                                       _%hd4108741343%_
                                       _%tl4108841346%_
                                       _%e4108941349%_
                                       _%hd4109041353%_
                                       _%tl4109141356%_
                                       _%e4109241359%_
                                       _%hd4109341363%_
                                       _%tl4109441366%_
                                       _%__splice4511245113%_
                                       _%target4112441204%_
                                       _%tl4112641207%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4105941147%_)))))
                              (let () (declare (not safe)) (_%g4105941147%_))))
                      (let () (declare (not safe)) (_%g4105941147%_)))))
              (let () (declare (not safe)) (_%g4105941147%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4105941147%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4105941147%_))))))
                          (let () (declare (not safe)) (_%g4105941147%_)))))
                  (let () (declare (not safe)) (_%g4105941147%_))))))))
    (define |gerbil/core/more-sugar[:0:]#let/cc|
      (lambda (_%$stx41520%_)
        (let* ((_%g4152441548%_
                (lambda (_%g4152541544%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4152541544%_)))
               (_%g4152341631%_
                (lambda (_%g4152541552%_)
                  (if (gx#stx-pair? _%g4152541552%_)
                      (let ((_%e4152841555%_ (gx#syntax-e _%g4152541552%_)))
                        (let ((_%hd4152941559%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4152841555%_)))
                              (_%tl4153041562%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4152841555%_))))
                          (if (gx#stx-pair? _%tl4153041562%_)
                              (let ((_%e4153141565%_
                                     (gx#syntax-e _%tl4153041562%_)))
                                (let ((_%hd4153241569%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4153141565%_)))
                                      (_%tl4153341572%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4153141565%_))))
                                  (if (gx#stx-pair/null? _%tl4153341572%_)
                                      (let ((_g45475_
                                             (gx#syntax-split-splice
                                              _%tl4153341572%_
                                              '0)))
                                        (begin
                                          (let ((_g45476_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45475_)
                                                       (##values-length
                                                        _g45475_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45476_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45476_)))
                                          (let ((_%target4153441575%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45475_ 0)))
                                                (_%tl4153641578%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45475_ 1))))
                                            (if (gx#stx-null? _%tl4153641578%_)
                                                (letrec ((_%loop4153741581%_
                                                          (lambda (_%hd4153541585%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4154141588%_)
                    (if (gx#stx-pair? _%hd4153541585%_)
                        (let ((_%e4153841590%_ (gx#syntax-e _%hd4153541585%_)))
                          (let ((_%lp-hd4153941594%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4153841590%_)))
                                (_%lp-tl4154041597%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4153841590%_))))
                            (_%loop4153741581%_
                             _%lp-tl4154041597%_
                             (cons _%lp-hd4153941594%_ _%body4154141588%_))))
                        (let ((_%body4154241600%_
                               (reverse _%body4154141588%_)))
                          ((lambda (_%g4152641603%_ _%g4152741605%_)
                             (if (gx#identifier? _%g4152741605%_)
                                 (cons (gx#datum->syntax '#f 'call/cc)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons (cons _%g4152741605%_
                                                               '())
                                                         (foldr (lambda (_%g4162241625%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g4162341628%_)
                          (cons _%g4162241625%_ _%g4162341628%_))
                        '()
                        _%g4152641603%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (_%g4152441548%_ _%g4152541552%_)))
                           _%body4154241600%_
                           _%hd4153241569%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4153741581%_
                                                   _%target4153441575%_
                                                   '()))
                                                (_%g4152441548%_
                                                 _%g4152541552%_)))))
                                      (_%g4152441548%_ _%g4152541552%_))))
                              (_%g4152441548%_ _%g4152541552%_))))
                      (_%g4152441548%_ _%g4152541552%_)))))
          (_%g4152341631%_ _%$stx41520%_))))
    (define |gerbil/core/more-sugar[:0:]#unwind-protect|
      (lambda (_%$stx41636%_)
        (let* ((_%g4164041668%_
                (lambda (_%g4164141664%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4164141664%_)))
               (_%g4163941765%_
                (lambda (_%g4164141672%_)
                  (if (gx#stx-pair? _%g4164141672%_)
                      (let ((_%e4164541675%_ (gx#syntax-e _%g4164141672%_)))
                        (let ((_%hd4164641679%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4164541675%_)))
                              (_%tl4164741682%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4164541675%_))))
                          (if (gx#stx-pair? _%tl4164741682%_)
                              (let ((_%e4164841685%_
                                     (gx#syntax-e _%tl4164741682%_)))
                                (let ((_%hd4164941689%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4164841685%_)))
                                      (_%tl4165041692%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4164841685%_))))
                                  (if (gx#stx-pair? _%tl4165041692%_)
                                      (let ((_%e4165141695%_
                                             (gx#syntax-e _%tl4165041692%_)))
                                        (let ((_%hd4165241699%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4165141695%_)))
                                              (_%tl4165341702%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4165141695%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4165341702%_)
                                              (let ((_g45477_
                                                     (gx#syntax-split-splice
                                                      _%tl4165341702%_
                                                      '0)))
                                                (begin
                                                  (let ((_g45478_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g45477_)
                                                               (##values-length
                                                                _g45477_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g45478_ 2)))
                (error "Context expects 2 values" _g45478_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target4165441705%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45477_
                                                            0)))
                                                        (_%tl4165641708%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45477_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl4165641708%_)
                                                        (letrec ((_%loop4165741711%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd4165541715%_ _%rest4166141718%_)
                            (if (gx#stx-pair? _%hd4165541715%_)
                                (let ((_%e4165841720%_
                                       (gx#syntax-e _%hd4165541715%_)))
                                  (let ((_%lp-hd4165941724%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4165841720%_)))
                                        (_%lp-tl4166041727%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4165841720%_))))
                                    (_%loop4165741711%_
                                     _%lp-tl4166041727%_
                                     (cons _%lp-hd4165941724%_
                                           _%rest4166141718%_))))
                                (let ((_%rest4166241730%_
                                       (reverse _%rest4166141718%_)))
                                  ((lambda (_%g4164241733%_
                                            _%g4164341735%_
                                            _%g4164441736%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'with-unwind-protect)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons '()
                                                             (cons _%g4164441736%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%g4164341735%_
                                 (foldr (lambda (_%g4175641759%_
                                                 _%g4175741762%_)
                                          (cons _%g4175641759%_
                                                _%g4175741762%_))
                                        '()
                                        _%g4164241733%_))))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%rest4166241730%_
                                   _%hd4165241699%_
                                   _%hd4164941689%_))))))
                  (_%loop4165741711%_ _%target4165441705%_ '()))
                (_%g4164041668%_ _%g4164141672%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4164041668%_
                                               _%g4164141672%_))))
                                      (_%g4164041668%_ _%g4164141672%_))))
                              (_%g4164041668%_ _%g4164141672%_))))
                      (_%g4164041668%_ _%g4164141672%_)))))
          (_%g4163941765%_ _%$stx41636%_))))
    (define |gerbil/core/more-sugar[:0:]#do|
      (lambda (_%$stx41770%_)
        (let* ((_%g4177441845%_
                (lambda (_%g4177541841%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4177541841%_)))
               (_%g4177342122%_
                (lambda (_%g4177541849%_)
                  (if (gx#stx-pair? _%g4177541849%_)
                      (let ((_%e4178241852%_ (gx#syntax-e _%g4177541849%_)))
                        (let ((_%hd4178341856%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4178241852%_)))
                              (_%tl4178441859%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4178241852%_))))
                          (if (gx#stx-pair? _%tl4178441859%_)
                              (let ((_%e4178541862%_
                                     (gx#syntax-e _%tl4178441859%_)))
                                (let ((_%hd4178641866%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4178541862%_)))
                                      (_%tl4178741869%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4178541862%_))))
                                  (if (gx#stx-pair/null? _%hd4178641866%_)
                                      (let ((_g45479_
                                             (gx#syntax-split-splice
                                              _%hd4178641866%_
                                              '0)))
                                        (begin
                                          (let ((_g45480_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45479_)
                                                       (##values-length
                                                        _g45479_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45480_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45480_)))
                                          (let ((_%target4178841872%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45479_ 0)))
                                                (_%tl4179041875%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45479_ 1))))
                                            (if (gx#stx-null? _%tl4179041875%_)
                                                (letrec ((_%loop4179141878%_
                                                          (lambda (_%hd4178941882%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%step4179541885%_
                           _%init4179641886%_
                           _%var4179741887%_)
                    (if (gx#stx-pair? _%hd4178941882%_)
                        (let ((_%e4179241889%_ (gx#syntax-e _%hd4178941882%_)))
                          (let ((_%lp-hd4179341893%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4179241889%_)))
                                (_%lp-tl4179441896%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4179241889%_))))
                            (if (gx#stx-pair? _%lp-hd4179341893%_)
                                (let ((_%e4180141899%_
                                       (gx#syntax-e _%lp-hd4179341893%_)))
                                  (let ((_%hd4180241903%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4180141899%_)))
                                        (_%tl4180341906%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4180141899%_))))
                                    (if (gx#stx-pair? _%tl4180341906%_)
                                        (let ((_%e4180441909%_
                                               (gx#syntax-e _%tl4180341906%_)))
                                          (let ((_%hd4180541913%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4180441909%_)))
                                                (_%tl4180641916%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4180441909%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl4180641916%_)
                                                (let ((_g45481_
                                                       (gx#syntax-split-splice
                                                        _%tl4180641916%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g45482_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g45481_)
                         (##values-length _g45481_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g45482_ 2)))
                  (error "Context expects 2 values" _g45482_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target4180741919%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g45481_
                                                              0)))
                                                          (_%tl4180941922%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g45481_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl4180941922%_)
                                                          (letrec ((_%loop4181041925%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd4180841929%_ _%step4181441932%_)
                              (if (gx#stx-pair? _%hd4180841929%_)
                                  (let ((_%e4181141934%_
                                         (gx#syntax-e _%hd4180841929%_)))
                                    (let ((_%lp-hd4181241938%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4181141934%_)))
                                          (_%lp-tl4181341941%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4181141934%_))))
                                      (_%loop4181041925%_
                                       _%lp-tl4181341941%_
                                       (cons _%lp-hd4181241938%_
                                             _%step4181441932%_))))
                                  (let ((_%step4181541944%_
                                         (reverse _%step4181441932%_)))
                                    (_%loop4179141878%_
                                     _%lp-tl4179441896%_
                                     (cons _%step4181541944%_
                                           _%step4179541885%_)
                                     (cons _%hd4180541913%_ _%init4179641886%_)
                                     (cons _%hd4180241903%_
                                           _%var4179741887%_)))))))
                    (_%loop4181041925%_ _%target4180741919%_ '()))
                  (_%g4177441845%_ _%g4177541849%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g4177441845%_
                                                 _%g4177541849%_))))
                                        (_%g4177441845%_ _%g4177541849%_))))
                                (_%g4177441845%_ _%g4177541849%_))))
                        (let ((_%step4179841947%_ (reverse _%step4179541885%_))
                              (_%init4179941949%_ (reverse _%init4179641886%_))
                              (_%var4180041950%_ (reverse _%var4179741887%_)))
                          (if (gx#stx-pair? _%tl4178741869%_)
                              (let ((_%e4181641952%_
                                     (gx#syntax-e _%tl4178741869%_)))
                                (let ((_%hd4181741956%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4181641952%_)))
                                      (_%tl4181841959%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4181641952%_))))
                                  (if (gx#stx-pair? _%hd4181741956%_)
                                      (let ((_%e4181941962%_
                                             (gx#syntax-e _%hd4181741956%_)))
                                        (let ((_%hd4182041966%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4181941962%_)))
                                              (_%tl4182141969%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4181941962%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4182141969%_)
                                              (let ((_g45483_
                                                     (gx#syntax-split-splice
                                                      _%tl4182141969%_
                                                      '0)))
                                                (begin
                                                  (let ((_g45484_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g45483_)
                                                               (##values-length
                                                                _g45483_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g45484_ 2)))
                (error "Context expects 2 values" _g45484_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target4182241972%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45483_
                                                            0)))
                                                        (_%tl4182441975%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45483_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl4182441975%_)
                                                        (letrec ((_%loop4182541978%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd4182341982%_ _%fini4182941985%_)
                            (if (gx#stx-pair? _%hd4182341982%_)
                                (let ((_%e4182641987%_
                                       (gx#syntax-e _%hd4182341982%_)))
                                  (let ((_%lp-hd4182741991%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4182641987%_)))
                                        (_%lp-tl4182841994%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4182641987%_))))
                                    (_%loop4182541978%_
                                     _%lp-tl4182841994%_
                                     (cons _%lp-hd4182741991%_
                                           _%fini4182941985%_))))
                                (let ((_%fini4183041997%_
                                       (reverse _%fini4182941985%_)))
                                  (if (gx#stx-pair/null? _%tl4181841959%_)
                                      (let ((_g45485_
                                             (gx#syntax-split-splice
                                              _%tl4181841959%_
                                              '0)))
                                        (begin
                                          (let ((_g45486_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45485_)
                                                       (##values-length
                                                        _g45485_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45486_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45486_)))
                                          (let ((_%target4183142000%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45485_ 0)))
                                                (_%tl4183342003%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45485_ 1))))
                                            (if (gx#stx-null? _%tl4183342003%_)
                                                (letrec ((_%loop4183442006%_
                                                          (lambda (_%hd4183242010%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4183842013%_)
                    (if (gx#stx-pair? _%hd4183242010%_)
                        (let ((_%e4183542015%_ (gx#syntax-e _%hd4183242010%_)))
                          (let ((_%lp-hd4183642019%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4183542015%_)))
                                (_%lp-tl4183742022%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4183542015%_))))
                            (_%loop4183442006%_
                             _%lp-tl4183742022%_
                             (cons _%lp-hd4183642019%_ _%body4183842013%_))))
                        (let ((_%body4183942025%_
                               (reverse _%body4183842013%_)))
                          ((lambda (_%g4177642028%_
                                    _%g4177742030%_
                                    _%g4177842031%_
                                    _%g4177942032%_
                                    _%g4178042033%_
                                    _%g4178142034%_)
                             (if (gx#stx-andmap
                                  gx#identifier?
                                  (foldr (lambda (_%g4206742070%_
                                                  _%g4206842073%_)
                                           (cons _%g4206742070%_
                                                 _%g4206842073%_))
                                         '()
                                         _%g4178142034%_))
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (gx#datum->syntax '#f '$loop)
                                             (cons (begin
                                                     (gx#syntax-check-splice-targets
                                                      _%g4178042033%_
                                                      _%g4178142034%_)
                                                     (foldr (lambda (_%g4207542088%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g4207642091%_
                             _%g4207742093%_)
                      (cons (cons _%g4207642091%_ (cons _%g4207542088%_ '()))
                            _%g4207742093%_))
                    '()
                    _%g4178042033%_
                    _%g4178142034%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'if)
                                                               (cons _%g4177842031%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'begin)
                                         (cons '#!void
                                               (foldr (lambda (_%g4207842096%_
                                                               _%g4207942099%_)
                                                        (cons _%g4207842096%_
                                                              _%g4207942099%_))
                                                      '()
                                                      _%g4177742030%_)))
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g4208042102%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g4208142105%_)
                      (cons _%g4208042102%_ _%g4208142105%_))
                    (cons (cons (gx#datum->syntax '#f '$loop)
                                (begin
                                  (gx#syntax-check-splice-targets
                                   _%g4177942032%_
                                   _%g4178142034%_)
                                  (foldr (lambda (_%g4208242108%_
                                                  _%g4208342111%_
                                                  _%g4208442113%_)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (cons _%g4208342111%_
                                                             (foldr (lambda (_%g4208542116%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g4208642119%_)
                              (cons _%g4208542116%_ _%g4208642119%_))
                            '()
                            _%g4208242108%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g4208442113%_))
                                         '()
                                         _%g4177942032%_
                                         _%g4178142034%_)))
                          '())
                    _%g4177642028%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (_%g4177441845%_ _%g4177541849%_)))
                           _%body4183942025%_
                           _%fini4183041997%_
                           _%hd4182041966%_
                           _%step4179841947%_
                           _%init4179941949%_
                           _%var4180041950%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4183442006%_
                                                   _%target4183142000%_
                                                   '()))
                                                (_%g4177441845%_
                                                 _%g4177541849%_)))))
                                      (_%g4177441845%_ _%g4177541849%_)))))))
                  (_%loop4182541978%_ _%target4182241972%_ '()))
                (_%g4177441845%_ _%g4177541849%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4177441845%_
                                               _%g4177541849%_))))
                                      (_%g4177441845%_ _%g4177541849%_))))
                              (_%g4177441845%_ _%g4177541849%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4179141878%_
                                                   _%target4178841872%_
                                                   '()
                                                   '()
                                                   '()))
                                                (_%g4177441845%_
                                                 _%g4177541849%_)))))
                                      (_%g4177441845%_ _%g4177541849%_))))
                              (_%g4177441845%_ _%g4177541849%_))))
                      (_%g4177441845%_ _%g4177541849%_)))))
          (_%g4177342122%_ _%$stx41770%_))))
    (define |gerbil/core/more-sugar[:0:]#do-while|
      (lambda (_%$stx42130%_)
        (let* ((_%g4213442205%_
                (lambda (_%g4213542201%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4213542201%_)))
               (_%g4213342482%_
                (lambda (_%g4213542209%_)
                  (if (gx#stx-pair? _%g4213542209%_)
                      (let ((_%e4214242212%_ (gx#syntax-e _%g4213542209%_)))
                        (let ((_%hd4214342216%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4214242212%_)))
                              (_%tl4214442219%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4214242212%_))))
                          (if (gx#stx-pair? _%tl4214442219%_)
                              (let ((_%e4214542222%_
                                     (gx#syntax-e _%tl4214442219%_)))
                                (let ((_%hd4214642226%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4214542222%_)))
                                      (_%tl4214742229%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4214542222%_))))
                                  (if (gx#stx-pair/null? _%hd4214642226%_)
                                      (let ((_g45487_
                                             (gx#syntax-split-splice
                                              _%hd4214642226%_
                                              '0)))
                                        (begin
                                          (let ((_g45488_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45487_)
                                                       (##values-length
                                                        _g45487_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45488_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45488_)))
                                          (let ((_%target4214842232%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45487_ 0)))
                                                (_%tl4215042235%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45487_ 1))))
                                            (if (gx#stx-null? _%tl4215042235%_)
                                                (letrec ((_%loop4215142238%_
                                                          (lambda (_%hd4214942242%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%step4215542245%_
                           _%init4215642246%_
                           _%var4215742247%_)
                    (if (gx#stx-pair? _%hd4214942242%_)
                        (let ((_%e4215242249%_ (gx#syntax-e _%hd4214942242%_)))
                          (let ((_%lp-hd4215342253%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4215242249%_)))
                                (_%lp-tl4215442256%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4215242249%_))))
                            (if (gx#stx-pair? _%lp-hd4215342253%_)
                                (let ((_%e4216142259%_
                                       (gx#syntax-e _%lp-hd4215342253%_)))
                                  (let ((_%hd4216242263%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4216142259%_)))
                                        (_%tl4216342266%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4216142259%_))))
                                    (if (gx#stx-pair? _%tl4216342266%_)
                                        (let ((_%e4216442269%_
                                               (gx#syntax-e _%tl4216342266%_)))
                                          (let ((_%hd4216542273%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4216442269%_)))
                                                (_%tl4216642276%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4216442269%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl4216642276%_)
                                                (let ((_g45489_
                                                       (gx#syntax-split-splice
                                                        _%tl4216642276%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g45490_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g45489_)
                         (##values-length _g45489_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g45490_ 2)))
                  (error "Context expects 2 values" _g45490_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target4216742279%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g45489_
                                                              0)))
                                                          (_%tl4216942282%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g45489_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl4216942282%_)
                                                          (letrec ((_%loop4217042285%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd4216842289%_ _%step4217442292%_)
                              (if (gx#stx-pair? _%hd4216842289%_)
                                  (let ((_%e4217142294%_
                                         (gx#syntax-e _%hd4216842289%_)))
                                    (let ((_%lp-hd4217242298%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4217142294%_)))
                                          (_%lp-tl4217342301%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4217142294%_))))
                                      (_%loop4217042285%_
                                       _%lp-tl4217342301%_
                                       (cons _%lp-hd4217242298%_
                                             _%step4217442292%_))))
                                  (let ((_%step4217542304%_
                                         (reverse _%step4217442292%_)))
                                    (_%loop4215142238%_
                                     _%lp-tl4215442256%_
                                     (cons _%step4217542304%_
                                           _%step4215542245%_)
                                     (cons _%hd4216542273%_ _%init4215642246%_)
                                     (cons _%hd4216242263%_
                                           _%var4215742247%_)))))))
                    (_%loop4217042285%_ _%target4216742279%_ '()))
                  (_%g4213442205%_ _%g4213542209%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g4213442205%_
                                                 _%g4213542209%_))))
                                        (_%g4213442205%_ _%g4213542209%_))))
                                (_%g4213442205%_ _%g4213542209%_))))
                        (let ((_%step4215842307%_ (reverse _%step4215542245%_))
                              (_%init4215942309%_ (reverse _%init4215642246%_))
                              (_%var4216042310%_ (reverse _%var4215742247%_)))
                          (if (gx#stx-pair? _%tl4214742229%_)
                              (let ((_%e4217642312%_
                                     (gx#syntax-e _%tl4214742229%_)))
                                (let ((_%hd4217742316%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4217642312%_)))
                                      (_%tl4217842319%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4217642312%_))))
                                  (if (gx#stx-pair? _%hd4217742316%_)
                                      (let ((_%e4217942322%_
                                             (gx#syntax-e _%hd4217742316%_)))
                                        (let ((_%hd4218042326%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4217942322%_)))
                                              (_%tl4218142329%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4217942322%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4218142329%_)
                                              (let ((_g45491_
                                                     (gx#syntax-split-splice
                                                      _%tl4218142329%_
                                                      '0)))
                                                (begin
                                                  (let ((_g45492_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g45491_)
                                                               (##values-length
                                                                _g45491_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g45492_ 2)))
                (error "Context expects 2 values" _g45492_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target4218242332%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45491_
                                                            0)))
                                                        (_%tl4218442335%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45491_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl4218442335%_)
                                                        (letrec ((_%loop4218542338%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd4218342342%_ _%fini4218942345%_)
                            (if (gx#stx-pair? _%hd4218342342%_)
                                (let ((_%e4218642347%_
                                       (gx#syntax-e _%hd4218342342%_)))
                                  (let ((_%lp-hd4218742351%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4218642347%_)))
                                        (_%lp-tl4218842354%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4218642347%_))))
                                    (_%loop4218542338%_
                                     _%lp-tl4218842354%_
                                     (cons _%lp-hd4218742351%_
                                           _%fini4218942345%_))))
                                (let ((_%fini4219042357%_
                                       (reverse _%fini4218942345%_)))
                                  (if (gx#stx-pair/null? _%tl4217842319%_)
                                      (let ((_g45493_
                                             (gx#syntax-split-splice
                                              _%tl4217842319%_
                                              '0)))
                                        (begin
                                          (let ((_g45494_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45493_)
                                                       (##values-length
                                                        _g45493_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45494_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45494_)))
                                          (let ((_%target4219142360%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45493_ 0)))
                                                (_%tl4219342363%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45493_ 1))))
                                            (if (gx#stx-null? _%tl4219342363%_)
                                                (letrec ((_%loop4219442366%_
                                                          (lambda (_%hd4219242370%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4219842373%_)
                    (if (gx#stx-pair? _%hd4219242370%_)
                        (let ((_%e4219542375%_ (gx#syntax-e _%hd4219242370%_)))
                          (let ((_%lp-hd4219642379%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4219542375%_)))
                                (_%lp-tl4219742382%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4219542375%_))))
                            (_%loop4219442366%_
                             _%lp-tl4219742382%_
                             (cons _%lp-hd4219642379%_ _%body4219842373%_))))
                        (let ((_%body4219942385%_
                               (reverse _%body4219842373%_)))
                          ((lambda (_%g4213642388%_
                                    _%g4213742390%_
                                    _%g4213842391%_
                                    _%g4213942392%_
                                    _%g4214042393%_
                                    _%g4214142394%_)
                             (if (gx#stx-andmap
                                  gx#identifier?
                                  (foldr (lambda (_%g4242742430%_
                                                  _%g4242842433%_)
                                           (cons _%g4242742430%_
                                                 _%g4242842433%_))
                                         '()
                                         _%g4214142394%_))
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (gx#datum->syntax '#f '$loop)
                                             (cons (begin
                                                     (gx#syntax-check-splice-targets
                                                      _%g4214042393%_
                                                      _%g4214142394%_)
                                                     (foldr (lambda (_%g4243542448%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g4243642451%_
                             _%g4243742453%_)
                      (cons (cons _%g4243642451%_ (cons _%g4243542448%_ '()))
                            _%g4243742453%_))
                    '()
                    _%g4214042393%_
                    _%g4214142394%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (foldr (lambda (_%g4243842456%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g4243942459%_)
                    (cons _%g4243842456%_ _%g4243942459%_))
                  (cons (cons (gx#datum->syntax '#f 'if)
                              (cons _%g4213842391%_
                                    (cons (cons (gx#datum->syntax '#f '$loop)
                                                (begin
                                                  (gx#syntax-check-splice-targets
                                                   _%g4213942392%_
                                                   _%g4214142394%_)
                                                  (foldr (lambda (_%g4244042462%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g4244142465%_
                          _%g4244242467%_)
                   (cons (cons (gx#datum->syntax '#f 'begin)
                               (cons _%g4244142465%_
                                     (foldr (lambda (_%g4244342470%_
                                                     _%g4244442473%_)
                                              (cons _%g4244342470%_
                                                    _%g4244442473%_))
                                            '()
                                            _%g4244042462%_)))
                         _%g4244242467%_))
                 '()
                 _%g4213942392%_
                 _%g4214142394%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'begin)
                                                      (cons '#!void
                                                            (foldr (lambda (_%g4244542476%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g4244642479%_)
                             (cons _%g4244542476%_ _%g4244642479%_))
                           '()
                           _%g4213742390%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                        '())
                  _%g4213642388%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (_%g4213442205%_ _%g4213542209%_)))
                           _%body4219942385%_
                           _%fini4219042357%_
                           _%hd4218042326%_
                           _%step4215842307%_
                           _%init4215942309%_
                           _%var4216042310%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4219442366%_
                                                   _%target4219142360%_
                                                   '()))
                                                (_%g4213442205%_
                                                 _%g4213542209%_)))))
                                      (_%g4213442205%_ _%g4213542209%_)))))))
                  (_%loop4218542338%_ _%target4218242332%_ '()))
                (_%g4213442205%_ _%g4213542209%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4213442205%_
                                               _%g4213542209%_))))
                                      (_%g4213442205%_ _%g4213542209%_))))
                              (_%g4213442205%_ _%g4213542209%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4215142238%_
                                                   _%target4214842232%_
                                                   '()
                                                   '()
                                                   '()))
                                                (_%g4213442205%_
                                                 _%g4213542209%_)))))
                                      (_%g4213442205%_ _%g4213542209%_))))
                              (_%g4213442205%_ _%g4213542209%_))))
                      (_%g4213442205%_ _%g4213542209%_)))))
          (_%g4213342482%_ _%$stx42130%_))))
    (define |gerbil/core/more-sugar[:0:]#while|
      (lambda (_%$stx42490%_)
        (let* ((_%g4249442518%_
                (lambda (_%g4249542514%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4249542514%_)))
               (_%g4249342601%_
                (lambda (_%g4249542522%_)
                  (if (gx#stx-pair? _%g4249542522%_)
                      (let ((_%e4249842525%_ (gx#syntax-e _%g4249542522%_)))
                        (let ((_%hd4249942529%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4249842525%_)))
                              (_%tl4250042532%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4249842525%_))))
                          (if (gx#stx-pair? _%tl4250042532%_)
                              (let ((_%e4250142535%_
                                     (gx#syntax-e _%tl4250042532%_)))
                                (let ((_%hd4250242539%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4250142535%_)))
                                      (_%tl4250342542%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4250142535%_))))
                                  (if (gx#stx-pair/null? _%tl4250342542%_)
                                      (let ((_g45495_
                                             (gx#syntax-split-splice
                                              _%tl4250342542%_
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
                                          (let ((_%target4250442545%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45495_ 0)))
                                                (_%tl4250642548%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45495_ 1))))
                                            (if (gx#stx-null? _%tl4250642548%_)
                                                (letrec ((_%loop4250742551%_
                                                          (lambda (_%hd4250542555%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4251142558%_)
                    (if (gx#stx-pair? _%hd4250542555%_)
                        (let ((_%e4250842560%_ (gx#syntax-e _%hd4250542555%_)))
                          (let ((_%lp-hd4250942564%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4250842560%_)))
                                (_%lp-tl4251042567%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4250842560%_))))
                            (_%loop4250742551%_
                             _%lp-tl4251042567%_
                             (cons _%lp-hd4250942564%_ _%body4251142558%_))))
                        (let ((_%body4251242570%_
                               (reverse _%body4251142558%_)))
                          ((lambda (_%g4249642573%_ _%g4249742575%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (gx#datum->syntax '#f 'lp)
                                         (cons '()
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'when)
                                                           (cons _%g4249742575%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g4259242595%_ _%g4259342598%_)
                                  (cons _%g4259242595%_ _%g4259342598%_))
                                (cons (cons (gx#datum->syntax '#f 'lp) '())
                                      '())
                                _%g4249642573%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                           _%body4251242570%_
                           _%hd4250242539%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4250742551%_
                                                   _%target4250442545%_
                                                   '()))
                                                (_%g4249442518%_
                                                 _%g4249542522%_)))))
                                      (_%g4249442518%_ _%g4249542522%_))))
                              (_%g4249442518%_ _%g4249542522%_))))
                      (_%g4249442518%_ _%g4249542522%_)))))
          (_%g4249342601%_ _%$stx42490%_))))
    (define |gerbil/core/more-sugar[:0:]#until|
      (lambda (_%$stx42606%_)
        (let* ((_%g4261042634%_
                (lambda (_%g4261142630%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4261142630%_)))
               (_%g4260942717%_
                (lambda (_%g4261142638%_)
                  (if (gx#stx-pair? _%g4261142638%_)
                      (let ((_%e4261442641%_ (gx#syntax-e _%g4261142638%_)))
                        (let ((_%hd4261542645%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4261442641%_)))
                              (_%tl4261642648%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4261442641%_))))
                          (if (gx#stx-pair? _%tl4261642648%_)
                              (let ((_%e4261742651%_
                                     (gx#syntax-e _%tl4261642648%_)))
                                (let ((_%hd4261842655%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4261742651%_)))
                                      (_%tl4261942658%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4261742651%_))))
                                  (if (gx#stx-pair/null? _%tl4261942658%_)
                                      (let ((_g45497_
                                             (gx#syntax-split-splice
                                              _%tl4261942658%_
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
                                          (let ((_%target4262042661%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45497_ 0)))
                                                (_%tl4262242664%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45497_ 1))))
                                            (if (gx#stx-null? _%tl4262242664%_)
                                                (letrec ((_%loop4262342667%_
                                                          (lambda (_%hd4262142671%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4262742674%_)
                    (if (gx#stx-pair? _%hd4262142671%_)
                        (let ((_%e4262442676%_ (gx#syntax-e _%hd4262142671%_)))
                          (let ((_%lp-hd4262542680%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4262442676%_)))
                                (_%lp-tl4262642683%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4262442676%_))))
                            (_%loop4262342667%_
                             _%lp-tl4262642683%_
                             (cons _%lp-hd4262542680%_ _%body4262742674%_))))
                        (let ((_%body4262842686%_
                               (reverse _%body4262742674%_)))
                          ((lambda (_%g4261242689%_ _%g4261342691%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (gx#datum->syntax '#f 'lp)
                                         (cons '()
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'unless)
                                                           (cons _%g4261342691%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g4270842711%_ _%g4270942714%_)
                                  (cons _%g4270842711%_ _%g4270942714%_))
                                (cons (cons (gx#datum->syntax '#f 'lp) '())
                                      '())
                                _%g4261242689%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                           _%body4262842686%_
                           _%hd4261842655%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4262342667%_
                                                   _%target4262042661%_
                                                   '()))
                                                (_%g4261042634%_
                                                 _%g4261142638%_)))))
                                      (_%g4261042634%_ _%g4261142638%_))))
                              (_%g4261042634%_ _%g4261142638%_))))
                      (_%g4261042634%_ _%g4261142638%_)))))
          (_%g4260942717%_ _%$stx42606%_))))
    (define |gerbil/core/more-sugar[:0:]#catch|
      (lambda (_%$stx42722%_)
        (let ((_%g4272542732%_
               (lambda (_%g4272642728%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4272642728%_))))
          (_%g4272542732%_ _%$stx42722%_))))
    (define |gerbil/core/more-sugar[:0:]#finally|
      (lambda (_%$stx42736%_)
        (let ((_%g4273942746%_
               (lambda (_%g4274042742%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4274042742%_))))
          (_%g4273942746%_ _%$stx42736%_))))
    (define |gerbil/core/more-sugar[:0:]#try|
      (lambda (_%stx42750%_)
        (letrec ((_%generate-thunk42753%_
                  (lambda (_%body44072%_)
                    (if (null? _%body44072%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; missing body"
                         _%stx42750%_)
                        (let* ((_%g4407544092%_
                                (lambda (_%g4407644088%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g4407644088%_)))
                               (_%g4407444151%_
                                (lambda (_%g4407644096%_)
                                  (if (gx#stx-pair/null? _%g4407644096%_)
                                      (let ((_g45499_
                                             (gx#syntax-split-splice
                                              _%g4407644096%_
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
                                          (let ((_%target4407844099%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45499_ 0)))
                                                (_%tl4408044102%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45499_ 1))))
                                            (if (gx#stx-null? _%tl4408044102%_)
                                                (letrec ((_%loop4408144105%_
                                                          (lambda (_%hd4407944109%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%e4408544112%_)
                    (if (gx#stx-pair? _%hd4407944109%_)
                        (let ((_%e4408244114%_ (gx#syntax-e _%hd4407944109%_)))
                          (let ((_%lp-hd4408344118%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4408244114%_)))
                                (_%lp-tl4408444121%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4408244114%_))))
                            (_%loop4408144105%_
                             _%lp-tl4408444121%_
                             (cons _%lp-hd4408344118%_ _%e4408544112%_))))
                        (let ((_%e4408644124%_ (reverse _%e4408544112%_)))
                          ((lambda (_%g4407744127%_)
                             (cons (gx#datum->syntax '#f 'lambda)
                                   (cons '()
                                         (foldr (lambda (_%g4414244145%_
                                                         _%g4414344148%_)
                                                  (cons _%g4414244145%_
                                                        _%g4414344148%_))
                                                '()
                                                _%g4407744127%_))))
                           _%e4408644124%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4408144105%_
                                                   _%target4407844099%_
                                                   '()))
                                                (_%g4407544092%_
                                                 _%g4407644096%_)))))
                                      (_%g4407544092%_ _%g4407644096%_)))))
                          (_%g4407444151%_ (reverse _%body44072%_))))))
                 (_%generate-fini42755%_
                  (lambda (_%thunk43955%_ _%fini43957%_)
                    (let* ((_%g4395943983%_
                            (lambda (_%g4396043979%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4396043979%_)))
                           (_%g4395844068%_
                            (lambda (_%g4396043987%_)
                              (if (gx#stx-pair? _%g4396043987%_)
                                  (let ((_%e4396343990%_
                                         (gx#syntax-e _%g4396043987%_)))
                                    (let ((_%hd4396443994%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4396343990%_)))
                                          (_%tl4396543997%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4396343990%_))))
                                      (if (gx#stx-pair? _%tl4396543997%_)
                                          (let ((_%e4396644000%_
                                                 (gx#syntax-e
                                                  _%tl4396543997%_)))
                                            (let ((_%hd4396744004%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4396644000%_)))
                                                  (_%tl4396844007%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4396644000%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd4396744004%_)
                                                  (let ((_g45501_
                                                         (gx#syntax-split-splice
                                                          _%hd4396744004%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g45502_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g45501_)
                           (##values-length _g45501_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g45502_ 2)))
                    (error "Context expects 2 values" _g45502_)))
              (let ((_%target4396944010%_
                     (let () (declare (not safe)) (##values-ref _g45501_ 0)))
                    (_%tl4397144013%_
                     (let () (declare (not safe)) (##values-ref _g45501_ 1))))
                (if (gx#stx-null? _%tl4397144013%_)
                    (letrec ((_%loop4397244016%_
                              (lambda (_%hd4397044020%_ _%e4397644023%_)
                                (if (gx#stx-pair? _%hd4397044020%_)
                                    (let ((_%e4397344025%_
                                           (gx#syntax-e _%hd4397044020%_)))
                                      (let ((_%lp-hd4397444029%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4397344025%_)))
                                            (_%lp-tl4397544032%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4397344025%_))))
                                        (_%loop4397244016%_
                                         _%lp-tl4397544032%_
                                         (cons _%lp-hd4397444029%_
                                               _%e4397644023%_))))
                                    (let ((_%e4397744035%_
                                           (reverse _%e4397644023%_)))
                                      (if (gx#stx-null? _%tl4396844007%_)
                                          ((lambda (_%g4396144038%_
                                                    _%g4396244040%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'with-unwind-protect)
                                                   (cons _%g4396244040%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'lambda)
                             (cons '()
                                   (foldr (lambda (_%g4405944062%_
                                                   _%g4406044065%_)
                                            (cons _%g4405944062%_
                                                  _%g4406044065%_))
                                          '()
                                          _%g4396144038%_)))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%e4397744035%_
                                           _%hd4396443994%_)
                                          (_%g4395943983%_
                                           _%g4396043987%_)))))))
                      (_%loop4397244016%_ _%target4396944010%_ '()))
                    (_%g4395943983%_ _%g4396043987%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4395943983%_
                                                   _%g4396043987%_))))
                                          (_%g4395943983%_ _%g4396043987%_))))
                                  (_%g4395943983%_ _%g4396043987%_)))))
                      (_%g4395844068%_ (list _%thunk43955%_ _%fini43957%_)))))
                 (_%generate-catch42756%_
                  (lambda (_%handlers43370%_ _%thunk43372%_)
                    (let* ((_%g4337443382%_
                            (lambda (_%g4337543378%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4337543378%_)))
                           (_%g4337343951%_
                            (lambda (_%g4337543386%_)
                              ((lambda (_%g4337643389%_)
                                 (let _%lp43401%_ ((_%rest43404%_
                                                    _%handlers43370%_)
                                                   (_%clauses43406%_ '()))
                                   (let* ((_%rest4340743415%_ _%rest43404%_)
                                          (_%else4340943546%_
                                           (lambda ()
                                             (let* ((_%g4342743451%_
                                                     (lambda (_%g4342843447%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g4342843447%_)))
                                                    (_%g4342643542%_
                                                     (lambda (_%g4342843455%_)
                                                       (if (gx#stx-pair?
                                                            _%g4342843455%_)
                                                           (let ((_%e4343143458%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%g4342843455%_)))
                     (let ((_%hd4343243462%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4343143458%_)))
                           (_%tl4343343465%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4343143458%_))))
                       (if (gx#stx-pair/null? _%hd4343243462%_)
                           (let ((_g45503_
                                  (gx#syntax-split-splice
                                   _%hd4343243462%_
                                   '0)))
                             (begin
                               (let ((_g45504_
                                      (let ()
                                        (declare (not safe))
                                        (if (##values? _g45503_)
                                            (##values-length _g45503_)
                                            1))))
                                 (if (not (let ()
                                            (declare (not safe))
                                            (##fx= _g45504_ 2)))
                                     (error "Context expects 2 values"
                                            _g45504_)))
                               (let ((_%target4343443468%_
                                      (let ()
                                        (declare (not safe))
                                        (##values-ref _g45503_ 0)))
                                     (_%tl4343643471%_
                                      (let ()
                                        (declare (not safe))
                                        (##values-ref _g45503_ 1))))
                                 (if (gx#stx-null? _%tl4343643471%_)
                                     (letrec ((_%loop4343743474%_
                                               (lambda (_%hd4343543478%_
                                                        _%clause4344143481%_)
                                                 (if (gx#stx-pair?
                                                      _%hd4343543478%_)
                                                     (let ((_%e4343843483%_
                                                            (gx#syntax-e
                                                             _%hd4343543478%_)))
                                                       (let ((_%lp-hd4343943487%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e4343843483%_)))
                     (_%lp-tl4344043490%_
                      (let () (declare (not safe)) (##cdr _%e4343843483%_))))
                 (_%loop4343743474%_
                  _%lp-tl4344043490%_
                  (cons _%lp-hd4343943487%_ _%clause4344143481%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%clause4344243493%_
                                                            (reverse _%clause4344143481%_)))
                                                       (if (gx#stx-pair?
                                                            _%tl4343343465%_)
                                                           (let ((_%e4344343496%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl4343343465%_)))
                     (let ((_%hd4344443500%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4344343496%_)))
                           (_%tl4344543503%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4344343496%_))))
                       (if (gx#stx-null? _%tl4344543503%_)
                           ((lambda (_%g4342943506%_ _%g4343043508%_)
                              (cons (gx#datum->syntax '#f 'with-catch)
                                    (cons (cons (gx#datum->syntax '#f 'lambda)
                                                (cons (cons _%g4337643389%_
                                                            '())
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'cond)
                          (foldr (lambda (_%g4353343536%_ _%g4353443539%_)
                                   (cons _%g4353343536%_ _%g4353443539%_))
                                 (cons (cons (gx#datum->syntax '#f 'else)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'raise)
                                                         (cons _%g4337643389%_
                                                               '()))
                                                   '()))
                                       '())
                                 _%g4343043508%_))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons _%g4342943506%_ '()))))
                            _%hd4344443500%_
                            _%clause4344243493%_)
                           (_%g4342743451%_ _%g4342843455%_))))
                   (_%g4342743451%_ _%g4342843455%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%loop4343743474%_
                                        _%target4343443468%_
                                        '()))
                                     (_%g4342743451%_ _%g4342843455%_)))))
                           (_%g4342743451%_ _%g4342843455%_))))
                   (_%g4342743451%_ _%g4342843455%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g4342643542%_
                                                (list _%clauses43406%_
                                                      _%thunk43372%_)))))
                                          (_%K4341143935%_
                                           (lambda (_%rest43550%_ _%hd43552%_)
                                             (let* ((_%__stx4522345224%_
                                                     _%hd43552%_)
                                                    (_%g4355743627%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx4522345224%_))))
                                               (let ((_%__kont4522645227%_
                                                      (lambda (_%g4355943914%_
                                                               _%g4356043916%_)
                                                        (_%lp43401%_
                                                         _%rest43550%_
                                                         (cons (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '#f
                                          '?)
                                         (cons _%g4356043916%_ '()))
                                   (cons _%g4337643389%_ '()))
                             (cons (gx#datum->syntax '#f '=>)
                                   (cons _%g4355943914%_ '())))
                       _%clauses43406%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont4522845229%_
                                                      (lambda (_%g4357043846%_
                                                               _%g4357143848%_
                                                               _%g4357243849%_)
                                                        (_%lp43401%_
                                                         _%rest43550%_
                                                         (cons (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '#f
                                          '?)
                                         (cons _%g4357243849%_ '()))
                                   (cons _%g4337643389%_ '()))
                             (cons (cons (gx#datum->syntax '#f 'let)
                                         (cons (cons (cons _%g4357143848%_
                                                           (cons _%g4337643389%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (foldr (lambda (_%g4386843871%_
                                                               _%g4386943874%_)
                                                        (cons _%g4386843871%_
                                                              _%g4386943874%_))
                                                      '()
                                                      _%g4357043846%_)))
                                   '()))
                       _%clauses43406%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont4523245233%_
                                                      (lambda (_%g4359143754%_
                                                               _%g4359243756%_)
                                                        (_%lp43401%_
                                                         _%rest43550%_
                                                         (cons (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'let)
                                         (cons (cons (cons _%g4359243756%_
                                                           (cons _%g4337643389%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (foldr (lambda (_%g4377243775%_
                                                               _%g4377343778%_)
                                                        (cons _%g4377243775%_
                                                              _%g4377343778%_))
                                                      '()
                                                      _%g4359143754%_)))
                                   '()))
                       _%clauses43406%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont4523645237%_
                                                      (lambda (_%g4360843672%_
                                                               _%g4360943674%_)
                                                        (_%lp43401%_
                                                         _%rest43550%_
                                                         (cons (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'begin)
                                         (foldr (lambda (_%g4369043693%_
                                                         _%g4369143696%_)
                                                  (cons _%g4369043693%_
                                                        _%g4369143696%_))
                                                '()
                                                _%g4360843672%_))
                                   '()))
                       _%clauses43406%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let* ((_%__match4532845329%_
                                                         (lambda (_%e4361043634%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%hd4361143638%_
                          _%tl4361243641%_
                          _%__splice4523845239%_
                          _%target4361343644%_
                          _%tl4361543647%_)
                   (letrec ((_%loop4361643650%_
                             (lambda (_%hd4361443654%_ _%body4362043657%_)
                               (if (gx#stx-pair? _%hd4361443654%_)
                                   (let ((_%e4361743659%_
                                          (gx#syntax-e _%hd4361443654%_)))
                                     (let ((_%lp-tl4361943666%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4361743659%_)))
                                           (_%lp-hd4361843663%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4361743659%_))))
                                       (_%loop4361643650%_
                                        _%lp-tl4361943666%_
                                        (cons _%lp-hd4361843663%_
                                              _%body4362043657%_))))
                                   (let ((_%body4362143669%_
                                          (reverse _%body4362043657%_)))
                                     (let ((_%g4360843672%_ _%body4362143669%_)
                                           (_%g4360943674%_ _%hd4361143638%_))
                                       (if (gx#underscore? _%g4360943674%_)
                                           (_%__kont4523645237%_
                                            _%g4360843672%_
                                            _%g4360943674%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g4355743627%_)))))))))
                     (_%loop4361643650%_ _%target4361343644%_ '()))))
                (_%__match4531445315%_
                 (lambda (_%e4359343706%_
                          _%hd4359443710%_
                          _%tl4359543713%_
                          _%e4359643716%_
                          _%hd4359743720%_
                          _%tl4359843723%_
                          _%__splice4523445235%_
                          _%target4359943726%_
                          _%tl4360143729%_)
                   (letrec ((_%loop4360243732%_
                             (lambda (_%hd4360043736%_ _%body4360643739%_)
                               (if (gx#stx-pair? _%hd4360043736%_)
                                   (let ((_%e4360343741%_
                                          (gx#syntax-e _%hd4360043736%_)))
                                     (let ((_%lp-tl4360543748%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4360343741%_)))
                                           (_%lp-hd4360443745%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4360343741%_))))
                                       (_%loop4360243732%_
                                        _%lp-tl4360543748%_
                                        (cons _%lp-hd4360443745%_
                                              _%body4360643739%_))))
                                   (let ((_%body4360743751%_
                                          (reverse _%body4360643739%_)))
                                     (let ((_%g4359143754%_ _%body4360743751%_)
                                           (_%g4359243756%_ _%hd4359743720%_))
                                       (if (gx#identifier? _%g4359243756%_)
                                           (_%__kont4523245233%_
                                            _%g4359143754%_
                                            _%g4359243756%_)
                                           (_%__match4532845329%_
                                            _%e4359343706%_
                                            _%hd4359443710%_
                                            _%tl4359543713%_
                                            _%__splice4523445235%_
                                            _%target4359943726%_
                                            _%tl4360143729%_))))))))
                     (_%loop4360243732%_ _%target4359943726%_ '()))))
                (_%__match4529245293%_
                 (lambda (_%e4357343788%_
                          _%hd4357443792%_
                          _%tl4357543795%_
                          _%e4357643798%_
                          _%hd4357743802%_
                          _%tl4357843805%_
                          _%e4357943808%_
                          _%hd4358043812%_
                          _%tl4358143815%_
                          _%__splice4523045231%_
                          _%target4358243818%_
                          _%tl4358443821%_)
                   (letrec ((_%loop4358543824%_
                             (lambda (_%hd4358343828%_ _%body4358943831%_)
                               (if (gx#stx-pair? _%hd4358343828%_)
                                   (let ((_%e4358643833%_
                                          (gx#syntax-e _%hd4358343828%_)))
                                     (let ((_%lp-tl4358843840%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4358643833%_)))
                                           (_%lp-hd4358743837%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4358643833%_))))
                                       (_%loop4358543824%_
                                        _%lp-tl4358843840%_
                                        (cons _%lp-hd4358743837%_
                                              _%body4358943831%_))))
                                   (let ((_%body4359043843%_
                                          (reverse _%body4358943831%_)))
                                     (let ((_%g4357043846%_ _%body4359043843%_)
                                           (_%g4357143848%_ _%hd4358043812%_)
                                           (_%g4357243849%_ _%hd4357743802%_))
                                       (if (gx#identifier? _%g4357143848%_)
                                           (_%__kont4522845229%_
                                            _%g4357043846%_
                                            _%g4357143848%_
                                            _%g4357243849%_)
                                           (_%__match4532845329%_
                                            _%e4357343788%_
                                            _%hd4357443792%_
                                            _%tl4357543795%_
                                            _%__splice4523045231%_
                                            _%target4358243818%_
                                            _%tl4358443821%_))))))))
                     (_%loop4358543824%_ _%target4358243818%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair?
                                                        _%__stx4522345224%_)
                                                       (let ((_%e4356143884%_
                                                              (gx#syntax-e
                                                               _%__stx4522345224%_)))
                                                         (let ((_%tl4356343891%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e4356143884%_)))
                       (_%hd4356243888%_
                        (let () (declare (not safe)) (##car _%e4356143884%_))))
                   (if (gx#stx-pair? _%tl4356343891%_)
                       (let ((_%e4356443894%_ (gx#syntax-e _%tl4356343891%_)))
                         (let ((_%tl4356643901%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4356443894%_)))
                               (_%hd4356543898%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4356443894%_))))
                           (if (gx#identifier? _%hd4356543898%_)
                               (if (gx#free-identifier=?
                                    |gerbil/core/more-sugar[1]#_g45505_|
                                    _%hd4356543898%_)
                                   (if (gx#stx-pair? _%tl4356643901%_)
                                       (let ((_%e4356743904%_
                                              (gx#syntax-e _%tl4356643901%_)))
                                         (let ((_%tl4356943911%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4356743904%_)))
                                               (_%hd4356843908%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4356743904%_))))
                                           (if (gx#stx-null? _%tl4356943911%_)
                                               (_%__kont4522645227%_
                                                _%hd4356843908%_
                                                _%hd4356243888%_)
                                               (if (gx#stx-pair?
                                                    _%hd4356243888%_)
                                                   (let ((_%e4357643798%_
                                                          (gx#syntax-e
                                                           _%hd4356243888%_)))
                                                     (let ((_%tl4357843805%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e4357643798%_)))
                                                           (_%hd4357743802%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e4357643798%_))))
                                                       (if (gx#stx-pair?
                                                            _%tl4357843805%_)
                                                           (let ((_%e4357943808%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl4357843805%_)))
                     (let ((_%tl4358143815%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4357943808%_)))
                           (_%hd4358043812%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4357943808%_))))
                       (if (gx#stx-null? _%tl4358143815%_)
                           (if (gx#stx-pair/null? _%tl4356343891%_)
                               (let ((_%__splice4523045231%_
                                      (gx#syntax-split-splice->vector
                                       _%tl4356343891%_
                                       '0)))
                                 (let ((_%tl4358443821%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4523045231%_
                                           '1)))
                                       (_%target4358243818%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4523045231%_
                                           '0))))
                                   (if (gx#stx-null? _%tl4358443821%_)
                                       (_%__match4529245293%_
                                        _%e4356143884%_
                                        _%hd4356243888%_
                                        _%tl4356343891%_
                                        _%e4357643798%_
                                        _%hd4357743802%_
                                        _%tl4357843805%_
                                        _%e4357943808%_
                                        _%hd4358043812%_
                                        _%tl4358143815%_
                                        _%__splice4523045231%_
                                        _%target4358243818%_
                                        _%tl4358443821%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4355743627%_)))))
                               (let () (declare (not safe)) (_%g4355743627%_)))
                           (if (gx#stx-pair/null? _%tl4356343891%_)
                               (let ((_%__splice4523845239%_
                                      (gx#syntax-split-splice->vector
                                       _%tl4356343891%_
                                       '0)))
                                 (let ((_%tl4361543647%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4523845239%_
                                           '1)))
                                       (_%target4361343644%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4523845239%_
                                           '0))))
                                   (if (gx#stx-null? _%tl4361543647%_)
                                       (_%__match4532845329%_
                                        _%e4356143884%_
                                        _%hd4356243888%_
                                        _%tl4356343891%_
                                        _%__splice4523845239%_
                                        _%target4361343644%_
                                        _%tl4361543647%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4355743627%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g4355743627%_))))))
                   (if (gx#stx-null? _%tl4357843805%_)
                       (if (gx#stx-pair/null? _%tl4356343891%_)
                           (let ((_%__splice4523445235%_
                                  (gx#syntax-split-splice->vector
                                   _%tl4356343891%_
                                   '0)))
                             (let ((_%tl4360143729%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice4523445235%_
                                       '1)))
                                   (_%target4359943726%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice4523445235%_
                                       '0))))
                               (if (gx#stx-null? _%tl4360143729%_)
                                   (_%__match4531445315%_
                                    _%e4356143884%_
                                    _%hd4356243888%_
                                    _%tl4356343891%_
                                    _%e4357643798%_
                                    _%hd4357743802%_
                                    _%tl4357843805%_
                                    _%__splice4523445235%_
                                    _%target4359943726%_
                                    _%tl4360143729%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g4355743627%_)))))
                           (let () (declare (not safe)) (_%g4355743627%_)))
                       (if (gx#stx-pair/null? _%tl4356343891%_)
                           (let ((_%__splice4523845239%_
                                  (gx#syntax-split-splice->vector
                                   _%tl4356343891%_
                                   '0)))
                             (let ((_%tl4361543647%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice4523845239%_
                                       '1)))
                                   (_%target4361343644%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice4523845239%_
                                       '0))))
                               (if (gx#stx-null? _%tl4361543647%_)
                                   (_%__match4532845329%_
                                    _%e4356143884%_
                                    _%hd4356243888%_
                                    _%tl4356343891%_
                                    _%__splice4523845239%_
                                    _%target4361343644%_
                                    _%tl4361543647%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g4355743627%_)))))
                           (let () (declare (not safe)) (_%g4355743627%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _%tl4356343891%_)
                                                       (let ((_%__splice4523845239%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4356343891%_
                                                               '0)))
                                                         (let ((_%tl4361543647%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4523845239%_ '1)))
                       (_%target4361343644%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4523845239%_ '0))))
                   (if (gx#stx-null? _%tl4361543647%_)
                       (_%__match4532845329%_
                        _%e4356143884%_
                        _%hd4356243888%_
                        _%tl4356343891%_
                        _%__splice4523845239%_
                        _%target4361343644%_
                        _%tl4361543647%_)
                       (let () (declare (not safe)) (_%g4355743627%_)))))
               (let () (declare (not safe)) (_%g4355743627%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (gx#stx-pair? _%hd4356243888%_)
                                           (let ((_%e4357643798%_
                                                  (gx#syntax-e
                                                   _%hd4356243888%_)))
                                             (let ((_%tl4357843805%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e4357643798%_)))
                                                   (_%hd4357743802%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e4357643798%_))))
                                               (if (gx#stx-pair?
                                                    _%tl4357843805%_)
                                                   (let ((_%e4357943808%_
                                                          (gx#syntax-e
                                                           _%tl4357843805%_)))
                                                     (let ((_%tl4358143815%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e4357943808%_)))
                                                           (_%hd4358043812%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e4357943808%_))))
                                                       (if (gx#stx-null?
                                                            _%tl4358143815%_)
                                                           (if (gx#stx-pair/null?
                                                                _%tl4356343891%_)
                                                               (let ((_%__splice4523045231%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-split-splice->vector
                               _%tl4356343891%_
                               '0)))
                         (let ((_%tl4358443821%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4523045231%_ '1)))
                               (_%target4358243818%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4523045231%_ '0))))
                           (if (gx#stx-null? _%tl4358443821%_)
                               (_%__match4529245293%_
                                _%e4356143884%_
                                _%hd4356243888%_
                                _%tl4356343891%_
                                _%e4357643798%_
                                _%hd4357743802%_
                                _%tl4357843805%_
                                _%e4357943808%_
                                _%hd4358043812%_
                                _%tl4358143815%_
                                _%__splice4523045231%_
                                _%target4358243818%_
                                _%tl4358443821%_)
                               (let ()
                                 (declare (not safe))
                                 (_%g4355743627%_)))))
                       (let () (declare (not safe)) (_%g4355743627%_)))
                   (if (gx#stx-pair/null? _%tl4356343891%_)
                       (let ((_%__splice4523845239%_
                              (gx#syntax-split-splice->vector
                               _%tl4356343891%_
                               '0)))
                         (let ((_%tl4361543647%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4523845239%_ '1)))
                               (_%target4361343644%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4523845239%_ '0))))
                           (if (gx#stx-null? _%tl4361543647%_)
                               (_%__match4532845329%_
                                _%e4356143884%_
                                _%hd4356243888%_
                                _%tl4356343891%_
                                _%__splice4523845239%_
                                _%target4361343644%_
                                _%tl4361543647%_)
                               (let ()
                                 (declare (not safe))
                                 (_%g4355743627%_)))))
                       (let () (declare (not safe)) (_%g4355743627%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-null?
                                                        _%tl4357843805%_)
                                                       (if (gx#stx-pair/null?
                                                            _%tl4356343891%_)
                                                           (let ((_%__splice4523445235%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice->vector
                           _%tl4356343891%_
                           '0)))
                     (let ((_%tl4360143729%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4523445235%_ '1)))
                           (_%target4359943726%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4523445235%_ '0))))
                       (if (gx#stx-null? _%tl4360143729%_)
                           (_%__match4531445315%_
                            _%e4356143884%_
                            _%hd4356243888%_
                            _%tl4356343891%_
                            _%e4357643798%_
                            _%hd4357743802%_
                            _%tl4357843805%_
                            _%__splice4523445235%_
                            _%target4359943726%_
                            _%tl4360143729%_)
                           (let () (declare (not safe)) (_%g4355743627%_)))))
                   (let () (declare (not safe)) (_%g4355743627%_)))
               (if (gx#stx-pair/null? _%tl4356343891%_)
                   (let ((_%__splice4523845239%_
                          (gx#syntax-split-splice->vector
                           _%tl4356343891%_
                           '0)))
                     (let ((_%tl4361543647%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4523845239%_ '1)))
                           (_%target4361343644%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4523845239%_ '0))))
                       (if (gx#stx-null? _%tl4361543647%_)
                           (_%__match4532845329%_
                            _%e4356143884%_
                            _%hd4356243888%_
                            _%tl4356343891%_
                            _%__splice4523845239%_
                            _%target4361343644%_
                            _%tl4361543647%_)
                           (let () (declare (not safe)) (_%g4355743627%_)))))
                   (let () (declare (not safe)) (_%g4355743627%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (gx#stx-pair/null?
                                                _%tl4356343891%_)
                                               (let ((_%__splice4523845239%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl4356343891%_
                                                       '0)))
                                                 (let ((_%tl4361543647%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4523845239%_
                                                           '1)))
                                                       (_%target4361343644%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4523845239%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl4361543647%_)
                                                       (_%__match4532845329%_
                                                        _%e4356143884%_
                                                        _%hd4356243888%_
                                                        _%tl4356343891%_
                                                        _%__splice4523845239%_
                                                        _%target4361343644%_
                                                        _%tl4361543647%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g4355743627%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4355743627%_)))))
                                   (if (gx#stx-pair? _%hd4356243888%_)
                                       (let ((_%e4357643798%_
                                              (gx#syntax-e _%hd4356243888%_)))
                                         (let ((_%tl4357843805%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4357643798%_)))
                                               (_%hd4357743802%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4357643798%_))))
                                           (if (gx#stx-pair? _%tl4357843805%_)
                                               (let ((_%e4357943808%_
                                                      (gx#syntax-e
                                                       _%tl4357843805%_)))
                                                 (let ((_%tl4358143815%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e4357943808%_)))
                                                       (_%hd4358043812%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e4357943808%_))))
                                                   (if (gx#stx-null?
                                                        _%tl4358143815%_)
                                                       (if (gx#stx-pair/null?
                                                            _%tl4356343891%_)
                                                           (let ((_%__splice4523045231%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice->vector
                           _%tl4356343891%_
                           '0)))
                     (let ((_%tl4358443821%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4523045231%_ '1)))
                           (_%target4358243818%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4523045231%_ '0))))
                       (if (gx#stx-null? _%tl4358443821%_)
                           (_%__match4529245293%_
                            _%e4356143884%_
                            _%hd4356243888%_
                            _%tl4356343891%_
                            _%e4357643798%_
                            _%hd4357743802%_
                            _%tl4357843805%_
                            _%e4357943808%_
                            _%hd4358043812%_
                            _%tl4358143815%_
                            _%__splice4523045231%_
                            _%target4358243818%_
                            _%tl4358443821%_)
                           (let () (declare (not safe)) (_%g4355743627%_)))))
                   (let () (declare (not safe)) (_%g4355743627%_)))
               (if (gx#stx-pair/null? _%tl4356343891%_)
                   (let ((_%__splice4523845239%_
                          (gx#syntax-split-splice->vector
                           _%tl4356343891%_
                           '0)))
                     (let ((_%tl4361543647%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4523845239%_ '1)))
                           (_%target4361343644%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4523845239%_ '0))))
                       (if (gx#stx-null? _%tl4361543647%_)
                           (_%__match4532845329%_
                            _%e4356143884%_
                            _%hd4356243888%_
                            _%tl4356343891%_
                            _%__splice4523845239%_
                            _%target4361343644%_
                            _%tl4361543647%_)
                           (let () (declare (not safe)) (_%g4355743627%_)))))
                   (let () (declare (not safe)) (_%g4355743627%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-null?
                                                    _%tl4357843805%_)
                                                   (if (gx#stx-pair/null?
                                                        _%tl4356343891%_)
                                                       (let ((_%__splice4523445235%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4356343891%_
                                                               '0)))
                                                         (let ((_%tl4360143729%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4523445235%_ '1)))
                       (_%target4359943726%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4523445235%_ '0))))
                   (if (gx#stx-null? _%tl4360143729%_)
                       (_%__match4531445315%_
                        _%e4356143884%_
                        _%hd4356243888%_
                        _%tl4356343891%_
                        _%e4357643798%_
                        _%hd4357743802%_
                        _%tl4357843805%_
                        _%__splice4523445235%_
                        _%target4359943726%_
                        _%tl4360143729%_)
                       (let () (declare (not safe)) (_%g4355743627%_)))))
               (let () (declare (not safe)) (_%g4355743627%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _%tl4356343891%_)
                                                       (let ((_%__splice4523845239%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4356343891%_
                                                               '0)))
                                                         (let ((_%tl4361543647%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4523845239%_ '1)))
                       (_%target4361343644%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4523845239%_ '0))))
                   (if (gx#stx-null? _%tl4361543647%_)
                       (_%__match4532845329%_
                        _%e4356143884%_
                        _%hd4356243888%_
                        _%tl4356343891%_
                        _%__splice4523845239%_
                        _%target4361343644%_
                        _%tl4361543647%_)
                       (let () (declare (not safe)) (_%g4355743627%_)))))
               (let () (declare (not safe)) (_%g4355743627%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (gx#stx-pair/null? _%tl4356343891%_)
                                           (let ((_%__splice4523845239%_
                                                  (gx#syntax-split-splice->vector
                                                   _%tl4356343891%_
                                                   '0)))
                                             (let ((_%tl4361543647%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4523845239%_
                                                       '1)))
                                                   (_%target4361343644%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4523845239%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl4361543647%_)
                                                   (_%__match4532845329%_
                                                    _%e4356143884%_
                                                    _%hd4356243888%_
                                                    _%tl4356343891%_
                                                    _%__splice4523845239%_
                                                    _%target4361343644%_
                                                    _%tl4361543647%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4355743627%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4355743627%_)))))
                               (if (gx#stx-pair? _%hd4356243888%_)
                                   (let ((_%e4357643798%_
                                          (gx#syntax-e _%hd4356243888%_)))
                                     (let ((_%tl4357843805%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4357643798%_)))
                                           (_%hd4357743802%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4357643798%_))))
                                       (if (gx#stx-pair? _%tl4357843805%_)
                                           (let ((_%e4357943808%_
                                                  (gx#syntax-e
                                                   _%tl4357843805%_)))
                                             (let ((_%tl4358143815%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e4357943808%_)))
                                                   (_%hd4358043812%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e4357943808%_))))
                                               (if (gx#stx-null?
                                                    _%tl4358143815%_)
                                                   (if (gx#stx-pair/null?
                                                        _%tl4356343891%_)
                                                       (let ((_%__splice4523045231%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4356343891%_
                                                               '0)))
                                                         (let ((_%tl4358443821%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4523045231%_ '1)))
                       (_%target4358243818%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4523045231%_ '0))))
                   (if (gx#stx-null? _%tl4358443821%_)
                       (_%__match4529245293%_
                        _%e4356143884%_
                        _%hd4356243888%_
                        _%tl4356343891%_
                        _%e4357643798%_
                        _%hd4357743802%_
                        _%tl4357843805%_
                        _%e4357943808%_
                        _%hd4358043812%_
                        _%tl4358143815%_
                        _%__splice4523045231%_
                        _%target4358243818%_
                        _%tl4358443821%_)
                       (let () (declare (not safe)) (_%g4355743627%_)))))
               (let () (declare (not safe)) (_%g4355743627%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _%tl4356343891%_)
                                                       (let ((_%__splice4523845239%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4356343891%_
                                                               '0)))
                                                         (let ((_%tl4361543647%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4523845239%_ '1)))
                       (_%target4361343644%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4523845239%_ '0))))
                   (if (gx#stx-null? _%tl4361543647%_)
                       (_%__match4532845329%_
                        _%e4356143884%_
                        _%hd4356243888%_
                        _%tl4356343891%_
                        _%__splice4523845239%_
                        _%target4361343644%_
                        _%tl4361543647%_)
                       (let () (declare (not safe)) (_%g4355743627%_)))))
               (let () (declare (not safe)) (_%g4355743627%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (gx#stx-null? _%tl4357843805%_)
                                               (if (gx#stx-pair/null?
                                                    _%tl4356343891%_)
                                                   (let ((_%__splice4523445235%_
                                                          (gx#syntax-split-splice->vector
                                                           _%tl4356343891%_
                                                           '0)))
                                                     (let ((_%tl4360143729%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice4523445235%_
                                                               '1)))
                                                           (_%target4359943726%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice4523445235%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%tl4360143729%_)
                                                           (_%__match4531445315%_
                                                            _%e4356143884%_
                                                            _%hd4356243888%_
                                                            _%tl4356343891%_
                                                            _%e4357643798%_
                                                            _%hd4357743802%_
                                                            _%tl4357843805%_
                                                            _%__splice4523445235%_
                                                            _%target4359943726%_
                                                            _%tl4360143729%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g4355743627%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4355743627%_)))
                                               (if (gx#stx-pair/null?
                                                    _%tl4356343891%_)
                                                   (let ((_%__splice4523845239%_
                                                          (gx#syntax-split-splice->vector
                                                           _%tl4356343891%_
                                                           '0)))
                                                     (let ((_%tl4361543647%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice4523845239%_
                                                               '1)))
                                                           (_%target4361343644%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice4523845239%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%tl4361543647%_)
                                                           (_%__match4532845329%_
                                                            _%e4356143884%_
                                                            _%hd4356243888%_
                                                            _%tl4356343891%_
                                                            _%__splice4523845239%_
                                                            _%target4361343644%_
                                                            _%tl4361543647%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g4355743627%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4355743627%_)))))))
                                   (if (gx#stx-pair/null? _%tl4356343891%_)
                                       (let ((_%__splice4523845239%_
                                              (gx#syntax-split-splice->vector
                                               _%tl4356343891%_
                                               '0)))
                                         (let ((_%tl4361543647%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4523845239%_
                                                   '1)))
                                               (_%target4361343644%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4523845239%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl4361543647%_)
                                               (_%__match4532845329%_
                                                _%e4356143884%_
                                                _%hd4356243888%_
                                                _%tl4356343891%_
                                                _%__splice4523845239%_
                                                _%target4361343644%_
                                                _%tl4361543647%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4355743627%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g4355743627%_)))))))
                       (if (gx#stx-pair? _%hd4356243888%_)
                           (let ((_%e4357643798%_
                                  (gx#syntax-e _%hd4356243888%_)))
                             (let ((_%tl4357843805%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e4357643798%_)))
                                   (_%hd4357743802%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e4357643798%_))))
                               (if (gx#stx-pair? _%tl4357843805%_)
                                   (let ((_%e4357943808%_
                                          (gx#syntax-e _%tl4357843805%_)))
                                     (let ((_%tl4358143815%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4357943808%_)))
                                           (_%hd4358043812%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4357943808%_))))
                                       (if (gx#stx-null? _%tl4358143815%_)
                                           (if (gx#stx-pair/null?
                                                _%tl4356343891%_)
                                               (let ((_%__splice4523045231%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl4356343891%_
                                                       '0)))
                                                 (let ((_%tl4358443821%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4523045231%_
                                                           '1)))
                                                       (_%target4358243818%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4523045231%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl4358443821%_)
                                                       (_%__match4529245293%_
                                                        _%e4356143884%_
                                                        _%hd4356243888%_
                                                        _%tl4356343891%_
                                                        _%e4357643798%_
                                                        _%hd4357743802%_
                                                        _%tl4357843805%_
                                                        _%e4357943808%_
                                                        _%hd4358043812%_
                                                        _%tl4358143815%_
                                                        _%__splice4523045231%_
                                                        _%target4358243818%_
                                                        _%tl4358443821%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g4355743627%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4355743627%_)))
                                           (if (gx#stx-pair/null?
                                                _%tl4356343891%_)
                                               (let ((_%__splice4523845239%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl4356343891%_
                                                       '0)))
                                                 (let ((_%tl4361543647%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4523845239%_
                                                           '1)))
                                                       (_%target4361343644%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4523845239%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl4361543647%_)
                                                       (_%__match4532845329%_
                                                        _%e4356143884%_
                                                        _%hd4356243888%_
                                                        _%tl4356343891%_
                                                        _%__splice4523845239%_
                                                        _%target4361343644%_
                                                        _%tl4361543647%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g4355743627%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4355743627%_))))))
                                   (if (gx#stx-null? _%tl4357843805%_)
                                       (if (gx#stx-pair/null? _%tl4356343891%_)
                                           (let ((_%__splice4523445235%_
                                                  (gx#syntax-split-splice->vector
                                                   _%tl4356343891%_
                                                   '0)))
                                             (let ((_%tl4360143729%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4523445235%_
                                                       '1)))
                                                   (_%target4359943726%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4523445235%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl4360143729%_)
                                                   (_%__match4531445315%_
                                                    _%e4356143884%_
                                                    _%hd4356243888%_
                                                    _%tl4356343891%_
                                                    _%e4357643798%_
                                                    _%hd4357743802%_
                                                    _%tl4357843805%_
                                                    _%__splice4523445235%_
                                                    _%target4359943726%_
                                                    _%tl4360143729%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4355743627%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4355743627%_)))
                                       (if (gx#stx-pair/null? _%tl4356343891%_)
                                           (let ((_%__splice4523845239%_
                                                  (gx#syntax-split-splice->vector
                                                   _%tl4356343891%_
                                                   '0)))
                                             (let ((_%tl4361543647%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4523845239%_
                                                       '1)))
                                                   (_%target4361343644%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4523845239%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl4361543647%_)
                                                   (_%__match4532845329%_
                                                    _%e4356143884%_
                                                    _%hd4356243888%_
                                                    _%tl4356343891%_
                                                    _%__splice4523845239%_
                                                    _%target4361343644%_
                                                    _%tl4361543647%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4355743627%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4355743627%_)))))))
                           (if (gx#stx-pair/null? _%tl4356343891%_)
                               (let ((_%__splice4523845239%_
                                      (gx#syntax-split-splice->vector
                                       _%tl4356343891%_
                                       '0)))
                                 (let ((_%tl4361543647%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4523845239%_
                                           '1)))
                                       (_%target4361343644%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4523845239%_
                                           '0))))
                                   (if (gx#stx-null? _%tl4361543647%_)
                                       (_%__match4532845329%_
                                        _%e4356143884%_
                                        _%hd4356243888%_
                                        _%tl4356343891%_
                                        _%__splice4523845239%_
                                        _%target4361343644%_
                                        _%tl4361543647%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4355743627%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g4355743627%_)))))))
               (let () (declare (not safe)) (_%g4355743627%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (if (pair? _%rest4340743415%_)
                                         (let ((_%hd4341243939%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%rest4340743415%_)))
                                               (_%tl4341343942%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%rest4340743415%_))))
                                           (let* ((_%hd43945%_
                                                   _%hd4341243939%_)
                                                  (_%rest43948%_
                                                   _%tl4341343942%_))
                                             (_%K4341143935%_
                                              _%rest43948%_
                                              _%hd43945%_)))
                                         (_%else4340943546%_)))))
                               _%g4337543386%_))))
                      (_%g4337343951%_ (gx#genident))))))
          (let* ((_%g4275842778%_
                  (lambda (_%g4275942774%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g4275942774%_)))
                 (_%g4275743366%_
                  (lambda (_%g4275942782%_)
                    (if (gx#stx-pair? _%g4275942782%_)
                        (let ((_%e4276142785%_ (gx#syntax-e _%g4275942782%_)))
                          (let ((_%hd4276242789%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4276142785%_)))
                                (_%tl4276342792%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4276142785%_))))
                            (if (gx#stx-pair/null? _%tl4276342792%_)
                                (let ((_g45506_
                                       (gx#syntax-split-splice
                                        _%tl4276342792%_
                                        '0)))
                                  (begin
                                    (let ((_g45507_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g45506_)
                                                 (##values-length _g45506_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g45507_ 2)))
                                          (error "Context expects 2 values"
                                                 _g45507_)))
                                    (let ((_%target4276442795%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g45506_ 0)))
                                          (_%tl4276642798%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g45506_ 1))))
                                      (if (gx#stx-null? _%tl4276642798%_)
                                          (letrec ((_%loop4276742801%_
                                                    (lambda (_%hd4276542805%_
                                                             _%e4277142808%_)
                                                      (if (gx#stx-pair?
                                                           _%hd4276542805%_)
                                                          (let ((_%e4276842810%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd4276542805%_)))
                    (let ((_%lp-hd4276942814%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4276842810%_)))
                          (_%lp-tl4277042817%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4276842810%_))))
                      (_%loop4276742801%_
                       _%lp-tl4277042817%_
                       (cons _%lp-hd4276942814%_ _%e4277142808%_))))
                  (let ((_%e4277242820%_ (reverse _%e4277142808%_)))
                    ((lambda (_%g4276042823%_)
                       (let _%lp42840%_ ((_%rest42843%_
                                          (foldr (lambda (_%g4335743360%_
                                                          _%g4335843363%_)
                                                   (cons _%g4335743360%_
                                                         _%g4335843363%_))
                                                 '()
                                                 _%g4276042823%_))
                                         (_%body42845%_ '()))
                         (let* ((_%__stx4544945450%_ _%rest42843%_)
                                (_%g4284842860%_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%__stx4544945450%_))))
                           (let ((_%__kont4545245453%_
                                  (lambda (_%g4285042888%_ _%g4285142890%_)
                                    (let* ((_%__stx4539745398%_
                                            _%g4285142890%_)
                                           (_%g4290742940%_
                                            (lambda ()
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%__stx4539745398%_))))
                                      (let ((_%__kont4540045401%_
                                             (lambda (_%g4290943327%_)
                                               (if (gx#stx-null?
                                                    _%g4285042888%_)
                                                   (_%generate-fini42755%_
                                                    (_%generate-thunk42753%_
                                                     _%body42845%_)
                                                    (foldr (lambda (_%g4334143344%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g4334243347%_)
                     (cons _%g4334143344%_ _%g4334243347%_))
                   '()
                   _%g4290943327%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Misplaced finally clause"
                                                    _%stx42750%_))))
                                            (_%__kont4540445405%_
                                             (lambda (_%g4292242996%_)
                                               (let _%lp43013%_ ((_%rest43016%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g4285042888%_)
                         (_%handlers43018%_
                          (cons (foldr (lambda (_%g4327343276%_
                                                _%g4327443279%_)
                                         (cons _%g4327343276%_
                                               _%g4327443279%_))
                                       '()
                                       _%g4292242996%_)
                                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let* ((_%__stx4533145332%_
                                                         _%rest43016%_)
                                                        (_%g4302243062%_
                                                         (lambda ()
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%__stx4533145332%_))))
                                                   (let ((_%__kont4533445335%_
                                                          (lambda (_%g4302443243%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g4302543245%_)
                    (_%lp43013%_
                     _%g4302443243%_
                     (cons (foldr (lambda (_%g4326143264%_ _%g4326243267%_)
                                    (cons _%g4326143264%_ _%g4326243267%_))
                                  '()
                                  _%g4302543245%_)
                           _%handlers43018%_))))
                 (_%__kont4533845339%_
                  (lambda (_%g4304143128%_)
                    (let* ((_%g4314943157%_
                            (lambda (_%g4315043153%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4315043153%_)))
                           (_%g4314843184%_
                            (lambda (_%g4315043161%_)
                              ((lambda (_%g4315143164%_)
                                 (_%generate-fini42755%_
                                  (cons (gx#datum->syntax '#f 'lambda)
                                        (cons '() (cons _%g4315143164%_ '())))
                                  (foldr (lambda (_%g4317543178%_
                                                  _%g4317643181%_)
                                           (cons _%g4317543178%_
                                                 _%g4317643181%_))
                                         '()
                                         _%g4304143128%_)))
                               _%g4315043161%_))))
                      (_%g4314843184%_
                       (_%generate-catch42756%_
                        _%handlers43018%_
                        (_%generate-thunk42753%_ _%body42845%_))))))
                 (_%__kont4534245343%_
                  (lambda ()
                    (_%generate-catch42756%_
                     _%handlers43018%_
                     (_%generate-thunk42753%_ _%body42845%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%g4302143073%_
                                                             (lambda ()
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%__stx4533145332%_)
                           (_%__kont4534245343%_)
                           (let () (declare (not safe)) (_%g4302243062%_)))))
                    (_%__match4539245393%_
                     (lambda (_%e4304243080%_
                              _%hd4304343084%_
                              _%tl4304443087%_
                              _%e4304543090%_
                              _%hd4304643094%_
                              _%tl4304743097%_
                              _%__splice4534045341%_
                              _%target4304843100%_
                              _%tl4305043103%_)
                       (letrec ((_%loop4305143106%_
                                 (lambda (_%hd4304943110%_ _%fini4305543113%_)
                                   (if (gx#stx-pair? _%hd4304943110%_)
                                       (let ((_%e4305243115%_
                                              (gx#syntax-e _%hd4304943110%_)))
                                         (let ((_%lp-tl4305443122%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4305243115%_)))
                                               (_%lp-hd4305343119%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4305243115%_))))
                                           (_%loop4305143106%_
                                            _%lp-tl4305443122%_
                                            (cons _%lp-hd4305343119%_
                                                  _%fini4305543113%_))))
                                       (let ((_%fini4305643125%_
                                              (reverse _%fini4305543113%_)))
                                         (if (gx#stx-null? _%tl4304443087%_)
                                             (_%__kont4533845339%_
                                              _%fini4305643125%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%g4302243062%_))))))))
                         (_%loop4305143106%_ _%target4304843100%_ '()))))
                    (_%__match4536845369%_
                     (lambda (_%e4302643195%_
                              _%hd4302743199%_
                              _%tl4302843202%_
                              _%e4302943205%_
                              _%hd4303043209%_
                              _%tl4303143212%_
                              _%__splice4533645337%_
                              _%target4303243215%_
                              _%tl4303443218%_)
                       (letrec ((_%loop4303543221%_
                                 (lambda (_%hd4303343225%_
                                          _%handler4303943228%_)
                                   (if (gx#stx-pair? _%hd4303343225%_)
                                       (let ((_%e4303643230%_
                                              (gx#syntax-e _%hd4303343225%_)))
                                         (let ((_%lp-tl4303843237%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4303643230%_)))
                                               (_%lp-hd4303743234%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4303643230%_))))
                                           (_%loop4303543221%_
                                            _%lp-tl4303843237%_
                                            (cons _%lp-hd4303743234%_
                                                  _%handler4303943228%_))))
                                       (let ((_%handler4304043240%_
                                              (reverse _%handler4303943228%_)))
                                         (_%__kont4533445335%_
                                          _%tl4302843202%_
                                          _%handler4304043240%_))))))
                         (_%loop4303543221%_ _%target4303243215%_ '())))))
               (if (gx#stx-pair? _%__stx4533145332%_)
                   (let ((_%e4302643195%_ (gx#syntax-e _%__stx4533145332%_)))
                     (let ((_%tl4302843202%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4302643195%_)))
                           (_%hd4302743199%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4302643195%_))))
                       (if (gx#stx-pair? _%hd4302743199%_)
                           (let ((_%e4302943205%_
                                  (gx#syntax-e _%hd4302743199%_)))
                             (let ((_%tl4303143212%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e4302943205%_)))
                                   (_%hd4303043209%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e4302943205%_))))
                               (if (gx#identifier? _%hd4303043209%_)
                                   (if (gx#free-identifier=?
                                        |gerbil/core/more-sugar[1]#_g45508_|
                                        _%hd4303043209%_)
                                       (if (gx#stx-pair/null? _%tl4303143212%_)
                                           (let ((_%__splice4533645337%_
                                                  (gx#syntax-split-splice->vector
                                                   _%tl4303143212%_
                                                   '0)))
                                             (let ((_%tl4303443218%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4533645337%_
                                                       '1)))
                                                   (_%target4303243215%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4533645337%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl4303443218%_)
                                                   (_%__match4536845369%_
                                                    _%e4302643195%_
                                                    _%hd4302743199%_
                                                    _%tl4302843202%_
                                                    _%e4302943205%_
                                                    _%hd4303043209%_
                                                    _%tl4303143212%_
                                                    _%__splice4533645337%_
                                                    _%target4303243215%_
                                                    _%tl4303443218%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4302243062%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4302243062%_)))
                                       (if (gx#free-identifier=?
                                            |gerbil/core/more-sugar[1]#_g45509_|
                                            _%hd4303043209%_)
                                           (if (gx#stx-pair/null?
                                                _%tl4303143212%_)
                                               (let ((_%__splice4534045341%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl4303143212%_
                                                       '0)))
                                                 (let ((_%tl4305043103%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4534045341%_
                                                           '1)))
                                                       (_%target4304843100%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4534045341%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl4305043103%_)
                                                       (_%__match4539245393%_
                                                        _%e4302643195%_
                                                        _%hd4302743199%_
                                                        _%tl4302843202%_
                                                        _%e4302943205%_
                                                        _%hd4303043209%_
                                                        _%tl4303143212%_
                                                        _%__splice4534045341%_
                                                        _%target4304843100%_
                                                        _%tl4305043103%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g4302243062%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4302243062%_)))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4302243062%_))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g4302243062%_)))))
                           (let () (declare (not safe)) (_%g4302243062%_)))))
                   (let () (declare (not safe)) (_%g4302143073%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont4540845409%_
                                             (lambda ()
                                               (_%lp42840%_
                                                _%g4285042888%_
                                                (cons _%g4285142890%_
                                                      _%body42845%_)))))
                                        (let* ((_%__match4544645447%_
                                                (lambda (_%e4292342958%_
                                                         _%hd4292442962%_
                                                         _%tl4292542965%_
                                                         _%__splice4540645407%_
                                                         _%target4292642968%_
                                                         _%tl4292842971%_)
                                                  (letrec ((_%loop4292942974%_
                                                            (lambda (_%hd4292742978%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%handler4293342981%_)
                      (if (gx#stx-pair? _%hd4292742978%_)
                          (let ((_%e4293042983%_
                                 (gx#syntax-e _%hd4292742978%_)))
                            (let ((_%lp-tl4293242990%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4293042983%_)))
                                  (_%lp-hd4293142987%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4293042983%_))))
                              (_%loop4292942974%_
                               _%lp-tl4293242990%_
                               (cons _%lp-hd4293142987%_
                                     _%handler4293342981%_))))
                          (let ((_%handler4293442993%_
                                 (reverse _%handler4293342981%_)))
                            (_%__kont4540445405%_ _%handler4293442993%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop4292942974%_
                                                     _%target4292642968%_
                                                     '()))))
                                               (_%__match4542845429%_
                                                (lambda (_%e4291043289%_
                                                         _%hd4291143293%_
                                                         _%tl4291243296%_
                                                         _%__splice4540245403%_
                                                         _%target4291343299%_
                                                         _%tl4291543302%_)
                                                  (letrec ((_%loop4291643305%_
                                                            (lambda (_%hd4291443309%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%fini4292043312%_)
                      (if (gx#stx-pair? _%hd4291443309%_)
                          (let ((_%e4291743314%_
                                 (gx#syntax-e _%hd4291443309%_)))
                            (let ((_%lp-tl4291943321%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4291743314%_)))
                                  (_%lp-hd4291843318%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4291743314%_))))
                              (_%loop4291643305%_
                               _%lp-tl4291943321%_
                               (cons _%lp-hd4291843318%_ _%fini4292043312%_))))
                          (let ((_%fini4292143324%_
                                 (reverse _%fini4292043312%_)))
                            (_%__kont4540045401%_ _%fini4292143324%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop4291643305%_
                                                     _%target4291343299%_
                                                     '())))))
                                          (if (gx#stx-pair?
                                               _%__stx4539745398%_)
                                              (let ((_%e4291043289%_
                                                     (gx#syntax-e
                                                      _%__stx4539745398%_)))
                                                (let ((_%tl4291243296%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4291043289%_)))
                                                      (_%hd4291143293%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4291043289%_))))
                                                  (if (gx#identifier?
                                                       _%hd4291143293%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/more-sugar[1]#_g45510_|
                                                           _%hd4291143293%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4291243296%_)
                                                              (let ((_%__splice4540245403%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl4291243296%_
                              '0)))
                        (let ((_%tl4291543302%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice4540245403%_ '1)))
                              (_%target4291343299%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice4540245403%_ '0))))
                          (if (gx#stx-null? _%tl4291543302%_)
                              (_%__match4542845429%_
                               _%e4291043289%_
                               _%hd4291143293%_
                               _%tl4291243296%_
                               _%__splice4540245403%_
                               _%target4291343299%_
                               _%tl4291543302%_)
                              (_%__kont4540845409%_))))
                      (_%__kont4540845409%_))
                  (if (gx#free-identifier=?
                       |gerbil/core/more-sugar[1]#_g45511_|
                       _%hd4291143293%_)
                      (if (gx#stx-pair/null? _%tl4291243296%_)
                          (let ((_%__splice4540645407%_
                                 (gx#syntax-split-splice->vector
                                  _%tl4291243296%_
                                  '0)))
                            (let ((_%tl4292842971%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice4540645407%_ '1)))
                                  (_%target4292642968%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice4540645407%_
                                      '0))))
                              (if (gx#stx-null? _%tl4292842971%_)
                                  (_%__match4544645447%_
                                   _%e4291043289%_
                                   _%hd4291143293%_
                                   _%tl4291243296%_
                                   _%__splice4540645407%_
                                   _%target4292642968%_
                                   _%tl4292842971%_)
                                  (_%__kont4540845409%_))))
                          (_%__kont4540845409%_))
                      (_%__kont4540845409%_)))
              (_%__kont4540845409%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont4540845409%_)))))))
                                 (_%__kont4545445455%_
                                  (lambda ()
                                    (cons 'begin (reverse _%body42845%_)))))
                             (let ((_%g4284742871%_
                                    (lambda ()
                                      (if (gx#stx-null? _%__stx4544945450%_)
                                          (_%__kont4545445455%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4284842860%_))))))
                               (if (gx#stx-pair? _%__stx4544945450%_)
                                   (let ((_%e4285242878%_
                                          (gx#syntax-e _%__stx4544945450%_)))
                                     (let ((_%tl4285442885%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4285242878%_)))
                                           (_%hd4285342882%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4285242878%_))))
                                       (_%__kont4545245453%_
                                        _%tl4285442885%_
                                        _%hd4285342882%_)))
                                   (let ()
                                     (declare (not safe))
                                     (_%g4284742871%_))))))))
                     _%e4277242820%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop4276742801%_
                                             _%target4276442795%_
                                             '()))
                                          (_%g4275842778%_ _%g4275942782%_)))))
                                (_%g4275842778%_ _%g4275942782%_))))
                        (_%g4275842778%_ _%g4275942782%_)))))
            (_%g4275743366%_ _%stx42750%_)))))
    (define |gerbil/core/more-sugar[:0:]#hash|
      (lambda (_%$stx44166%_)
        (let* ((_%g4417044199%_
                (lambda (_%g4417144195%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4417144195%_)))
               (_%g4416944295%_
                (lambda (_%g4417144203%_)
                  (if (gx#stx-pair? _%g4417144203%_)
                      (let ((_%e4417444206%_ (gx#syntax-e _%g4417144203%_)))
                        (let ((_%hd4417544210%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4417444206%_)))
                              (_%tl4417644213%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4417444206%_))))
                          (if (gx#stx-pair/null? _%tl4417644213%_)
                              (let ((_g45512_
                                     (gx#syntax-split-splice
                                      _%tl4417644213%_
                                      '0)))
                                (begin
                                  (let ((_g45513_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g45512_)
                                               (##values-length _g45512_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g45513_ 2)))
                                        (error "Context expects 2 values"
                                               _g45513_)))
                                  (let ((_%target4417744216%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45512_ 0)))
                                        (_%tl4417944219%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45512_ 1))))
                                    (if (gx#stx-null? _%tl4417944219%_)
                                        (letrec ((_%loop4418044222%_
                                                  (lambda (_%hd4417844226%_
                                                           _%val4418444229%_
                                                           _%key4418544230%_)
                                                    (if (gx#stx-pair?
                                                         _%hd4417844226%_)
                                                        (let ((_%e4418144232%_
                                                               (gx#syntax-e
                                                                _%hd4417844226%_)))
                                                          (let ((_%lp-hd4418244236%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4418144232%_)))
                        (_%lp-tl4418344239%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4418144232%_))))
                    (if (gx#stx-pair? _%lp-hd4418244236%_)
                        (let ((_%e4418844242%_
                               (gx#syntax-e _%lp-hd4418244236%_)))
                          (let ((_%hd4418944246%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4418844242%_)))
                                (_%tl4419044249%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4418844242%_))))
                            (if (gx#stx-pair? _%tl4419044249%_)
                                (let ((_%e4419144252%_
                                       (gx#syntax-e _%tl4419044249%_)))
                                  (let ((_%hd4419244256%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4419144252%_)))
                                        (_%tl4419344259%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4419144252%_))))
                                    (if (gx#stx-null? _%tl4419344259%_)
                                        (_%loop4418044222%_
                                         _%lp-tl4418344239%_
                                         (cons _%hd4419244256%_
                                               _%val4418444229%_)
                                         (cons _%hd4418944246%_
                                               _%key4418544230%_))
                                        (_%g4417044199%_ _%g4417144203%_))))
                                (_%g4417044199%_ _%g4417144203%_))))
                        (_%g4417044199%_ _%g4417144203%_))))
                (let ((_%val4418644262%_ (reverse _%val4418444229%_))
                      (_%key4418744264%_ (reverse _%key4418544230%_)))
                  ((lambda (_%g4417244266%_ _%g4417344268%_)
                     (cons (gx#datum->syntax '#f '~hash-table)
                           (cons (gx#datum->syntax '#f 'make-hash-table)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _%g4417244266%_
                                    _%g4417344268%_)
                                   (foldr (lambda (_%g4428344287%_
                                                   _%g4428444290%_
                                                   _%g4428544292%_)
                                            (cons (cons _%g4428444290%_
                                                        (cons _%g4428344287%_
                                                              '()))
                                                  _%g4428544292%_))
                                          '()
                                          _%g4417244266%_
                                          _%g4417344268%_)))))
                   _%val4418644262%_
                   _%key4418744264%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop4418044222%_
                                           _%target4417744216%_
                                           '()
                                           '()))
                                        (_%g4417044199%_ _%g4417144203%_)))))
                              (_%g4417044199%_ _%g4417144203%_))))
                      (_%g4417044199%_ _%g4417144203%_)))))
          (_%g4416944295%_ _%$stx44166%_))))
    (define |gerbil/core/more-sugar[:0:]#hash-eq|
      (lambda (_%$stx44300%_)
        (let* ((_%g4430444333%_
                (lambda (_%g4430544329%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4430544329%_)))
               (_%g4430344429%_
                (lambda (_%g4430544337%_)
                  (if (gx#stx-pair? _%g4430544337%_)
                      (let ((_%e4430844340%_ (gx#syntax-e _%g4430544337%_)))
                        (let ((_%hd4430944344%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4430844340%_)))
                              (_%tl4431044347%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4430844340%_))))
                          (if (gx#stx-pair/null? _%tl4431044347%_)
                              (let ((_g45514_
                                     (gx#syntax-split-splice
                                      _%tl4431044347%_
                                      '0)))
                                (begin
                                  (let ((_g45515_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g45514_)
                                               (##values-length _g45514_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g45515_ 2)))
                                        (error "Context expects 2 values"
                                               _g45515_)))
                                  (let ((_%target4431144350%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45514_ 0)))
                                        (_%tl4431344353%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45514_ 1))))
                                    (if (gx#stx-null? _%tl4431344353%_)
                                        (letrec ((_%loop4431444356%_
                                                  (lambda (_%hd4431244360%_
                                                           _%val4431844363%_
                                                           _%key4431944364%_)
                                                    (if (gx#stx-pair?
                                                         _%hd4431244360%_)
                                                        (let ((_%e4431544366%_
                                                               (gx#syntax-e
                                                                _%hd4431244360%_)))
                                                          (let ((_%lp-hd4431644370%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4431544366%_)))
                        (_%lp-tl4431744373%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4431544366%_))))
                    (if (gx#stx-pair? _%lp-hd4431644370%_)
                        (let ((_%e4432244376%_
                               (gx#syntax-e _%lp-hd4431644370%_)))
                          (let ((_%hd4432344380%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4432244376%_)))
                                (_%tl4432444383%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4432244376%_))))
                            (if (gx#stx-pair? _%tl4432444383%_)
                                (let ((_%e4432544386%_
                                       (gx#syntax-e _%tl4432444383%_)))
                                  (let ((_%hd4432644390%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4432544386%_)))
                                        (_%tl4432744393%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4432544386%_))))
                                    (if (gx#stx-null? _%tl4432744393%_)
                                        (_%loop4431444356%_
                                         _%lp-tl4431744373%_
                                         (cons _%hd4432644390%_
                                               _%val4431844363%_)
                                         (cons _%hd4432344380%_
                                               _%key4431944364%_))
                                        (_%g4430444333%_ _%g4430544337%_))))
                                (_%g4430444333%_ _%g4430544337%_))))
                        (_%g4430444333%_ _%g4430544337%_))))
                (let ((_%val4432044396%_ (reverse _%val4431844363%_))
                      (_%key4432144398%_ (reverse _%key4431944364%_)))
                  ((lambda (_%g4430644400%_ _%g4430744402%_)
                     (cons (gx#datum->syntax '#f '~hash-table)
                           (cons (gx#datum->syntax '#f 'make-hash-table-eq)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _%g4430644400%_
                                    _%g4430744402%_)
                                   (foldr (lambda (_%g4441744421%_
                                                   _%g4441844424%_
                                                   _%g4441944426%_)
                                            (cons (cons _%g4441844424%_
                                                        (cons _%g4441744421%_
                                                              '()))
                                                  _%g4441944426%_))
                                          '()
                                          _%g4430644400%_
                                          _%g4430744402%_)))))
                   _%val4432044396%_
                   _%key4432144398%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop4431444356%_
                                           _%target4431144350%_
                                           '()
                                           '()))
                                        (_%g4430444333%_ _%g4430544337%_)))))
                              (_%g4430444333%_ _%g4430544337%_))))
                      (_%g4430444333%_ _%g4430544337%_)))))
          (_%g4430344429%_ _%$stx44300%_))))
    (define |gerbil/core/more-sugar[:0:]#hash-eqv|
      (lambda (_%$stx44434%_)
        (let* ((_%g4443844467%_
                (lambda (_%g4443944463%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4443944463%_)))
               (_%g4443744563%_
                (lambda (_%g4443944471%_)
                  (if (gx#stx-pair? _%g4443944471%_)
                      (let ((_%e4444244474%_ (gx#syntax-e _%g4443944471%_)))
                        (let ((_%hd4444344478%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4444244474%_)))
                              (_%tl4444444481%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4444244474%_))))
                          (if (gx#stx-pair/null? _%tl4444444481%_)
                              (let ((_g45516_
                                     (gx#syntax-split-splice
                                      _%tl4444444481%_
                                      '0)))
                                (begin
                                  (let ((_g45517_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g45516_)
                                               (##values-length _g45516_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g45517_ 2)))
                                        (error "Context expects 2 values"
                                               _g45517_)))
                                  (let ((_%target4444544484%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45516_ 0)))
                                        (_%tl4444744487%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45516_ 1))))
                                    (if (gx#stx-null? _%tl4444744487%_)
                                        (letrec ((_%loop4444844490%_
                                                  (lambda (_%hd4444644494%_
                                                           _%val4445244497%_
                                                           _%key4445344498%_)
                                                    (if (gx#stx-pair?
                                                         _%hd4444644494%_)
                                                        (let ((_%e4444944500%_
                                                               (gx#syntax-e
                                                                _%hd4444644494%_)))
                                                          (let ((_%lp-hd4445044504%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4444944500%_)))
                        (_%lp-tl4445144507%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4444944500%_))))
                    (if (gx#stx-pair? _%lp-hd4445044504%_)
                        (let ((_%e4445644510%_
                               (gx#syntax-e _%lp-hd4445044504%_)))
                          (let ((_%hd4445744514%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4445644510%_)))
                                (_%tl4445844517%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4445644510%_))))
                            (if (gx#stx-pair? _%tl4445844517%_)
                                (let ((_%e4445944520%_
                                       (gx#syntax-e _%tl4445844517%_)))
                                  (let ((_%hd4446044524%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4445944520%_)))
                                        (_%tl4446144527%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4445944520%_))))
                                    (if (gx#stx-null? _%tl4446144527%_)
                                        (_%loop4444844490%_
                                         _%lp-tl4445144507%_
                                         (cons _%hd4446044524%_
                                               _%val4445244497%_)
                                         (cons _%hd4445744514%_
                                               _%key4445344498%_))
                                        (_%g4443844467%_ _%g4443944471%_))))
                                (_%g4443844467%_ _%g4443944471%_))))
                        (_%g4443844467%_ _%g4443944471%_))))
                (let ((_%val4445444530%_ (reverse _%val4445244497%_))
                      (_%key4445544532%_ (reverse _%key4445344498%_)))
                  ((lambda (_%g4444044534%_ _%g4444144536%_)
                     (cons (gx#datum->syntax '#f '~hash-table)
                           (cons (gx#datum->syntax '#f 'make-hash-table-eqv)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _%g4444044534%_
                                    _%g4444144536%_)
                                   (foldr (lambda (_%g4455144555%_
                                                   _%g4455244558%_
                                                   _%g4455344560%_)
                                            (cons (cons _%g4455244558%_
                                                        (cons _%g4455144555%_
                                                              '()))
                                                  _%g4455344560%_))
                                          '()
                                          _%g4444044534%_
                                          _%g4444144536%_)))))
                   _%val4445444530%_
                   _%key4445544532%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop4444844490%_
                                           _%target4444544484%_
                                           '()
                                           '()))
                                        (_%g4443844467%_ _%g4443944471%_)))))
                              (_%g4443844467%_ _%g4443944471%_))))
                      (_%g4443844467%_ _%g4443944471%_)))))
          (_%g4443744563%_ _%$stx44434%_))))
    (define |gerbil/core/more-sugar[:0:]#~hash-table|
      (lambda (_%stx44568%_)
        (let* ((_%g4457144595%_
                (lambda (_%g4457244591%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4457244591%_)))
               (_%g4457044836%_
                (lambda (_%g4457244599%_)
                  (if (gx#stx-pair? _%g4457244599%_)
                      (let ((_%e4457544602%_ (gx#syntax-e _%g4457244599%_)))
                        (let ((_%hd4457644606%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4457544602%_)))
                              (_%tl4457744609%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4457544602%_))))
                          (if (gx#stx-pair? _%tl4457744609%_)
                              (let ((_%e4457844612%_
                                     (gx#syntax-e _%tl4457744609%_)))
                                (let ((_%hd4457944616%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4457844612%_)))
                                      (_%tl4458044619%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4457844612%_))))
                                  (if (gx#stx-pair/null? _%tl4458044619%_)
                                      (let ((_g45518_
                                             (gx#syntax-split-splice
                                              _%tl4458044619%_
                                              '0)))
                                        (begin
                                          (let ((_g45519_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45518_)
                                                       (##values-length
                                                        _g45518_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45519_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45519_)))
                                          (let ((_%target4458144622%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45518_ 0)))
                                                (_%tl4458344625%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45518_ 1))))
                                            (if (gx#stx-null? _%tl4458344625%_)
                                                (letrec ((_%loop4458444628%_
                                                          (lambda (_%hd4458244632%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%entry4458844635%_)
                    (if (gx#stx-pair? _%hd4458244632%_)
                        (let ((_%e4458544637%_ (gx#syntax-e _%hd4458244632%_)))
                          (let ((_%lp-hd4458644641%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4458544637%_)))
                                (_%lp-tl4458744644%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4458544637%_))))
                            (_%loop4458444628%_
                             _%lp-tl4458744644%_
                             (cons _%lp-hd4458644641%_ _%entry4458844635%_))))
                        (let ((_%entry4458944647%_
                               (reverse _%entry4458844635%_)))
                          ((lambda (_%g4457344650%_ _%g4457444652%_)
                             (let* ((_%g4467044678%_
                                     (lambda (_%g4467144674%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g4467144674%_)))
                                    (_%g4466944824%_
                                     (lambda (_%g4467144682%_)
                                       ((lambda (_%g4467244685%_)
                                          (let* ((_%g4469744723%_
                                                  (lambda (_%g4469844719%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g4469844719%_)))
                                                 (_%g4469644812%_
                                                  (lambda (_%g4469844727%_)
                                                    (if (gx#stx-pair/null?
                                                         _%g4469844727%_)
                                                        (let ((_g45520_
                                                               (gx#syntax-split-splice
                                                                _%g4469844727%_
                                                                '0)))
                                                          (begin
                                                            (let ((_g45521_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (if (##values? _g45520_)
                                 (##values-length _g45520_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g45521_ 2)))
                          (error "Context expects 2 values" _g45521_)))
                    (let ((_%target4470144730%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g45520_ 0)))
                          (_%tl4470344733%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g45520_ 1))))
                      (if (gx#stx-null? _%tl4470344733%_)
                          (letrec ((_%loop4470444736%_
                                    (lambda (_%hd4470244740%_
                                             _%val4470844743%_
                                             _%key4470944744%_)
                                      (if (gx#stx-pair? _%hd4470244740%_)
                                          (let ((_%e4470544746%_
                                                 (gx#syntax-e
                                                  _%hd4470244740%_)))
                                            (let ((_%lp-hd4470644750%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4470544746%_)))
                                                  (_%lp-tl4470744753%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4470544746%_))))
                                              (if (gx#stx-pair?
                                                   _%lp-hd4470644750%_)
                                                  (let ((_%e4471244756%_
                                                         (gx#syntax-e
                                                          _%lp-hd4470644750%_)))
                                                    (let ((_%hd4471344760%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4471244756%_)))
                                                          (_%tl4471444763%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4471244756%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl4471444763%_)
                                                          (let ((_%e4471544766%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4471444763%_)))
                    (let ((_%hd4471644770%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4471544766%_)))
                          (_%tl4471744773%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4471544766%_))))
                      (if (gx#stx-null? _%tl4471744773%_)
                          (_%loop4470444736%_
                           _%lp-tl4470744753%_
                           (cons _%hd4471644770%_ _%val4470844743%_)
                           (cons _%hd4471344760%_ _%key4470944744%_))
                          (_%g4469744723%_ _%g4469844727%_))))
                  (_%g4469744723%_ _%g4469844727%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4469744723%_
                                                   _%g4469844727%_))))
                                          (let ((_%val4471044776%_
                                                 (reverse _%val4470844743%_))
                                                (_%key4471144778%_
                                                 (reverse _%key4470944744%_)))
                                            ((lambda (_%g4469944780%_
                                                      _%g4470044782%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'ht)
                         (cons (cons _%g4457444652%_
                                     (cons 'size: (cons _%g4467244685%_ '())))
                               '()))
                   (begin
                     (gx#syntax-check-splice-targets
                      _%g4469944780%_
                      _%g4470044782%_)
                     (foldr (lambda (_%g4480044804%_
                                     _%g4480144807%_
                                     _%g4480244809%_)
                              (cons (cons (gx#datum->syntax '#f 'hash-put!)
                                          (cons (gx#datum->syntax '#f 'ht)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quasiquote)
                                                            (cons _%g4480144807%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%g4480044804%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%g4480244809%_))
                            (cons (gx#datum->syntax '#f 'ht) '())
                            _%g4469944780%_
                            _%g4470044782%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%val4471044776%_
                                             _%key4471144778%_))))))
                            (_%loop4470444736%_ _%target4470144730%_ '() '()))
                          (_%g4469744723%_ _%g4469844727%_)))))
                (_%g4469744723%_ _%g4469844727%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g4469644812%_
                                             (foldr (lambda (_%g4481544818%_
                                                             _%g4481644821%_)
                                                      (cons _%g4481544818%_
                                                            _%g4481644821%_))
                                                    '()
                                                    _%g4457344650%_))))
                                        _%g4467144682%_))))
                               (_%g4466944824%_
                                (gx#stx-length
                                 (foldr (lambda (_%g4482744830%_
                                                 _%g4482844833%_)
                                          (cons _%g4482744830%_
                                                _%g4482844833%_))
                                        '()
                                        _%g4457344650%_)))))
                           _%entry4458944647%_
                           _%hd4457944616%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4458444628%_
                                                   _%target4458144622%_
                                                   '()))
                                                (_%g4457144595%_
                                                 _%g4457244599%_)))))
                                      (_%g4457144595%_ _%g4457244599%_))))
                              (_%g4457144595%_ _%g4457244599%_))))
                      (_%g4457144595%_ _%g4457244599%_)))))
          (_%g4457044836%_ _%stx44568%_))))
    (define |gerbil/core/more-sugar[:0:]#@bytes|
      (lambda (_%stx44842%_)
        (let* ((_%g4484544859%_
                (lambda (_%g4484644855%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4484644855%_)))
               (_%g4484444931%_
                (lambda (_%g4484644863%_)
                  (if (gx#stx-pair? _%g4484644863%_)
                      (let ((_%e4484844866%_ (gx#syntax-e _%g4484644863%_)))
                        (let ((_%hd4484944870%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4484844866%_)))
                              (_%tl4485044873%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4484844866%_))))
                          (if (gx#stx-pair? _%tl4485044873%_)
                              (let ((_%e4485144876%_
                                     (gx#syntax-e _%tl4485044873%_)))
                                (let ((_%hd4485244880%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4485144876%_)))
                                      (_%tl4485344883%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4485144876%_))))
                                  (if (gx#stx-null? _%tl4485344883%_)
                                      ((lambda (_%g4484744886%_)
                                         (if (gx#stx-string? _%g4484744886%_)
                                             (let* ((_%g4490044908%_
                                                     (lambda (_%g4490144904%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g4490144904%_)))
                                                    (_%g4489944927%_
                                                     (lambda (_%g4490144912%_)
                                                       ((lambda (_%g4490244915%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%g4490244915%_ '())))
                _%g4490144912%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g4489944927%_
                                                (string->bytes
                                                 (gx#stx-e _%g4484744886%_))))
                                             (_%g4484544859%_
                                              _%g4484644863%_)))
                                       _%hd4485244880%_)
                                      (_%g4484544859%_ _%g4484644863%_))))
                              (_%g4484544859%_ _%g4484644863%_))))
                      (_%g4484544859%_ _%g4484644863%_)))))
          (_%g4484444931%_ _%stx44842%_))))
    (define |gerbil/core/more-sugar[:0:]#eval-when-compile|
      (lambda (_%stx44935%_)
        (let* ((_%g4493844952%_
                (lambda (_%g4493944948%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4493944948%_)))
               (_%g4493744993%_
                (lambda (_%g4493944956%_)
                  (if (gx#stx-pair? _%g4493944956%_)
                      (let ((_%e4494144959%_ (gx#syntax-e _%g4493944956%_)))
                        (let ((_%hd4494244963%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4494144959%_)))
                              (_%tl4494344966%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4494144959%_))))
                          (if (gx#stx-pair? _%tl4494344966%_)
                              (let ((_%e4494444969%_
                                     (gx#syntax-e _%tl4494344966%_)))
                                (let ((_%hd4494544973%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4494444969%_)))
                                      (_%tl4494644976%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4494444969%_))))
                                  (if (gx#stx-null? _%tl4494644976%_)
                                      ((lambda (_%g4494044979%_)
                                         (if (gx#current-expander-compiling?)
                                             (gx#eval-syntax _%g4494044979%_)
                                             '#!void)
                                         (cons (gx#datum->syntax '#f 'void)
                                               '()))
                                       _%hd4494544973%_)
                                      (_%g4493844952%_ _%g4493944956%_))))
                              (_%g4493844952%_ _%g4493944956%_))))
                      (_%g4493844952%_ _%g4493944956%_)))))
          (_%g4493744993%_ _%stx44935%_))))))
