(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-sugar[1]#_g45151_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/more-sugar[1]#_g45154_|
    (##structure
     gx#syntax-quote::t
     'catch
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g45155_|
    (##structure
     gx#syntax-quote::t
     'finally
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g45156_|
    (##structure
     gx#syntax-quote::t
     'finally
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g45157_|
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
      (lambda _%$args40484%_
        (apply make-instance
               |gerbil/core/more-sugar[1]#setq-macro::t|
               _%$args40484%_)))
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
      (lambda _%$args40480%_
        (apply make-instance
               |gerbil/core/more-sugar[1]#setf-macro::t|
               _%$args40480%_)))
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
      (lambda (_%stx40477%_)
        (if (gx#identifier? _%stx40477%_)
            (let ((__tmp45114 (gx#syntax-local-value _%stx40477%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/more-sugar[1]#setf-macro::t|
               __tmp45114))
            '#f)))
    (define |gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
      (lambda (_%stx40474%_)
        (if (gx#identifier? _%stx40474%_)
            (let ((__tmp45115 (gx#syntax-local-value _%stx40474%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/more-sugar[1]#setq-macro::t|
               __tmp45115))
            '#f)))
    (define |gerbil/core/more-sugar[1]#expand-set!|
      (lambda (_%stx40101%_)
        (let* ((_%__stx4464344644%_ _%stx40101%_)
               (_%g4010740170%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx4464344644%_))))
          (let ((_%__kont4464644647%_
                 (lambda (_%g4010940451%_ _%g4011040453%_)
                   (gx#core-apply-expander
                    (gx#syntax-local-e _%g4011040453%_)
                    _%stx40101%_)))
                (_%__kont4464844649%_
                 (lambda (_%g4012340340%_ _%g4012440342%_ _%g4012540343%_)
                   (let* ((_%g4036540373%_
                           (lambda (_%g4036640369%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g4036640369%_)))
                          (_%g4036440400%_
                           (lambda (_%g4036640377%_)
                             ((lambda (_%g4036740380%_)
                                (cons _%g4036740380%_
                                      (foldr (lambda (_%g4039140394%_
                                                      _%g4039240397%_)
                                               (cons _%g4039140394%_
                                                     _%g4039240397%_))
                                             (cons _%g4012340340%_ '())
                                             _%g4012440342%_)))
                              _%g4036640377%_))))
                     (_%g4036440400%_
                      (gx#stx-identifier
                       _%g4012540343%_
                       _%g4012540343%_
                       '"-set!")))))
                (_%__kont4465244653%_
                 (lambda (_%g4014740252%_)
                   (gx#core-apply-expander
                    (gx#syntax-local-e _%g4014740252%_)
                    _%stx40101%_)))
                (_%__kont4465444655%_
                 (lambda (_%g4015440207%_ _%g4015540209%_)
                   (cons (gx#datum->syntax '#f '%#set!)
                         (cons _%g4015540209%_ (cons _%g4015440207%_ '()))))))
            (let* ((_%__match4474244743%_
                    (lambda (_%e4015640177%_
                             _%hd4015740181%_
                             _%tl4015840184%_
                             _%e4015940187%_
                             _%hd4016040191%_
                             _%tl4016140194%_
                             _%e4016240197%_
                             _%hd4016340201%_
                             _%tl4016440204%_)
                      (let ((_%g4015440207%_ _%hd4016340201%_)
                            (_%g4015540209%_ _%hd4016040191%_))
                        (if (gx#identifier? _%g4015540209%_)
                            (_%__kont4465444655%_
                             _%g4015440207%_
                             _%g4015540209%_)
                            (let () (declare (not safe)) (_%g4010740170%_))))))
                   (_%__match4472244723%_
                    (lambda (_%e4014840232%_
                             _%hd4014940236%_
                             _%tl4015040239%_
                             _%e4015140242%_
                             _%hd4015240246%_
                             _%tl4015340249%_)
                      (let ((_%g4014740252%_ _%hd4015240246%_))
                        (if (|gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
                             _%g4014740252%_)
                            (_%__kont4465244653%_ _%g4014740252%_)
                            (if (gx#stx-pair? _%tl4015340249%_)
                                (let ((_%e4016240197%_
                                       (gx#syntax-e _%tl4015340249%_)))
                                  (let ((_%tl4016440204%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4016240197%_)))
                                        (_%hd4016340201%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4016240197%_))))
                                    (if (gx#stx-null? _%tl4016440204%_)
                                        (_%__match4474244743%_
                                         _%e4014840232%_
                                         _%hd4014940236%_
                                         _%tl4015040239%_
                                         _%e4015140242%_
                                         _%hd4015240246%_
                                         _%tl4015340249%_
                                         _%e4016240197%_
                                         _%hd4016340201%_
                                         _%tl4016440204%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g4010740170%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4010740170%_)))))))
                   (_%__match4471044711%_
                    (lambda (_%e4012640272%_
                             _%hd4012740276%_
                             _%tl4012840279%_
                             _%e4012940282%_
                             _%hd4013040286%_
                             _%tl4013140289%_
                             _%e4013240292%_
                             _%hd4013340296%_
                             _%tl4013440299%_
                             _%__splice4465044651%_
                             _%target4013540302%_
                             _%tl4013740305%_)
                      (letrec ((_%loop4013840308%_
                                (lambda (_%hd4013640312%_ _%arg4014240315%_)
                                  (if (gx#stx-pair? _%hd4013640312%_)
                                      (let ((_%e4013940317%_
                                             (gx#syntax-e _%hd4013640312%_)))
                                        (let ((_%lp-tl4014140324%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4013940317%_)))
                                              (_%lp-hd4014040321%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4013940317%_))))
                                          (_%loop4013840308%_
                                           _%lp-tl4014140324%_
                                           (cons _%lp-hd4014040321%_
                                                 _%arg4014240315%_))))
                                      (let ((_%arg4014340327%_
                                             (reverse _%arg4014240315%_)))
                                        (if (gx#stx-pair? _%tl4013140289%_)
                                            (let ((_%e4014440330%_
                                                   (gx#syntax-e
                                                    _%tl4013140289%_)))
                                              (let ((_%tl4014640337%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4014440330%_)))
                                                    (_%hd4014540334%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4014440330%_))))
                                                (if (gx#stx-null?
                                                     _%tl4014640337%_)
                                                    (let ((_%g4012340340%_
                                                           _%hd4014540334%_)
                                                          (_%g4012440342%_
                                                           _%arg4014340327%_)
                                                          (_%g4012540343%_
                                                           _%hd4013340296%_))
                                                      (if (gx#identifier?
                                                           _%g4012540343%_)
                                                          (_%__kont4464844649%_
                                                           _%g4012340340%_
                                                           _%g4012440342%_
                                                           _%g4012540343%_)
                                                          (_%__match4472244723%_
                                                           _%e4012640272%_
                                                           _%hd4012740276%_
                                                           _%tl4012840279%_
                                                           _%e4012940282%_
                                                           _%hd4013040286%_
                                                           _%tl4013140289%_)))
                                                    (_%__match4472244723%_
                                                     _%e4012640272%_
                                                     _%hd4012740276%_
                                                     _%tl4012840279%_
                                                     _%e4012940282%_
                                                     _%hd4013040286%_
                                                     _%tl4013140289%_))))
                                            (_%__match4472244723%_
                                             _%e4012640272%_
                                             _%hd4012740276%_
                                             _%tl4012840279%_
                                             _%e4012940282%_
                                             _%hd4013040286%_
                                             _%tl4013140289%_)))))))
                        (_%loop4013840308%_ _%target4013540302%_ '())))))
              (if (gx#stx-pair? _%__stx4464344644%_)
                  (let ((_%e4011140411%_ (gx#syntax-e _%__stx4464344644%_)))
                    (let ((_%tl4011340418%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4011140411%_)))
                          (_%hd4011240415%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4011140411%_))))
                      (if (gx#stx-pair? _%tl4011340418%_)
                          (let ((_%e4011440421%_
                                 (gx#syntax-e _%tl4011340418%_)))
                            (let ((_%tl4011640428%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4011440421%_)))
                                  (_%hd4011540425%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4011440421%_))))
                              (if (gx#stx-pair? _%hd4011540425%_)
                                  (let ((_%e4011740431%_
                                         (gx#syntax-e _%hd4011540425%_)))
                                    (let ((_%tl4011940438%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4011740431%_)))
                                          (_%hd4011840435%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4011740431%_))))
                                      (if (gx#stx-pair? _%tl4011640428%_)
                                          (let ((_%e4012040441%_
                                                 (gx#syntax-e
                                                  _%tl4011640428%_)))
                                            (let ((_%tl4012240448%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4012040441%_)))
                                                  (_%hd4012140445%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4012040441%_))))
                                              (if (gx#stx-null?
                                                   _%tl4012240448%_)
                                                  (if (|gerbil/core/more-sugar[1]#syntax-local-setf-macro?|
                                                       (gx#datum->syntax
                                                        '#f
                                                        'setfid))
                                                      (let ((_%g4010940451%_
                                                             _%hd4012140445%_)
                                                            (_%g4011040453%_
                                                             _%hd4011840435%_))
                                                        (_%__kont4464644647%_
                                                         _%g4010940451%_
                                                         _%g4011040453%_))
                                                      (if (gx#stx-pair/null?
                                                           _%tl4011940438%_)
                                                          (let ((_%__splice4465044651%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl4011940438%_ '0)))
                    (let ((_%tl4013740305%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice4465044651%_ '1)))
                          (_%target4013540302%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice4465044651%_ '0))))
                      (if (gx#stx-null? _%tl4013740305%_)
                          (_%__match4471044711%_
                           _%e4011140411%_
                           _%hd4011240415%_
                           _%tl4011340418%_
                           _%e4011440421%_
                           _%hd4011540425%_
                           _%tl4011640428%_
                           _%e4011740431%_
                           _%hd4011840435%_
                           _%tl4011940438%_
                           _%__splice4465044651%_
                           _%target4013540302%_
                           _%tl4013740305%_)
                          (_%__match4472244723%_
                           _%e4011140411%_
                           _%hd4011240415%_
                           _%tl4011340418%_
                           _%e4011440421%_
                           _%hd4011540425%_
                           _%tl4011640428%_))))
                  (_%__match4472244723%_
                   _%e4011140411%_
                   _%hd4011240415%_
                   _%tl4011340418%_
                   _%e4011440421%_
                   _%hd4011540425%_
                   _%tl4011640428%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl4011940438%_)
                                                      (let ((_%__splice4465044651%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl4011940438%_
                                                              '0)))
                                                        (let ((_%tl4013740305%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice4465044651%_ '1)))
                      (_%target4013540302%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice4465044651%_ '0))))
                  (if (gx#stx-null? _%tl4013740305%_)
                      (_%__match4471044711%_
                       _%e4011140411%_
                       _%hd4011240415%_
                       _%tl4011340418%_
                       _%e4011440421%_
                       _%hd4011540425%_
                       _%tl4011640428%_
                       _%e4011740431%_
                       _%hd4011840435%_
                       _%tl4011940438%_
                       _%__splice4465044651%_
                       _%target4013540302%_
                       _%tl4013740305%_)
                      (_%__match4472244723%_
                       _%e4011140411%_
                       _%hd4011240415%_
                       _%tl4011340418%_
                       _%e4011440421%_
                       _%hd4011540425%_
                       _%tl4011640428%_))))
              (_%__match4472244723%_
               _%e4011140411%_
               _%hd4011240415%_
               _%tl4011340418%_
               _%e4011440421%_
               _%hd4011540425%_
               _%tl4011640428%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl4011940438%_)
                                              (let ((_%__splice4465044651%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl4011940438%_
                                                      '0)))
                                                (let ((_%tl4013740305%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice4465044651%_
                                                          '1)))
                                                      (_%target4013540302%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice4465044651%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4013740305%_)
                                                      (_%__match4471044711%_
                                                       _%e4011140411%_
                                                       _%hd4011240415%_
                                                       _%tl4011340418%_
                                                       _%e4011440421%_
                                                       _%hd4011540425%_
                                                       _%tl4011640428%_
                                                       _%e4011740431%_
                                                       _%hd4011840435%_
                                                       _%tl4011940438%_
                                                       _%__splice4465044651%_
                                                       _%target4013540302%_
                                                       _%tl4013740305%_)
                                                      (_%__match4472244723%_
                                                       _%e4011140411%_
                                                       _%hd4011240415%_
                                                       _%tl4011340418%_
                                                       _%e4011440421%_
                                                       _%hd4011540425%_
                                                       _%tl4011640428%_))))
                                              (_%__match4472244723%_
                                               _%e4011140411%_
                                               _%hd4011240415%_
                                               _%tl4011340418%_
                                               _%e4011440421%_
                                               _%hd4011540425%_
                                               _%tl4011640428%_)))))
                                  (_%__match4472244723%_
                                   _%e4011140411%_
                                   _%hd4011240415%_
                                   _%tl4011340418%_
                                   _%e4011440421%_
                                   _%hd4011540425%_
                                   _%tl4011640428%_))))
                          (let () (declare (not safe)) (_%g4010740170%_)))))
                  (let () (declare (not safe)) (_%g4010740170%_))))))))
    (define |gerbil/core/more-sugar[:0:]#set!|
      (lambda (_%stx40489%_)
        (|gerbil/core/more-sugar[1]#expand-set!| _%stx40489%_)))
    (define |gerbil/core/more-sugar[:0:]#values-set!|
      (lambda (_%stx40492%_)
        (let* ((_%g4049540519%_
                (lambda (_%g4049640515%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4049640515%_)))
               (_%g4049440693%_
                (lambda (_%g4049640523%_)
                  (if (gx#stx-pair? _%g4049640523%_)
                      (let ((_%e4049940526%_ (gx#syntax-e _%g4049640523%_)))
                        (let ((_%hd4050040530%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4049940526%_)))
                              (_%tl4050140533%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4049940526%_))))
                          (if (gx#stx-pair/null? _%tl4050140533%_)
                              (if (let ((__tmp45116
                                         (gx#stx-length _%tl4050140533%_)))
                                    (declare (not safe))
                                    (##fx>= __tmp45116 '1))
                                  (let ((_g45117_
                                         (gx#syntax-split-splice
                                          _%tl4050140533%_
                                          '1)))
                                    (begin
                                      (let ((_g45118_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g45117_)
                                                   (##values-length _g45117_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g45118_ 2)))
                                            (error "Context expects 2 values"
                                                   _g45118_)))
                                      (let ((_%target4050240536%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g45117_ 0)))
                                            (_%tl4050440539%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g45117_ 1))))
                                        (if (gx#stx-pair? _%tl4050440539%_)
                                            (let ((_%e4051140542%_
                                                   (gx#syntax-e
                                                    _%tl4050440539%_)))
                                              (let ((_%hd4051240546%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4051140542%_)))
                                                    (_%tl4051340549%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4051140542%_))))
                                                (if (gx#stx-null?
                                                     _%tl4051340549%_)
                                                    (letrec ((_%loop4050540552%_
                                                              (lambda (_%hd4050340556%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tgt4050940559%_)
                        (if (gx#stx-pair? _%hd4050340556%_)
                            (let ((_%e4050640561%_
                                   (gx#syntax-e _%hd4050340556%_)))
                              (let ((_%lp-hd4050740565%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4050640561%_)))
                                    (_%lp-tl4050840568%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4050640561%_))))
                                (_%loop4050540552%_
                                 _%lp-tl4050840568%_
                                 (cons _%lp-hd4050740565%_
                                       _%tgt4050940559%_))))
                            (let ((_%tgt4051040571%_
                                   (reverse _%tgt4050940559%_)))
                              ((lambda (_%g4049740574%_ _%g4049840576%_)
                                 (let* ((_%g4059440611%_
                                         (lambda (_%g4059540607%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g4059540607%_)))
                                        (_%g4059340681%_
                                         (lambda (_%g4059540615%_)
                                           (if (gx#stx-pair/null?
                                                _%g4059540615%_)
                                               (let ((_g45119_
                                                      (gx#syntax-split-splice
                                                       _%g4059540615%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g45120_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g45119_)
                        (##values-length _g45119_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g45120_ 2)))
                 (error "Context expects 2 values" _g45120_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target4059740618%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g45119_
                                                             0)))
                                                         (_%tl4059940621%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g45119_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl4059940621%_)
                                                         (letrec ((_%loop4060040624%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd4059840628%_ _%$e4060440631%_)
                             (if (gx#stx-pair? _%hd4059840628%_)
                                 (let ((_%e4060140633%_
                                        (gx#syntax-e _%hd4059840628%_)))
                                   (let ((_%lp-hd4060240637%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4060140633%_)))
                                         (_%lp-tl4060340640%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4060140633%_))))
                                     (_%loop4060040624%_
                                      _%lp-tl4060340640%_
                                      (cons _%lp-hd4060240637%_
                                            _%$e4060440631%_))))
                                 (let ((_%$e4060540643%_
                                        (reverse _%$e4060440631%_)))
                                   ((lambda (_%g4059640646%_)
                                      (cons (gx#datum->syntax '#f 'let-values)
                                            (cons (cons (cons (foldr (lambda (_%g4066140667%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%g4066240670%_)
                               (cons _%g4066140667%_ _%g4066240670%_))
                             '()
                             _%g4059640646%_)
                      (cons _%g4049740574%_ '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    (gx#syntax-check-splice-targets
                                                     _%g4059640646%_
                                                     _%g4049840576%_)
                                                    (foldr (lambda (_%g4066340673%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g4066440676%_
                            _%g4066540678%_)
                     (cons (cons (gx#datum->syntax '#f 'set!)
                                 (cons _%g4066440676%_
                                       (cons _%g4066340673%_ '())))
                           _%g4066540678%_))
                   '()
                   _%g4059640646%_
                   _%g4049840576%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%$e4060540643%_))))))
                   (_%loop4060040624%_ _%target4059740618%_ '()))
                 (_%g4059440611%_ _%g4059540615%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g4059440611%_
                                                _%g4059540615%_)))))
                                   (_%g4059340681%_
                                    (gx#gentemps
                                     (foldr (lambda (_%g4068440687%_
                                                     _%g4068540690%_)
                                              (cons _%g4068440687%_
                                                    _%g4068540690%_))
                                            '()
                                            _%g4049840576%_)))))
                               _%hd4051240546%_
                               _%tgt4051040571%_))))))
              (_%loop4050540552%_ _%target4050240536%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4049540519%_
                                                     _%g4049640523%_))))
                                            (_%g4049540519%_
                                             _%g4049640523%_)))))
                                  (_%g4049540519%_ _%g4049640523%_))
                              (_%g4049540519%_ _%g4049640523%_))))
                      (_%g4049540519%_ _%g4049640523%_)))))
          (_%g4049440693%_ _%stx40492%_))))
    (define |gerbil/core/more-sugar[:0:]#parameterize|
      (lambda (_%$stx40699%_)
        (let* ((_%__stx4474544746%_ _%$stx40699%_)
               (_%g4070540793%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx4474544746%_))))
          (let ((_%__kont4474844749%_
                 (lambda (_%g4070741133%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g4114941152%_ _%g4115041155%_)
                                        (cons _%g4114941152%_ _%g4115041155%_))
                                      '()
                                      _%g4070741133%_)))))
                (_%__kont4475244753%_
                 (lambda (_%g4072341043%_ _%g4072441045%_ _%g4072541046%_)
                   (cons (gx#datum->syntax '#f 'call-with-parameters)
                         (cons (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '()
                                           (foldr (lambda (_%g4106941072%_
                                                           _%g4107041075%_)
                                                    (cons _%g4106941072%_
                                                          _%g4107041075%_))
                                                  '()
                                                  _%g4072341043%_)))
                               (cons _%g4072541046%_
                                     (cons _%g4072441045%_ '()))))))
                (_%__kont4475644757%_
                 (lambda (_%g4075040906%_
                          _%g4075140908%_
                          _%g4075240909%_
                          _%g4075340910%_
                          _%g4075440911%_)
                   (cons (gx#datum->syntax '#f 'call-with-parameters)
                         (cons (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '()
                                           (cons (cons _%g4075440911%_
                                                       (cons (foldr (lambda (_%g4094140946%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g4094240949%_)
                              (cons _%g4094140946%_ _%g4094240949%_))
                            '()
                            _%g4075140908%_)
                     (foldr (lambda (_%g4094340952%_ _%g4094440955%_)
                              (cons _%g4094340952%_ _%g4094440955%_))
                            '()
                            _%g4075040906%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%g4075340910%_
                                     (cons _%g4075240909%_ '())))))))
            (let* ((_%__match4486644867%_
                    (lambda (_%e4075540800%_
                             _%hd4075640804%_
                             _%tl4075740807%_
                             _%e4075840810%_
                             _%hd4075940814%_
                             _%tl4076040817%_
                             _%e4076140820%_
                             _%hd4076240824%_
                             _%tl4076340827%_
                             _%e4076440830%_
                             _%hd4076540834%_
                             _%tl4076640837%_
                             _%e4076740840%_
                             _%hd4076840844%_
                             _%tl4076940847%_
                             _%__splice4475844759%_
                             _%target4077040850%_
                             _%tl4077240853%_)
                      (letrec ((_%loop4077340856%_
                                (lambda (_%hd4077140860%_ _%rest4077740863%_)
                                  (if (gx#stx-pair? _%hd4077140860%_)
                                      (let ((_%e4077440865%_
                                             (gx#syntax-e _%hd4077140860%_)))
                                        (let ((_%lp-tl4077640872%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4077440865%_)))
                                              (_%lp-hd4077540869%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4077440865%_))))
                                          (_%loop4077340856%_
                                           _%lp-tl4077640872%_
                                           (cons _%lp-hd4077540869%_
                                                 _%rest4077740863%_))))
                                      (let ((_%rest4077840875%_
                                             (reverse _%rest4077740863%_)))
                                        (if (gx#stx-pair/null?
                                             _%tl4076040817%_)
                                            (let ((_%__splice4476044761%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4076040817%_
                                                    '0)))
                                              (let ((_%tl4078140881%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4476044761%_
                                                        '1)))
                                                    (_%target4077940878%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4476044761%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4078140881%_)
                                                    (letrec ((_%loop4078240884%_
                                                              (lambda (_%hd4078040888%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body4078640891%_)
                        (if (gx#stx-pair? _%hd4078040888%_)
                            (let ((_%e4078340893%_
                                   (gx#syntax-e _%hd4078040888%_)))
                              (let ((_%lp-tl4078540900%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4078340893%_)))
                                    (_%lp-hd4078440897%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4078340893%_))))
                                (_%loop4078240884%_
                                 _%lp-tl4078540900%_
                                 (cons _%lp-hd4078440897%_
                                       _%body4078640891%_))))
                            (let ((_%body4078740903%_
                                   (reverse _%body4078640891%_)))
                              (_%__kont4475644757%_
                               _%body4078740903%_
                               _%rest4077840875%_
                               _%hd4076840844%_
                               _%hd4076540834%_
                               _%hd4075640804%_))))))
              (_%loop4078240884%_ _%target4077940878%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4070540793%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4070540793%_))))))))
                        (_%loop4077340856%_ _%target4077040850%_ '()))))
                   (_%__match4482644827%_
                    (lambda (_%e4072640965%_
                             _%hd4072740969%_
                             _%tl4072840972%_
                             _%e4072940975%_
                             _%hd4073040979%_
                             _%tl4073140982%_
                             _%e4073240985%_
                             _%hd4073340989%_
                             _%tl4073440992%_
                             _%e4073540995%_
                             _%hd4073640999%_
                             _%tl4073741002%_
                             _%e4073841005%_
                             _%hd4073941009%_
                             _%tl4074041012%_
                             _%__splice4475444755%_
                             _%target4074141015%_
                             _%tl4074341018%_)
                      (letrec ((_%loop4074441021%_
                                (lambda (_%hd4074241025%_ _%body4074841028%_)
                                  (if (gx#stx-pair? _%hd4074241025%_)
                                      (let ((_%e4074541030%_
                                             (gx#syntax-e _%hd4074241025%_)))
                                        (let ((_%lp-tl4074741037%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4074541030%_)))
                                              (_%lp-hd4074641034%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4074541030%_))))
                                          (_%loop4074441021%_
                                           _%lp-tl4074741037%_
                                           (cons _%lp-hd4074641034%_
                                                 _%body4074841028%_))))
                                      (let ((_%body4074941040%_
                                             (reverse _%body4074841028%_)))
                                        (_%__kont4475244753%_
                                         _%body4074941040%_
                                         _%hd4073941009%_
                                         _%hd4073640999%_))))))
                        (_%loop4074441021%_ _%target4074141015%_ '()))))
                   (_%__match4478444785%_
                    (lambda (_%e4070841085%_
                             _%hd4070941089%_
                             _%tl4071041092%_
                             _%e4071141095%_
                             _%hd4071241099%_
                             _%tl4071341102%_
                             _%__splice4475044751%_
                             _%target4071441105%_
                             _%tl4071641108%_)
                      (letrec ((_%loop4071741111%_
                                (lambda (_%hd4071541115%_ _%body4072141118%_)
                                  (if (gx#stx-pair? _%hd4071541115%_)
                                      (let ((_%e4071841120%_
                                             (gx#syntax-e _%hd4071541115%_)))
                                        (let ((_%lp-tl4072041127%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4071841120%_)))
                                              (_%lp-hd4071941124%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4071841120%_))))
                                          (_%loop4071741111%_
                                           _%lp-tl4072041127%_
                                           (cons _%lp-hd4071941124%_
                                                 _%body4072141118%_))))
                                      (let ((_%body4072241130%_
                                             (reverse _%body4072141118%_)))
                                        (_%__kont4474844749%_
                                         _%body4072241130%_))))))
                        (_%loop4071741111%_ _%target4071441105%_ '())))))
              (if (gx#stx-pair? _%__stx4474544746%_)
                  (let ((_%e4070841085%_ (gx#syntax-e _%__stx4474544746%_)))
                    (let ((_%tl4071041092%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4070841085%_)))
                          (_%hd4070941089%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4070841085%_))))
                      (if (gx#stx-pair? _%tl4071041092%_)
                          (let ((_%e4071141095%_
                                 (gx#syntax-e _%tl4071041092%_)))
                            (let ((_%tl4071341102%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4071141095%_)))
                                  (_%hd4071241099%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4071141095%_))))
                              (if (gx#stx-null? _%hd4071241099%_)
                                  (if (gx#stx-pair/null? _%tl4071341102%_)
                                      (let ((_%__splice4475044751%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4071341102%_
                                              '0)))
                                        (let ((_%tl4071641108%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4475044751%_
                                                  '1)))
                                              (_%target4071441105%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4475044751%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4071641108%_)
                                              (_%__match4478444785%_
                                               _%e4070841085%_
                                               _%hd4070941089%_
                                               _%tl4071041092%_
                                               _%e4071141095%_
                                               _%hd4071241099%_
                                               _%tl4071341102%_
                                               _%__splice4475044751%_
                                               _%target4071441105%_
                                               _%tl4071641108%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4070540793%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4070540793%_)))
                                  (if (gx#stx-pair? _%hd4071241099%_)
                                      (let ((_%e4073240985%_
                                             (gx#syntax-e _%hd4071241099%_)))
                                        (let ((_%tl4073440992%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4073240985%_)))
                                              (_%hd4073340989%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4073240985%_))))
                                          (if (gx#stx-pair? _%hd4073340989%_)
                                              (let ((_%e4073540995%_
                                                     (gx#syntax-e
                                                      _%hd4073340989%_)))
                                                (let ((_%tl4073741002%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4073540995%_)))
                                                      (_%hd4073640999%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4073540995%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl4073741002%_)
                                                      (let ((_%e4073841005%_
                                                             (gx#syntax-e
                                                              _%tl4073741002%_)))
                                                        (let ((_%tl4074041012%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4073841005%_)))
                      (_%hd4073941009%_
                       (let () (declare (not safe)) (##car _%e4073841005%_))))
                  (if (gx#stx-null? _%tl4074041012%_)
                      (if (gx#stx-null? _%tl4073440992%_)
                          (if (gx#stx-pair/null? _%tl4071341102%_)
                              (let ((_%__splice4475444755%_
                                     (gx#syntax-split-splice->vector
                                      _%tl4071341102%_
                                      '0)))
                                (let ((_%tl4074341018%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4475444755%_
                                          '1)))
                                      (_%target4074141015%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4475444755%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4074341018%_)
                                      (_%__match4482644827%_
                                       _%e4070841085%_
                                       _%hd4070941089%_
                                       _%tl4071041092%_
                                       _%e4071141095%_
                                       _%hd4071241099%_
                                       _%tl4071341102%_
                                       _%e4073240985%_
                                       _%hd4073340989%_
                                       _%tl4073440992%_
                                       _%e4073540995%_
                                       _%hd4073640999%_
                                       _%tl4073741002%_
                                       _%e4073841005%_
                                       _%hd4073941009%_
                                       _%tl4074041012%_
                                       _%__splice4475444755%_
                                       _%target4074141015%_
                                       _%tl4074341018%_)
                                      (if (gx#stx-pair/null? _%tl4073440992%_)
                                          (let ((_%__splice4475844759%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl4073440992%_
                                                  '0)))
                                            (let ((_%tl4077240853%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4475844759%_
                                                      '1)))
                                                  (_%target4077040850%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4475844759%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4077240853%_)
                                                  (_%__match4486644867%_
                                                   _%e4070841085%_
                                                   _%hd4070941089%_
                                                   _%tl4071041092%_
                                                   _%e4071141095%_
                                                   _%hd4071241099%_
                                                   _%tl4071341102%_
                                                   _%e4073240985%_
                                                   _%hd4073340989%_
                                                   _%tl4073440992%_
                                                   _%e4073540995%_
                                                   _%hd4073640999%_
                                                   _%tl4073741002%_
                                                   _%e4073841005%_
                                                   _%hd4073941009%_
                                                   _%tl4074041012%_
                                                   _%__splice4475844759%_
                                                   _%target4077040850%_
                                                   _%tl4077240853%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4070540793%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4070540793%_))))))
                              (if (gx#stx-pair/null? _%tl4073440992%_)
                                  (let ((_%__splice4475844759%_
                                         (gx#syntax-split-splice->vector
                                          _%tl4073440992%_
                                          '0)))
                                    (let ((_%tl4077240853%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice4475844759%_
                                              '1)))
                                          (_%target4077040850%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice4475844759%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4077240853%_)
                                          (_%__match4486644867%_
                                           _%e4070841085%_
                                           _%hd4070941089%_
                                           _%tl4071041092%_
                                           _%e4071141095%_
                                           _%hd4071241099%_
                                           _%tl4071341102%_
                                           _%e4073240985%_
                                           _%hd4073340989%_
                                           _%tl4073440992%_
                                           _%e4073540995%_
                                           _%hd4073640999%_
                                           _%tl4073741002%_
                                           _%e4073841005%_
                                           _%hd4073941009%_
                                           _%tl4074041012%_
                                           _%__splice4475844759%_
                                           _%target4077040850%_
                                           _%tl4077240853%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4070540793%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4070540793%_))))
                          (if (gx#stx-pair/null? _%tl4073440992%_)
                              (let ((_%__splice4475844759%_
                                     (gx#syntax-split-splice->vector
                                      _%tl4073440992%_
                                      '0)))
                                (let ((_%tl4077240853%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4475844759%_
                                          '1)))
                                      (_%target4077040850%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4475844759%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4077240853%_)
                                      (_%__match4486644867%_
                                       _%e4070841085%_
                                       _%hd4070941089%_
                                       _%tl4071041092%_
                                       _%e4071141095%_
                                       _%hd4071241099%_
                                       _%tl4071341102%_
                                       _%e4073240985%_
                                       _%hd4073340989%_
                                       _%tl4073440992%_
                                       _%e4073540995%_
                                       _%hd4073640999%_
                                       _%tl4073741002%_
                                       _%e4073841005%_
                                       _%hd4073941009%_
                                       _%tl4074041012%_
                                       _%__splice4475844759%_
                                       _%target4077040850%_
                                       _%tl4077240853%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4070540793%_)))))
                              (let () (declare (not safe)) (_%g4070540793%_))))
                      (let () (declare (not safe)) (_%g4070540793%_)))))
              (let () (declare (not safe)) (_%g4070540793%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4070540793%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4070540793%_))))))
                          (let () (declare (not safe)) (_%g4070540793%_)))))
                  (let () (declare (not safe)) (_%g4070540793%_))))))))
    (define |gerbil/core/more-sugar[:0:]#let/cc|
      (lambda (_%$stx41166%_)
        (let* ((_%g4117041194%_
                (lambda (_%g4117141190%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4117141190%_)))
               (_%g4116941277%_
                (lambda (_%g4117141198%_)
                  (if (gx#stx-pair? _%g4117141198%_)
                      (let ((_%e4117441201%_ (gx#syntax-e _%g4117141198%_)))
                        (let ((_%hd4117541205%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4117441201%_)))
                              (_%tl4117641208%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4117441201%_))))
                          (if (gx#stx-pair? _%tl4117641208%_)
                              (let ((_%e4117741211%_
                                     (gx#syntax-e _%tl4117641208%_)))
                                (let ((_%hd4117841215%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4117741211%_)))
                                      (_%tl4117941218%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4117741211%_))))
                                  (if (gx#stx-pair/null? _%tl4117941218%_)
                                      (let ((_g45121_
                                             (gx#syntax-split-splice
                                              _%tl4117941218%_
                                              '0)))
                                        (begin
                                          (let ((_g45122_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45121_)
                                                       (##values-length
                                                        _g45121_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45122_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45122_)))
                                          (let ((_%target4118041221%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45121_ 0)))
                                                (_%tl4118241224%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45121_ 1))))
                                            (if (gx#stx-null? _%tl4118241224%_)
                                                (letrec ((_%loop4118341227%_
                                                          (lambda (_%hd4118141231%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4118741234%_)
                    (if (gx#stx-pair? _%hd4118141231%_)
                        (let ((_%e4118441236%_ (gx#syntax-e _%hd4118141231%_)))
                          (let ((_%lp-hd4118541240%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4118441236%_)))
                                (_%lp-tl4118641243%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4118441236%_))))
                            (_%loop4118341227%_
                             _%lp-tl4118641243%_
                             (cons _%lp-hd4118541240%_ _%body4118741234%_))))
                        (let ((_%body4118841246%_
                               (reverse _%body4118741234%_)))
                          ((lambda (_%g4117241249%_ _%g4117341251%_)
                             (if (gx#identifier? _%g4117341251%_)
                                 (cons (gx#datum->syntax '#f 'call/cc)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons (cons _%g4117341251%_
                                                               '())
                                                         (foldr (lambda (_%g4126841271%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g4126941274%_)
                          (cons _%g4126841271%_ _%g4126941274%_))
                        '()
                        _%g4117241249%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (_%g4117041194%_ _%g4117141198%_)))
                           _%body4118841246%_
                           _%hd4117841215%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4118341227%_
                                                   _%target4118041221%_
                                                   '()))
                                                (_%g4117041194%_
                                                 _%g4117141198%_)))))
                                      (_%g4117041194%_ _%g4117141198%_))))
                              (_%g4117041194%_ _%g4117141198%_))))
                      (_%g4117041194%_ _%g4117141198%_)))))
          (_%g4116941277%_ _%$stx41166%_))))
    (define |gerbil/core/more-sugar[:0:]#unwind-protect|
      (lambda (_%$stx41282%_)
        (let* ((_%g4128641314%_
                (lambda (_%g4128741310%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4128741310%_)))
               (_%g4128541411%_
                (lambda (_%g4128741318%_)
                  (if (gx#stx-pair? _%g4128741318%_)
                      (let ((_%e4129141321%_ (gx#syntax-e _%g4128741318%_)))
                        (let ((_%hd4129241325%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4129141321%_)))
                              (_%tl4129341328%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4129141321%_))))
                          (if (gx#stx-pair? _%tl4129341328%_)
                              (let ((_%e4129441331%_
                                     (gx#syntax-e _%tl4129341328%_)))
                                (let ((_%hd4129541335%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4129441331%_)))
                                      (_%tl4129641338%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4129441331%_))))
                                  (if (gx#stx-pair? _%tl4129641338%_)
                                      (let ((_%e4129741341%_
                                             (gx#syntax-e _%tl4129641338%_)))
                                        (let ((_%hd4129841345%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4129741341%_)))
                                              (_%tl4129941348%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4129741341%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4129941348%_)
                                              (let ((_g45123_
                                                     (gx#syntax-split-splice
                                                      _%tl4129941348%_
                                                      '0)))
                                                (begin
                                                  (let ((_g45124_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g45123_)
                                                               (##values-length
                                                                _g45123_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g45124_ 2)))
                (error "Context expects 2 values" _g45124_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target4130041351%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45123_
                                                            0)))
                                                        (_%tl4130241354%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45123_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl4130241354%_)
                                                        (letrec ((_%loop4130341357%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd4130141361%_ _%rest4130741364%_)
                            (if (gx#stx-pair? _%hd4130141361%_)
                                (let ((_%e4130441366%_
                                       (gx#syntax-e _%hd4130141361%_)))
                                  (let ((_%lp-hd4130541370%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4130441366%_)))
                                        (_%lp-tl4130641373%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4130441366%_))))
                                    (_%loop4130341357%_
                                     _%lp-tl4130641373%_
                                     (cons _%lp-hd4130541370%_
                                           _%rest4130741364%_))))
                                (let ((_%rest4130841376%_
                                       (reverse _%rest4130741364%_)))
                                  ((lambda (_%g4128841379%_
                                            _%g4128941381%_
                                            _%g4129041382%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'with-unwind-protect)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons '()
                                                             (cons _%g4129041382%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%g4128941381%_
                                 (foldr (lambda (_%g4140241405%_
                                                 _%g4140341408%_)
                                          (cons _%g4140241405%_
                                                _%g4140341408%_))
                                        '()
                                        _%g4128841379%_))))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%rest4130841376%_
                                   _%hd4129841345%_
                                   _%hd4129541335%_))))))
                  (_%loop4130341357%_ _%target4130041351%_ '()))
                (_%g4128641314%_ _%g4128741318%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4128641314%_
                                               _%g4128741318%_))))
                                      (_%g4128641314%_ _%g4128741318%_))))
                              (_%g4128641314%_ _%g4128741318%_))))
                      (_%g4128641314%_ _%g4128741318%_)))))
          (_%g4128541411%_ _%$stx41282%_))))
    (define |gerbil/core/more-sugar[:0:]#do|
      (lambda (_%$stx41416%_)
        (let* ((_%g4142041491%_
                (lambda (_%g4142141487%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4142141487%_)))
               (_%g4141941768%_
                (lambda (_%g4142141495%_)
                  (if (gx#stx-pair? _%g4142141495%_)
                      (let ((_%e4142841498%_ (gx#syntax-e _%g4142141495%_)))
                        (let ((_%hd4142941502%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4142841498%_)))
                              (_%tl4143041505%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4142841498%_))))
                          (if (gx#stx-pair? _%tl4143041505%_)
                              (let ((_%e4143141508%_
                                     (gx#syntax-e _%tl4143041505%_)))
                                (let ((_%hd4143241512%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4143141508%_)))
                                      (_%tl4143341515%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4143141508%_))))
                                  (if (gx#stx-pair/null? _%hd4143241512%_)
                                      (let ((_g45125_
                                             (gx#syntax-split-splice
                                              _%hd4143241512%_
                                              '0)))
                                        (begin
                                          (let ((_g45126_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45125_)
                                                       (##values-length
                                                        _g45125_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45126_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45126_)))
                                          (let ((_%target4143441518%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45125_ 0)))
                                                (_%tl4143641521%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45125_ 1))))
                                            (if (gx#stx-null? _%tl4143641521%_)
                                                (letrec ((_%loop4143741524%_
                                                          (lambda (_%hd4143541528%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%step4144141531%_
                           _%init4144241532%_
                           _%var4144341533%_)
                    (if (gx#stx-pair? _%hd4143541528%_)
                        (let ((_%e4143841535%_ (gx#syntax-e _%hd4143541528%_)))
                          (let ((_%lp-hd4143941539%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4143841535%_)))
                                (_%lp-tl4144041542%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4143841535%_))))
                            (if (gx#stx-pair? _%lp-hd4143941539%_)
                                (let ((_%e4144741545%_
                                       (gx#syntax-e _%lp-hd4143941539%_)))
                                  (let ((_%hd4144841549%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4144741545%_)))
                                        (_%tl4144941552%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4144741545%_))))
                                    (if (gx#stx-pair? _%tl4144941552%_)
                                        (let ((_%e4145041555%_
                                               (gx#syntax-e _%tl4144941552%_)))
                                          (let ((_%hd4145141559%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4145041555%_)))
                                                (_%tl4145241562%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4145041555%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl4145241562%_)
                                                (let ((_g45127_
                                                       (gx#syntax-split-splice
                                                        _%tl4145241562%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g45128_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g45127_)
                         (##values-length _g45127_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g45128_ 2)))
                  (error "Context expects 2 values" _g45128_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target4145341565%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g45127_
                                                              0)))
                                                          (_%tl4145541568%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g45127_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl4145541568%_)
                                                          (letrec ((_%loop4145641571%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd4145441575%_ _%step4146041578%_)
                              (if (gx#stx-pair? _%hd4145441575%_)
                                  (let ((_%e4145741580%_
                                         (gx#syntax-e _%hd4145441575%_)))
                                    (let ((_%lp-hd4145841584%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4145741580%_)))
                                          (_%lp-tl4145941587%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4145741580%_))))
                                      (_%loop4145641571%_
                                       _%lp-tl4145941587%_
                                       (cons _%lp-hd4145841584%_
                                             _%step4146041578%_))))
                                  (let ((_%step4146141590%_
                                         (reverse _%step4146041578%_)))
                                    (_%loop4143741524%_
                                     _%lp-tl4144041542%_
                                     (cons _%step4146141590%_
                                           _%step4144141531%_)
                                     (cons _%hd4145141559%_ _%init4144241532%_)
                                     (cons _%hd4144841549%_
                                           _%var4144341533%_)))))))
                    (_%loop4145641571%_ _%target4145341565%_ '()))
                  (_%g4142041491%_ _%g4142141495%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g4142041491%_
                                                 _%g4142141495%_))))
                                        (_%g4142041491%_ _%g4142141495%_))))
                                (_%g4142041491%_ _%g4142141495%_))))
                        (let ((_%step4144441593%_ (reverse _%step4144141531%_))
                              (_%init4144541595%_ (reverse _%init4144241532%_))
                              (_%var4144641596%_ (reverse _%var4144341533%_)))
                          (if (gx#stx-pair? _%tl4143341515%_)
                              (let ((_%e4146241598%_
                                     (gx#syntax-e _%tl4143341515%_)))
                                (let ((_%hd4146341602%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4146241598%_)))
                                      (_%tl4146441605%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4146241598%_))))
                                  (if (gx#stx-pair? _%hd4146341602%_)
                                      (let ((_%e4146541608%_
                                             (gx#syntax-e _%hd4146341602%_)))
                                        (let ((_%hd4146641612%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4146541608%_)))
                                              (_%tl4146741615%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4146541608%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4146741615%_)
                                              (let ((_g45129_
                                                     (gx#syntax-split-splice
                                                      _%tl4146741615%_
                                                      '0)))
                                                (begin
                                                  (let ((_g45130_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g45129_)
                                                               (##values-length
                                                                _g45129_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g45130_ 2)))
                (error "Context expects 2 values" _g45130_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target4146841618%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45129_
                                                            0)))
                                                        (_%tl4147041621%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45129_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl4147041621%_)
                                                        (letrec ((_%loop4147141624%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd4146941628%_ _%fini4147541631%_)
                            (if (gx#stx-pair? _%hd4146941628%_)
                                (let ((_%e4147241633%_
                                       (gx#syntax-e _%hd4146941628%_)))
                                  (let ((_%lp-hd4147341637%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4147241633%_)))
                                        (_%lp-tl4147441640%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4147241633%_))))
                                    (_%loop4147141624%_
                                     _%lp-tl4147441640%_
                                     (cons _%lp-hd4147341637%_
                                           _%fini4147541631%_))))
                                (let ((_%fini4147641643%_
                                       (reverse _%fini4147541631%_)))
                                  (if (gx#stx-pair/null? _%tl4146441605%_)
                                      (let ((_g45131_
                                             (gx#syntax-split-splice
                                              _%tl4146441605%_
                                              '0)))
                                        (begin
                                          (let ((_g45132_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45131_)
                                                       (##values-length
                                                        _g45131_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45132_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45132_)))
                                          (let ((_%target4147741646%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45131_ 0)))
                                                (_%tl4147941649%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45131_ 1))))
                                            (if (gx#stx-null? _%tl4147941649%_)
                                                (letrec ((_%loop4148041652%_
                                                          (lambda (_%hd4147841656%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4148441659%_)
                    (if (gx#stx-pair? _%hd4147841656%_)
                        (let ((_%e4148141661%_ (gx#syntax-e _%hd4147841656%_)))
                          (let ((_%lp-hd4148241665%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4148141661%_)))
                                (_%lp-tl4148341668%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4148141661%_))))
                            (_%loop4148041652%_
                             _%lp-tl4148341668%_
                             (cons _%lp-hd4148241665%_ _%body4148441659%_))))
                        (let ((_%body4148541671%_
                               (reverse _%body4148441659%_)))
                          ((lambda (_%g4142241674%_
                                    _%g4142341676%_
                                    _%g4142441677%_
                                    _%g4142541678%_
                                    _%g4142641679%_
                                    _%g4142741680%_)
                             (if (gx#stx-andmap
                                  gx#identifier?
                                  (foldr (lambda (_%g4171341716%_
                                                  _%g4171441719%_)
                                           (cons _%g4171341716%_
                                                 _%g4171441719%_))
                                         '()
                                         _%g4142741680%_))
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (gx#datum->syntax '#f '$loop)
                                             (cons (begin
                                                     (gx#syntax-check-splice-targets
                                                      _%g4142641679%_
                                                      _%g4142741680%_)
                                                     (foldr (lambda (_%g4172141734%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g4172241737%_
                             _%g4172341739%_)
                      (cons (cons _%g4172241737%_ (cons _%g4172141734%_ '()))
                            _%g4172341739%_))
                    '()
                    _%g4142641679%_
                    _%g4142741680%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'if)
                                                               (cons _%g4142441677%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'begin)
                                         (cons '#!void
                                               (foldr (lambda (_%g4172441742%_
                                                               _%g4172541745%_)
                                                        (cons _%g4172441742%_
                                                              _%g4172541745%_))
                                                      '()
                                                      _%g4142341676%_)))
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g4172641748%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g4172741751%_)
                      (cons _%g4172641748%_ _%g4172741751%_))
                    (cons (cons (gx#datum->syntax '#f '$loop)
                                (begin
                                  (gx#syntax-check-splice-targets
                                   _%g4142541678%_
                                   _%g4142741680%_)
                                  (foldr (lambda (_%g4172841754%_
                                                  _%g4172941757%_
                                                  _%g4173041759%_)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (cons _%g4172941757%_
                                                             (foldr (lambda (_%g4173141762%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g4173241765%_)
                              (cons _%g4173141762%_ _%g4173241765%_))
                            '()
                            _%g4172841754%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g4173041759%_))
                                         '()
                                         _%g4142541678%_
                                         _%g4142741680%_)))
                          '())
                    _%g4142241674%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (_%g4142041491%_ _%g4142141495%_)))
                           _%body4148541671%_
                           _%fini4147641643%_
                           _%hd4146641612%_
                           _%step4144441593%_
                           _%init4144541595%_
                           _%var4144641596%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4148041652%_
                                                   _%target4147741646%_
                                                   '()))
                                                (_%g4142041491%_
                                                 _%g4142141495%_)))))
                                      (_%g4142041491%_ _%g4142141495%_)))))))
                  (_%loop4147141624%_ _%target4146841618%_ '()))
                (_%g4142041491%_ _%g4142141495%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4142041491%_
                                               _%g4142141495%_))))
                                      (_%g4142041491%_ _%g4142141495%_))))
                              (_%g4142041491%_ _%g4142141495%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4143741524%_
                                                   _%target4143441518%_
                                                   '()
                                                   '()
                                                   '()))
                                                (_%g4142041491%_
                                                 _%g4142141495%_)))))
                                      (_%g4142041491%_ _%g4142141495%_))))
                              (_%g4142041491%_ _%g4142141495%_))))
                      (_%g4142041491%_ _%g4142141495%_)))))
          (_%g4141941768%_ _%$stx41416%_))))
    (define |gerbil/core/more-sugar[:0:]#do-while|
      (lambda (_%$stx41776%_)
        (let* ((_%g4178041851%_
                (lambda (_%g4178141847%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4178141847%_)))
               (_%g4177942128%_
                (lambda (_%g4178141855%_)
                  (if (gx#stx-pair? _%g4178141855%_)
                      (let ((_%e4178841858%_ (gx#syntax-e _%g4178141855%_)))
                        (let ((_%hd4178941862%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4178841858%_)))
                              (_%tl4179041865%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4178841858%_))))
                          (if (gx#stx-pair? _%tl4179041865%_)
                              (let ((_%e4179141868%_
                                     (gx#syntax-e _%tl4179041865%_)))
                                (let ((_%hd4179241872%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4179141868%_)))
                                      (_%tl4179341875%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4179141868%_))))
                                  (if (gx#stx-pair/null? _%hd4179241872%_)
                                      (let ((_g45133_
                                             (gx#syntax-split-splice
                                              _%hd4179241872%_
                                              '0)))
                                        (begin
                                          (let ((_g45134_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45133_)
                                                       (##values-length
                                                        _g45133_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45134_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45134_)))
                                          (let ((_%target4179441878%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45133_ 0)))
                                                (_%tl4179641881%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45133_ 1))))
                                            (if (gx#stx-null? _%tl4179641881%_)
                                                (letrec ((_%loop4179741884%_
                                                          (lambda (_%hd4179541888%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%step4180141891%_
                           _%init4180241892%_
                           _%var4180341893%_)
                    (if (gx#stx-pair? _%hd4179541888%_)
                        (let ((_%e4179841895%_ (gx#syntax-e _%hd4179541888%_)))
                          (let ((_%lp-hd4179941899%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4179841895%_)))
                                (_%lp-tl4180041902%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4179841895%_))))
                            (if (gx#stx-pair? _%lp-hd4179941899%_)
                                (let ((_%e4180741905%_
                                       (gx#syntax-e _%lp-hd4179941899%_)))
                                  (let ((_%hd4180841909%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4180741905%_)))
                                        (_%tl4180941912%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4180741905%_))))
                                    (if (gx#stx-pair? _%tl4180941912%_)
                                        (let ((_%e4181041915%_
                                               (gx#syntax-e _%tl4180941912%_)))
                                          (let ((_%hd4181141919%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4181041915%_)))
                                                (_%tl4181241922%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4181041915%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl4181241922%_)
                                                (let ((_g45135_
                                                       (gx#syntax-split-splice
                                                        _%tl4181241922%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g45136_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g45135_)
                         (##values-length _g45135_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g45136_ 2)))
                  (error "Context expects 2 values" _g45136_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target4181341925%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g45135_
                                                              0)))
                                                          (_%tl4181541928%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g45135_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl4181541928%_)
                                                          (letrec ((_%loop4181641931%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd4181441935%_ _%step4182041938%_)
                              (if (gx#stx-pair? _%hd4181441935%_)
                                  (let ((_%e4181741940%_
                                         (gx#syntax-e _%hd4181441935%_)))
                                    (let ((_%lp-hd4181841944%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4181741940%_)))
                                          (_%lp-tl4181941947%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4181741940%_))))
                                      (_%loop4181641931%_
                                       _%lp-tl4181941947%_
                                       (cons _%lp-hd4181841944%_
                                             _%step4182041938%_))))
                                  (let ((_%step4182141950%_
                                         (reverse _%step4182041938%_)))
                                    (_%loop4179741884%_
                                     _%lp-tl4180041902%_
                                     (cons _%step4182141950%_
                                           _%step4180141891%_)
                                     (cons _%hd4181141919%_ _%init4180241892%_)
                                     (cons _%hd4180841909%_
                                           _%var4180341893%_)))))))
                    (_%loop4181641931%_ _%target4181341925%_ '()))
                  (_%g4178041851%_ _%g4178141855%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g4178041851%_
                                                 _%g4178141855%_))))
                                        (_%g4178041851%_ _%g4178141855%_))))
                                (_%g4178041851%_ _%g4178141855%_))))
                        (let ((_%step4180441953%_ (reverse _%step4180141891%_))
                              (_%init4180541955%_ (reverse _%init4180241892%_))
                              (_%var4180641956%_ (reverse _%var4180341893%_)))
                          (if (gx#stx-pair? _%tl4179341875%_)
                              (let ((_%e4182241958%_
                                     (gx#syntax-e _%tl4179341875%_)))
                                (let ((_%hd4182341962%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4182241958%_)))
                                      (_%tl4182441965%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4182241958%_))))
                                  (if (gx#stx-pair? _%hd4182341962%_)
                                      (let ((_%e4182541968%_
                                             (gx#syntax-e _%hd4182341962%_)))
                                        (let ((_%hd4182641972%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4182541968%_)))
                                              (_%tl4182741975%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4182541968%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4182741975%_)
                                              (let ((_g45137_
                                                     (gx#syntax-split-splice
                                                      _%tl4182741975%_
                                                      '0)))
                                                (begin
                                                  (let ((_g45138_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g45137_)
                                                               (##values-length
                                                                _g45137_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g45138_ 2)))
                (error "Context expects 2 values" _g45138_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target4182841978%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45137_
                                                            0)))
                                                        (_%tl4183041981%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45137_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl4183041981%_)
                                                        (letrec ((_%loop4183141984%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd4182941988%_ _%fini4183541991%_)
                            (if (gx#stx-pair? _%hd4182941988%_)
                                (let ((_%e4183241993%_
                                       (gx#syntax-e _%hd4182941988%_)))
                                  (let ((_%lp-hd4183341997%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4183241993%_)))
                                        (_%lp-tl4183442000%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4183241993%_))))
                                    (_%loop4183141984%_
                                     _%lp-tl4183442000%_
                                     (cons _%lp-hd4183341997%_
                                           _%fini4183541991%_))))
                                (let ((_%fini4183642003%_
                                       (reverse _%fini4183541991%_)))
                                  (if (gx#stx-pair/null? _%tl4182441965%_)
                                      (let ((_g45139_
                                             (gx#syntax-split-splice
                                              _%tl4182441965%_
                                              '0)))
                                        (begin
                                          (let ((_g45140_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45139_)
                                                       (##values-length
                                                        _g45139_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45140_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45140_)))
                                          (let ((_%target4183742006%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45139_ 0)))
                                                (_%tl4183942009%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45139_ 1))))
                                            (if (gx#stx-null? _%tl4183942009%_)
                                                (letrec ((_%loop4184042012%_
                                                          (lambda (_%hd4183842016%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4184442019%_)
                    (if (gx#stx-pair? _%hd4183842016%_)
                        (let ((_%e4184142021%_ (gx#syntax-e _%hd4183842016%_)))
                          (let ((_%lp-hd4184242025%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4184142021%_)))
                                (_%lp-tl4184342028%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4184142021%_))))
                            (_%loop4184042012%_
                             _%lp-tl4184342028%_
                             (cons _%lp-hd4184242025%_ _%body4184442019%_))))
                        (let ((_%body4184542031%_
                               (reverse _%body4184442019%_)))
                          ((lambda (_%g4178242034%_
                                    _%g4178342036%_
                                    _%g4178442037%_
                                    _%g4178542038%_
                                    _%g4178642039%_
                                    _%g4178742040%_)
                             (if (gx#stx-andmap
                                  gx#identifier?
                                  (foldr (lambda (_%g4207342076%_
                                                  _%g4207442079%_)
                                           (cons _%g4207342076%_
                                                 _%g4207442079%_))
                                         '()
                                         _%g4178742040%_))
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (gx#datum->syntax '#f '$loop)
                                             (cons (begin
                                                     (gx#syntax-check-splice-targets
                                                      _%g4178642039%_
                                                      _%g4178742040%_)
                                                     (foldr (lambda (_%g4208142094%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g4208242097%_
                             _%g4208342099%_)
                      (cons (cons _%g4208242097%_ (cons _%g4208142094%_ '()))
                            _%g4208342099%_))
                    '()
                    _%g4178642039%_
                    _%g4178742040%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (foldr (lambda (_%g4208442102%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g4208542105%_)
                    (cons _%g4208442102%_ _%g4208542105%_))
                  (cons (cons (gx#datum->syntax '#f 'if)
                              (cons _%g4178442037%_
                                    (cons (cons (gx#datum->syntax '#f '$loop)
                                                (begin
                                                  (gx#syntax-check-splice-targets
                                                   _%g4178542038%_
                                                   _%g4178742040%_)
                                                  (foldr (lambda (_%g4208642108%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g4208742111%_
                          _%g4208842113%_)
                   (cons (cons (gx#datum->syntax '#f 'begin)
                               (cons _%g4208742111%_
                                     (foldr (lambda (_%g4208942116%_
                                                     _%g4209042119%_)
                                              (cons _%g4208942116%_
                                                    _%g4209042119%_))
                                            '()
                                            _%g4208642108%_)))
                         _%g4208842113%_))
                 '()
                 _%g4178542038%_
                 _%g4178742040%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'begin)
                                                      (cons '#!void
                                                            (foldr (lambda (_%g4209142122%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g4209242125%_)
                             (cons _%g4209142122%_ _%g4209242125%_))
                           '()
                           _%g4178342036%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                        '())
                  _%g4178242034%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (_%g4178041851%_ _%g4178141855%_)))
                           _%body4184542031%_
                           _%fini4183642003%_
                           _%hd4182641972%_
                           _%step4180441953%_
                           _%init4180541955%_
                           _%var4180641956%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4184042012%_
                                                   _%target4183742006%_
                                                   '()))
                                                (_%g4178041851%_
                                                 _%g4178141855%_)))))
                                      (_%g4178041851%_ _%g4178141855%_)))))))
                  (_%loop4183141984%_ _%target4182841978%_ '()))
                (_%g4178041851%_ _%g4178141855%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4178041851%_
                                               _%g4178141855%_))))
                                      (_%g4178041851%_ _%g4178141855%_))))
                              (_%g4178041851%_ _%g4178141855%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4179741884%_
                                                   _%target4179441878%_
                                                   '()
                                                   '()
                                                   '()))
                                                (_%g4178041851%_
                                                 _%g4178141855%_)))))
                                      (_%g4178041851%_ _%g4178141855%_))))
                              (_%g4178041851%_ _%g4178141855%_))))
                      (_%g4178041851%_ _%g4178141855%_)))))
          (_%g4177942128%_ _%$stx41776%_))))
    (define |gerbil/core/more-sugar[:0:]#while|
      (lambda (_%$stx42136%_)
        (let* ((_%g4214042164%_
                (lambda (_%g4214142160%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4214142160%_)))
               (_%g4213942247%_
                (lambda (_%g4214142168%_)
                  (if (gx#stx-pair? _%g4214142168%_)
                      (let ((_%e4214442171%_ (gx#syntax-e _%g4214142168%_)))
                        (let ((_%hd4214542175%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4214442171%_)))
                              (_%tl4214642178%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4214442171%_))))
                          (if (gx#stx-pair? _%tl4214642178%_)
                              (let ((_%e4214742181%_
                                     (gx#syntax-e _%tl4214642178%_)))
                                (let ((_%hd4214842185%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4214742181%_)))
                                      (_%tl4214942188%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4214742181%_))))
                                  (if (gx#stx-pair/null? _%tl4214942188%_)
                                      (let ((_g45141_
                                             (gx#syntax-split-splice
                                              _%tl4214942188%_
                                              '0)))
                                        (begin
                                          (let ((_g45142_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45141_)
                                                       (##values-length
                                                        _g45141_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45142_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45142_)))
                                          (let ((_%target4215042191%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45141_ 0)))
                                                (_%tl4215242194%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45141_ 1))))
                                            (if (gx#stx-null? _%tl4215242194%_)
                                                (letrec ((_%loop4215342197%_
                                                          (lambda (_%hd4215142201%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4215742204%_)
                    (if (gx#stx-pair? _%hd4215142201%_)
                        (let ((_%e4215442206%_ (gx#syntax-e _%hd4215142201%_)))
                          (let ((_%lp-hd4215542210%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4215442206%_)))
                                (_%lp-tl4215642213%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4215442206%_))))
                            (_%loop4215342197%_
                             _%lp-tl4215642213%_
                             (cons _%lp-hd4215542210%_ _%body4215742204%_))))
                        (let ((_%body4215842216%_
                               (reverse _%body4215742204%_)))
                          ((lambda (_%g4214242219%_ _%g4214342221%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (gx#datum->syntax '#f 'lp)
                                         (cons '()
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'when)
                                                           (cons _%g4214342221%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g4223842241%_ _%g4223942244%_)
                                  (cons _%g4223842241%_ _%g4223942244%_))
                                (cons (cons (gx#datum->syntax '#f 'lp) '())
                                      '())
                                _%g4214242219%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                           _%body4215842216%_
                           _%hd4214842185%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4215342197%_
                                                   _%target4215042191%_
                                                   '()))
                                                (_%g4214042164%_
                                                 _%g4214142168%_)))))
                                      (_%g4214042164%_ _%g4214142168%_))))
                              (_%g4214042164%_ _%g4214142168%_))))
                      (_%g4214042164%_ _%g4214142168%_)))))
          (_%g4213942247%_ _%$stx42136%_))))
    (define |gerbil/core/more-sugar[:0:]#until|
      (lambda (_%$stx42252%_)
        (let* ((_%g4225642280%_
                (lambda (_%g4225742276%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4225742276%_)))
               (_%g4225542363%_
                (lambda (_%g4225742284%_)
                  (if (gx#stx-pair? _%g4225742284%_)
                      (let ((_%e4226042287%_ (gx#syntax-e _%g4225742284%_)))
                        (let ((_%hd4226142291%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4226042287%_)))
                              (_%tl4226242294%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4226042287%_))))
                          (if (gx#stx-pair? _%tl4226242294%_)
                              (let ((_%e4226342297%_
                                     (gx#syntax-e _%tl4226242294%_)))
                                (let ((_%hd4226442301%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4226342297%_)))
                                      (_%tl4226542304%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4226342297%_))))
                                  (if (gx#stx-pair/null? _%tl4226542304%_)
                                      (let ((_g45143_
                                             (gx#syntax-split-splice
                                              _%tl4226542304%_
                                              '0)))
                                        (begin
                                          (let ((_g45144_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45143_)
                                                       (##values-length
                                                        _g45143_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45144_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45144_)))
                                          (let ((_%target4226642307%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45143_ 0)))
                                                (_%tl4226842310%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45143_ 1))))
                                            (if (gx#stx-null? _%tl4226842310%_)
                                                (letrec ((_%loop4226942313%_
                                                          (lambda (_%hd4226742317%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4227342320%_)
                    (if (gx#stx-pair? _%hd4226742317%_)
                        (let ((_%e4227042322%_ (gx#syntax-e _%hd4226742317%_)))
                          (let ((_%lp-hd4227142326%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4227042322%_)))
                                (_%lp-tl4227242329%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4227042322%_))))
                            (_%loop4226942313%_
                             _%lp-tl4227242329%_
                             (cons _%lp-hd4227142326%_ _%body4227342320%_))))
                        (let ((_%body4227442332%_
                               (reverse _%body4227342320%_)))
                          ((lambda (_%g4225842335%_ _%g4225942337%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (gx#datum->syntax '#f 'lp)
                                         (cons '()
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'unless)
                                                           (cons _%g4225942337%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g4235442357%_ _%g4235542360%_)
                                  (cons _%g4235442357%_ _%g4235542360%_))
                                (cons (cons (gx#datum->syntax '#f 'lp) '())
                                      '())
                                _%g4225842335%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                           _%body4227442332%_
                           _%hd4226442301%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4226942313%_
                                                   _%target4226642307%_
                                                   '()))
                                                (_%g4225642280%_
                                                 _%g4225742284%_)))))
                                      (_%g4225642280%_ _%g4225742284%_))))
                              (_%g4225642280%_ _%g4225742284%_))))
                      (_%g4225642280%_ _%g4225742284%_)))))
          (_%g4225542363%_ _%$stx42252%_))))
    (define |gerbil/core/more-sugar[:0:]#catch|
      (lambda (_%$stx42368%_)
        (let ((_%g4237142378%_
               (lambda (_%g4237242374%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4237242374%_))))
          (_%g4237142378%_ _%$stx42368%_))))
    (define |gerbil/core/more-sugar[:0:]#finally|
      (lambda (_%$stx42382%_)
        (let ((_%g4238542392%_
               (lambda (_%g4238642388%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4238642388%_))))
          (_%g4238542392%_ _%$stx42382%_))))
    (define |gerbil/core/more-sugar[:0:]#try|
      (lambda (_%stx42396%_)
        (letrec ((_%generate-thunk42399%_
                  (lambda (_%body43718%_)
                    (if (null? _%body43718%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; missing body"
                         _%stx42396%_)
                        (let* ((_%g4372143738%_
                                (lambda (_%g4372243734%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g4372243734%_)))
                               (_%g4372043797%_
                                (lambda (_%g4372243742%_)
                                  (if (gx#stx-pair/null? _%g4372243742%_)
                                      (let ((_g45145_
                                             (gx#syntax-split-splice
                                              _%g4372243742%_
                                              '0)))
                                        (begin
                                          (let ((_g45146_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45145_)
                                                       (##values-length
                                                        _g45145_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45146_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45146_)))
                                          (let ((_%target4372443745%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45145_ 0)))
                                                (_%tl4372643748%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45145_ 1))))
                                            (if (gx#stx-null? _%tl4372643748%_)
                                                (letrec ((_%loop4372743751%_
                                                          (lambda (_%hd4372543755%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%e4373143758%_)
                    (if (gx#stx-pair? _%hd4372543755%_)
                        (let ((_%e4372843760%_ (gx#syntax-e _%hd4372543755%_)))
                          (let ((_%lp-hd4372943764%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4372843760%_)))
                                (_%lp-tl4373043767%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4372843760%_))))
                            (_%loop4372743751%_
                             _%lp-tl4373043767%_
                             (cons _%lp-hd4372943764%_ _%e4373143758%_))))
                        (let ((_%e4373243770%_ (reverse _%e4373143758%_)))
                          ((lambda (_%g4372343773%_)
                             (cons (gx#datum->syntax '#f 'lambda)
                                   (cons '()
                                         (foldr (lambda (_%g4378843791%_
                                                         _%g4378943794%_)
                                                  (cons _%g4378843791%_
                                                        _%g4378943794%_))
                                                '()
                                                _%g4372343773%_))))
                           _%e4373243770%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4372743751%_
                                                   _%target4372443745%_
                                                   '()))
                                                (_%g4372143738%_
                                                 _%g4372243742%_)))))
                                      (_%g4372143738%_ _%g4372243742%_)))))
                          (_%g4372043797%_ (reverse _%body43718%_))))))
                 (_%generate-fini42401%_
                  (lambda (_%thunk43601%_ _%fini43603%_)
                    (let* ((_%g4360543629%_
                            (lambda (_%g4360643625%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4360643625%_)))
                           (_%g4360443714%_
                            (lambda (_%g4360643633%_)
                              (if (gx#stx-pair? _%g4360643633%_)
                                  (let ((_%e4360943636%_
                                         (gx#syntax-e _%g4360643633%_)))
                                    (let ((_%hd4361043640%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4360943636%_)))
                                          (_%tl4361143643%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4360943636%_))))
                                      (if (gx#stx-pair? _%tl4361143643%_)
                                          (let ((_%e4361243646%_
                                                 (gx#syntax-e
                                                  _%tl4361143643%_)))
                                            (let ((_%hd4361343650%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4361243646%_)))
                                                  (_%tl4361443653%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4361243646%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd4361343650%_)
                                                  (let ((_g45147_
                                                         (gx#syntax-split-splice
                                                          _%hd4361343650%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g45148_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g45147_)
                           (##values-length _g45147_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g45148_ 2)))
                    (error "Context expects 2 values" _g45148_)))
              (let ((_%target4361543656%_
                     (let () (declare (not safe)) (##values-ref _g45147_ 0)))
                    (_%tl4361743659%_
                     (let () (declare (not safe)) (##values-ref _g45147_ 1))))
                (if (gx#stx-null? _%tl4361743659%_)
                    (letrec ((_%loop4361843662%_
                              (lambda (_%hd4361643666%_ _%e4362243669%_)
                                (if (gx#stx-pair? _%hd4361643666%_)
                                    (let ((_%e4361943671%_
                                           (gx#syntax-e _%hd4361643666%_)))
                                      (let ((_%lp-hd4362043675%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4361943671%_)))
                                            (_%lp-tl4362143678%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4361943671%_))))
                                        (_%loop4361843662%_
                                         _%lp-tl4362143678%_
                                         (cons _%lp-hd4362043675%_
                                               _%e4362243669%_))))
                                    (let ((_%e4362343681%_
                                           (reverse _%e4362243669%_)))
                                      (if (gx#stx-null? _%tl4361443653%_)
                                          ((lambda (_%g4360743684%_
                                                    _%g4360843686%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'with-unwind-protect)
                                                   (cons _%g4360843686%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'lambda)
                             (cons '()
                                   (foldr (lambda (_%g4370543708%_
                                                   _%g4370643711%_)
                                            (cons _%g4370543708%_
                                                  _%g4370643711%_))
                                          '()
                                          _%g4360743684%_)))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%e4362343681%_
                                           _%hd4361043640%_)
                                          (_%g4360543629%_
                                           _%g4360643633%_)))))))
                      (_%loop4361843662%_ _%target4361543656%_ '()))
                    (_%g4360543629%_ _%g4360643633%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4360543629%_
                                                   _%g4360643633%_))))
                                          (_%g4360543629%_ _%g4360643633%_))))
                                  (_%g4360543629%_ _%g4360643633%_)))))
                      (_%g4360443714%_ (list _%thunk43601%_ _%fini43603%_)))))
                 (_%generate-catch42402%_
                  (lambda (_%handlers43016%_ _%thunk43018%_)
                    (let* ((_%g4302043028%_
                            (lambda (_%g4302143024%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4302143024%_)))
                           (_%g4301943597%_
                            (lambda (_%g4302143032%_)
                              ((lambda (_%g4302243035%_)
                                 (let _%lp43047%_ ((_%rest43050%_
                                                    _%handlers43016%_)
                                                   (_%clauses43052%_ '()))
                                   (let* ((_%rest4305343061%_ _%rest43050%_)
                                          (_%else4305543192%_
                                           (lambda ()
                                             (let* ((_%g4307343097%_
                                                     (lambda (_%g4307443093%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g4307443093%_)))
                                                    (_%g4307243188%_
                                                     (lambda (_%g4307443101%_)
                                                       (if (gx#stx-pair?
                                                            _%g4307443101%_)
                                                           (let ((_%e4307743104%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%g4307443101%_)))
                     (let ((_%hd4307843108%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4307743104%_)))
                           (_%tl4307943111%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4307743104%_))))
                       (if (gx#stx-pair/null? _%hd4307843108%_)
                           (let ((_g45149_
                                  (gx#syntax-split-splice
                                   _%hd4307843108%_
                                   '0)))
                             (begin
                               (let ((_g45150_
                                      (let ()
                                        (declare (not safe))
                                        (if (##values? _g45149_)
                                            (##values-length _g45149_)
                                            1))))
                                 (if (not (let ()
                                            (declare (not safe))
                                            (##fx= _g45150_ 2)))
                                     (error "Context expects 2 values"
                                            _g45150_)))
                               (let ((_%target4308043114%_
                                      (let ()
                                        (declare (not safe))
                                        (##values-ref _g45149_ 0)))
                                     (_%tl4308243117%_
                                      (let ()
                                        (declare (not safe))
                                        (##values-ref _g45149_ 1))))
                                 (if (gx#stx-null? _%tl4308243117%_)
                                     (letrec ((_%loop4308343120%_
                                               (lambda (_%hd4308143124%_
                                                        _%clause4308743127%_)
                                                 (if (gx#stx-pair?
                                                      _%hd4308143124%_)
                                                     (let ((_%e4308443129%_
                                                            (gx#syntax-e
                                                             _%hd4308143124%_)))
                                                       (let ((_%lp-hd4308543133%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e4308443129%_)))
                     (_%lp-tl4308643136%_
                      (let () (declare (not safe)) (##cdr _%e4308443129%_))))
                 (_%loop4308343120%_
                  _%lp-tl4308643136%_
                  (cons _%lp-hd4308543133%_ _%clause4308743127%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%clause4308843139%_
                                                            (reverse _%clause4308743127%_)))
                                                       (if (gx#stx-pair?
                                                            _%tl4307943111%_)
                                                           (let ((_%e4308943142%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl4307943111%_)))
                     (let ((_%hd4309043146%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4308943142%_)))
                           (_%tl4309143149%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4308943142%_))))
                       (if (gx#stx-null? _%tl4309143149%_)
                           ((lambda (_%g4307543152%_ _%g4307643154%_)
                              (cons (gx#datum->syntax '#f 'with-catch)
                                    (cons (cons (gx#datum->syntax '#f 'lambda)
                                                (cons (cons _%g4302243035%_
                                                            '())
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'cond)
                          (foldr (lambda (_%g4317943182%_ _%g4318043185%_)
                                   (cons _%g4317943182%_ _%g4318043185%_))
                                 (cons (cons (gx#datum->syntax '#f 'else)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'raise)
                                                         (cons _%g4302243035%_
                                                               '()))
                                                   '()))
                                       '())
                                 _%g4307643154%_))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons _%g4307543152%_ '()))))
                            _%hd4309043146%_
                            _%clause4308843139%_)
                           (_%g4307343097%_ _%g4307443101%_))))
                   (_%g4307343097%_ _%g4307443101%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%loop4308343120%_
                                        _%target4308043114%_
                                        '()))
                                     (_%g4307343097%_ _%g4307443101%_)))))
                           (_%g4307343097%_ _%g4307443101%_))))
                   (_%g4307343097%_ _%g4307443101%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g4307243188%_
                                                (list _%clauses43052%_
                                                      _%thunk43018%_)))))
                                          (_%K4305743581%_
                                           (lambda (_%rest43196%_ _%hd43198%_)
                                             (let* ((_%__stx4486944870%_
                                                     _%hd43198%_)
                                                    (_%g4320343273%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx4486944870%_))))
                                               (let ((_%__kont4487244873%_
                                                      (lambda (_%g4320543560%_
                                                               _%g4320643562%_)
                                                        (_%lp43047%_
                                                         _%rest43196%_
                                                         (cons (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '#f
                                          '?)
                                         (cons _%g4320643562%_ '()))
                                   (cons _%g4302243035%_ '()))
                             (cons (gx#datum->syntax '#f '=>)
                                   (cons _%g4320543560%_ '())))
                       _%clauses43052%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont4487444875%_
                                                      (lambda (_%g4321643492%_
                                                               _%g4321743494%_
                                                               _%g4321843495%_)
                                                        (_%lp43047%_
                                                         _%rest43196%_
                                                         (cons (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '#f
                                          '?)
                                         (cons _%g4321843495%_ '()))
                                   (cons _%g4302243035%_ '()))
                             (cons (cons (gx#datum->syntax '#f 'let)
                                         (cons (cons (cons _%g4321743494%_
                                                           (cons _%g4302243035%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (foldr (lambda (_%g4351443517%_
                                                               _%g4351543520%_)
                                                        (cons _%g4351443517%_
                                                              _%g4351543520%_))
                                                      '()
                                                      _%g4321643492%_)))
                                   '()))
                       _%clauses43052%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont4487844879%_
                                                      (lambda (_%g4323743400%_
                                                               _%g4323843402%_)
                                                        (_%lp43047%_
                                                         _%rest43196%_
                                                         (cons (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'let)
                                         (cons (cons (cons _%g4323843402%_
                                                           (cons _%g4302243035%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (foldr (lambda (_%g4341843421%_
                                                               _%g4341943424%_)
                                                        (cons _%g4341843421%_
                                                              _%g4341943424%_))
                                                      '()
                                                      _%g4323743400%_)))
                                   '()))
                       _%clauses43052%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont4488244883%_
                                                      (lambda (_%g4325443318%_
                                                               _%g4325543320%_)
                                                        (_%lp43047%_
                                                         _%rest43196%_
                                                         (cons (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'begin)
                                         (foldr (lambda (_%g4333643339%_
                                                         _%g4333743342%_)
                                                  (cons _%g4333643339%_
                                                        _%g4333743342%_))
                                                '()
                                                _%g4325443318%_))
                                   '()))
                       _%clauses43052%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let* ((_%__match4497444975%_
                                                         (lambda (_%e4325643280%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%hd4325743284%_
                          _%tl4325843287%_
                          _%__splice4488444885%_
                          _%target4325943290%_
                          _%tl4326143293%_)
                   (letrec ((_%loop4326243296%_
                             (lambda (_%hd4326043300%_ _%body4326643303%_)
                               (if (gx#stx-pair? _%hd4326043300%_)
                                   (let ((_%e4326343305%_
                                          (gx#syntax-e _%hd4326043300%_)))
                                     (let ((_%lp-tl4326543312%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4326343305%_)))
                                           (_%lp-hd4326443309%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4326343305%_))))
                                       (_%loop4326243296%_
                                        _%lp-tl4326543312%_
                                        (cons _%lp-hd4326443309%_
                                              _%body4326643303%_))))
                                   (let ((_%body4326743315%_
                                          (reverse _%body4326643303%_)))
                                     (let ((_%g4325443318%_ _%body4326743315%_)
                                           (_%g4325543320%_ _%hd4325743284%_))
                                       (if (gx#underscore? _%g4325543320%_)
                                           (_%__kont4488244883%_
                                            _%g4325443318%_
                                            _%g4325543320%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g4320343273%_)))))))))
                     (_%loop4326243296%_ _%target4325943290%_ '()))))
                (_%__match4496044961%_
                 (lambda (_%e4323943352%_
                          _%hd4324043356%_
                          _%tl4324143359%_
                          _%e4324243362%_
                          _%hd4324343366%_
                          _%tl4324443369%_
                          _%__splice4488044881%_
                          _%target4324543372%_
                          _%tl4324743375%_)
                   (letrec ((_%loop4324843378%_
                             (lambda (_%hd4324643382%_ _%body4325243385%_)
                               (if (gx#stx-pair? _%hd4324643382%_)
                                   (let ((_%e4324943387%_
                                          (gx#syntax-e _%hd4324643382%_)))
                                     (let ((_%lp-tl4325143394%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4324943387%_)))
                                           (_%lp-hd4325043391%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4324943387%_))))
                                       (_%loop4324843378%_
                                        _%lp-tl4325143394%_
                                        (cons _%lp-hd4325043391%_
                                              _%body4325243385%_))))
                                   (let ((_%body4325343397%_
                                          (reverse _%body4325243385%_)))
                                     (let ((_%g4323743400%_ _%body4325343397%_)
                                           (_%g4323843402%_ _%hd4324343366%_))
                                       (if (gx#identifier? _%g4323843402%_)
                                           (_%__kont4487844879%_
                                            _%g4323743400%_
                                            _%g4323843402%_)
                                           (_%__match4497444975%_
                                            _%e4323943352%_
                                            _%hd4324043356%_
                                            _%tl4324143359%_
                                            _%__splice4488044881%_
                                            _%target4324543372%_
                                            _%tl4324743375%_))))))))
                     (_%loop4324843378%_ _%target4324543372%_ '()))))
                (_%__match4493844939%_
                 (lambda (_%e4321943434%_
                          _%hd4322043438%_
                          _%tl4322143441%_
                          _%e4322243444%_
                          _%hd4322343448%_
                          _%tl4322443451%_
                          _%e4322543454%_
                          _%hd4322643458%_
                          _%tl4322743461%_
                          _%__splice4487644877%_
                          _%target4322843464%_
                          _%tl4323043467%_)
                   (letrec ((_%loop4323143470%_
                             (lambda (_%hd4322943474%_ _%body4323543477%_)
                               (if (gx#stx-pair? _%hd4322943474%_)
                                   (let ((_%e4323243479%_
                                          (gx#syntax-e _%hd4322943474%_)))
                                     (let ((_%lp-tl4323443486%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4323243479%_)))
                                           (_%lp-hd4323343483%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4323243479%_))))
                                       (_%loop4323143470%_
                                        _%lp-tl4323443486%_
                                        (cons _%lp-hd4323343483%_
                                              _%body4323543477%_))))
                                   (let ((_%body4323643489%_
                                          (reverse _%body4323543477%_)))
                                     (let ((_%g4321643492%_ _%body4323643489%_)
                                           (_%g4321743494%_ _%hd4322643458%_)
                                           (_%g4321843495%_ _%hd4322343448%_))
                                       (if (gx#identifier? _%g4321743494%_)
                                           (_%__kont4487444875%_
                                            _%g4321643492%_
                                            _%g4321743494%_
                                            _%g4321843495%_)
                                           (_%__match4497444975%_
                                            _%e4321943434%_
                                            _%hd4322043438%_
                                            _%tl4322143441%_
                                            _%__splice4487644877%_
                                            _%target4322843464%_
                                            _%tl4323043467%_))))))))
                     (_%loop4323143470%_ _%target4322843464%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair?
                                                        _%__stx4486944870%_)
                                                       (let ((_%e4320743530%_
                                                              (gx#syntax-e
                                                               _%__stx4486944870%_)))
                                                         (let ((_%tl4320943537%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e4320743530%_)))
                       (_%hd4320843534%_
                        (let () (declare (not safe)) (##car _%e4320743530%_))))
                   (if (gx#stx-pair? _%tl4320943537%_)
                       (let ((_%e4321043540%_ (gx#syntax-e _%tl4320943537%_)))
                         (let ((_%tl4321243547%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4321043540%_)))
                               (_%hd4321143544%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4321043540%_))))
                           (if (gx#identifier? _%hd4321143544%_)
                               (if (gx#free-identifier=?
                                    |gerbil/core/more-sugar[1]#_g45151_|
                                    _%hd4321143544%_)
                                   (if (gx#stx-pair? _%tl4321243547%_)
                                       (let ((_%e4321343550%_
                                              (gx#syntax-e _%tl4321243547%_)))
                                         (let ((_%tl4321543557%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4321343550%_)))
                                               (_%hd4321443554%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4321343550%_))))
                                           (if (gx#stx-null? _%tl4321543557%_)
                                               (_%__kont4487244873%_
                                                _%hd4321443554%_
                                                _%hd4320843534%_)
                                               (if (gx#stx-pair?
                                                    _%hd4320843534%_)
                                                   (let ((_%e4322243444%_
                                                          (gx#syntax-e
                                                           _%hd4320843534%_)))
                                                     (let ((_%tl4322443451%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e4322243444%_)))
                                                           (_%hd4322343448%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e4322243444%_))))
                                                       (if (gx#stx-pair?
                                                            _%tl4322443451%_)
                                                           (let ((_%e4322543454%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl4322443451%_)))
                     (let ((_%tl4322743461%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4322543454%_)))
                           (_%hd4322643458%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4322543454%_))))
                       (if (gx#stx-null? _%tl4322743461%_)
                           (if (gx#stx-pair/null? _%tl4320943537%_)
                               (let ((_%__splice4487644877%_
                                      (gx#syntax-split-splice->vector
                                       _%tl4320943537%_
                                       '0)))
                                 (let ((_%tl4323043467%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4487644877%_
                                           '1)))
                                       (_%target4322843464%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4487644877%_
                                           '0))))
                                   (if (gx#stx-null? _%tl4323043467%_)
                                       (_%__match4493844939%_
                                        _%e4320743530%_
                                        _%hd4320843534%_
                                        _%tl4320943537%_
                                        _%e4322243444%_
                                        _%hd4322343448%_
                                        _%tl4322443451%_
                                        _%e4322543454%_
                                        _%hd4322643458%_
                                        _%tl4322743461%_
                                        _%__splice4487644877%_
                                        _%target4322843464%_
                                        _%tl4323043467%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4320343273%_)))))
                               (let () (declare (not safe)) (_%g4320343273%_)))
                           (if (gx#stx-pair/null? _%tl4320943537%_)
                               (let ((_%__splice4488444885%_
                                      (gx#syntax-split-splice->vector
                                       _%tl4320943537%_
                                       '0)))
                                 (let ((_%tl4326143293%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4488444885%_
                                           '1)))
                                       (_%target4325943290%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4488444885%_
                                           '0))))
                                   (if (gx#stx-null? _%tl4326143293%_)
                                       (_%__match4497444975%_
                                        _%e4320743530%_
                                        _%hd4320843534%_
                                        _%tl4320943537%_
                                        _%__splice4488444885%_
                                        _%target4325943290%_
                                        _%tl4326143293%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4320343273%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g4320343273%_))))))
                   (if (gx#stx-null? _%tl4322443451%_)
                       (if (gx#stx-pair/null? _%tl4320943537%_)
                           (let ((_%__splice4488044881%_
                                  (gx#syntax-split-splice->vector
                                   _%tl4320943537%_
                                   '0)))
                             (let ((_%tl4324743375%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice4488044881%_
                                       '1)))
                                   (_%target4324543372%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice4488044881%_
                                       '0))))
                               (if (gx#stx-null? _%tl4324743375%_)
                                   (_%__match4496044961%_
                                    _%e4320743530%_
                                    _%hd4320843534%_
                                    _%tl4320943537%_
                                    _%e4322243444%_
                                    _%hd4322343448%_
                                    _%tl4322443451%_
                                    _%__splice4488044881%_
                                    _%target4324543372%_
                                    _%tl4324743375%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g4320343273%_)))))
                           (let () (declare (not safe)) (_%g4320343273%_)))
                       (if (gx#stx-pair/null? _%tl4320943537%_)
                           (let ((_%__splice4488444885%_
                                  (gx#syntax-split-splice->vector
                                   _%tl4320943537%_
                                   '0)))
                             (let ((_%tl4326143293%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice4488444885%_
                                       '1)))
                                   (_%target4325943290%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice4488444885%_
                                       '0))))
                               (if (gx#stx-null? _%tl4326143293%_)
                                   (_%__match4497444975%_
                                    _%e4320743530%_
                                    _%hd4320843534%_
                                    _%tl4320943537%_
                                    _%__splice4488444885%_
                                    _%target4325943290%_
                                    _%tl4326143293%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g4320343273%_)))))
                           (let () (declare (not safe)) (_%g4320343273%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _%tl4320943537%_)
                                                       (let ((_%__splice4488444885%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4320943537%_
                                                               '0)))
                                                         (let ((_%tl4326143293%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4488444885%_ '1)))
                       (_%target4325943290%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4488444885%_ '0))))
                   (if (gx#stx-null? _%tl4326143293%_)
                       (_%__match4497444975%_
                        _%e4320743530%_
                        _%hd4320843534%_
                        _%tl4320943537%_
                        _%__splice4488444885%_
                        _%target4325943290%_
                        _%tl4326143293%_)
                       (let () (declare (not safe)) (_%g4320343273%_)))))
               (let () (declare (not safe)) (_%g4320343273%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (gx#stx-pair? _%hd4320843534%_)
                                           (let ((_%e4322243444%_
                                                  (gx#syntax-e
                                                   _%hd4320843534%_)))
                                             (let ((_%tl4322443451%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e4322243444%_)))
                                                   (_%hd4322343448%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e4322243444%_))))
                                               (if (gx#stx-pair?
                                                    _%tl4322443451%_)
                                                   (let ((_%e4322543454%_
                                                          (gx#syntax-e
                                                           _%tl4322443451%_)))
                                                     (let ((_%tl4322743461%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e4322543454%_)))
                                                           (_%hd4322643458%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e4322543454%_))))
                                                       (if (gx#stx-null?
                                                            _%tl4322743461%_)
                                                           (if (gx#stx-pair/null?
                                                                _%tl4320943537%_)
                                                               (let ((_%__splice4487644877%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-split-splice->vector
                               _%tl4320943537%_
                               '0)))
                         (let ((_%tl4323043467%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4487644877%_ '1)))
                               (_%target4322843464%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4487644877%_ '0))))
                           (if (gx#stx-null? _%tl4323043467%_)
                               (_%__match4493844939%_
                                _%e4320743530%_
                                _%hd4320843534%_
                                _%tl4320943537%_
                                _%e4322243444%_
                                _%hd4322343448%_
                                _%tl4322443451%_
                                _%e4322543454%_
                                _%hd4322643458%_
                                _%tl4322743461%_
                                _%__splice4487644877%_
                                _%target4322843464%_
                                _%tl4323043467%_)
                               (let ()
                                 (declare (not safe))
                                 (_%g4320343273%_)))))
                       (let () (declare (not safe)) (_%g4320343273%_)))
                   (if (gx#stx-pair/null? _%tl4320943537%_)
                       (let ((_%__splice4488444885%_
                              (gx#syntax-split-splice->vector
                               _%tl4320943537%_
                               '0)))
                         (let ((_%tl4326143293%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4488444885%_ '1)))
                               (_%target4325943290%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4488444885%_ '0))))
                           (if (gx#stx-null? _%tl4326143293%_)
                               (_%__match4497444975%_
                                _%e4320743530%_
                                _%hd4320843534%_
                                _%tl4320943537%_
                                _%__splice4488444885%_
                                _%target4325943290%_
                                _%tl4326143293%_)
                               (let ()
                                 (declare (not safe))
                                 (_%g4320343273%_)))))
                       (let () (declare (not safe)) (_%g4320343273%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-null?
                                                        _%tl4322443451%_)
                                                       (if (gx#stx-pair/null?
                                                            _%tl4320943537%_)
                                                           (let ((_%__splice4488044881%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice->vector
                           _%tl4320943537%_
                           '0)))
                     (let ((_%tl4324743375%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4488044881%_ '1)))
                           (_%target4324543372%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4488044881%_ '0))))
                       (if (gx#stx-null? _%tl4324743375%_)
                           (_%__match4496044961%_
                            _%e4320743530%_
                            _%hd4320843534%_
                            _%tl4320943537%_
                            _%e4322243444%_
                            _%hd4322343448%_
                            _%tl4322443451%_
                            _%__splice4488044881%_
                            _%target4324543372%_
                            _%tl4324743375%_)
                           (let () (declare (not safe)) (_%g4320343273%_)))))
                   (let () (declare (not safe)) (_%g4320343273%_)))
               (if (gx#stx-pair/null? _%tl4320943537%_)
                   (let ((_%__splice4488444885%_
                          (gx#syntax-split-splice->vector
                           _%tl4320943537%_
                           '0)))
                     (let ((_%tl4326143293%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4488444885%_ '1)))
                           (_%target4325943290%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4488444885%_ '0))))
                       (if (gx#stx-null? _%tl4326143293%_)
                           (_%__match4497444975%_
                            _%e4320743530%_
                            _%hd4320843534%_
                            _%tl4320943537%_
                            _%__splice4488444885%_
                            _%target4325943290%_
                            _%tl4326143293%_)
                           (let () (declare (not safe)) (_%g4320343273%_)))))
                   (let () (declare (not safe)) (_%g4320343273%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (gx#stx-pair/null?
                                                _%tl4320943537%_)
                                               (let ((_%__splice4488444885%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl4320943537%_
                                                       '0)))
                                                 (let ((_%tl4326143293%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4488444885%_
                                                           '1)))
                                                       (_%target4325943290%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4488444885%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl4326143293%_)
                                                       (_%__match4497444975%_
                                                        _%e4320743530%_
                                                        _%hd4320843534%_
                                                        _%tl4320943537%_
                                                        _%__splice4488444885%_
                                                        _%target4325943290%_
                                                        _%tl4326143293%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g4320343273%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4320343273%_)))))
                                   (if (gx#stx-pair? _%hd4320843534%_)
                                       (let ((_%e4322243444%_
                                              (gx#syntax-e _%hd4320843534%_)))
                                         (let ((_%tl4322443451%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4322243444%_)))
                                               (_%hd4322343448%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4322243444%_))))
                                           (if (gx#stx-pair? _%tl4322443451%_)
                                               (let ((_%e4322543454%_
                                                      (gx#syntax-e
                                                       _%tl4322443451%_)))
                                                 (let ((_%tl4322743461%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e4322543454%_)))
                                                       (_%hd4322643458%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e4322543454%_))))
                                                   (if (gx#stx-null?
                                                        _%tl4322743461%_)
                                                       (if (gx#stx-pair/null?
                                                            _%tl4320943537%_)
                                                           (let ((_%__splice4487644877%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice->vector
                           _%tl4320943537%_
                           '0)))
                     (let ((_%tl4323043467%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4487644877%_ '1)))
                           (_%target4322843464%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4487644877%_ '0))))
                       (if (gx#stx-null? _%tl4323043467%_)
                           (_%__match4493844939%_
                            _%e4320743530%_
                            _%hd4320843534%_
                            _%tl4320943537%_
                            _%e4322243444%_
                            _%hd4322343448%_
                            _%tl4322443451%_
                            _%e4322543454%_
                            _%hd4322643458%_
                            _%tl4322743461%_
                            _%__splice4487644877%_
                            _%target4322843464%_
                            _%tl4323043467%_)
                           (let () (declare (not safe)) (_%g4320343273%_)))))
                   (let () (declare (not safe)) (_%g4320343273%_)))
               (if (gx#stx-pair/null? _%tl4320943537%_)
                   (let ((_%__splice4488444885%_
                          (gx#syntax-split-splice->vector
                           _%tl4320943537%_
                           '0)))
                     (let ((_%tl4326143293%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4488444885%_ '1)))
                           (_%target4325943290%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4488444885%_ '0))))
                       (if (gx#stx-null? _%tl4326143293%_)
                           (_%__match4497444975%_
                            _%e4320743530%_
                            _%hd4320843534%_
                            _%tl4320943537%_
                            _%__splice4488444885%_
                            _%target4325943290%_
                            _%tl4326143293%_)
                           (let () (declare (not safe)) (_%g4320343273%_)))))
                   (let () (declare (not safe)) (_%g4320343273%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-null?
                                                    _%tl4322443451%_)
                                                   (if (gx#stx-pair/null?
                                                        _%tl4320943537%_)
                                                       (let ((_%__splice4488044881%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4320943537%_
                                                               '0)))
                                                         (let ((_%tl4324743375%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4488044881%_ '1)))
                       (_%target4324543372%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4488044881%_ '0))))
                   (if (gx#stx-null? _%tl4324743375%_)
                       (_%__match4496044961%_
                        _%e4320743530%_
                        _%hd4320843534%_
                        _%tl4320943537%_
                        _%e4322243444%_
                        _%hd4322343448%_
                        _%tl4322443451%_
                        _%__splice4488044881%_
                        _%target4324543372%_
                        _%tl4324743375%_)
                       (let () (declare (not safe)) (_%g4320343273%_)))))
               (let () (declare (not safe)) (_%g4320343273%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _%tl4320943537%_)
                                                       (let ((_%__splice4488444885%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4320943537%_
                                                               '0)))
                                                         (let ((_%tl4326143293%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4488444885%_ '1)))
                       (_%target4325943290%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4488444885%_ '0))))
                   (if (gx#stx-null? _%tl4326143293%_)
                       (_%__match4497444975%_
                        _%e4320743530%_
                        _%hd4320843534%_
                        _%tl4320943537%_
                        _%__splice4488444885%_
                        _%target4325943290%_
                        _%tl4326143293%_)
                       (let () (declare (not safe)) (_%g4320343273%_)))))
               (let () (declare (not safe)) (_%g4320343273%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (gx#stx-pair/null? _%tl4320943537%_)
                                           (let ((_%__splice4488444885%_
                                                  (gx#syntax-split-splice->vector
                                                   _%tl4320943537%_
                                                   '0)))
                                             (let ((_%tl4326143293%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4488444885%_
                                                       '1)))
                                                   (_%target4325943290%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4488444885%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl4326143293%_)
                                                   (_%__match4497444975%_
                                                    _%e4320743530%_
                                                    _%hd4320843534%_
                                                    _%tl4320943537%_
                                                    _%__splice4488444885%_
                                                    _%target4325943290%_
                                                    _%tl4326143293%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4320343273%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4320343273%_)))))
                               (if (gx#stx-pair? _%hd4320843534%_)
                                   (let ((_%e4322243444%_
                                          (gx#syntax-e _%hd4320843534%_)))
                                     (let ((_%tl4322443451%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4322243444%_)))
                                           (_%hd4322343448%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4322243444%_))))
                                       (if (gx#stx-pair? _%tl4322443451%_)
                                           (let ((_%e4322543454%_
                                                  (gx#syntax-e
                                                   _%tl4322443451%_)))
                                             (let ((_%tl4322743461%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e4322543454%_)))
                                                   (_%hd4322643458%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e4322543454%_))))
                                               (if (gx#stx-null?
                                                    _%tl4322743461%_)
                                                   (if (gx#stx-pair/null?
                                                        _%tl4320943537%_)
                                                       (let ((_%__splice4487644877%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4320943537%_
                                                               '0)))
                                                         (let ((_%tl4323043467%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4487644877%_ '1)))
                       (_%target4322843464%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4487644877%_ '0))))
                   (if (gx#stx-null? _%tl4323043467%_)
                       (_%__match4493844939%_
                        _%e4320743530%_
                        _%hd4320843534%_
                        _%tl4320943537%_
                        _%e4322243444%_
                        _%hd4322343448%_
                        _%tl4322443451%_
                        _%e4322543454%_
                        _%hd4322643458%_
                        _%tl4322743461%_
                        _%__splice4487644877%_
                        _%target4322843464%_
                        _%tl4323043467%_)
                       (let () (declare (not safe)) (_%g4320343273%_)))))
               (let () (declare (not safe)) (_%g4320343273%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _%tl4320943537%_)
                                                       (let ((_%__splice4488444885%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4320943537%_
                                                               '0)))
                                                         (let ((_%tl4326143293%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4488444885%_ '1)))
                       (_%target4325943290%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4488444885%_ '0))))
                   (if (gx#stx-null? _%tl4326143293%_)
                       (_%__match4497444975%_
                        _%e4320743530%_
                        _%hd4320843534%_
                        _%tl4320943537%_
                        _%__splice4488444885%_
                        _%target4325943290%_
                        _%tl4326143293%_)
                       (let () (declare (not safe)) (_%g4320343273%_)))))
               (let () (declare (not safe)) (_%g4320343273%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (gx#stx-null? _%tl4322443451%_)
                                               (if (gx#stx-pair/null?
                                                    _%tl4320943537%_)
                                                   (let ((_%__splice4488044881%_
                                                          (gx#syntax-split-splice->vector
                                                           _%tl4320943537%_
                                                           '0)))
                                                     (let ((_%tl4324743375%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice4488044881%_
                                                               '1)))
                                                           (_%target4324543372%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice4488044881%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%tl4324743375%_)
                                                           (_%__match4496044961%_
                                                            _%e4320743530%_
                                                            _%hd4320843534%_
                                                            _%tl4320943537%_
                                                            _%e4322243444%_
                                                            _%hd4322343448%_
                                                            _%tl4322443451%_
                                                            _%__splice4488044881%_
                                                            _%target4324543372%_
                                                            _%tl4324743375%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g4320343273%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4320343273%_)))
                                               (if (gx#stx-pair/null?
                                                    _%tl4320943537%_)
                                                   (let ((_%__splice4488444885%_
                                                          (gx#syntax-split-splice->vector
                                                           _%tl4320943537%_
                                                           '0)))
                                                     (let ((_%tl4326143293%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice4488444885%_
                                                               '1)))
                                                           (_%target4325943290%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice4488444885%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%tl4326143293%_)
                                                           (_%__match4497444975%_
                                                            _%e4320743530%_
                                                            _%hd4320843534%_
                                                            _%tl4320943537%_
                                                            _%__splice4488444885%_
                                                            _%target4325943290%_
                                                            _%tl4326143293%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g4320343273%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4320343273%_)))))))
                                   (if (gx#stx-pair/null? _%tl4320943537%_)
                                       (let ((_%__splice4488444885%_
                                              (gx#syntax-split-splice->vector
                                               _%tl4320943537%_
                                               '0)))
                                         (let ((_%tl4326143293%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4488444885%_
                                                   '1)))
                                               (_%target4325943290%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4488444885%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl4326143293%_)
                                               (_%__match4497444975%_
                                                _%e4320743530%_
                                                _%hd4320843534%_
                                                _%tl4320943537%_
                                                _%__splice4488444885%_
                                                _%target4325943290%_
                                                _%tl4326143293%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4320343273%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g4320343273%_)))))))
                       (if (gx#stx-pair? _%hd4320843534%_)
                           (let ((_%e4322243444%_
                                  (gx#syntax-e _%hd4320843534%_)))
                             (let ((_%tl4322443451%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e4322243444%_)))
                                   (_%hd4322343448%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e4322243444%_))))
                               (if (gx#stx-pair? _%tl4322443451%_)
                                   (let ((_%e4322543454%_
                                          (gx#syntax-e _%tl4322443451%_)))
                                     (let ((_%tl4322743461%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4322543454%_)))
                                           (_%hd4322643458%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4322543454%_))))
                                       (if (gx#stx-null? _%tl4322743461%_)
                                           (if (gx#stx-pair/null?
                                                _%tl4320943537%_)
                                               (let ((_%__splice4487644877%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl4320943537%_
                                                       '0)))
                                                 (let ((_%tl4323043467%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4487644877%_
                                                           '1)))
                                                       (_%target4322843464%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4487644877%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl4323043467%_)
                                                       (_%__match4493844939%_
                                                        _%e4320743530%_
                                                        _%hd4320843534%_
                                                        _%tl4320943537%_
                                                        _%e4322243444%_
                                                        _%hd4322343448%_
                                                        _%tl4322443451%_
                                                        _%e4322543454%_
                                                        _%hd4322643458%_
                                                        _%tl4322743461%_
                                                        _%__splice4487644877%_
                                                        _%target4322843464%_
                                                        _%tl4323043467%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g4320343273%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4320343273%_)))
                                           (if (gx#stx-pair/null?
                                                _%tl4320943537%_)
                                               (let ((_%__splice4488444885%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl4320943537%_
                                                       '0)))
                                                 (let ((_%tl4326143293%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4488444885%_
                                                           '1)))
                                                       (_%target4325943290%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4488444885%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl4326143293%_)
                                                       (_%__match4497444975%_
                                                        _%e4320743530%_
                                                        _%hd4320843534%_
                                                        _%tl4320943537%_
                                                        _%__splice4488444885%_
                                                        _%target4325943290%_
                                                        _%tl4326143293%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g4320343273%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4320343273%_))))))
                                   (if (gx#stx-null? _%tl4322443451%_)
                                       (if (gx#stx-pair/null? _%tl4320943537%_)
                                           (let ((_%__splice4488044881%_
                                                  (gx#syntax-split-splice->vector
                                                   _%tl4320943537%_
                                                   '0)))
                                             (let ((_%tl4324743375%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4488044881%_
                                                       '1)))
                                                   (_%target4324543372%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4488044881%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl4324743375%_)
                                                   (_%__match4496044961%_
                                                    _%e4320743530%_
                                                    _%hd4320843534%_
                                                    _%tl4320943537%_
                                                    _%e4322243444%_
                                                    _%hd4322343448%_
                                                    _%tl4322443451%_
                                                    _%__splice4488044881%_
                                                    _%target4324543372%_
                                                    _%tl4324743375%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4320343273%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4320343273%_)))
                                       (if (gx#stx-pair/null? _%tl4320943537%_)
                                           (let ((_%__splice4488444885%_
                                                  (gx#syntax-split-splice->vector
                                                   _%tl4320943537%_
                                                   '0)))
                                             (let ((_%tl4326143293%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4488444885%_
                                                       '1)))
                                                   (_%target4325943290%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4488444885%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl4326143293%_)
                                                   (_%__match4497444975%_
                                                    _%e4320743530%_
                                                    _%hd4320843534%_
                                                    _%tl4320943537%_
                                                    _%__splice4488444885%_
                                                    _%target4325943290%_
                                                    _%tl4326143293%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4320343273%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4320343273%_)))))))
                           (if (gx#stx-pair/null? _%tl4320943537%_)
                               (let ((_%__splice4488444885%_
                                      (gx#syntax-split-splice->vector
                                       _%tl4320943537%_
                                       '0)))
                                 (let ((_%tl4326143293%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4488444885%_
                                           '1)))
                                       (_%target4325943290%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4488444885%_
                                           '0))))
                                   (if (gx#stx-null? _%tl4326143293%_)
                                       (_%__match4497444975%_
                                        _%e4320743530%_
                                        _%hd4320843534%_
                                        _%tl4320943537%_
                                        _%__splice4488444885%_
                                        _%target4325943290%_
                                        _%tl4326143293%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4320343273%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g4320343273%_)))))))
               (let () (declare (not safe)) (_%g4320343273%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (if (pair? _%rest4305343061%_)
                                         (let ((_%hd4305843585%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%rest4305343061%_)))
                                               (_%tl4305943588%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%rest4305343061%_))))
                                           (let* ((_%hd43591%_
                                                   _%hd4305843585%_)
                                                  (_%rest43594%_
                                                   _%tl4305943588%_))
                                             (_%K4305743581%_
                                              _%rest43594%_
                                              _%hd43591%_)))
                                         (_%else4305543192%_)))))
                               _%g4302143032%_))))
                      (_%g4301943597%_ (gx#genident))))))
          (let* ((_%g4240442424%_
                  (lambda (_%g4240542420%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g4240542420%_)))
                 (_%g4240343012%_
                  (lambda (_%g4240542428%_)
                    (if (gx#stx-pair? _%g4240542428%_)
                        (let ((_%e4240742431%_ (gx#syntax-e _%g4240542428%_)))
                          (let ((_%hd4240842435%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4240742431%_)))
                                (_%tl4240942438%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4240742431%_))))
                            (if (gx#stx-pair/null? _%tl4240942438%_)
                                (let ((_g45152_
                                       (gx#syntax-split-splice
                                        _%tl4240942438%_
                                        '0)))
                                  (begin
                                    (let ((_g45153_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g45152_)
                                                 (##values-length _g45152_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g45153_ 2)))
                                          (error "Context expects 2 values"
                                                 _g45153_)))
                                    (let ((_%target4241042441%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g45152_ 0)))
                                          (_%tl4241242444%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g45152_ 1))))
                                      (if (gx#stx-null? _%tl4241242444%_)
                                          (letrec ((_%loop4241342447%_
                                                    (lambda (_%hd4241142451%_
                                                             _%e4241742454%_)
                                                      (if (gx#stx-pair?
                                                           _%hd4241142451%_)
                                                          (let ((_%e4241442456%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd4241142451%_)))
                    (let ((_%lp-hd4241542460%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4241442456%_)))
                          (_%lp-tl4241642463%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4241442456%_))))
                      (_%loop4241342447%_
                       _%lp-tl4241642463%_
                       (cons _%lp-hd4241542460%_ _%e4241742454%_))))
                  (let ((_%e4241842466%_ (reverse _%e4241742454%_)))
                    ((lambda (_%g4240642469%_)
                       (let _%lp42486%_ ((_%rest42489%_
                                          (foldr (lambda (_%g4300343006%_
                                                          _%g4300443009%_)
                                                   (cons _%g4300343006%_
                                                         _%g4300443009%_))
                                                 '()
                                                 _%g4240642469%_))
                                         (_%body42491%_ '()))
                         (let* ((_%__stx4509545096%_ _%rest42489%_)
                                (_%g4249442506%_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%__stx4509545096%_))))
                           (let ((_%__kont4509845099%_
                                  (lambda (_%g4249642534%_ _%g4249742536%_)
                                    (let* ((_%__stx4504345044%_
                                            _%g4249742536%_)
                                           (_%g4255342586%_
                                            (lambda ()
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%__stx4504345044%_))))
                                      (let ((_%__kont4504645047%_
                                             (lambda (_%g4255542973%_)
                                               (if (gx#stx-null?
                                                    _%g4249642534%_)
                                                   (_%generate-fini42401%_
                                                    (_%generate-thunk42399%_
                                                     _%body42491%_)
                                                    (foldr (lambda (_%g4298742990%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g4298842993%_)
                     (cons _%g4298742990%_ _%g4298842993%_))
                   '()
                   _%g4255542973%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Misplaced finally clause"
                                                    _%stx42396%_))))
                                            (_%__kont4505045051%_
                                             (lambda (_%g4256842642%_)
                                               (let _%lp42659%_ ((_%rest42662%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g4249642534%_)
                         (_%handlers42664%_
                          (cons (foldr (lambda (_%g4291942922%_
                                                _%g4292042925%_)
                                         (cons _%g4291942922%_
                                               _%g4292042925%_))
                                       '()
                                       _%g4256842642%_)
                                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let* ((_%__stx4497744978%_
                                                         _%rest42662%_)
                                                        (_%g4266842708%_
                                                         (lambda ()
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%__stx4497744978%_))))
                                                   (let ((_%__kont4498044981%_
                                                          (lambda (_%g4267042889%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g4267142891%_)
                    (_%lp42659%_
                     _%g4267042889%_
                     (cons (foldr (lambda (_%g4290742910%_ _%g4290842913%_)
                                    (cons _%g4290742910%_ _%g4290842913%_))
                                  '()
                                  _%g4267142891%_)
                           _%handlers42664%_))))
                 (_%__kont4498444985%_
                  (lambda (_%g4268742774%_)
                    (let* ((_%g4279542803%_
                            (lambda (_%g4279642799%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4279642799%_)))
                           (_%g4279442830%_
                            (lambda (_%g4279642807%_)
                              ((lambda (_%g4279742810%_)
                                 (_%generate-fini42401%_
                                  (cons (gx#datum->syntax '#f 'lambda)
                                        (cons '() (cons _%g4279742810%_ '())))
                                  (foldr (lambda (_%g4282142824%_
                                                  _%g4282242827%_)
                                           (cons _%g4282142824%_
                                                 _%g4282242827%_))
                                         '()
                                         _%g4268742774%_)))
                               _%g4279642807%_))))
                      (_%g4279442830%_
                       (_%generate-catch42402%_
                        _%handlers42664%_
                        (_%generate-thunk42399%_ _%body42491%_))))))
                 (_%__kont4498844989%_
                  (lambda ()
                    (_%generate-catch42402%_
                     _%handlers42664%_
                     (_%generate-thunk42399%_ _%body42491%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%g4266742719%_
                                                             (lambda ()
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%__stx4497744978%_)
                           (_%__kont4498844989%_)
                           (let () (declare (not safe)) (_%g4266842708%_)))))
                    (_%__match4503845039%_
                     (lambda (_%e4268842726%_
                              _%hd4268942730%_
                              _%tl4269042733%_
                              _%e4269142736%_
                              _%hd4269242740%_
                              _%tl4269342743%_
                              _%__splice4498644987%_
                              _%target4269442746%_
                              _%tl4269642749%_)
                       (letrec ((_%loop4269742752%_
                                 (lambda (_%hd4269542756%_ _%fini4270142759%_)
                                   (if (gx#stx-pair? _%hd4269542756%_)
                                       (let ((_%e4269842761%_
                                              (gx#syntax-e _%hd4269542756%_)))
                                         (let ((_%lp-tl4270042768%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4269842761%_)))
                                               (_%lp-hd4269942765%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4269842761%_))))
                                           (_%loop4269742752%_
                                            _%lp-tl4270042768%_
                                            (cons _%lp-hd4269942765%_
                                                  _%fini4270142759%_))))
                                       (let ((_%fini4270242771%_
                                              (reverse _%fini4270142759%_)))
                                         (if (gx#stx-null? _%tl4269042733%_)
                                             (_%__kont4498444985%_
                                              _%fini4270242771%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%g4266842708%_))))))))
                         (_%loop4269742752%_ _%target4269442746%_ '()))))
                    (_%__match4501445015%_
                     (lambda (_%e4267242841%_
                              _%hd4267342845%_
                              _%tl4267442848%_
                              _%e4267542851%_
                              _%hd4267642855%_
                              _%tl4267742858%_
                              _%__splice4498244983%_
                              _%target4267842861%_
                              _%tl4268042864%_)
                       (letrec ((_%loop4268142867%_
                                 (lambda (_%hd4267942871%_
                                          _%handler4268542874%_)
                                   (if (gx#stx-pair? _%hd4267942871%_)
                                       (let ((_%e4268242876%_
                                              (gx#syntax-e _%hd4267942871%_)))
                                         (let ((_%lp-tl4268442883%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4268242876%_)))
                                               (_%lp-hd4268342880%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4268242876%_))))
                                           (_%loop4268142867%_
                                            _%lp-tl4268442883%_
                                            (cons _%lp-hd4268342880%_
                                                  _%handler4268542874%_))))
                                       (let ((_%handler4268642886%_
                                              (reverse _%handler4268542874%_)))
                                         (_%__kont4498044981%_
                                          _%tl4267442848%_
                                          _%handler4268642886%_))))))
                         (_%loop4268142867%_ _%target4267842861%_ '())))))
               (if (gx#stx-pair? _%__stx4497744978%_)
                   (let ((_%e4267242841%_ (gx#syntax-e _%__stx4497744978%_)))
                     (let ((_%tl4267442848%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4267242841%_)))
                           (_%hd4267342845%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4267242841%_))))
                       (if (gx#stx-pair? _%hd4267342845%_)
                           (let ((_%e4267542851%_
                                  (gx#syntax-e _%hd4267342845%_)))
                             (let ((_%tl4267742858%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e4267542851%_)))
                                   (_%hd4267642855%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e4267542851%_))))
                               (if (gx#identifier? _%hd4267642855%_)
                                   (if (gx#free-identifier=?
                                        |gerbil/core/more-sugar[1]#_g45154_|
                                        _%hd4267642855%_)
                                       (if (gx#stx-pair/null? _%tl4267742858%_)
                                           (let ((_%__splice4498244983%_
                                                  (gx#syntax-split-splice->vector
                                                   _%tl4267742858%_
                                                   '0)))
                                             (let ((_%tl4268042864%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4498244983%_
                                                       '1)))
                                                   (_%target4267842861%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4498244983%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl4268042864%_)
                                                   (_%__match4501445015%_
                                                    _%e4267242841%_
                                                    _%hd4267342845%_
                                                    _%tl4267442848%_
                                                    _%e4267542851%_
                                                    _%hd4267642855%_
                                                    _%tl4267742858%_
                                                    _%__splice4498244983%_
                                                    _%target4267842861%_
                                                    _%tl4268042864%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4266842708%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4266842708%_)))
                                       (if (gx#free-identifier=?
                                            |gerbil/core/more-sugar[1]#_g45155_|
                                            _%hd4267642855%_)
                                           (if (gx#stx-pair/null?
                                                _%tl4267742858%_)
                                               (let ((_%__splice4498644987%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl4267742858%_
                                                       '0)))
                                                 (let ((_%tl4269642749%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4498644987%_
                                                           '1)))
                                                       (_%target4269442746%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4498644987%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl4269642749%_)
                                                       (_%__match4503845039%_
                                                        _%e4267242841%_
                                                        _%hd4267342845%_
                                                        _%tl4267442848%_
                                                        _%e4267542851%_
                                                        _%hd4267642855%_
                                                        _%tl4267742858%_
                                                        _%__splice4498644987%_
                                                        _%target4269442746%_
                                                        _%tl4269642749%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g4266842708%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4266842708%_)))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4266842708%_))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g4266842708%_)))))
                           (let () (declare (not safe)) (_%g4266842708%_)))))
                   (let () (declare (not safe)) (_%g4266742719%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont4505445055%_
                                             (lambda ()
                                               (_%lp42486%_
                                                _%g4249642534%_
                                                (cons _%g4249742536%_
                                                      _%body42491%_)))))
                                        (let* ((_%__match4509245093%_
                                                (lambda (_%e4256942604%_
                                                         _%hd4257042608%_
                                                         _%tl4257142611%_
                                                         _%__splice4505245053%_
                                                         _%target4257242614%_
                                                         _%tl4257442617%_)
                                                  (letrec ((_%loop4257542620%_
                                                            (lambda (_%hd4257342624%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%handler4257942627%_)
                      (if (gx#stx-pair? _%hd4257342624%_)
                          (let ((_%e4257642629%_
                                 (gx#syntax-e _%hd4257342624%_)))
                            (let ((_%lp-tl4257842636%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4257642629%_)))
                                  (_%lp-hd4257742633%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4257642629%_))))
                              (_%loop4257542620%_
                               _%lp-tl4257842636%_
                               (cons _%lp-hd4257742633%_
                                     _%handler4257942627%_))))
                          (let ((_%handler4258042639%_
                                 (reverse _%handler4257942627%_)))
                            (_%__kont4505045051%_ _%handler4258042639%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop4257542620%_
                                                     _%target4257242614%_
                                                     '()))))
                                               (_%__match4507445075%_
                                                (lambda (_%e4255642935%_
                                                         _%hd4255742939%_
                                                         _%tl4255842942%_
                                                         _%__splice4504845049%_
                                                         _%target4255942945%_
                                                         _%tl4256142948%_)
                                                  (letrec ((_%loop4256242951%_
                                                            (lambda (_%hd4256042955%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%fini4256642958%_)
                      (if (gx#stx-pair? _%hd4256042955%_)
                          (let ((_%e4256342960%_
                                 (gx#syntax-e _%hd4256042955%_)))
                            (let ((_%lp-tl4256542967%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4256342960%_)))
                                  (_%lp-hd4256442964%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4256342960%_))))
                              (_%loop4256242951%_
                               _%lp-tl4256542967%_
                               (cons _%lp-hd4256442964%_ _%fini4256642958%_))))
                          (let ((_%fini4256742970%_
                                 (reverse _%fini4256642958%_)))
                            (_%__kont4504645047%_ _%fini4256742970%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop4256242951%_
                                                     _%target4255942945%_
                                                     '())))))
                                          (if (gx#stx-pair?
                                               _%__stx4504345044%_)
                                              (let ((_%e4255642935%_
                                                     (gx#syntax-e
                                                      _%__stx4504345044%_)))
                                                (let ((_%tl4255842942%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4255642935%_)))
                                                      (_%hd4255742939%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4255642935%_))))
                                                  (if (gx#identifier?
                                                       _%hd4255742939%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/more-sugar[1]#_g45156_|
                                                           _%hd4255742939%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4255842942%_)
                                                              (let ((_%__splice4504845049%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl4255842942%_
                              '0)))
                        (let ((_%tl4256142948%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice4504845049%_ '1)))
                              (_%target4255942945%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice4504845049%_ '0))))
                          (if (gx#stx-null? _%tl4256142948%_)
                              (_%__match4507445075%_
                               _%e4255642935%_
                               _%hd4255742939%_
                               _%tl4255842942%_
                               _%__splice4504845049%_
                               _%target4255942945%_
                               _%tl4256142948%_)
                              (_%__kont4505445055%_))))
                      (_%__kont4505445055%_))
                  (if (gx#free-identifier=?
                       |gerbil/core/more-sugar[1]#_g45157_|
                       _%hd4255742939%_)
                      (if (gx#stx-pair/null? _%tl4255842942%_)
                          (let ((_%__splice4505245053%_
                                 (gx#syntax-split-splice->vector
                                  _%tl4255842942%_
                                  '0)))
                            (let ((_%tl4257442617%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice4505245053%_ '1)))
                                  (_%target4257242614%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice4505245053%_
                                      '0))))
                              (if (gx#stx-null? _%tl4257442617%_)
                                  (_%__match4509245093%_
                                   _%e4255642935%_
                                   _%hd4255742939%_
                                   _%tl4255842942%_
                                   _%__splice4505245053%_
                                   _%target4257242614%_
                                   _%tl4257442617%_)
                                  (_%__kont4505445055%_))))
                          (_%__kont4505445055%_))
                      (_%__kont4505445055%_)))
              (_%__kont4505445055%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont4505445055%_)))))))
                                 (_%__kont4510045101%_
                                  (lambda ()
                                    (cons 'begin (reverse _%body42491%_)))))
                             (let ((_%g4249342517%_
                                    (lambda ()
                                      (if (gx#stx-null? _%__stx4509545096%_)
                                          (_%__kont4510045101%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4249442506%_))))))
                               (if (gx#stx-pair? _%__stx4509545096%_)
                                   (let ((_%e4249842524%_
                                          (gx#syntax-e _%__stx4509545096%_)))
                                     (let ((_%tl4250042531%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4249842524%_)))
                                           (_%hd4249942528%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4249842524%_))))
                                       (_%__kont4509845099%_
                                        _%tl4250042531%_
                                        _%hd4249942528%_)))
                                   (let ()
                                     (declare (not safe))
                                     (_%g4249342517%_))))))))
                     _%e4241842466%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop4241342447%_
                                             _%target4241042441%_
                                             '()))
                                          (_%g4240442424%_ _%g4240542428%_)))))
                                (_%g4240442424%_ _%g4240542428%_))))
                        (_%g4240442424%_ _%g4240542428%_)))))
            (_%g4240343012%_ _%stx42396%_)))))
    (define |gerbil/core/more-sugar[:0:]#hash|
      (lambda (_%$stx43812%_)
        (let* ((_%g4381643845%_
                (lambda (_%g4381743841%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4381743841%_)))
               (_%g4381543941%_
                (lambda (_%g4381743849%_)
                  (if (gx#stx-pair? _%g4381743849%_)
                      (let ((_%e4382043852%_ (gx#syntax-e _%g4381743849%_)))
                        (let ((_%hd4382143856%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4382043852%_)))
                              (_%tl4382243859%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4382043852%_))))
                          (if (gx#stx-pair/null? _%tl4382243859%_)
                              (let ((_g45158_
                                     (gx#syntax-split-splice
                                      _%tl4382243859%_
                                      '0)))
                                (begin
                                  (let ((_g45159_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g45158_)
                                               (##values-length _g45158_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g45159_ 2)))
                                        (error "Context expects 2 values"
                                               _g45159_)))
                                  (let ((_%target4382343862%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45158_ 0)))
                                        (_%tl4382543865%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45158_ 1))))
                                    (if (gx#stx-null? _%tl4382543865%_)
                                        (letrec ((_%loop4382643868%_
                                                  (lambda (_%hd4382443872%_
                                                           _%val4383043875%_
                                                           _%key4383143876%_)
                                                    (if (gx#stx-pair?
                                                         _%hd4382443872%_)
                                                        (let ((_%e4382743878%_
                                                               (gx#syntax-e
                                                                _%hd4382443872%_)))
                                                          (let ((_%lp-hd4382843882%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4382743878%_)))
                        (_%lp-tl4382943885%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4382743878%_))))
                    (if (gx#stx-pair? _%lp-hd4382843882%_)
                        (let ((_%e4383443888%_
                               (gx#syntax-e _%lp-hd4382843882%_)))
                          (let ((_%hd4383543892%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4383443888%_)))
                                (_%tl4383643895%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4383443888%_))))
                            (if (gx#stx-pair? _%tl4383643895%_)
                                (let ((_%e4383743898%_
                                       (gx#syntax-e _%tl4383643895%_)))
                                  (let ((_%hd4383843902%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4383743898%_)))
                                        (_%tl4383943905%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4383743898%_))))
                                    (if (gx#stx-null? _%tl4383943905%_)
                                        (_%loop4382643868%_
                                         _%lp-tl4382943885%_
                                         (cons _%hd4383843902%_
                                               _%val4383043875%_)
                                         (cons _%hd4383543892%_
                                               _%key4383143876%_))
                                        (_%g4381643845%_ _%g4381743849%_))))
                                (_%g4381643845%_ _%g4381743849%_))))
                        (_%g4381643845%_ _%g4381743849%_))))
                (let ((_%val4383243908%_ (reverse _%val4383043875%_))
                      (_%key4383343910%_ (reverse _%key4383143876%_)))
                  ((lambda (_%g4381843912%_ _%g4381943914%_)
                     (cons (gx#datum->syntax '#f '~hash-table)
                           (cons (gx#datum->syntax '#f 'make-hash-table)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _%g4381843912%_
                                    _%g4381943914%_)
                                   (foldr (lambda (_%g4392943933%_
                                                   _%g4393043936%_
                                                   _%g4393143938%_)
                                            (cons (cons _%g4393043936%_
                                                        (cons _%g4392943933%_
                                                              '()))
                                                  _%g4393143938%_))
                                          '()
                                          _%g4381843912%_
                                          _%g4381943914%_)))))
                   _%val4383243908%_
                   _%key4383343910%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop4382643868%_
                                           _%target4382343862%_
                                           '()
                                           '()))
                                        (_%g4381643845%_ _%g4381743849%_)))))
                              (_%g4381643845%_ _%g4381743849%_))))
                      (_%g4381643845%_ _%g4381743849%_)))))
          (_%g4381543941%_ _%$stx43812%_))))
    (define |gerbil/core/more-sugar[:0:]#hash-eq|
      (lambda (_%$stx43946%_)
        (let* ((_%g4395043979%_
                (lambda (_%g4395143975%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4395143975%_)))
               (_%g4394944075%_
                (lambda (_%g4395143983%_)
                  (if (gx#stx-pair? _%g4395143983%_)
                      (let ((_%e4395443986%_ (gx#syntax-e _%g4395143983%_)))
                        (let ((_%hd4395543990%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4395443986%_)))
                              (_%tl4395643993%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4395443986%_))))
                          (if (gx#stx-pair/null? _%tl4395643993%_)
                              (let ((_g45160_
                                     (gx#syntax-split-splice
                                      _%tl4395643993%_
                                      '0)))
                                (begin
                                  (let ((_g45161_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g45160_)
                                               (##values-length _g45160_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g45161_ 2)))
                                        (error "Context expects 2 values"
                                               _g45161_)))
                                  (let ((_%target4395743996%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45160_ 0)))
                                        (_%tl4395943999%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45160_ 1))))
                                    (if (gx#stx-null? _%tl4395943999%_)
                                        (letrec ((_%loop4396044002%_
                                                  (lambda (_%hd4395844006%_
                                                           _%val4396444009%_
                                                           _%key4396544010%_)
                                                    (if (gx#stx-pair?
                                                         _%hd4395844006%_)
                                                        (let ((_%e4396144012%_
                                                               (gx#syntax-e
                                                                _%hd4395844006%_)))
                                                          (let ((_%lp-hd4396244016%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4396144012%_)))
                        (_%lp-tl4396344019%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4396144012%_))))
                    (if (gx#stx-pair? _%lp-hd4396244016%_)
                        (let ((_%e4396844022%_
                               (gx#syntax-e _%lp-hd4396244016%_)))
                          (let ((_%hd4396944026%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4396844022%_)))
                                (_%tl4397044029%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4396844022%_))))
                            (if (gx#stx-pair? _%tl4397044029%_)
                                (let ((_%e4397144032%_
                                       (gx#syntax-e _%tl4397044029%_)))
                                  (let ((_%hd4397244036%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4397144032%_)))
                                        (_%tl4397344039%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4397144032%_))))
                                    (if (gx#stx-null? _%tl4397344039%_)
                                        (_%loop4396044002%_
                                         _%lp-tl4396344019%_
                                         (cons _%hd4397244036%_
                                               _%val4396444009%_)
                                         (cons _%hd4396944026%_
                                               _%key4396544010%_))
                                        (_%g4395043979%_ _%g4395143983%_))))
                                (_%g4395043979%_ _%g4395143983%_))))
                        (_%g4395043979%_ _%g4395143983%_))))
                (let ((_%val4396644042%_ (reverse _%val4396444009%_))
                      (_%key4396744044%_ (reverse _%key4396544010%_)))
                  ((lambda (_%g4395244046%_ _%g4395344048%_)
                     (cons (gx#datum->syntax '#f '~hash-table)
                           (cons (gx#datum->syntax '#f 'make-hash-table-eq)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _%g4395244046%_
                                    _%g4395344048%_)
                                   (foldr (lambda (_%g4406344067%_
                                                   _%g4406444070%_
                                                   _%g4406544072%_)
                                            (cons (cons _%g4406444070%_
                                                        (cons _%g4406344067%_
                                                              '()))
                                                  _%g4406544072%_))
                                          '()
                                          _%g4395244046%_
                                          _%g4395344048%_)))))
                   _%val4396644042%_
                   _%key4396744044%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop4396044002%_
                                           _%target4395743996%_
                                           '()
                                           '()))
                                        (_%g4395043979%_ _%g4395143983%_)))))
                              (_%g4395043979%_ _%g4395143983%_))))
                      (_%g4395043979%_ _%g4395143983%_)))))
          (_%g4394944075%_ _%$stx43946%_))))
    (define |gerbil/core/more-sugar[:0:]#hash-eqv|
      (lambda (_%$stx44080%_)
        (let* ((_%g4408444113%_
                (lambda (_%g4408544109%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4408544109%_)))
               (_%g4408344209%_
                (lambda (_%g4408544117%_)
                  (if (gx#stx-pair? _%g4408544117%_)
                      (let ((_%e4408844120%_ (gx#syntax-e _%g4408544117%_)))
                        (let ((_%hd4408944124%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4408844120%_)))
                              (_%tl4409044127%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4408844120%_))))
                          (if (gx#stx-pair/null? _%tl4409044127%_)
                              (let ((_g45162_
                                     (gx#syntax-split-splice
                                      _%tl4409044127%_
                                      '0)))
                                (begin
                                  (let ((_g45163_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g45162_)
                                               (##values-length _g45162_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g45163_ 2)))
                                        (error "Context expects 2 values"
                                               _g45163_)))
                                  (let ((_%target4409144130%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45162_ 0)))
                                        (_%tl4409344133%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45162_ 1))))
                                    (if (gx#stx-null? _%tl4409344133%_)
                                        (letrec ((_%loop4409444136%_
                                                  (lambda (_%hd4409244140%_
                                                           _%val4409844143%_
                                                           _%key4409944144%_)
                                                    (if (gx#stx-pair?
                                                         _%hd4409244140%_)
                                                        (let ((_%e4409544146%_
                                                               (gx#syntax-e
                                                                _%hd4409244140%_)))
                                                          (let ((_%lp-hd4409644150%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4409544146%_)))
                        (_%lp-tl4409744153%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4409544146%_))))
                    (if (gx#stx-pair? _%lp-hd4409644150%_)
                        (let ((_%e4410244156%_
                               (gx#syntax-e _%lp-hd4409644150%_)))
                          (let ((_%hd4410344160%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4410244156%_)))
                                (_%tl4410444163%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4410244156%_))))
                            (if (gx#stx-pair? _%tl4410444163%_)
                                (let ((_%e4410544166%_
                                       (gx#syntax-e _%tl4410444163%_)))
                                  (let ((_%hd4410644170%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4410544166%_)))
                                        (_%tl4410744173%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4410544166%_))))
                                    (if (gx#stx-null? _%tl4410744173%_)
                                        (_%loop4409444136%_
                                         _%lp-tl4409744153%_
                                         (cons _%hd4410644170%_
                                               _%val4409844143%_)
                                         (cons _%hd4410344160%_
                                               _%key4409944144%_))
                                        (_%g4408444113%_ _%g4408544117%_))))
                                (_%g4408444113%_ _%g4408544117%_))))
                        (_%g4408444113%_ _%g4408544117%_))))
                (let ((_%val4410044176%_ (reverse _%val4409844143%_))
                      (_%key4410144178%_ (reverse _%key4409944144%_)))
                  ((lambda (_%g4408644180%_ _%g4408744182%_)
                     (cons (gx#datum->syntax '#f '~hash-table)
                           (cons (gx#datum->syntax '#f 'make-hash-table-eqv)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _%g4408644180%_
                                    _%g4408744182%_)
                                   (foldr (lambda (_%g4419744201%_
                                                   _%g4419844204%_
                                                   _%g4419944206%_)
                                            (cons (cons _%g4419844204%_
                                                        (cons _%g4419744201%_
                                                              '()))
                                                  _%g4419944206%_))
                                          '()
                                          _%g4408644180%_
                                          _%g4408744182%_)))))
                   _%val4410044176%_
                   _%key4410144178%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop4409444136%_
                                           _%target4409144130%_
                                           '()
                                           '()))
                                        (_%g4408444113%_ _%g4408544117%_)))))
                              (_%g4408444113%_ _%g4408544117%_))))
                      (_%g4408444113%_ _%g4408544117%_)))))
          (_%g4408344209%_ _%$stx44080%_))))
    (define |gerbil/core/more-sugar[:0:]#~hash-table|
      (lambda (_%stx44214%_)
        (let* ((_%g4421744241%_
                (lambda (_%g4421844237%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4421844237%_)))
               (_%g4421644482%_
                (lambda (_%g4421844245%_)
                  (if (gx#stx-pair? _%g4421844245%_)
                      (let ((_%e4422144248%_ (gx#syntax-e _%g4421844245%_)))
                        (let ((_%hd4422244252%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4422144248%_)))
                              (_%tl4422344255%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4422144248%_))))
                          (if (gx#stx-pair? _%tl4422344255%_)
                              (let ((_%e4422444258%_
                                     (gx#syntax-e _%tl4422344255%_)))
                                (let ((_%hd4422544262%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4422444258%_)))
                                      (_%tl4422644265%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4422444258%_))))
                                  (if (gx#stx-pair/null? _%tl4422644265%_)
                                      (let ((_g45164_
                                             (gx#syntax-split-splice
                                              _%tl4422644265%_
                                              '0)))
                                        (begin
                                          (let ((_g45165_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45164_)
                                                       (##values-length
                                                        _g45164_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45165_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45165_)))
                                          (let ((_%target4422744268%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45164_ 0)))
                                                (_%tl4422944271%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45164_ 1))))
                                            (if (gx#stx-null? _%tl4422944271%_)
                                                (letrec ((_%loop4423044274%_
                                                          (lambda (_%hd4422844278%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%entry4423444281%_)
                    (if (gx#stx-pair? _%hd4422844278%_)
                        (let ((_%e4423144283%_ (gx#syntax-e _%hd4422844278%_)))
                          (let ((_%lp-hd4423244287%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4423144283%_)))
                                (_%lp-tl4423344290%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4423144283%_))))
                            (_%loop4423044274%_
                             _%lp-tl4423344290%_
                             (cons _%lp-hd4423244287%_ _%entry4423444281%_))))
                        (let ((_%entry4423544293%_
                               (reverse _%entry4423444281%_)))
                          ((lambda (_%g4421944296%_ _%g4422044298%_)
                             (let* ((_%g4431644324%_
                                     (lambda (_%g4431744320%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g4431744320%_)))
                                    (_%g4431544470%_
                                     (lambda (_%g4431744328%_)
                                       ((lambda (_%g4431844331%_)
                                          (let* ((_%g4434344369%_
                                                  (lambda (_%g4434444365%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g4434444365%_)))
                                                 (_%g4434244458%_
                                                  (lambda (_%g4434444373%_)
                                                    (if (gx#stx-pair/null?
                                                         _%g4434444373%_)
                                                        (let ((_g45166_
                                                               (gx#syntax-split-splice
                                                                _%g4434444373%_
                                                                '0)))
                                                          (begin
                                                            (let ((_g45167_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (if (##values? _g45166_)
                                 (##values-length _g45166_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g45167_ 2)))
                          (error "Context expects 2 values" _g45167_)))
                    (let ((_%target4434744376%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g45166_ 0)))
                          (_%tl4434944379%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g45166_ 1))))
                      (if (gx#stx-null? _%tl4434944379%_)
                          (letrec ((_%loop4435044382%_
                                    (lambda (_%hd4434844386%_
                                             _%val4435444389%_
                                             _%key4435544390%_)
                                      (if (gx#stx-pair? _%hd4434844386%_)
                                          (let ((_%e4435144392%_
                                                 (gx#syntax-e
                                                  _%hd4434844386%_)))
                                            (let ((_%lp-hd4435244396%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4435144392%_)))
                                                  (_%lp-tl4435344399%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4435144392%_))))
                                              (if (gx#stx-pair?
                                                   _%lp-hd4435244396%_)
                                                  (let ((_%e4435844402%_
                                                         (gx#syntax-e
                                                          _%lp-hd4435244396%_)))
                                                    (let ((_%hd4435944406%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4435844402%_)))
                                                          (_%tl4436044409%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4435844402%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl4436044409%_)
                                                          (let ((_%e4436144412%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4436044409%_)))
                    (let ((_%hd4436244416%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4436144412%_)))
                          (_%tl4436344419%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4436144412%_))))
                      (if (gx#stx-null? _%tl4436344419%_)
                          (_%loop4435044382%_
                           _%lp-tl4435344399%_
                           (cons _%hd4436244416%_ _%val4435444389%_)
                           (cons _%hd4435944406%_ _%key4435544390%_))
                          (_%g4434344369%_ _%g4434444373%_))))
                  (_%g4434344369%_ _%g4434444373%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4434344369%_
                                                   _%g4434444373%_))))
                                          (let ((_%val4435644422%_
                                                 (reverse _%val4435444389%_))
                                                (_%key4435744424%_
                                                 (reverse _%key4435544390%_)))
                                            ((lambda (_%g4434544426%_
                                                      _%g4434644428%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'ht)
                         (cons (cons _%g4422044298%_
                                     (cons 'size: (cons _%g4431844331%_ '())))
                               '()))
                   (begin
                     (gx#syntax-check-splice-targets
                      _%g4434544426%_
                      _%g4434644428%_)
                     (foldr (lambda (_%g4444644450%_
                                     _%g4444744453%_
                                     _%g4444844455%_)
                              (cons (cons (gx#datum->syntax '#f 'hash-put!)
                                          (cons (gx#datum->syntax '#f 'ht)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quasiquote)
                                                            (cons _%g4444744453%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%g4444644450%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%g4444844455%_))
                            (cons (gx#datum->syntax '#f 'ht) '())
                            _%g4434544426%_
                            _%g4434644428%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%val4435644422%_
                                             _%key4435744424%_))))))
                            (_%loop4435044382%_ _%target4434744376%_ '() '()))
                          (_%g4434344369%_ _%g4434444373%_)))))
                (_%g4434344369%_ _%g4434444373%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g4434244458%_
                                             (foldr (lambda (_%g4446144464%_
                                                             _%g4446244467%_)
                                                      (cons _%g4446144464%_
                                                            _%g4446244467%_))
                                                    '()
                                                    _%g4421944296%_))))
                                        _%g4431744328%_))))
                               (_%g4431544470%_
                                (gx#stx-length
                                 (foldr (lambda (_%g4447344476%_
                                                 _%g4447444479%_)
                                          (cons _%g4447344476%_
                                                _%g4447444479%_))
                                        '()
                                        _%g4421944296%_)))))
                           _%entry4423544293%_
                           _%hd4422544262%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4423044274%_
                                                   _%target4422744268%_
                                                   '()))
                                                (_%g4421744241%_
                                                 _%g4421844245%_)))))
                                      (_%g4421744241%_ _%g4421844245%_))))
                              (_%g4421744241%_ _%g4421844245%_))))
                      (_%g4421744241%_ _%g4421844245%_)))))
          (_%g4421644482%_ _%stx44214%_))))
    (define |gerbil/core/more-sugar[:0:]#@bytes|
      (lambda (_%stx44488%_)
        (let* ((_%g4449144505%_
                (lambda (_%g4449244501%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4449244501%_)))
               (_%g4449044577%_
                (lambda (_%g4449244509%_)
                  (if (gx#stx-pair? _%g4449244509%_)
                      (let ((_%e4449444512%_ (gx#syntax-e _%g4449244509%_)))
                        (let ((_%hd4449544516%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4449444512%_)))
                              (_%tl4449644519%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4449444512%_))))
                          (if (gx#stx-pair? _%tl4449644519%_)
                              (let ((_%e4449744522%_
                                     (gx#syntax-e _%tl4449644519%_)))
                                (let ((_%hd4449844526%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4449744522%_)))
                                      (_%tl4449944529%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4449744522%_))))
                                  (if (gx#stx-null? _%tl4449944529%_)
                                      ((lambda (_%g4449344532%_)
                                         (if (gx#stx-string? _%g4449344532%_)
                                             (let* ((_%g4454644554%_
                                                     (lambda (_%g4454744550%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g4454744550%_)))
                                                    (_%g4454544573%_
                                                     (lambda (_%g4454744558%_)
                                                       ((lambda (_%g4454844561%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%g4454844561%_ '())))
                _%g4454744558%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g4454544573%_
                                                (string->bytes
                                                 (gx#stx-e _%g4449344532%_))))
                                             (_%g4449144505%_
                                              _%g4449244509%_)))
                                       _%hd4449844526%_)
                                      (_%g4449144505%_ _%g4449244509%_))))
                              (_%g4449144505%_ _%g4449244509%_))))
                      (_%g4449144505%_ _%g4449244509%_)))))
          (_%g4449044577%_ _%stx44488%_))))
    (define |gerbil/core/more-sugar[:0:]#eval-when-compile|
      (lambda (_%stx44581%_)
        (let* ((_%g4458444598%_
                (lambda (_%g4458544594%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4458544594%_)))
               (_%g4458344639%_
                (lambda (_%g4458544602%_)
                  (if (gx#stx-pair? _%g4458544602%_)
                      (let ((_%e4458744605%_ (gx#syntax-e _%g4458544602%_)))
                        (let ((_%hd4458844609%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4458744605%_)))
                              (_%tl4458944612%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4458744605%_))))
                          (if (gx#stx-pair? _%tl4458944612%_)
                              (let ((_%e4459044615%_
                                     (gx#syntax-e _%tl4458944612%_)))
                                (let ((_%hd4459144619%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4459044615%_)))
                                      (_%tl4459244622%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4459044615%_))))
                                  (if (gx#stx-null? _%tl4459244622%_)
                                      ((lambda (_%g4458644625%_)
                                         (if (gx#current-expander-compiling?)
                                             (gx#eval-syntax _%g4458644625%_)
                                             '#!void)
                                         (cons (gx#datum->syntax '#f 'void)
                                               '()))
                                       _%hd4459144619%_)
                                      (_%g4458444598%_ _%g4458544602%_))))
                              (_%g4458444598%_ _%g4458544602%_))))
                      (_%g4458444598%_ _%g4458544602%_)))))
          (_%g4458344639%_ _%stx44581%_))))))
