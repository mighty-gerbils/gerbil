(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-sugar[1]#_g45144_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/more-sugar[1]#_g45147_|
    (##structure
     gx#syntax-quote::t
     'catch
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g45148_|
    (##structure
     gx#syntax-quote::t
     'finally
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g45149_|
    (##structure
     gx#syntax-quote::t
     'finally
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g45150_|
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
      (lambda _%$args40477%_
        (apply make-instance
               |gerbil/core/more-sugar[1]#setq-macro::t|
               _%$args40477%_)))
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
      (lambda _%$args40473%_
        (apply make-instance
               |gerbil/core/more-sugar[1]#setf-macro::t|
               _%$args40473%_)))
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
      (lambda (_%stx40470%_)
        (if (gx#identifier? _%stx40470%_)
            (let ((__tmp45107 (gx#syntax-local-value _%stx40470%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/more-sugar[1]#setf-macro::t|
               __tmp45107))
            '#f)))
    (define |gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
      (lambda (_%stx40467%_)
        (if (gx#identifier? _%stx40467%_)
            (let ((__tmp45108 (gx#syntax-local-value _%stx40467%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/more-sugar[1]#setq-macro::t|
               __tmp45108))
            '#f)))
    (define |gerbil/core/more-sugar[1]#expand-set!|
      (lambda (_%stx40094%_)
        (let* ((_%__stx4463644637%_ _%stx40094%_)
               (_%g4010040163%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx4463644637%_))))
          (let ((_%__kont4463944640%_
                 (lambda (_%g4010240444%_ _%g4010340446%_)
                   (gx#core-apply-expander
                    (gx#syntax-local-e _%g4010340446%_)
                    _%stx40094%_)))
                (_%__kont4464144642%_
                 (lambda (_%g4011640333%_ _%g4011740335%_ _%g4011840336%_)
                   (let* ((_%g4035840366%_
                           (lambda (_%g4035940362%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g4035940362%_)))
                          (_%g4035740393%_
                           (lambda (_%g4035940370%_)
                             ((lambda (_%g4036040373%_)
                                (cons _%g4036040373%_
                                      (foldr (lambda (_%g4038440387%_
                                                      _%g4038540390%_)
                                               (cons _%g4038440387%_
                                                     _%g4038540390%_))
                                             (cons _%g4011640333%_ '())
                                             _%g4011740335%_)))
                              _%g4035940370%_))))
                     (_%g4035740393%_
                      (gx#stx-identifier
                       _%g4011840336%_
                       _%g4011840336%_
                       '"-set!")))))
                (_%__kont4464544646%_
                 (lambda (_%g4014040245%_)
                   (gx#core-apply-expander
                    (gx#syntax-local-e _%g4014040245%_)
                    _%stx40094%_)))
                (_%__kont4464744648%_
                 (lambda (_%g4014740200%_ _%g4014840202%_)
                   (cons (gx#datum->syntax '#f '%#set!)
                         (cons _%g4014840202%_ (cons _%g4014740200%_ '()))))))
            (let* ((_%__match4473544736%_
                    (lambda (_%e4014940170%_
                             _%hd4015040174%_
                             _%tl4015140177%_
                             _%e4015240180%_
                             _%hd4015340184%_
                             _%tl4015440187%_
                             _%e4015540190%_
                             _%hd4015640194%_
                             _%tl4015740197%_)
                      (let ((_%g4014740200%_ _%hd4015640194%_)
                            (_%g4014840202%_ _%hd4015340184%_))
                        (if (gx#identifier? _%g4014840202%_)
                            (_%__kont4464744648%_
                             _%g4014740200%_
                             _%g4014840202%_)
                            (let () (declare (not safe)) (_%g4010040163%_))))))
                   (_%__match4471544716%_
                    (lambda (_%e4014140225%_
                             _%hd4014240229%_
                             _%tl4014340232%_
                             _%e4014440235%_
                             _%hd4014540239%_
                             _%tl4014640242%_)
                      (let ((_%g4014040245%_ _%hd4014540239%_))
                        (if (|gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
                             _%g4014040245%_)
                            (_%__kont4464544646%_ _%g4014040245%_)
                            (if (gx#stx-pair? _%tl4014640242%_)
                                (let ((_%e4015540190%_
                                       (gx#syntax-e _%tl4014640242%_)))
                                  (let ((_%tl4015740197%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4015540190%_)))
                                        (_%hd4015640194%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4015540190%_))))
                                    (if (gx#stx-null? _%tl4015740197%_)
                                        (_%__match4473544736%_
                                         _%e4014140225%_
                                         _%hd4014240229%_
                                         _%tl4014340232%_
                                         _%e4014440235%_
                                         _%hd4014540239%_
                                         _%tl4014640242%_
                                         _%e4015540190%_
                                         _%hd4015640194%_
                                         _%tl4015740197%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g4010040163%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4010040163%_)))))))
                   (_%__match4470344704%_
                    (lambda (_%e4011940265%_
                             _%hd4012040269%_
                             _%tl4012140272%_
                             _%e4012240275%_
                             _%hd4012340279%_
                             _%tl4012440282%_
                             _%e4012540285%_
                             _%hd4012640289%_
                             _%tl4012740292%_
                             _%__splice4464344644%_
                             _%target4012840295%_
                             _%tl4013040298%_)
                      (letrec ((_%loop4013140301%_
                                (lambda (_%hd4012940305%_ _%arg4013540308%_)
                                  (if (gx#stx-pair? _%hd4012940305%_)
                                      (let ((_%e4013240310%_
                                             (gx#syntax-e _%hd4012940305%_)))
                                        (let ((_%lp-tl4013440317%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4013240310%_)))
                                              (_%lp-hd4013340314%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4013240310%_))))
                                          (_%loop4013140301%_
                                           _%lp-tl4013440317%_
                                           (cons _%lp-hd4013340314%_
                                                 _%arg4013540308%_))))
                                      (let ((_%arg4013640320%_
                                             (reverse _%arg4013540308%_)))
                                        (if (gx#stx-pair? _%tl4012440282%_)
                                            (let ((_%e4013740323%_
                                                   (gx#syntax-e
                                                    _%tl4012440282%_)))
                                              (let ((_%tl4013940330%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4013740323%_)))
                                                    (_%hd4013840327%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4013740323%_))))
                                                (if (gx#stx-null?
                                                     _%tl4013940330%_)
                                                    (let ((_%g4011640333%_
                                                           _%hd4013840327%_)
                                                          (_%g4011740335%_
                                                           _%arg4013640320%_)
                                                          (_%g4011840336%_
                                                           _%hd4012640289%_))
                                                      (if (gx#identifier?
                                                           _%g4011840336%_)
                                                          (_%__kont4464144642%_
                                                           _%g4011640333%_
                                                           _%g4011740335%_
                                                           _%g4011840336%_)
                                                          (_%__match4471544716%_
                                                           _%e4011940265%_
                                                           _%hd4012040269%_
                                                           _%tl4012140272%_
                                                           _%e4012240275%_
                                                           _%hd4012340279%_
                                                           _%tl4012440282%_)))
                                                    (_%__match4471544716%_
                                                     _%e4011940265%_
                                                     _%hd4012040269%_
                                                     _%tl4012140272%_
                                                     _%e4012240275%_
                                                     _%hd4012340279%_
                                                     _%tl4012440282%_))))
                                            (_%__match4471544716%_
                                             _%e4011940265%_
                                             _%hd4012040269%_
                                             _%tl4012140272%_
                                             _%e4012240275%_
                                             _%hd4012340279%_
                                             _%tl4012440282%_)))))))
                        (_%loop4013140301%_ _%target4012840295%_ '())))))
              (if (gx#stx-pair? _%__stx4463644637%_)
                  (let ((_%e4010440404%_ (gx#syntax-e _%__stx4463644637%_)))
                    (let ((_%tl4010640411%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4010440404%_)))
                          (_%hd4010540408%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4010440404%_))))
                      (if (gx#stx-pair? _%tl4010640411%_)
                          (let ((_%e4010740414%_
                                 (gx#syntax-e _%tl4010640411%_)))
                            (let ((_%tl4010940421%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4010740414%_)))
                                  (_%hd4010840418%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4010740414%_))))
                              (if (gx#stx-pair? _%hd4010840418%_)
                                  (let ((_%e4011040424%_
                                         (gx#syntax-e _%hd4010840418%_)))
                                    (let ((_%tl4011240431%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4011040424%_)))
                                          (_%hd4011140428%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4011040424%_))))
                                      (if (gx#stx-pair? _%tl4010940421%_)
                                          (let ((_%e4011340434%_
                                                 (gx#syntax-e
                                                  _%tl4010940421%_)))
                                            (let ((_%tl4011540441%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4011340434%_)))
                                                  (_%hd4011440438%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4011340434%_))))
                                              (if (gx#stx-null?
                                                   _%tl4011540441%_)
                                                  (if (|gerbil/core/more-sugar[1]#syntax-local-setf-macro?|
                                                       (gx#datum->syntax
                                                        '#f
                                                        'setfid))
                                                      (let ((_%g4010240444%_
                                                             _%hd4011440438%_)
                                                            (_%g4010340446%_
                                                             _%hd4011140428%_))
                                                        (_%__kont4463944640%_
                                                         _%g4010240444%_
                                                         _%g4010340446%_))
                                                      (if (gx#stx-pair/null?
                                                           _%tl4011240431%_)
                                                          (let ((_%__splice4464344644%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl4011240431%_ '0)))
                    (let ((_%tl4013040298%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice4464344644%_ '1)))
                          (_%target4012840295%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice4464344644%_ '0))))
                      (if (gx#stx-null? _%tl4013040298%_)
                          (_%__match4470344704%_
                           _%e4010440404%_
                           _%hd4010540408%_
                           _%tl4010640411%_
                           _%e4010740414%_
                           _%hd4010840418%_
                           _%tl4010940421%_
                           _%e4011040424%_
                           _%hd4011140428%_
                           _%tl4011240431%_
                           _%__splice4464344644%_
                           _%target4012840295%_
                           _%tl4013040298%_)
                          (_%__match4471544716%_
                           _%e4010440404%_
                           _%hd4010540408%_
                           _%tl4010640411%_
                           _%e4010740414%_
                           _%hd4010840418%_
                           _%tl4010940421%_))))
                  (_%__match4471544716%_
                   _%e4010440404%_
                   _%hd4010540408%_
                   _%tl4010640411%_
                   _%e4010740414%_
                   _%hd4010840418%_
                   _%tl4010940421%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl4011240431%_)
                                                      (let ((_%__splice4464344644%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl4011240431%_
                                                              '0)))
                                                        (let ((_%tl4013040298%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice4464344644%_ '1)))
                      (_%target4012840295%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice4464344644%_ '0))))
                  (if (gx#stx-null? _%tl4013040298%_)
                      (_%__match4470344704%_
                       _%e4010440404%_
                       _%hd4010540408%_
                       _%tl4010640411%_
                       _%e4010740414%_
                       _%hd4010840418%_
                       _%tl4010940421%_
                       _%e4011040424%_
                       _%hd4011140428%_
                       _%tl4011240431%_
                       _%__splice4464344644%_
                       _%target4012840295%_
                       _%tl4013040298%_)
                      (_%__match4471544716%_
                       _%e4010440404%_
                       _%hd4010540408%_
                       _%tl4010640411%_
                       _%e4010740414%_
                       _%hd4010840418%_
                       _%tl4010940421%_))))
              (_%__match4471544716%_
               _%e4010440404%_
               _%hd4010540408%_
               _%tl4010640411%_
               _%e4010740414%_
               _%hd4010840418%_
               _%tl4010940421%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl4011240431%_)
                                              (let ((_%__splice4464344644%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl4011240431%_
                                                      '0)))
                                                (let ((_%tl4013040298%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice4464344644%_
                                                          '1)))
                                                      (_%target4012840295%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice4464344644%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4013040298%_)
                                                      (_%__match4470344704%_
                                                       _%e4010440404%_
                                                       _%hd4010540408%_
                                                       _%tl4010640411%_
                                                       _%e4010740414%_
                                                       _%hd4010840418%_
                                                       _%tl4010940421%_
                                                       _%e4011040424%_
                                                       _%hd4011140428%_
                                                       _%tl4011240431%_
                                                       _%__splice4464344644%_
                                                       _%target4012840295%_
                                                       _%tl4013040298%_)
                                                      (_%__match4471544716%_
                                                       _%e4010440404%_
                                                       _%hd4010540408%_
                                                       _%tl4010640411%_
                                                       _%e4010740414%_
                                                       _%hd4010840418%_
                                                       _%tl4010940421%_))))
                                              (_%__match4471544716%_
                                               _%e4010440404%_
                                               _%hd4010540408%_
                                               _%tl4010640411%_
                                               _%e4010740414%_
                                               _%hd4010840418%_
                                               _%tl4010940421%_)))))
                                  (_%__match4471544716%_
                                   _%e4010440404%_
                                   _%hd4010540408%_
                                   _%tl4010640411%_
                                   _%e4010740414%_
                                   _%hd4010840418%_
                                   _%tl4010940421%_))))
                          (let () (declare (not safe)) (_%g4010040163%_)))))
                  (let () (declare (not safe)) (_%g4010040163%_))))))))
    (define |gerbil/core/more-sugar[:0:]#set!|
      (lambda (_%stx40482%_)
        (|gerbil/core/more-sugar[1]#expand-set!| _%stx40482%_)))
    (define |gerbil/core/more-sugar[:0:]#values-set!|
      (lambda (_%stx40485%_)
        (let* ((_%g4048840512%_
                (lambda (_%g4048940508%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4048940508%_)))
               (_%g4048740686%_
                (lambda (_%g4048940516%_)
                  (if (gx#stx-pair? _%g4048940516%_)
                      (let ((_%e4049240519%_ (gx#syntax-e _%g4048940516%_)))
                        (let ((_%hd4049340523%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4049240519%_)))
                              (_%tl4049440526%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4049240519%_))))
                          (if (gx#stx-pair/null? _%tl4049440526%_)
                              (if (let ((__tmp45109
                                         (gx#stx-length _%tl4049440526%_)))
                                    (declare (not safe))
                                    (##fx>= __tmp45109 '1))
                                  (let ((_g45110_
                                         (gx#syntax-split-splice
                                          _%tl4049440526%_
                                          '1)))
                                    (begin
                                      (let ((_g45111_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g45110_)
                                                   (##values-length _g45110_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g45111_ 2)))
                                            (error "Context expects 2 values"
                                                   _g45111_)))
                                      (let ((_%target4049540529%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g45110_ 0)))
                                            (_%tl4049740532%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g45110_ 1))))
                                        (if (gx#stx-pair? _%tl4049740532%_)
                                            (let ((_%e4050440535%_
                                                   (gx#syntax-e
                                                    _%tl4049740532%_)))
                                              (let ((_%hd4050540539%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4050440535%_)))
                                                    (_%tl4050640542%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4050440535%_))))
                                                (if (gx#stx-null?
                                                     _%tl4050640542%_)
                                                    (letrec ((_%loop4049840545%_
                                                              (lambda (_%hd4049640549%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tgt4050240552%_)
                        (if (gx#stx-pair? _%hd4049640549%_)
                            (let ((_%e4049940554%_
                                   (gx#syntax-e _%hd4049640549%_)))
                              (let ((_%lp-hd4050040558%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4049940554%_)))
                                    (_%lp-tl4050140561%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4049940554%_))))
                                (_%loop4049840545%_
                                 _%lp-tl4050140561%_
                                 (cons _%lp-hd4050040558%_
                                       _%tgt4050240552%_))))
                            (let ((_%tgt4050340564%_
                                   (reverse _%tgt4050240552%_)))
                              ((lambda (_%g4049040567%_ _%g4049140569%_)
                                 (let* ((_%g4058740604%_
                                         (lambda (_%g4058840600%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g4058840600%_)))
                                        (_%g4058640674%_
                                         (lambda (_%g4058840608%_)
                                           (if (gx#stx-pair/null?
                                                _%g4058840608%_)
                                               (let ((_g45112_
                                                      (gx#syntax-split-splice
                                                       _%g4058840608%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g45113_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g45112_)
                        (##values-length _g45112_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g45113_ 2)))
                 (error "Context expects 2 values" _g45113_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target4059040611%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g45112_
                                                             0)))
                                                         (_%tl4059240614%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g45112_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl4059240614%_)
                                                         (letrec ((_%loop4059340617%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd4059140621%_ _%$e4059740624%_)
                             (if (gx#stx-pair? _%hd4059140621%_)
                                 (let ((_%e4059440626%_
                                        (gx#syntax-e _%hd4059140621%_)))
                                   (let ((_%lp-hd4059540630%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4059440626%_)))
                                         (_%lp-tl4059640633%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4059440626%_))))
                                     (_%loop4059340617%_
                                      _%lp-tl4059640633%_
                                      (cons _%lp-hd4059540630%_
                                            _%$e4059740624%_))))
                                 (let ((_%$e4059840636%_
                                        (reverse _%$e4059740624%_)))
                                   ((lambda (_%g4058940639%_)
                                      (cons (gx#datum->syntax '#f 'let-values)
                                            (cons (cons (cons (foldr (lambda (_%g4065440660%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%g4065540663%_)
                               (cons _%g4065440660%_ _%g4065540663%_))
                             '()
                             _%g4058940639%_)
                      (cons _%g4049040567%_ '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    (gx#syntax-check-splice-targets
                                                     _%g4058940639%_
                                                     _%g4049140569%_)
                                                    (foldr (lambda (_%g4065640666%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g4065740669%_
                            _%g4065840671%_)
                     (cons (cons (gx#datum->syntax '#f 'set!)
                                 (cons _%g4065740669%_
                                       (cons _%g4065640666%_ '())))
                           _%g4065840671%_))
                   '()
                   _%g4058940639%_
                   _%g4049140569%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%$e4059840636%_))))))
                   (_%loop4059340617%_ _%target4059040611%_ '()))
                 (_%g4058740604%_ _%g4058840608%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g4058740604%_
                                                _%g4058840608%_)))))
                                   (_%g4058640674%_
                                    (gx#gentemps
                                     (foldr (lambda (_%g4067740680%_
                                                     _%g4067840683%_)
                                              (cons _%g4067740680%_
                                                    _%g4067840683%_))
                                            '()
                                            _%g4049140569%_)))))
                               _%hd4050540539%_
                               _%tgt4050340564%_))))))
              (_%loop4049840545%_ _%target4049540529%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g4048840512%_
                                                     _%g4048940516%_))))
                                            (_%g4048840512%_
                                             _%g4048940516%_)))))
                                  (_%g4048840512%_ _%g4048940516%_))
                              (_%g4048840512%_ _%g4048940516%_))))
                      (_%g4048840512%_ _%g4048940516%_)))))
          (_%g4048740686%_ _%stx40485%_))))
    (define |gerbil/core/more-sugar[:0:]#parameterize|
      (lambda (_%$stx40692%_)
        (let* ((_%__stx4473844739%_ _%$stx40692%_)
               (_%g4069840786%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx4473844739%_))))
          (let ((_%__kont4474144742%_
                 (lambda (_%g4070041126%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g4114241145%_ _%g4114341148%_)
                                        (cons _%g4114241145%_ _%g4114341148%_))
                                      '()
                                      _%g4070041126%_)))))
                (_%__kont4474544746%_
                 (lambda (_%g4071641036%_ _%g4071741038%_ _%g4071841039%_)
                   (cons (gx#datum->syntax '#f 'call-with-parameters)
                         (cons (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '()
                                           (foldr (lambda (_%g4106241065%_
                                                           _%g4106341068%_)
                                                    (cons _%g4106241065%_
                                                          _%g4106341068%_))
                                                  '()
                                                  _%g4071641036%_)))
                               (cons _%g4071841039%_
                                     (cons _%g4071741038%_ '()))))))
                (_%__kont4474944750%_
                 (lambda (_%g4074340899%_
                          _%g4074440901%_
                          _%g4074540902%_
                          _%g4074640903%_
                          _%g4074740904%_)
                   (cons (gx#datum->syntax '#f 'call-with-parameters)
                         (cons (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '()
                                           (cons (cons _%g4074740904%_
                                                       (cons (foldr (lambda (_%g4093440939%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g4093540942%_)
                              (cons _%g4093440939%_ _%g4093540942%_))
                            '()
                            _%g4074440901%_)
                     (foldr (lambda (_%g4093640945%_ _%g4093740948%_)
                              (cons _%g4093640945%_ _%g4093740948%_))
                            '()
                            _%g4074340899%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%g4074640903%_
                                     (cons _%g4074540902%_ '())))))))
            (let* ((_%__match4485944860%_
                    (lambda (_%e4074840793%_
                             _%hd4074940797%_
                             _%tl4075040800%_
                             _%e4075140803%_
                             _%hd4075240807%_
                             _%tl4075340810%_
                             _%e4075440813%_
                             _%hd4075540817%_
                             _%tl4075640820%_
                             _%e4075740823%_
                             _%hd4075840827%_
                             _%tl4075940830%_
                             _%e4076040833%_
                             _%hd4076140837%_
                             _%tl4076240840%_
                             _%__splice4475144752%_
                             _%target4076340843%_
                             _%tl4076540846%_)
                      (letrec ((_%loop4076640849%_
                                (lambda (_%hd4076440853%_ _%rest4077040856%_)
                                  (if (gx#stx-pair? _%hd4076440853%_)
                                      (let ((_%e4076740858%_
                                             (gx#syntax-e _%hd4076440853%_)))
                                        (let ((_%lp-tl4076940865%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4076740858%_)))
                                              (_%lp-hd4076840862%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4076740858%_))))
                                          (_%loop4076640849%_
                                           _%lp-tl4076940865%_
                                           (cons _%lp-hd4076840862%_
                                                 _%rest4077040856%_))))
                                      (let ((_%rest4077140868%_
                                             (reverse _%rest4077040856%_)))
                                        (if (gx#stx-pair/null?
                                             _%tl4075340810%_)
                                            (let ((_%__splice4475344754%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4075340810%_
                                                    '0)))
                                              (let ((_%tl4077440874%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4475344754%_
                                                        '1)))
                                                    (_%target4077240871%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4475344754%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4077440874%_)
                                                    (letrec ((_%loop4077540877%_
                                                              (lambda (_%hd4077340881%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body4077940884%_)
                        (if (gx#stx-pair? _%hd4077340881%_)
                            (let ((_%e4077640886%_
                                   (gx#syntax-e _%hd4077340881%_)))
                              (let ((_%lp-tl4077840893%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4077640886%_)))
                                    (_%lp-hd4077740890%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4077640886%_))))
                                (_%loop4077540877%_
                                 _%lp-tl4077840893%_
                                 (cons _%lp-hd4077740890%_
                                       _%body4077940884%_))))
                            (let ((_%body4078040896%_
                                   (reverse _%body4077940884%_)))
                              (_%__kont4474944750%_
                               _%body4078040896%_
                               _%rest4077140868%_
                               _%hd4076140837%_
                               _%hd4075840827%_
                               _%hd4074940797%_))))))
              (_%loop4077540877%_ _%target4077240871%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4069840786%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4069840786%_))))))))
                        (_%loop4076640849%_ _%target4076340843%_ '()))))
                   (_%__match4481944820%_
                    (lambda (_%e4071940958%_
                             _%hd4072040962%_
                             _%tl4072140965%_
                             _%e4072240968%_
                             _%hd4072340972%_
                             _%tl4072440975%_
                             _%e4072540978%_
                             _%hd4072640982%_
                             _%tl4072740985%_
                             _%e4072840988%_
                             _%hd4072940992%_
                             _%tl4073040995%_
                             _%e4073140998%_
                             _%hd4073241002%_
                             _%tl4073341005%_
                             _%__splice4474744748%_
                             _%target4073441008%_
                             _%tl4073641011%_)
                      (letrec ((_%loop4073741014%_
                                (lambda (_%hd4073541018%_ _%body4074141021%_)
                                  (if (gx#stx-pair? _%hd4073541018%_)
                                      (let ((_%e4073841023%_
                                             (gx#syntax-e _%hd4073541018%_)))
                                        (let ((_%lp-tl4074041030%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4073841023%_)))
                                              (_%lp-hd4073941027%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4073841023%_))))
                                          (_%loop4073741014%_
                                           _%lp-tl4074041030%_
                                           (cons _%lp-hd4073941027%_
                                                 _%body4074141021%_))))
                                      (let ((_%body4074241033%_
                                             (reverse _%body4074141021%_)))
                                        (_%__kont4474544746%_
                                         _%body4074241033%_
                                         _%hd4073241002%_
                                         _%hd4072940992%_))))))
                        (_%loop4073741014%_ _%target4073441008%_ '()))))
                   (_%__match4477744778%_
                    (lambda (_%e4070141078%_
                             _%hd4070241082%_
                             _%tl4070341085%_
                             _%e4070441088%_
                             _%hd4070541092%_
                             _%tl4070641095%_
                             _%__splice4474344744%_
                             _%target4070741098%_
                             _%tl4070941101%_)
                      (letrec ((_%loop4071041104%_
                                (lambda (_%hd4070841108%_ _%body4071441111%_)
                                  (if (gx#stx-pair? _%hd4070841108%_)
                                      (let ((_%e4071141113%_
                                             (gx#syntax-e _%hd4070841108%_)))
                                        (let ((_%lp-tl4071341120%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4071141113%_)))
                                              (_%lp-hd4071241117%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4071141113%_))))
                                          (_%loop4071041104%_
                                           _%lp-tl4071341120%_
                                           (cons _%lp-hd4071241117%_
                                                 _%body4071441111%_))))
                                      (let ((_%body4071541123%_
                                             (reverse _%body4071441111%_)))
                                        (_%__kont4474144742%_
                                         _%body4071541123%_))))))
                        (_%loop4071041104%_ _%target4070741098%_ '())))))
              (if (gx#stx-pair? _%__stx4473844739%_)
                  (let ((_%e4070141078%_ (gx#syntax-e _%__stx4473844739%_)))
                    (let ((_%tl4070341085%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4070141078%_)))
                          (_%hd4070241082%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4070141078%_))))
                      (if (gx#stx-pair? _%tl4070341085%_)
                          (let ((_%e4070441088%_
                                 (gx#syntax-e _%tl4070341085%_)))
                            (let ((_%tl4070641095%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4070441088%_)))
                                  (_%hd4070541092%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4070441088%_))))
                              (if (gx#stx-null? _%hd4070541092%_)
                                  (if (gx#stx-pair/null? _%tl4070641095%_)
                                      (let ((_%__splice4474344744%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4070641095%_
                                              '0)))
                                        (let ((_%tl4070941101%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4474344744%_
                                                  '1)))
                                              (_%target4070741098%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4474344744%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4070941101%_)
                                              (_%__match4477744778%_
                                               _%e4070141078%_
                                               _%hd4070241082%_
                                               _%tl4070341085%_
                                               _%e4070441088%_
                                               _%hd4070541092%_
                                               _%tl4070641095%_
                                               _%__splice4474344744%_
                                               _%target4070741098%_
                                               _%tl4070941101%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4069840786%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4069840786%_)))
                                  (if (gx#stx-pair? _%hd4070541092%_)
                                      (let ((_%e4072540978%_
                                             (gx#syntax-e _%hd4070541092%_)))
                                        (let ((_%tl4072740985%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4072540978%_)))
                                              (_%hd4072640982%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4072540978%_))))
                                          (if (gx#stx-pair? _%hd4072640982%_)
                                              (let ((_%e4072840988%_
                                                     (gx#syntax-e
                                                      _%hd4072640982%_)))
                                                (let ((_%tl4073040995%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4072840988%_)))
                                                      (_%hd4072940992%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4072840988%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl4073040995%_)
                                                      (let ((_%e4073140998%_
                                                             (gx#syntax-e
                                                              _%tl4073040995%_)))
                                                        (let ((_%tl4073341005%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4073140998%_)))
                      (_%hd4073241002%_
                       (let () (declare (not safe)) (##car _%e4073140998%_))))
                  (if (gx#stx-null? _%tl4073341005%_)
                      (if (gx#stx-null? _%tl4072740985%_)
                          (if (gx#stx-pair/null? _%tl4070641095%_)
                              (let ((_%__splice4474744748%_
                                     (gx#syntax-split-splice->vector
                                      _%tl4070641095%_
                                      '0)))
                                (let ((_%tl4073641011%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4474744748%_
                                          '1)))
                                      (_%target4073441008%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4474744748%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4073641011%_)
                                      (_%__match4481944820%_
                                       _%e4070141078%_
                                       _%hd4070241082%_
                                       _%tl4070341085%_
                                       _%e4070441088%_
                                       _%hd4070541092%_
                                       _%tl4070641095%_
                                       _%e4072540978%_
                                       _%hd4072640982%_
                                       _%tl4072740985%_
                                       _%e4072840988%_
                                       _%hd4072940992%_
                                       _%tl4073040995%_
                                       _%e4073140998%_
                                       _%hd4073241002%_
                                       _%tl4073341005%_
                                       _%__splice4474744748%_
                                       _%target4073441008%_
                                       _%tl4073641011%_)
                                      (if (gx#stx-pair/null? _%tl4072740985%_)
                                          (let ((_%__splice4475144752%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl4072740985%_
                                                  '0)))
                                            (let ((_%tl4076540846%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4475144752%_
                                                      '1)))
                                                  (_%target4076340843%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4475144752%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4076540846%_)
                                                  (_%__match4485944860%_
                                                   _%e4070141078%_
                                                   _%hd4070241082%_
                                                   _%tl4070341085%_
                                                   _%e4070441088%_
                                                   _%hd4070541092%_
                                                   _%tl4070641095%_
                                                   _%e4072540978%_
                                                   _%hd4072640982%_
                                                   _%tl4072740985%_
                                                   _%e4072840988%_
                                                   _%hd4072940992%_
                                                   _%tl4073040995%_
                                                   _%e4073140998%_
                                                   _%hd4073241002%_
                                                   _%tl4073341005%_
                                                   _%__splice4475144752%_
                                                   _%target4076340843%_
                                                   _%tl4076540846%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4069840786%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4069840786%_))))))
                              (if (gx#stx-pair/null? _%tl4072740985%_)
                                  (let ((_%__splice4475144752%_
                                         (gx#syntax-split-splice->vector
                                          _%tl4072740985%_
                                          '0)))
                                    (let ((_%tl4076540846%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice4475144752%_
                                              '1)))
                                          (_%target4076340843%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice4475144752%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4076540846%_)
                                          (_%__match4485944860%_
                                           _%e4070141078%_
                                           _%hd4070241082%_
                                           _%tl4070341085%_
                                           _%e4070441088%_
                                           _%hd4070541092%_
                                           _%tl4070641095%_
                                           _%e4072540978%_
                                           _%hd4072640982%_
                                           _%tl4072740985%_
                                           _%e4072840988%_
                                           _%hd4072940992%_
                                           _%tl4073040995%_
                                           _%e4073140998%_
                                           _%hd4073241002%_
                                           _%tl4073341005%_
                                           _%__splice4475144752%_
                                           _%target4076340843%_
                                           _%tl4076540846%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4069840786%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4069840786%_))))
                          (if (gx#stx-pair/null? _%tl4072740985%_)
                              (let ((_%__splice4475144752%_
                                     (gx#syntax-split-splice->vector
                                      _%tl4072740985%_
                                      '0)))
                                (let ((_%tl4076540846%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4475144752%_
                                          '1)))
                                      (_%target4076340843%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4475144752%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4076540846%_)
                                      (_%__match4485944860%_
                                       _%e4070141078%_
                                       _%hd4070241082%_
                                       _%tl4070341085%_
                                       _%e4070441088%_
                                       _%hd4070541092%_
                                       _%tl4070641095%_
                                       _%e4072540978%_
                                       _%hd4072640982%_
                                       _%tl4072740985%_
                                       _%e4072840988%_
                                       _%hd4072940992%_
                                       _%tl4073040995%_
                                       _%e4073140998%_
                                       _%hd4073241002%_
                                       _%tl4073341005%_
                                       _%__splice4475144752%_
                                       _%target4076340843%_
                                       _%tl4076540846%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4069840786%_)))))
                              (let () (declare (not safe)) (_%g4069840786%_))))
                      (let () (declare (not safe)) (_%g4069840786%_)))))
              (let () (declare (not safe)) (_%g4069840786%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4069840786%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4069840786%_))))))
                          (let () (declare (not safe)) (_%g4069840786%_)))))
                  (let () (declare (not safe)) (_%g4069840786%_))))))))
    (define |gerbil/core/more-sugar[:0:]#let/cc|
      (lambda (_%$stx41159%_)
        (let* ((_%g4116341187%_
                (lambda (_%g4116441183%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4116441183%_)))
               (_%g4116241270%_
                (lambda (_%g4116441191%_)
                  (if (gx#stx-pair? _%g4116441191%_)
                      (let ((_%e4116741194%_ (gx#syntax-e _%g4116441191%_)))
                        (let ((_%hd4116841198%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4116741194%_)))
                              (_%tl4116941201%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4116741194%_))))
                          (if (gx#stx-pair? _%tl4116941201%_)
                              (let ((_%e4117041204%_
                                     (gx#syntax-e _%tl4116941201%_)))
                                (let ((_%hd4117141208%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4117041204%_)))
                                      (_%tl4117241211%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4117041204%_))))
                                  (if (gx#stx-pair/null? _%tl4117241211%_)
                                      (let ((_g45114_
                                             (gx#syntax-split-splice
                                              _%tl4117241211%_
                                              '0)))
                                        (begin
                                          (let ((_g45115_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45114_)
                                                       (##values-length
                                                        _g45114_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45115_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45115_)))
                                          (let ((_%target4117341214%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45114_ 0)))
                                                (_%tl4117541217%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45114_ 1))))
                                            (if (gx#stx-null? _%tl4117541217%_)
                                                (letrec ((_%loop4117641220%_
                                                          (lambda (_%hd4117441224%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4118041227%_)
                    (if (gx#stx-pair? _%hd4117441224%_)
                        (let ((_%e4117741229%_ (gx#syntax-e _%hd4117441224%_)))
                          (let ((_%lp-hd4117841233%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4117741229%_)))
                                (_%lp-tl4117941236%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4117741229%_))))
                            (_%loop4117641220%_
                             _%lp-tl4117941236%_
                             (cons _%lp-hd4117841233%_ _%body4118041227%_))))
                        (let ((_%body4118141239%_
                               (reverse _%body4118041227%_)))
                          ((lambda (_%g4116541242%_ _%g4116641244%_)
                             (if (gx#identifier? _%g4116641244%_)
                                 (cons (gx#datum->syntax '#f 'call/cc)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons (cons _%g4116641244%_
                                                               '())
                                                         (foldr (lambda (_%g4126141264%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g4126241267%_)
                          (cons _%g4126141264%_ _%g4126241267%_))
                        '()
                        _%g4116541242%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (_%g4116341187%_ _%g4116441191%_)))
                           _%body4118141239%_
                           _%hd4117141208%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4117641220%_
                                                   _%target4117341214%_
                                                   '()))
                                                (_%g4116341187%_
                                                 _%g4116441191%_)))))
                                      (_%g4116341187%_ _%g4116441191%_))))
                              (_%g4116341187%_ _%g4116441191%_))))
                      (_%g4116341187%_ _%g4116441191%_)))))
          (_%g4116241270%_ _%$stx41159%_))))
    (define |gerbil/core/more-sugar[:0:]#unwind-protect|
      (lambda (_%$stx41275%_)
        (let* ((_%g4127941307%_
                (lambda (_%g4128041303%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4128041303%_)))
               (_%g4127841404%_
                (lambda (_%g4128041311%_)
                  (if (gx#stx-pair? _%g4128041311%_)
                      (let ((_%e4128441314%_ (gx#syntax-e _%g4128041311%_)))
                        (let ((_%hd4128541318%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4128441314%_)))
                              (_%tl4128641321%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4128441314%_))))
                          (if (gx#stx-pair? _%tl4128641321%_)
                              (let ((_%e4128741324%_
                                     (gx#syntax-e _%tl4128641321%_)))
                                (let ((_%hd4128841328%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4128741324%_)))
                                      (_%tl4128941331%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4128741324%_))))
                                  (if (gx#stx-pair? _%tl4128941331%_)
                                      (let ((_%e4129041334%_
                                             (gx#syntax-e _%tl4128941331%_)))
                                        (let ((_%hd4129141338%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4129041334%_)))
                                              (_%tl4129241341%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4129041334%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4129241341%_)
                                              (let ((_g45116_
                                                     (gx#syntax-split-splice
                                                      _%tl4129241341%_
                                                      '0)))
                                                (begin
                                                  (let ((_g45117_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g45116_)
                                                               (##values-length
                                                                _g45116_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g45117_ 2)))
                (error "Context expects 2 values" _g45117_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target4129341344%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45116_
                                                            0)))
                                                        (_%tl4129541347%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45116_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl4129541347%_)
                                                        (letrec ((_%loop4129641350%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd4129441354%_ _%rest4130041357%_)
                            (if (gx#stx-pair? _%hd4129441354%_)
                                (let ((_%e4129741359%_
                                       (gx#syntax-e _%hd4129441354%_)))
                                  (let ((_%lp-hd4129841363%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4129741359%_)))
                                        (_%lp-tl4129941366%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4129741359%_))))
                                    (_%loop4129641350%_
                                     _%lp-tl4129941366%_
                                     (cons _%lp-hd4129841363%_
                                           _%rest4130041357%_))))
                                (let ((_%rest4130141369%_
                                       (reverse _%rest4130041357%_)))
                                  ((lambda (_%g4128141372%_
                                            _%g4128241374%_
                                            _%g4128341375%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'with-unwind-protect)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons '()
                                                             (cons _%g4128341375%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%g4128241374%_
                                 (foldr (lambda (_%g4139541398%_
                                                 _%g4139641401%_)
                                          (cons _%g4139541398%_
                                                _%g4139641401%_))
                                        '()
                                        _%g4128141372%_))))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%rest4130141369%_
                                   _%hd4129141338%_
                                   _%hd4128841328%_))))))
                  (_%loop4129641350%_ _%target4129341344%_ '()))
                (_%g4127941307%_ _%g4128041311%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4127941307%_
                                               _%g4128041311%_))))
                                      (_%g4127941307%_ _%g4128041311%_))))
                              (_%g4127941307%_ _%g4128041311%_))))
                      (_%g4127941307%_ _%g4128041311%_)))))
          (_%g4127841404%_ _%$stx41275%_))))
    (define |gerbil/core/more-sugar[:0:]#do|
      (lambda (_%$stx41409%_)
        (let* ((_%g4141341484%_
                (lambda (_%g4141441480%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4141441480%_)))
               (_%g4141241761%_
                (lambda (_%g4141441488%_)
                  (if (gx#stx-pair? _%g4141441488%_)
                      (let ((_%e4142141491%_ (gx#syntax-e _%g4141441488%_)))
                        (let ((_%hd4142241495%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4142141491%_)))
                              (_%tl4142341498%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4142141491%_))))
                          (if (gx#stx-pair? _%tl4142341498%_)
                              (let ((_%e4142441501%_
                                     (gx#syntax-e _%tl4142341498%_)))
                                (let ((_%hd4142541505%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4142441501%_)))
                                      (_%tl4142641508%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4142441501%_))))
                                  (if (gx#stx-pair/null? _%hd4142541505%_)
                                      (let ((_g45118_
                                             (gx#syntax-split-splice
                                              _%hd4142541505%_
                                              '0)))
                                        (begin
                                          (let ((_g45119_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45118_)
                                                       (##values-length
                                                        _g45118_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45119_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45119_)))
                                          (let ((_%target4142741511%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45118_ 0)))
                                                (_%tl4142941514%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45118_ 1))))
                                            (if (gx#stx-null? _%tl4142941514%_)
                                                (letrec ((_%loop4143041517%_
                                                          (lambda (_%hd4142841521%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%step4143441524%_
                           _%init4143541525%_
                           _%var4143641526%_)
                    (if (gx#stx-pair? _%hd4142841521%_)
                        (let ((_%e4143141528%_ (gx#syntax-e _%hd4142841521%_)))
                          (let ((_%lp-hd4143241532%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4143141528%_)))
                                (_%lp-tl4143341535%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4143141528%_))))
                            (if (gx#stx-pair? _%lp-hd4143241532%_)
                                (let ((_%e4144041538%_
                                       (gx#syntax-e _%lp-hd4143241532%_)))
                                  (let ((_%hd4144141542%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4144041538%_)))
                                        (_%tl4144241545%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4144041538%_))))
                                    (if (gx#stx-pair? _%tl4144241545%_)
                                        (let ((_%e4144341548%_
                                               (gx#syntax-e _%tl4144241545%_)))
                                          (let ((_%hd4144441552%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4144341548%_)))
                                                (_%tl4144541555%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4144341548%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl4144541555%_)
                                                (let ((_g45120_
                                                       (gx#syntax-split-splice
                                                        _%tl4144541555%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g45121_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g45120_)
                         (##values-length _g45120_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g45121_ 2)))
                  (error "Context expects 2 values" _g45121_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target4144641558%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g45120_
                                                              0)))
                                                          (_%tl4144841561%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g45120_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl4144841561%_)
                                                          (letrec ((_%loop4144941564%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd4144741568%_ _%step4145341571%_)
                              (if (gx#stx-pair? _%hd4144741568%_)
                                  (let ((_%e4145041573%_
                                         (gx#syntax-e _%hd4144741568%_)))
                                    (let ((_%lp-hd4145141577%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4145041573%_)))
                                          (_%lp-tl4145241580%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4145041573%_))))
                                      (_%loop4144941564%_
                                       _%lp-tl4145241580%_
                                       (cons _%lp-hd4145141577%_
                                             _%step4145341571%_))))
                                  (let ((_%step4145441583%_
                                         (reverse _%step4145341571%_)))
                                    (_%loop4143041517%_
                                     _%lp-tl4143341535%_
                                     (cons _%step4145441583%_
                                           _%step4143441524%_)
                                     (cons _%hd4144441552%_ _%init4143541525%_)
                                     (cons _%hd4144141542%_
                                           _%var4143641526%_)))))))
                    (_%loop4144941564%_ _%target4144641558%_ '()))
                  (_%g4141341484%_ _%g4141441488%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g4141341484%_
                                                 _%g4141441488%_))))
                                        (_%g4141341484%_ _%g4141441488%_))))
                                (_%g4141341484%_ _%g4141441488%_))))
                        (let ((_%step4143741586%_ (reverse _%step4143441524%_))
                              (_%init4143841588%_ (reverse _%init4143541525%_))
                              (_%var4143941589%_ (reverse _%var4143641526%_)))
                          (if (gx#stx-pair? _%tl4142641508%_)
                              (let ((_%e4145541591%_
                                     (gx#syntax-e _%tl4142641508%_)))
                                (let ((_%hd4145641595%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4145541591%_)))
                                      (_%tl4145741598%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4145541591%_))))
                                  (if (gx#stx-pair? _%hd4145641595%_)
                                      (let ((_%e4145841601%_
                                             (gx#syntax-e _%hd4145641595%_)))
                                        (let ((_%hd4145941605%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4145841601%_)))
                                              (_%tl4146041608%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4145841601%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4146041608%_)
                                              (let ((_g45122_
                                                     (gx#syntax-split-splice
                                                      _%tl4146041608%_
                                                      '0)))
                                                (begin
                                                  (let ((_g45123_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g45122_)
                                                               (##values-length
                                                                _g45122_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g45123_ 2)))
                (error "Context expects 2 values" _g45123_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target4146141611%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45122_
                                                            0)))
                                                        (_%tl4146341614%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45122_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl4146341614%_)
                                                        (letrec ((_%loop4146441617%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd4146241621%_ _%fini4146841624%_)
                            (if (gx#stx-pair? _%hd4146241621%_)
                                (let ((_%e4146541626%_
                                       (gx#syntax-e _%hd4146241621%_)))
                                  (let ((_%lp-hd4146641630%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4146541626%_)))
                                        (_%lp-tl4146741633%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4146541626%_))))
                                    (_%loop4146441617%_
                                     _%lp-tl4146741633%_
                                     (cons _%lp-hd4146641630%_
                                           _%fini4146841624%_))))
                                (let ((_%fini4146941636%_
                                       (reverse _%fini4146841624%_)))
                                  (if (gx#stx-pair/null? _%tl4145741598%_)
                                      (let ((_g45124_
                                             (gx#syntax-split-splice
                                              _%tl4145741598%_
                                              '0)))
                                        (begin
                                          (let ((_g45125_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45124_)
                                                       (##values-length
                                                        _g45124_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45125_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45125_)))
                                          (let ((_%target4147041639%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45124_ 0)))
                                                (_%tl4147241642%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45124_ 1))))
                                            (if (gx#stx-null? _%tl4147241642%_)
                                                (letrec ((_%loop4147341645%_
                                                          (lambda (_%hd4147141649%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4147741652%_)
                    (if (gx#stx-pair? _%hd4147141649%_)
                        (let ((_%e4147441654%_ (gx#syntax-e _%hd4147141649%_)))
                          (let ((_%lp-hd4147541658%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4147441654%_)))
                                (_%lp-tl4147641661%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4147441654%_))))
                            (_%loop4147341645%_
                             _%lp-tl4147641661%_
                             (cons _%lp-hd4147541658%_ _%body4147741652%_))))
                        (let ((_%body4147841664%_
                               (reverse _%body4147741652%_)))
                          ((lambda (_%g4141541667%_
                                    _%g4141641669%_
                                    _%g4141741670%_
                                    _%g4141841671%_
                                    _%g4141941672%_
                                    _%g4142041673%_)
                             (if (gx#stx-andmap
                                  gx#identifier?
                                  (foldr (lambda (_%g4170641709%_
                                                  _%g4170741712%_)
                                           (cons _%g4170641709%_
                                                 _%g4170741712%_))
                                         '()
                                         _%g4142041673%_))
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (gx#datum->syntax '#f '$loop)
                                             (cons (begin
                                                     (gx#syntax-check-splice-targets
                                                      _%g4141941672%_
                                                      _%g4142041673%_)
                                                     (foldr (lambda (_%g4171441727%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g4171541730%_
                             _%g4171641732%_)
                      (cons (cons _%g4171541730%_ (cons _%g4171441727%_ '()))
                            _%g4171641732%_))
                    '()
                    _%g4141941672%_
                    _%g4142041673%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'if)
                                                               (cons _%g4141741670%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'begin)
                                         (cons '#!void
                                               (foldr (lambda (_%g4171741735%_
                                                               _%g4171841738%_)
                                                        (cons _%g4171741735%_
                                                              _%g4171841738%_))
                                                      '()
                                                      _%g4141641669%_)))
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g4171941741%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g4172041744%_)
                      (cons _%g4171941741%_ _%g4172041744%_))
                    (cons (cons (gx#datum->syntax '#f '$loop)
                                (begin
                                  (gx#syntax-check-splice-targets
                                   _%g4141841671%_
                                   _%g4142041673%_)
                                  (foldr (lambda (_%g4172141747%_
                                                  _%g4172241750%_
                                                  _%g4172341752%_)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (cons _%g4172241750%_
                                                             (foldr (lambda (_%g4172441755%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g4172541758%_)
                              (cons _%g4172441755%_ _%g4172541758%_))
                            '()
                            _%g4172141747%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g4172341752%_))
                                         '()
                                         _%g4141841671%_
                                         _%g4142041673%_)))
                          '())
                    _%g4141541667%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (_%g4141341484%_ _%g4141441488%_)))
                           _%body4147841664%_
                           _%fini4146941636%_
                           _%hd4145941605%_
                           _%step4143741586%_
                           _%init4143841588%_
                           _%var4143941589%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4147341645%_
                                                   _%target4147041639%_
                                                   '()))
                                                (_%g4141341484%_
                                                 _%g4141441488%_)))))
                                      (_%g4141341484%_ _%g4141441488%_)))))))
                  (_%loop4146441617%_ _%target4146141611%_ '()))
                (_%g4141341484%_ _%g4141441488%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4141341484%_
                                               _%g4141441488%_))))
                                      (_%g4141341484%_ _%g4141441488%_))))
                              (_%g4141341484%_ _%g4141441488%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4143041517%_
                                                   _%target4142741511%_
                                                   '()
                                                   '()
                                                   '()))
                                                (_%g4141341484%_
                                                 _%g4141441488%_)))))
                                      (_%g4141341484%_ _%g4141441488%_))))
                              (_%g4141341484%_ _%g4141441488%_))))
                      (_%g4141341484%_ _%g4141441488%_)))))
          (_%g4141241761%_ _%$stx41409%_))))
    (define |gerbil/core/more-sugar[:0:]#do-while|
      (lambda (_%$stx41769%_)
        (let* ((_%g4177341844%_
                (lambda (_%g4177441840%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4177441840%_)))
               (_%g4177242121%_
                (lambda (_%g4177441848%_)
                  (if (gx#stx-pair? _%g4177441848%_)
                      (let ((_%e4178141851%_ (gx#syntax-e _%g4177441848%_)))
                        (let ((_%hd4178241855%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4178141851%_)))
                              (_%tl4178341858%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4178141851%_))))
                          (if (gx#stx-pair? _%tl4178341858%_)
                              (let ((_%e4178441861%_
                                     (gx#syntax-e _%tl4178341858%_)))
                                (let ((_%hd4178541865%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4178441861%_)))
                                      (_%tl4178641868%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4178441861%_))))
                                  (if (gx#stx-pair/null? _%hd4178541865%_)
                                      (let ((_g45126_
                                             (gx#syntax-split-splice
                                              _%hd4178541865%_
                                              '0)))
                                        (begin
                                          (let ((_g45127_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45126_)
                                                       (##values-length
                                                        _g45126_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45127_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45127_)))
                                          (let ((_%target4178741871%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45126_ 0)))
                                                (_%tl4178941874%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45126_ 1))))
                                            (if (gx#stx-null? _%tl4178941874%_)
                                                (letrec ((_%loop4179041877%_
                                                          (lambda (_%hd4178841881%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%step4179441884%_
                           _%init4179541885%_
                           _%var4179641886%_)
                    (if (gx#stx-pair? _%hd4178841881%_)
                        (let ((_%e4179141888%_ (gx#syntax-e _%hd4178841881%_)))
                          (let ((_%lp-hd4179241892%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4179141888%_)))
                                (_%lp-tl4179341895%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4179141888%_))))
                            (if (gx#stx-pair? _%lp-hd4179241892%_)
                                (let ((_%e4180041898%_
                                       (gx#syntax-e _%lp-hd4179241892%_)))
                                  (let ((_%hd4180141902%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4180041898%_)))
                                        (_%tl4180241905%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4180041898%_))))
                                    (if (gx#stx-pair? _%tl4180241905%_)
                                        (let ((_%e4180341908%_
                                               (gx#syntax-e _%tl4180241905%_)))
                                          (let ((_%hd4180441912%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4180341908%_)))
                                                (_%tl4180541915%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4180341908%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl4180541915%_)
                                                (let ((_g45128_
                                                       (gx#syntax-split-splice
                                                        _%tl4180541915%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g45129_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g45128_)
                         (##values-length _g45128_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g45129_ 2)))
                  (error "Context expects 2 values" _g45129_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target4180641918%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g45128_
                                                              0)))
                                                          (_%tl4180841921%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g45128_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl4180841921%_)
                                                          (letrec ((_%loop4180941924%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd4180741928%_ _%step4181341931%_)
                              (if (gx#stx-pair? _%hd4180741928%_)
                                  (let ((_%e4181041933%_
                                         (gx#syntax-e _%hd4180741928%_)))
                                    (let ((_%lp-hd4181141937%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4181041933%_)))
                                          (_%lp-tl4181241940%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4181041933%_))))
                                      (_%loop4180941924%_
                                       _%lp-tl4181241940%_
                                       (cons _%lp-hd4181141937%_
                                             _%step4181341931%_))))
                                  (let ((_%step4181441943%_
                                         (reverse _%step4181341931%_)))
                                    (_%loop4179041877%_
                                     _%lp-tl4179341895%_
                                     (cons _%step4181441943%_
                                           _%step4179441884%_)
                                     (cons _%hd4180441912%_ _%init4179541885%_)
                                     (cons _%hd4180141902%_
                                           _%var4179641886%_)))))))
                    (_%loop4180941924%_ _%target4180641918%_ '()))
                  (_%g4177341844%_ _%g4177441848%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g4177341844%_
                                                 _%g4177441848%_))))
                                        (_%g4177341844%_ _%g4177441848%_))))
                                (_%g4177341844%_ _%g4177441848%_))))
                        (let ((_%step4179741946%_ (reverse _%step4179441884%_))
                              (_%init4179841948%_ (reverse _%init4179541885%_))
                              (_%var4179941949%_ (reverse _%var4179641886%_)))
                          (if (gx#stx-pair? _%tl4178641868%_)
                              (let ((_%e4181541951%_
                                     (gx#syntax-e _%tl4178641868%_)))
                                (let ((_%hd4181641955%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4181541951%_)))
                                      (_%tl4181741958%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4181541951%_))))
                                  (if (gx#stx-pair? _%hd4181641955%_)
                                      (let ((_%e4181841961%_
                                             (gx#syntax-e _%hd4181641955%_)))
                                        (let ((_%hd4181941965%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4181841961%_)))
                                              (_%tl4182041968%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4181841961%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4182041968%_)
                                              (let ((_g45130_
                                                     (gx#syntax-split-splice
                                                      _%tl4182041968%_
                                                      '0)))
                                                (begin
                                                  (let ((_g45131_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g45130_)
                                                               (##values-length
                                                                _g45130_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g45131_ 2)))
                (error "Context expects 2 values" _g45131_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target4182141971%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45130_
                                                            0)))
                                                        (_%tl4182341974%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g45130_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl4182341974%_)
                                                        (letrec ((_%loop4182441977%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd4182241981%_ _%fini4182841984%_)
                            (if (gx#stx-pair? _%hd4182241981%_)
                                (let ((_%e4182541986%_
                                       (gx#syntax-e _%hd4182241981%_)))
                                  (let ((_%lp-hd4182641990%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4182541986%_)))
                                        (_%lp-tl4182741993%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4182541986%_))))
                                    (_%loop4182441977%_
                                     _%lp-tl4182741993%_
                                     (cons _%lp-hd4182641990%_
                                           _%fini4182841984%_))))
                                (let ((_%fini4182941996%_
                                       (reverse _%fini4182841984%_)))
                                  (if (gx#stx-pair/null? _%tl4181741958%_)
                                      (let ((_g45132_
                                             (gx#syntax-split-splice
                                              _%tl4181741958%_
                                              '0)))
                                        (begin
                                          (let ((_g45133_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45132_)
                                                       (##values-length
                                                        _g45132_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45133_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45133_)))
                                          (let ((_%target4183041999%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45132_ 0)))
                                                (_%tl4183242002%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45132_ 1))))
                                            (if (gx#stx-null? _%tl4183242002%_)
                                                (letrec ((_%loop4183342005%_
                                                          (lambda (_%hd4183142009%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4183742012%_)
                    (if (gx#stx-pair? _%hd4183142009%_)
                        (let ((_%e4183442014%_ (gx#syntax-e _%hd4183142009%_)))
                          (let ((_%lp-hd4183542018%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4183442014%_)))
                                (_%lp-tl4183642021%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4183442014%_))))
                            (_%loop4183342005%_
                             _%lp-tl4183642021%_
                             (cons _%lp-hd4183542018%_ _%body4183742012%_))))
                        (let ((_%body4183842024%_
                               (reverse _%body4183742012%_)))
                          ((lambda (_%g4177542027%_
                                    _%g4177642029%_
                                    _%g4177742030%_
                                    _%g4177842031%_
                                    _%g4177942032%_
                                    _%g4178042033%_)
                             (if (gx#stx-andmap
                                  gx#identifier?
                                  (foldr (lambda (_%g4206642069%_
                                                  _%g4206742072%_)
                                           (cons _%g4206642069%_
                                                 _%g4206742072%_))
                                         '()
                                         _%g4178042033%_))
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (gx#datum->syntax '#f '$loop)
                                             (cons (begin
                                                     (gx#syntax-check-splice-targets
                                                      _%g4177942032%_
                                                      _%g4178042033%_)
                                                     (foldr (lambda (_%g4207442087%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g4207542090%_
                             _%g4207642092%_)
                      (cons (cons _%g4207542090%_ (cons _%g4207442087%_ '()))
                            _%g4207642092%_))
                    '()
                    _%g4177942032%_
                    _%g4178042033%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (foldr (lambda (_%g4207742095%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g4207842098%_)
                    (cons _%g4207742095%_ _%g4207842098%_))
                  (cons (cons (gx#datum->syntax '#f 'if)
                              (cons _%g4177742030%_
                                    (cons (cons (gx#datum->syntax '#f '$loop)
                                                (begin
                                                  (gx#syntax-check-splice-targets
                                                   _%g4177842031%_
                                                   _%g4178042033%_)
                                                  (foldr (lambda (_%g4207942101%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g4208042104%_
                          _%g4208142106%_)
                   (cons (cons (gx#datum->syntax '#f 'begin)
                               (cons _%g4208042104%_
                                     (foldr (lambda (_%g4208242109%_
                                                     _%g4208342112%_)
                                              (cons _%g4208242109%_
                                                    _%g4208342112%_))
                                            '()
                                            _%g4207942101%_)))
                         _%g4208142106%_))
                 '()
                 _%g4177842031%_
                 _%g4178042033%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'begin)
                                                      (cons '#!void
                                                            (foldr (lambda (_%g4208442115%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g4208542118%_)
                             (cons _%g4208442115%_ _%g4208542118%_))
                           '()
                           _%g4177642029%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                        '())
                  _%g4177542027%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (_%g4177341844%_ _%g4177441848%_)))
                           _%body4183842024%_
                           _%fini4182941996%_
                           _%hd4181941965%_
                           _%step4179741946%_
                           _%init4179841948%_
                           _%var4179941949%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4183342005%_
                                                   _%target4183041999%_
                                                   '()))
                                                (_%g4177341844%_
                                                 _%g4177441848%_)))))
                                      (_%g4177341844%_ _%g4177441848%_)))))))
                  (_%loop4182441977%_ _%target4182141971%_ '()))
                (_%g4177341844%_ _%g4177441848%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4177341844%_
                                               _%g4177441848%_))))
                                      (_%g4177341844%_ _%g4177441848%_))))
                              (_%g4177341844%_ _%g4177441848%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4179041877%_
                                                   _%target4178741871%_
                                                   '()
                                                   '()
                                                   '()))
                                                (_%g4177341844%_
                                                 _%g4177441848%_)))))
                                      (_%g4177341844%_ _%g4177441848%_))))
                              (_%g4177341844%_ _%g4177441848%_))))
                      (_%g4177341844%_ _%g4177441848%_)))))
          (_%g4177242121%_ _%$stx41769%_))))
    (define |gerbil/core/more-sugar[:0:]#while|
      (lambda (_%$stx42129%_)
        (let* ((_%g4213342157%_
                (lambda (_%g4213442153%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4213442153%_)))
               (_%g4213242240%_
                (lambda (_%g4213442161%_)
                  (if (gx#stx-pair? _%g4213442161%_)
                      (let ((_%e4213742164%_ (gx#syntax-e _%g4213442161%_)))
                        (let ((_%hd4213842168%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4213742164%_)))
                              (_%tl4213942171%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4213742164%_))))
                          (if (gx#stx-pair? _%tl4213942171%_)
                              (let ((_%e4214042174%_
                                     (gx#syntax-e _%tl4213942171%_)))
                                (let ((_%hd4214142178%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4214042174%_)))
                                      (_%tl4214242181%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4214042174%_))))
                                  (if (gx#stx-pair/null? _%tl4214242181%_)
                                      (let ((_g45134_
                                             (gx#syntax-split-splice
                                              _%tl4214242181%_
                                              '0)))
                                        (begin
                                          (let ((_g45135_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45134_)
                                                       (##values-length
                                                        _g45134_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45135_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45135_)))
                                          (let ((_%target4214342184%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45134_ 0)))
                                                (_%tl4214542187%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45134_ 1))))
                                            (if (gx#stx-null? _%tl4214542187%_)
                                                (letrec ((_%loop4214642190%_
                                                          (lambda (_%hd4214442194%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4215042197%_)
                    (if (gx#stx-pair? _%hd4214442194%_)
                        (let ((_%e4214742199%_ (gx#syntax-e _%hd4214442194%_)))
                          (let ((_%lp-hd4214842203%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4214742199%_)))
                                (_%lp-tl4214942206%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4214742199%_))))
                            (_%loop4214642190%_
                             _%lp-tl4214942206%_
                             (cons _%lp-hd4214842203%_ _%body4215042197%_))))
                        (let ((_%body4215142209%_
                               (reverse _%body4215042197%_)))
                          ((lambda (_%g4213542212%_ _%g4213642214%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (gx#datum->syntax '#f 'lp)
                                         (cons '()
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'when)
                                                           (cons _%g4213642214%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g4223142234%_ _%g4223242237%_)
                                  (cons _%g4223142234%_ _%g4223242237%_))
                                (cons (cons (gx#datum->syntax '#f 'lp) '())
                                      '())
                                _%g4213542212%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                           _%body4215142209%_
                           _%hd4214142178%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4214642190%_
                                                   _%target4214342184%_
                                                   '()))
                                                (_%g4213342157%_
                                                 _%g4213442161%_)))))
                                      (_%g4213342157%_ _%g4213442161%_))))
                              (_%g4213342157%_ _%g4213442161%_))))
                      (_%g4213342157%_ _%g4213442161%_)))))
          (_%g4213242240%_ _%$stx42129%_))))
    (define |gerbil/core/more-sugar[:0:]#until|
      (lambda (_%$stx42245%_)
        (let* ((_%g4224942273%_
                (lambda (_%g4225042269%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4225042269%_)))
               (_%g4224842356%_
                (lambda (_%g4225042277%_)
                  (if (gx#stx-pair? _%g4225042277%_)
                      (let ((_%e4225342280%_ (gx#syntax-e _%g4225042277%_)))
                        (let ((_%hd4225442284%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4225342280%_)))
                              (_%tl4225542287%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4225342280%_))))
                          (if (gx#stx-pair? _%tl4225542287%_)
                              (let ((_%e4225642290%_
                                     (gx#syntax-e _%tl4225542287%_)))
                                (let ((_%hd4225742294%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4225642290%_)))
                                      (_%tl4225842297%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4225642290%_))))
                                  (if (gx#stx-pair/null? _%tl4225842297%_)
                                      (let ((_g45136_
                                             (gx#syntax-split-splice
                                              _%tl4225842297%_
                                              '0)))
                                        (begin
                                          (let ((_g45137_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45136_)
                                                       (##values-length
                                                        _g45136_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45137_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45137_)))
                                          (let ((_%target4225942300%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45136_ 0)))
                                                (_%tl4226142303%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45136_ 1))))
                                            (if (gx#stx-null? _%tl4226142303%_)
                                                (letrec ((_%loop4226242306%_
                                                          (lambda (_%hd4226042310%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4226642313%_)
                    (if (gx#stx-pair? _%hd4226042310%_)
                        (let ((_%e4226342315%_ (gx#syntax-e _%hd4226042310%_)))
                          (let ((_%lp-hd4226442319%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4226342315%_)))
                                (_%lp-tl4226542322%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4226342315%_))))
                            (_%loop4226242306%_
                             _%lp-tl4226542322%_
                             (cons _%lp-hd4226442319%_ _%body4226642313%_))))
                        (let ((_%body4226742325%_
                               (reverse _%body4226642313%_)))
                          ((lambda (_%g4225142328%_ _%g4225242330%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (gx#datum->syntax '#f 'lp)
                                         (cons '()
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'unless)
                                                           (cons _%g4225242330%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g4234742350%_ _%g4234842353%_)
                                  (cons _%g4234742350%_ _%g4234842353%_))
                                (cons (cons (gx#datum->syntax '#f 'lp) '())
                                      '())
                                _%g4225142328%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                           _%body4226742325%_
                           _%hd4225742294%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4226242306%_
                                                   _%target4225942300%_
                                                   '()))
                                                (_%g4224942273%_
                                                 _%g4225042277%_)))))
                                      (_%g4224942273%_ _%g4225042277%_))))
                              (_%g4224942273%_ _%g4225042277%_))))
                      (_%g4224942273%_ _%g4225042277%_)))))
          (_%g4224842356%_ _%$stx42245%_))))
    (define |gerbil/core/more-sugar[:0:]#catch|
      (lambda (_%$stx42361%_)
        (let ((_%g4236442371%_
               (lambda (_%g4236542367%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4236542367%_))))
          (_%g4236442371%_ _%$stx42361%_))))
    (define |gerbil/core/more-sugar[:0:]#finally|
      (lambda (_%$stx42375%_)
        (let ((_%g4237842385%_
               (lambda (_%g4237942381%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4237942381%_))))
          (_%g4237842385%_ _%$stx42375%_))))
    (define |gerbil/core/more-sugar[:0:]#try|
      (lambda (_%stx42389%_)
        (letrec ((_%generate-thunk42392%_
                  (lambda (_%body43711%_)
                    (if (null? _%body43711%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; missing body"
                         _%stx42389%_)
                        (let* ((_%g4371443731%_
                                (lambda (_%g4371543727%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g4371543727%_)))
                               (_%g4371343790%_
                                (lambda (_%g4371543735%_)
                                  (if (gx#stx-pair/null? _%g4371543735%_)
                                      (let ((_g45138_
                                             (gx#syntax-split-splice
                                              _%g4371543735%_
                                              '0)))
                                        (begin
                                          (let ((_g45139_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45138_)
                                                       (##values-length
                                                        _g45138_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45139_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45139_)))
                                          (let ((_%target4371743738%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45138_ 0)))
                                                (_%tl4371943741%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45138_ 1))))
                                            (if (gx#stx-null? _%tl4371943741%_)
                                                (letrec ((_%loop4372043744%_
                                                          (lambda (_%hd4371843748%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%e4372443751%_)
                    (if (gx#stx-pair? _%hd4371843748%_)
                        (let ((_%e4372143753%_ (gx#syntax-e _%hd4371843748%_)))
                          (let ((_%lp-hd4372243757%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4372143753%_)))
                                (_%lp-tl4372343760%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4372143753%_))))
                            (_%loop4372043744%_
                             _%lp-tl4372343760%_
                             (cons _%lp-hd4372243757%_ _%e4372443751%_))))
                        (let ((_%e4372543763%_ (reverse _%e4372443751%_)))
                          ((lambda (_%g4371643766%_)
                             (cons (gx#datum->syntax '#f 'lambda)
                                   (cons '()
                                         (foldr (lambda (_%g4378143784%_
                                                         _%g4378243787%_)
                                                  (cons _%g4378143784%_
                                                        _%g4378243787%_))
                                                '()
                                                _%g4371643766%_))))
                           _%e4372543763%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4372043744%_
                                                   _%target4371743738%_
                                                   '()))
                                                (_%g4371443731%_
                                                 _%g4371543735%_)))))
                                      (_%g4371443731%_ _%g4371543735%_)))))
                          (_%g4371343790%_ (reverse _%body43711%_))))))
                 (_%generate-fini42394%_
                  (lambda (_%thunk43594%_ _%fini43596%_)
                    (let* ((_%g4359843622%_
                            (lambda (_%g4359943618%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4359943618%_)))
                           (_%g4359743707%_
                            (lambda (_%g4359943626%_)
                              (if (gx#stx-pair? _%g4359943626%_)
                                  (let ((_%e4360243629%_
                                         (gx#syntax-e _%g4359943626%_)))
                                    (let ((_%hd4360343633%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4360243629%_)))
                                          (_%tl4360443636%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4360243629%_))))
                                      (if (gx#stx-pair? _%tl4360443636%_)
                                          (let ((_%e4360543639%_
                                                 (gx#syntax-e
                                                  _%tl4360443636%_)))
                                            (let ((_%hd4360643643%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4360543639%_)))
                                                  (_%tl4360743646%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4360543639%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd4360643643%_)
                                                  (let ((_g45140_
                                                         (gx#syntax-split-splice
                                                          _%hd4360643643%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g45141_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g45140_)
                           (##values-length _g45140_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g45141_ 2)))
                    (error "Context expects 2 values" _g45141_)))
              (let ((_%target4360843649%_
                     (let () (declare (not safe)) (##values-ref _g45140_ 0)))
                    (_%tl4361043652%_
                     (let () (declare (not safe)) (##values-ref _g45140_ 1))))
                (if (gx#stx-null? _%tl4361043652%_)
                    (letrec ((_%loop4361143655%_
                              (lambda (_%hd4360943659%_ _%e4361543662%_)
                                (if (gx#stx-pair? _%hd4360943659%_)
                                    (let ((_%e4361243664%_
                                           (gx#syntax-e _%hd4360943659%_)))
                                      (let ((_%lp-hd4361343668%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4361243664%_)))
                                            (_%lp-tl4361443671%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4361243664%_))))
                                        (_%loop4361143655%_
                                         _%lp-tl4361443671%_
                                         (cons _%lp-hd4361343668%_
                                               _%e4361543662%_))))
                                    (let ((_%e4361643674%_
                                           (reverse _%e4361543662%_)))
                                      (if (gx#stx-null? _%tl4360743646%_)
                                          ((lambda (_%g4360043677%_
                                                    _%g4360143679%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'with-unwind-protect)
                                                   (cons _%g4360143679%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'lambda)
                             (cons '()
                                   (foldr (lambda (_%g4369843701%_
                                                   _%g4369943704%_)
                                            (cons _%g4369843701%_
                                                  _%g4369943704%_))
                                          '()
                                          _%g4360043677%_)))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%e4361643674%_
                                           _%hd4360343633%_)
                                          (_%g4359843622%_
                                           _%g4359943626%_)))))))
                      (_%loop4361143655%_ _%target4360843649%_ '()))
                    (_%g4359843622%_ _%g4359943626%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4359843622%_
                                                   _%g4359943626%_))))
                                          (_%g4359843622%_ _%g4359943626%_))))
                                  (_%g4359843622%_ _%g4359943626%_)))))
                      (_%g4359743707%_ (list _%thunk43594%_ _%fini43596%_)))))
                 (_%generate-catch42395%_
                  (lambda (_%handlers43009%_ _%thunk43011%_)
                    (let* ((_%g4301343021%_
                            (lambda (_%g4301443017%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4301443017%_)))
                           (_%g4301243590%_
                            (lambda (_%g4301443025%_)
                              ((lambda (_%g4301543028%_)
                                 (let _%lp43040%_ ((_%rest43043%_
                                                    _%handlers43009%_)
                                                   (_%clauses43045%_ '()))
                                   (let* ((_%rest4304643054%_ _%rest43043%_)
                                          (_%else4304843185%_
                                           (lambda ()
                                             (let* ((_%g4306643090%_
                                                     (lambda (_%g4306743086%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g4306743086%_)))
                                                    (_%g4306543181%_
                                                     (lambda (_%g4306743094%_)
                                                       (if (gx#stx-pair?
                                                            _%g4306743094%_)
                                                           (let ((_%e4307043097%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%g4306743094%_)))
                     (let ((_%hd4307143101%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4307043097%_)))
                           (_%tl4307243104%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4307043097%_))))
                       (if (gx#stx-pair/null? _%hd4307143101%_)
                           (let ((_g45142_
                                  (gx#syntax-split-splice
                                   _%hd4307143101%_
                                   '0)))
                             (begin
                               (let ((_g45143_
                                      (let ()
                                        (declare (not safe))
                                        (if (##values? _g45142_)
                                            (##values-length _g45142_)
                                            1))))
                                 (if (not (let ()
                                            (declare (not safe))
                                            (##fx= _g45143_ 2)))
                                     (error "Context expects 2 values"
                                            _g45143_)))
                               (let ((_%target4307343107%_
                                      (let ()
                                        (declare (not safe))
                                        (##values-ref _g45142_ 0)))
                                     (_%tl4307543110%_
                                      (let ()
                                        (declare (not safe))
                                        (##values-ref _g45142_ 1))))
                                 (if (gx#stx-null? _%tl4307543110%_)
                                     (letrec ((_%loop4307643113%_
                                               (lambda (_%hd4307443117%_
                                                        _%clause4308043120%_)
                                                 (if (gx#stx-pair?
                                                      _%hd4307443117%_)
                                                     (let ((_%e4307743122%_
                                                            (gx#syntax-e
                                                             _%hd4307443117%_)))
                                                       (let ((_%lp-hd4307843126%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e4307743122%_)))
                     (_%lp-tl4307943129%_
                      (let () (declare (not safe)) (##cdr _%e4307743122%_))))
                 (_%loop4307643113%_
                  _%lp-tl4307943129%_
                  (cons _%lp-hd4307843126%_ _%clause4308043120%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%clause4308143132%_
                                                            (reverse _%clause4308043120%_)))
                                                       (if (gx#stx-pair?
                                                            _%tl4307243104%_)
                                                           (let ((_%e4308243135%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl4307243104%_)))
                     (let ((_%hd4308343139%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4308243135%_)))
                           (_%tl4308443142%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4308243135%_))))
                       (if (gx#stx-null? _%tl4308443142%_)
                           ((lambda (_%g4306843145%_ _%g4306943147%_)
                              (cons (gx#datum->syntax '#f 'with-catch)
                                    (cons (cons (gx#datum->syntax '#f 'lambda)
                                                (cons (cons _%g4301543028%_
                                                            '())
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'cond)
                          (foldr (lambda (_%g4317243175%_ _%g4317343178%_)
                                   (cons _%g4317243175%_ _%g4317343178%_))
                                 (cons (cons (gx#datum->syntax '#f 'else)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'raise)
                                                         (cons _%g4301543028%_
                                                               '()))
                                                   '()))
                                       '())
                                 _%g4306943147%_))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons _%g4306843145%_ '()))))
                            _%hd4308343139%_
                            _%clause4308143132%_)
                           (_%g4306643090%_ _%g4306743094%_))))
                   (_%g4306643090%_ _%g4306743094%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%loop4307643113%_
                                        _%target4307343107%_
                                        '()))
                                     (_%g4306643090%_ _%g4306743094%_)))))
                           (_%g4306643090%_ _%g4306743094%_))))
                   (_%g4306643090%_ _%g4306743094%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g4306543181%_
                                                (list _%clauses43045%_
                                                      _%thunk43011%_)))))
                                          (_%K4305043574%_
                                           (lambda (_%rest43189%_ _%hd43191%_)
                                             (let* ((_%__stx4486244863%_
                                                     _%hd43191%_)
                                                    (_%g4319643266%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx4486244863%_))))
                                               (let ((_%__kont4486544866%_
                                                      (lambda (_%g4319843553%_
                                                               _%g4319943555%_)
                                                        (_%lp43040%_
                                                         _%rest43189%_
                                                         (cons (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '#f
                                          '?)
                                         (cons _%g4319943555%_ '()))
                                   (cons _%g4301543028%_ '()))
                             (cons (gx#datum->syntax '#f '=>)
                                   (cons _%g4319843553%_ '())))
                       _%clauses43045%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont4486744868%_
                                                      (lambda (_%g4320943485%_
                                                               _%g4321043487%_
                                                               _%g4321143488%_)
                                                        (_%lp43040%_
                                                         _%rest43189%_
                                                         (cons (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '#f
                                          '?)
                                         (cons _%g4321143488%_ '()))
                                   (cons _%g4301543028%_ '()))
                             (cons (cons (gx#datum->syntax '#f 'let)
                                         (cons (cons (cons _%g4321043487%_
                                                           (cons _%g4301543028%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (foldr (lambda (_%g4350743510%_
                                                               _%g4350843513%_)
                                                        (cons _%g4350743510%_
                                                              _%g4350843513%_))
                                                      '()
                                                      _%g4320943485%_)))
                                   '()))
                       _%clauses43045%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont4487144872%_
                                                      (lambda (_%g4323043393%_
                                                               _%g4323143395%_)
                                                        (_%lp43040%_
                                                         _%rest43189%_
                                                         (cons (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'let)
                                         (cons (cons (cons _%g4323143395%_
                                                           (cons _%g4301543028%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (foldr (lambda (_%g4341143414%_
                                                               _%g4341243417%_)
                                                        (cons _%g4341143414%_
                                                              _%g4341243417%_))
                                                      '()
                                                      _%g4323043393%_)))
                                   '()))
                       _%clauses43045%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont4487544876%_
                                                      (lambda (_%g4324743311%_
                                                               _%g4324843313%_)
                                                        (_%lp43040%_
                                                         _%rest43189%_
                                                         (cons (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'begin)
                                         (foldr (lambda (_%g4332943332%_
                                                         _%g4333043335%_)
                                                  (cons _%g4332943332%_
                                                        _%g4333043335%_))
                                                '()
                                                _%g4324743311%_))
                                   '()))
                       _%clauses43045%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let* ((_%__match4496744968%_
                                                         (lambda (_%e4324943273%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%hd4325043277%_
                          _%tl4325143280%_
                          _%__splice4487744878%_
                          _%target4325243283%_
                          _%tl4325443286%_)
                   (letrec ((_%loop4325543289%_
                             (lambda (_%hd4325343293%_ _%body4325943296%_)
                               (if (gx#stx-pair? _%hd4325343293%_)
                                   (let ((_%e4325643298%_
                                          (gx#syntax-e _%hd4325343293%_)))
                                     (let ((_%lp-tl4325843305%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4325643298%_)))
                                           (_%lp-hd4325743302%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4325643298%_))))
                                       (_%loop4325543289%_
                                        _%lp-tl4325843305%_
                                        (cons _%lp-hd4325743302%_
                                              _%body4325943296%_))))
                                   (let ((_%body4326043308%_
                                          (reverse _%body4325943296%_)))
                                     (let ((_%g4324743311%_ _%body4326043308%_)
                                           (_%g4324843313%_ _%hd4325043277%_))
                                       (if (gx#underscore? _%g4324843313%_)
                                           (_%__kont4487544876%_
                                            _%g4324743311%_
                                            _%g4324843313%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g4319643266%_)))))))))
                     (_%loop4325543289%_ _%target4325243283%_ '()))))
                (_%__match4495344954%_
                 (lambda (_%e4323243345%_
                          _%hd4323343349%_
                          _%tl4323443352%_
                          _%e4323543355%_
                          _%hd4323643359%_
                          _%tl4323743362%_
                          _%__splice4487344874%_
                          _%target4323843365%_
                          _%tl4324043368%_)
                   (letrec ((_%loop4324143371%_
                             (lambda (_%hd4323943375%_ _%body4324543378%_)
                               (if (gx#stx-pair? _%hd4323943375%_)
                                   (let ((_%e4324243380%_
                                          (gx#syntax-e _%hd4323943375%_)))
                                     (let ((_%lp-tl4324443387%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4324243380%_)))
                                           (_%lp-hd4324343384%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4324243380%_))))
                                       (_%loop4324143371%_
                                        _%lp-tl4324443387%_
                                        (cons _%lp-hd4324343384%_
                                              _%body4324543378%_))))
                                   (let ((_%body4324643390%_
                                          (reverse _%body4324543378%_)))
                                     (let ((_%g4323043393%_ _%body4324643390%_)
                                           (_%g4323143395%_ _%hd4323643359%_))
                                       (if (gx#identifier? _%g4323143395%_)
                                           (_%__kont4487144872%_
                                            _%g4323043393%_
                                            _%g4323143395%_)
                                           (_%__match4496744968%_
                                            _%e4323243345%_
                                            _%hd4323343349%_
                                            _%tl4323443352%_
                                            _%__splice4487344874%_
                                            _%target4323843365%_
                                            _%tl4324043368%_))))))))
                     (_%loop4324143371%_ _%target4323843365%_ '()))))
                (_%__match4493144932%_
                 (lambda (_%e4321243427%_
                          _%hd4321343431%_
                          _%tl4321443434%_
                          _%e4321543437%_
                          _%hd4321643441%_
                          _%tl4321743444%_
                          _%e4321843447%_
                          _%hd4321943451%_
                          _%tl4322043454%_
                          _%__splice4486944870%_
                          _%target4322143457%_
                          _%tl4322343460%_)
                   (letrec ((_%loop4322443463%_
                             (lambda (_%hd4322243467%_ _%body4322843470%_)
                               (if (gx#stx-pair? _%hd4322243467%_)
                                   (let ((_%e4322543472%_
                                          (gx#syntax-e _%hd4322243467%_)))
                                     (let ((_%lp-tl4322743479%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4322543472%_)))
                                           (_%lp-hd4322643476%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4322543472%_))))
                                       (_%loop4322443463%_
                                        _%lp-tl4322743479%_
                                        (cons _%lp-hd4322643476%_
                                              _%body4322843470%_))))
                                   (let ((_%body4322943482%_
                                          (reverse _%body4322843470%_)))
                                     (let ((_%g4320943485%_ _%body4322943482%_)
                                           (_%g4321043487%_ _%hd4321943451%_)
                                           (_%g4321143488%_ _%hd4321643441%_))
                                       (if (gx#identifier? _%g4321043487%_)
                                           (_%__kont4486744868%_
                                            _%g4320943485%_
                                            _%g4321043487%_
                                            _%g4321143488%_)
                                           (_%__match4496744968%_
                                            _%e4321243427%_
                                            _%hd4321343431%_
                                            _%tl4321443434%_
                                            _%__splice4486944870%_
                                            _%target4322143457%_
                                            _%tl4322343460%_))))))))
                     (_%loop4322443463%_ _%target4322143457%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair?
                                                        _%__stx4486244863%_)
                                                       (let ((_%e4320043523%_
                                                              (gx#syntax-e
                                                               _%__stx4486244863%_)))
                                                         (let ((_%tl4320243530%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e4320043523%_)))
                       (_%hd4320143527%_
                        (let () (declare (not safe)) (##car _%e4320043523%_))))
                   (if (gx#stx-pair? _%tl4320243530%_)
                       (let ((_%e4320343533%_ (gx#syntax-e _%tl4320243530%_)))
                         (let ((_%tl4320543540%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e4320343533%_)))
                               (_%hd4320443537%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e4320343533%_))))
                           (if (gx#identifier? _%hd4320443537%_)
                               (if (gx#free-identifier=?
                                    |gerbil/core/more-sugar[1]#_g45144_|
                                    _%hd4320443537%_)
                                   (if (gx#stx-pair? _%tl4320543540%_)
                                       (let ((_%e4320643543%_
                                              (gx#syntax-e _%tl4320543540%_)))
                                         (let ((_%tl4320843550%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4320643543%_)))
                                               (_%hd4320743547%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4320643543%_))))
                                           (if (gx#stx-null? _%tl4320843550%_)
                                               (_%__kont4486544866%_
                                                _%hd4320743547%_
                                                _%hd4320143527%_)
                                               (if (gx#stx-pair?
                                                    _%hd4320143527%_)
                                                   (let ((_%e4321543437%_
                                                          (gx#syntax-e
                                                           _%hd4320143527%_)))
                                                     (let ((_%tl4321743444%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e4321543437%_)))
                                                           (_%hd4321643441%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e4321543437%_))))
                                                       (if (gx#stx-pair?
                                                            _%tl4321743444%_)
                                                           (let ((_%e4321843447%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl4321743444%_)))
                     (let ((_%tl4322043454%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4321843447%_)))
                           (_%hd4321943451%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4321843447%_))))
                       (if (gx#stx-null? _%tl4322043454%_)
                           (if (gx#stx-pair/null? _%tl4320243530%_)
                               (let ((_%__splice4486944870%_
                                      (gx#syntax-split-splice->vector
                                       _%tl4320243530%_
                                       '0)))
                                 (let ((_%tl4322343460%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4486944870%_
                                           '1)))
                                       (_%target4322143457%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4486944870%_
                                           '0))))
                                   (if (gx#stx-null? _%tl4322343460%_)
                                       (_%__match4493144932%_
                                        _%e4320043523%_
                                        _%hd4320143527%_
                                        _%tl4320243530%_
                                        _%e4321543437%_
                                        _%hd4321643441%_
                                        _%tl4321743444%_
                                        _%e4321843447%_
                                        _%hd4321943451%_
                                        _%tl4322043454%_
                                        _%__splice4486944870%_
                                        _%target4322143457%_
                                        _%tl4322343460%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4319643266%_)))))
                               (let () (declare (not safe)) (_%g4319643266%_)))
                           (if (gx#stx-pair/null? _%tl4320243530%_)
                               (let ((_%__splice4487744878%_
                                      (gx#syntax-split-splice->vector
                                       _%tl4320243530%_
                                       '0)))
                                 (let ((_%tl4325443286%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4487744878%_
                                           '1)))
                                       (_%target4325243283%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4487744878%_
                                           '0))))
                                   (if (gx#stx-null? _%tl4325443286%_)
                                       (_%__match4496744968%_
                                        _%e4320043523%_
                                        _%hd4320143527%_
                                        _%tl4320243530%_
                                        _%__splice4487744878%_
                                        _%target4325243283%_
                                        _%tl4325443286%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4319643266%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g4319643266%_))))))
                   (if (gx#stx-null? _%tl4321743444%_)
                       (if (gx#stx-pair/null? _%tl4320243530%_)
                           (let ((_%__splice4487344874%_
                                  (gx#syntax-split-splice->vector
                                   _%tl4320243530%_
                                   '0)))
                             (let ((_%tl4324043368%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice4487344874%_
                                       '1)))
                                   (_%target4323843365%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice4487344874%_
                                       '0))))
                               (if (gx#stx-null? _%tl4324043368%_)
                                   (_%__match4495344954%_
                                    _%e4320043523%_
                                    _%hd4320143527%_
                                    _%tl4320243530%_
                                    _%e4321543437%_
                                    _%hd4321643441%_
                                    _%tl4321743444%_
                                    _%__splice4487344874%_
                                    _%target4323843365%_
                                    _%tl4324043368%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g4319643266%_)))))
                           (let () (declare (not safe)) (_%g4319643266%_)))
                       (if (gx#stx-pair/null? _%tl4320243530%_)
                           (let ((_%__splice4487744878%_
                                  (gx#syntax-split-splice->vector
                                   _%tl4320243530%_
                                   '0)))
                             (let ((_%tl4325443286%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice4487744878%_
                                       '1)))
                                   (_%target4325243283%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice4487744878%_
                                       '0))))
                               (if (gx#stx-null? _%tl4325443286%_)
                                   (_%__match4496744968%_
                                    _%e4320043523%_
                                    _%hd4320143527%_
                                    _%tl4320243530%_
                                    _%__splice4487744878%_
                                    _%target4325243283%_
                                    _%tl4325443286%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g4319643266%_)))))
                           (let () (declare (not safe)) (_%g4319643266%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _%tl4320243530%_)
                                                       (let ((_%__splice4487744878%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4320243530%_
                                                               '0)))
                                                         (let ((_%tl4325443286%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4487744878%_ '1)))
                       (_%target4325243283%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4487744878%_ '0))))
                   (if (gx#stx-null? _%tl4325443286%_)
                       (_%__match4496744968%_
                        _%e4320043523%_
                        _%hd4320143527%_
                        _%tl4320243530%_
                        _%__splice4487744878%_
                        _%target4325243283%_
                        _%tl4325443286%_)
                       (let () (declare (not safe)) (_%g4319643266%_)))))
               (let () (declare (not safe)) (_%g4319643266%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (gx#stx-pair? _%hd4320143527%_)
                                           (let ((_%e4321543437%_
                                                  (gx#syntax-e
                                                   _%hd4320143527%_)))
                                             (let ((_%tl4321743444%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e4321543437%_)))
                                                   (_%hd4321643441%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e4321543437%_))))
                                               (if (gx#stx-pair?
                                                    _%tl4321743444%_)
                                                   (let ((_%e4321843447%_
                                                          (gx#syntax-e
                                                           _%tl4321743444%_)))
                                                     (let ((_%tl4322043454%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e4321843447%_)))
                                                           (_%hd4321943451%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e4321843447%_))))
                                                       (if (gx#stx-null?
                                                            _%tl4322043454%_)
                                                           (if (gx#stx-pair/null?
                                                                _%tl4320243530%_)
                                                               (let ((_%__splice4486944870%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-split-splice->vector
                               _%tl4320243530%_
                               '0)))
                         (let ((_%tl4322343460%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4486944870%_ '1)))
                               (_%target4322143457%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4486944870%_ '0))))
                           (if (gx#stx-null? _%tl4322343460%_)
                               (_%__match4493144932%_
                                _%e4320043523%_
                                _%hd4320143527%_
                                _%tl4320243530%_
                                _%e4321543437%_
                                _%hd4321643441%_
                                _%tl4321743444%_
                                _%e4321843447%_
                                _%hd4321943451%_
                                _%tl4322043454%_
                                _%__splice4486944870%_
                                _%target4322143457%_
                                _%tl4322343460%_)
                               (let ()
                                 (declare (not safe))
                                 (_%g4319643266%_)))))
                       (let () (declare (not safe)) (_%g4319643266%_)))
                   (if (gx#stx-pair/null? _%tl4320243530%_)
                       (let ((_%__splice4487744878%_
                              (gx#syntax-split-splice->vector
                               _%tl4320243530%_
                               '0)))
                         (let ((_%tl4325443286%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4487744878%_ '1)))
                               (_%target4325243283%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4487744878%_ '0))))
                           (if (gx#stx-null? _%tl4325443286%_)
                               (_%__match4496744968%_
                                _%e4320043523%_
                                _%hd4320143527%_
                                _%tl4320243530%_
                                _%__splice4487744878%_
                                _%target4325243283%_
                                _%tl4325443286%_)
                               (let ()
                                 (declare (not safe))
                                 (_%g4319643266%_)))))
                       (let () (declare (not safe)) (_%g4319643266%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-null?
                                                        _%tl4321743444%_)
                                                       (if (gx#stx-pair/null?
                                                            _%tl4320243530%_)
                                                           (let ((_%__splice4487344874%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice->vector
                           _%tl4320243530%_
                           '0)))
                     (let ((_%tl4324043368%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4487344874%_ '1)))
                           (_%target4323843365%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4487344874%_ '0))))
                       (if (gx#stx-null? _%tl4324043368%_)
                           (_%__match4495344954%_
                            _%e4320043523%_
                            _%hd4320143527%_
                            _%tl4320243530%_
                            _%e4321543437%_
                            _%hd4321643441%_
                            _%tl4321743444%_
                            _%__splice4487344874%_
                            _%target4323843365%_
                            _%tl4324043368%_)
                           (let () (declare (not safe)) (_%g4319643266%_)))))
                   (let () (declare (not safe)) (_%g4319643266%_)))
               (if (gx#stx-pair/null? _%tl4320243530%_)
                   (let ((_%__splice4487744878%_
                          (gx#syntax-split-splice->vector
                           _%tl4320243530%_
                           '0)))
                     (let ((_%tl4325443286%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4487744878%_ '1)))
                           (_%target4325243283%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4487744878%_ '0))))
                       (if (gx#stx-null? _%tl4325443286%_)
                           (_%__match4496744968%_
                            _%e4320043523%_
                            _%hd4320143527%_
                            _%tl4320243530%_
                            _%__splice4487744878%_
                            _%target4325243283%_
                            _%tl4325443286%_)
                           (let () (declare (not safe)) (_%g4319643266%_)))))
                   (let () (declare (not safe)) (_%g4319643266%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (gx#stx-pair/null?
                                                _%tl4320243530%_)
                                               (let ((_%__splice4487744878%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl4320243530%_
                                                       '0)))
                                                 (let ((_%tl4325443286%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4487744878%_
                                                           '1)))
                                                       (_%target4325243283%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4487744878%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl4325443286%_)
                                                       (_%__match4496744968%_
                                                        _%e4320043523%_
                                                        _%hd4320143527%_
                                                        _%tl4320243530%_
                                                        _%__splice4487744878%_
                                                        _%target4325243283%_
                                                        _%tl4325443286%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g4319643266%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4319643266%_)))))
                                   (if (gx#stx-pair? _%hd4320143527%_)
                                       (let ((_%e4321543437%_
                                              (gx#syntax-e _%hd4320143527%_)))
                                         (let ((_%tl4321743444%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4321543437%_)))
                                               (_%hd4321643441%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4321543437%_))))
                                           (if (gx#stx-pair? _%tl4321743444%_)
                                               (let ((_%e4321843447%_
                                                      (gx#syntax-e
                                                       _%tl4321743444%_)))
                                                 (let ((_%tl4322043454%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e4321843447%_)))
                                                       (_%hd4321943451%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e4321843447%_))))
                                                   (if (gx#stx-null?
                                                        _%tl4322043454%_)
                                                       (if (gx#stx-pair/null?
                                                            _%tl4320243530%_)
                                                           (let ((_%__splice4486944870%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice->vector
                           _%tl4320243530%_
                           '0)))
                     (let ((_%tl4322343460%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4486944870%_ '1)))
                           (_%target4322143457%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4486944870%_ '0))))
                       (if (gx#stx-null? _%tl4322343460%_)
                           (_%__match4493144932%_
                            _%e4320043523%_
                            _%hd4320143527%_
                            _%tl4320243530%_
                            _%e4321543437%_
                            _%hd4321643441%_
                            _%tl4321743444%_
                            _%e4321843447%_
                            _%hd4321943451%_
                            _%tl4322043454%_
                            _%__splice4486944870%_
                            _%target4322143457%_
                            _%tl4322343460%_)
                           (let () (declare (not safe)) (_%g4319643266%_)))))
                   (let () (declare (not safe)) (_%g4319643266%_)))
               (if (gx#stx-pair/null? _%tl4320243530%_)
                   (let ((_%__splice4487744878%_
                          (gx#syntax-split-splice->vector
                           _%tl4320243530%_
                           '0)))
                     (let ((_%tl4325443286%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4487744878%_ '1)))
                           (_%target4325243283%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4487744878%_ '0))))
                       (if (gx#stx-null? _%tl4325443286%_)
                           (_%__match4496744968%_
                            _%e4320043523%_
                            _%hd4320143527%_
                            _%tl4320243530%_
                            _%__splice4487744878%_
                            _%target4325243283%_
                            _%tl4325443286%_)
                           (let () (declare (not safe)) (_%g4319643266%_)))))
                   (let () (declare (not safe)) (_%g4319643266%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-null?
                                                    _%tl4321743444%_)
                                                   (if (gx#stx-pair/null?
                                                        _%tl4320243530%_)
                                                       (let ((_%__splice4487344874%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4320243530%_
                                                               '0)))
                                                         (let ((_%tl4324043368%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4487344874%_ '1)))
                       (_%target4323843365%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4487344874%_ '0))))
                   (if (gx#stx-null? _%tl4324043368%_)
                       (_%__match4495344954%_
                        _%e4320043523%_
                        _%hd4320143527%_
                        _%tl4320243530%_
                        _%e4321543437%_
                        _%hd4321643441%_
                        _%tl4321743444%_
                        _%__splice4487344874%_
                        _%target4323843365%_
                        _%tl4324043368%_)
                       (let () (declare (not safe)) (_%g4319643266%_)))))
               (let () (declare (not safe)) (_%g4319643266%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _%tl4320243530%_)
                                                       (let ((_%__splice4487744878%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4320243530%_
                                                               '0)))
                                                         (let ((_%tl4325443286%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4487744878%_ '1)))
                       (_%target4325243283%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4487744878%_ '0))))
                   (if (gx#stx-null? _%tl4325443286%_)
                       (_%__match4496744968%_
                        _%e4320043523%_
                        _%hd4320143527%_
                        _%tl4320243530%_
                        _%__splice4487744878%_
                        _%target4325243283%_
                        _%tl4325443286%_)
                       (let () (declare (not safe)) (_%g4319643266%_)))))
               (let () (declare (not safe)) (_%g4319643266%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (gx#stx-pair/null? _%tl4320243530%_)
                                           (let ((_%__splice4487744878%_
                                                  (gx#syntax-split-splice->vector
                                                   _%tl4320243530%_
                                                   '0)))
                                             (let ((_%tl4325443286%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4487744878%_
                                                       '1)))
                                                   (_%target4325243283%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4487744878%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl4325443286%_)
                                                   (_%__match4496744968%_
                                                    _%e4320043523%_
                                                    _%hd4320143527%_
                                                    _%tl4320243530%_
                                                    _%__splice4487744878%_
                                                    _%target4325243283%_
                                                    _%tl4325443286%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4319643266%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4319643266%_)))))
                               (if (gx#stx-pair? _%hd4320143527%_)
                                   (let ((_%e4321543437%_
                                          (gx#syntax-e _%hd4320143527%_)))
                                     (let ((_%tl4321743444%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4321543437%_)))
                                           (_%hd4321643441%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4321543437%_))))
                                       (if (gx#stx-pair? _%tl4321743444%_)
                                           (let ((_%e4321843447%_
                                                  (gx#syntax-e
                                                   _%tl4321743444%_)))
                                             (let ((_%tl4322043454%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e4321843447%_)))
                                                   (_%hd4321943451%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e4321843447%_))))
                                               (if (gx#stx-null?
                                                    _%tl4322043454%_)
                                                   (if (gx#stx-pair/null?
                                                        _%tl4320243530%_)
                                                       (let ((_%__splice4486944870%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4320243530%_
                                                               '0)))
                                                         (let ((_%tl4322343460%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4486944870%_ '1)))
                       (_%target4322143457%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4486944870%_ '0))))
                   (if (gx#stx-null? _%tl4322343460%_)
                       (_%__match4493144932%_
                        _%e4320043523%_
                        _%hd4320143527%_
                        _%tl4320243530%_
                        _%e4321543437%_
                        _%hd4321643441%_
                        _%tl4321743444%_
                        _%e4321843447%_
                        _%hd4321943451%_
                        _%tl4322043454%_
                        _%__splice4486944870%_
                        _%target4322143457%_
                        _%tl4322343460%_)
                       (let () (declare (not safe)) (_%g4319643266%_)))))
               (let () (declare (not safe)) (_%g4319643266%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _%tl4320243530%_)
                                                       (let ((_%__splice4487744878%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl4320243530%_
                                                               '0)))
                                                         (let ((_%tl4325443286%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice4487744878%_ '1)))
                       (_%target4325243283%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice4487744878%_ '0))))
                   (if (gx#stx-null? _%tl4325443286%_)
                       (_%__match4496744968%_
                        _%e4320043523%_
                        _%hd4320143527%_
                        _%tl4320243530%_
                        _%__splice4487744878%_
                        _%target4325243283%_
                        _%tl4325443286%_)
                       (let () (declare (not safe)) (_%g4319643266%_)))))
               (let () (declare (not safe)) (_%g4319643266%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (gx#stx-null? _%tl4321743444%_)
                                               (if (gx#stx-pair/null?
                                                    _%tl4320243530%_)
                                                   (let ((_%__splice4487344874%_
                                                          (gx#syntax-split-splice->vector
                                                           _%tl4320243530%_
                                                           '0)))
                                                     (let ((_%tl4324043368%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice4487344874%_
                                                               '1)))
                                                           (_%target4323843365%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice4487344874%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%tl4324043368%_)
                                                           (_%__match4495344954%_
                                                            _%e4320043523%_
                                                            _%hd4320143527%_
                                                            _%tl4320243530%_
                                                            _%e4321543437%_
                                                            _%hd4321643441%_
                                                            _%tl4321743444%_
                                                            _%__splice4487344874%_
                                                            _%target4323843365%_
                                                            _%tl4324043368%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g4319643266%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4319643266%_)))
                                               (if (gx#stx-pair/null?
                                                    _%tl4320243530%_)
                                                   (let ((_%__splice4487744878%_
                                                          (gx#syntax-split-splice->vector
                                                           _%tl4320243530%_
                                                           '0)))
                                                     (let ((_%tl4325443286%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice4487744878%_
                                                               '1)))
                                                           (_%target4325243283%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice4487744878%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%tl4325443286%_)
                                                           (_%__match4496744968%_
                                                            _%e4320043523%_
                                                            _%hd4320143527%_
                                                            _%tl4320243530%_
                                                            _%__splice4487744878%_
                                                            _%target4325243283%_
                                                            _%tl4325443286%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g4319643266%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4319643266%_)))))))
                                   (if (gx#stx-pair/null? _%tl4320243530%_)
                                       (let ((_%__splice4487744878%_
                                              (gx#syntax-split-splice->vector
                                               _%tl4320243530%_
                                               '0)))
                                         (let ((_%tl4325443286%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4487744878%_
                                                   '1)))
                                               (_%target4325243283%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice4487744878%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl4325443286%_)
                                               (_%__match4496744968%_
                                                _%e4320043523%_
                                                _%hd4320143527%_
                                                _%tl4320243530%_
                                                _%__splice4487744878%_
                                                _%target4325243283%_
                                                _%tl4325443286%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4319643266%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g4319643266%_)))))))
                       (if (gx#stx-pair? _%hd4320143527%_)
                           (let ((_%e4321543437%_
                                  (gx#syntax-e _%hd4320143527%_)))
                             (let ((_%tl4321743444%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e4321543437%_)))
                                   (_%hd4321643441%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e4321543437%_))))
                               (if (gx#stx-pair? _%tl4321743444%_)
                                   (let ((_%e4321843447%_
                                          (gx#syntax-e _%tl4321743444%_)))
                                     (let ((_%tl4322043454%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4321843447%_)))
                                           (_%hd4321943451%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4321843447%_))))
                                       (if (gx#stx-null? _%tl4322043454%_)
                                           (if (gx#stx-pair/null?
                                                _%tl4320243530%_)
                                               (let ((_%__splice4486944870%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl4320243530%_
                                                       '0)))
                                                 (let ((_%tl4322343460%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4486944870%_
                                                           '1)))
                                                       (_%target4322143457%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4486944870%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl4322343460%_)
                                                       (_%__match4493144932%_
                                                        _%e4320043523%_
                                                        _%hd4320143527%_
                                                        _%tl4320243530%_
                                                        _%e4321543437%_
                                                        _%hd4321643441%_
                                                        _%tl4321743444%_
                                                        _%e4321843447%_
                                                        _%hd4321943451%_
                                                        _%tl4322043454%_
                                                        _%__splice4486944870%_
                                                        _%target4322143457%_
                                                        _%tl4322343460%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g4319643266%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4319643266%_)))
                                           (if (gx#stx-pair/null?
                                                _%tl4320243530%_)
                                               (let ((_%__splice4487744878%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl4320243530%_
                                                       '0)))
                                                 (let ((_%tl4325443286%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4487744878%_
                                                           '1)))
                                                       (_%target4325243283%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4487744878%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl4325443286%_)
                                                       (_%__match4496744968%_
                                                        _%e4320043523%_
                                                        _%hd4320143527%_
                                                        _%tl4320243530%_
                                                        _%__splice4487744878%_
                                                        _%target4325243283%_
                                                        _%tl4325443286%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g4319643266%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4319643266%_))))))
                                   (if (gx#stx-null? _%tl4321743444%_)
                                       (if (gx#stx-pair/null? _%tl4320243530%_)
                                           (let ((_%__splice4487344874%_
                                                  (gx#syntax-split-splice->vector
                                                   _%tl4320243530%_
                                                   '0)))
                                             (let ((_%tl4324043368%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4487344874%_
                                                       '1)))
                                                   (_%target4323843365%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4487344874%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl4324043368%_)
                                                   (_%__match4495344954%_
                                                    _%e4320043523%_
                                                    _%hd4320143527%_
                                                    _%tl4320243530%_
                                                    _%e4321543437%_
                                                    _%hd4321643441%_
                                                    _%tl4321743444%_
                                                    _%__splice4487344874%_
                                                    _%target4323843365%_
                                                    _%tl4324043368%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4319643266%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4319643266%_)))
                                       (if (gx#stx-pair/null? _%tl4320243530%_)
                                           (let ((_%__splice4487744878%_
                                                  (gx#syntax-split-splice->vector
                                                   _%tl4320243530%_
                                                   '0)))
                                             (let ((_%tl4325443286%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4487744878%_
                                                       '1)))
                                                   (_%target4325243283%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4487744878%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl4325443286%_)
                                                   (_%__match4496744968%_
                                                    _%e4320043523%_
                                                    _%hd4320143527%_
                                                    _%tl4320243530%_
                                                    _%__splice4487744878%_
                                                    _%target4325243283%_
                                                    _%tl4325443286%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4319643266%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4319643266%_)))))))
                           (if (gx#stx-pair/null? _%tl4320243530%_)
                               (let ((_%__splice4487744878%_
                                      (gx#syntax-split-splice->vector
                                       _%tl4320243530%_
                                       '0)))
                                 (let ((_%tl4325443286%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4487744878%_
                                           '1)))
                                       (_%target4325243283%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice4487744878%_
                                           '0))))
                                   (if (gx#stx-null? _%tl4325443286%_)
                                       (_%__match4496744968%_
                                        _%e4320043523%_
                                        _%hd4320143527%_
                                        _%tl4320243530%_
                                        _%__splice4487744878%_
                                        _%target4325243283%_
                                        _%tl4325443286%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g4319643266%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g4319643266%_)))))))
               (let () (declare (not safe)) (_%g4319643266%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (if (pair? _%rest4304643054%_)
                                         (let ((_%hd4305143578%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%rest4304643054%_)))
                                               (_%tl4305243581%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%rest4304643054%_))))
                                           (let* ((_%hd43584%_
                                                   _%hd4305143578%_)
                                                  (_%rest43587%_
                                                   _%tl4305243581%_))
                                             (_%K4305043574%_
                                              _%rest43587%_
                                              _%hd43584%_)))
                                         (_%else4304843185%_)))))
                               _%g4301443025%_))))
                      (_%g4301243590%_ (gx#genident))))))
          (let* ((_%g4239742417%_
                  (lambda (_%g4239842413%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g4239842413%_)))
                 (_%g4239643005%_
                  (lambda (_%g4239842421%_)
                    (if (gx#stx-pair? _%g4239842421%_)
                        (let ((_%e4240042424%_ (gx#syntax-e _%g4239842421%_)))
                          (let ((_%hd4240142428%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4240042424%_)))
                                (_%tl4240242431%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4240042424%_))))
                            (if (gx#stx-pair/null? _%tl4240242431%_)
                                (let ((_g45145_
                                       (gx#syntax-split-splice
                                        _%tl4240242431%_
                                        '0)))
                                  (begin
                                    (let ((_g45146_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g45145_)
                                                 (##values-length _g45145_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g45146_ 2)))
                                          (error "Context expects 2 values"
                                                 _g45146_)))
                                    (let ((_%target4240342434%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g45145_ 0)))
                                          (_%tl4240542437%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g45145_ 1))))
                                      (if (gx#stx-null? _%tl4240542437%_)
                                          (letrec ((_%loop4240642440%_
                                                    (lambda (_%hd4240442444%_
                                                             _%e4241042447%_)
                                                      (if (gx#stx-pair?
                                                           _%hd4240442444%_)
                                                          (let ((_%e4240742449%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd4240442444%_)))
                    (let ((_%lp-hd4240842453%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4240742449%_)))
                          (_%lp-tl4240942456%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4240742449%_))))
                      (_%loop4240642440%_
                       _%lp-tl4240942456%_
                       (cons _%lp-hd4240842453%_ _%e4241042447%_))))
                  (let ((_%e4241142459%_ (reverse _%e4241042447%_)))
                    ((lambda (_%g4239942462%_)
                       (let _%lp42479%_ ((_%rest42482%_
                                          (foldr (lambda (_%g4299642999%_
                                                          _%g4299743002%_)
                                                   (cons _%g4299642999%_
                                                         _%g4299743002%_))
                                                 '()
                                                 _%g4239942462%_))
                                         (_%body42484%_ '()))
                         (let* ((_%__stx4508845089%_ _%rest42482%_)
                                (_%g4248742499%_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%__stx4508845089%_))))
                           (let ((_%__kont4509145092%_
                                  (lambda (_%g4248942527%_ _%g4249042529%_)
                                    (let* ((_%__stx4503645037%_
                                            _%g4249042529%_)
                                           (_%g4254642579%_
                                            (lambda ()
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%__stx4503645037%_))))
                                      (let ((_%__kont4503945040%_
                                             (lambda (_%g4254842966%_)
                                               (if (gx#stx-null?
                                                    _%g4248942527%_)
                                                   (_%generate-fini42394%_
                                                    (_%generate-thunk42392%_
                                                     _%body42484%_)
                                                    (foldr (lambda (_%g4298042983%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g4298142986%_)
                     (cons _%g4298042983%_ _%g4298142986%_))
                   '()
                   _%g4254842966%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Misplaced finally clause"
                                                    _%stx42389%_))))
                                            (_%__kont4504345044%_
                                             (lambda (_%g4256142635%_)
                                               (let _%lp42652%_ ((_%rest42655%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g4248942527%_)
                         (_%handlers42657%_
                          (cons (foldr (lambda (_%g4291242915%_
                                                _%g4291342918%_)
                                         (cons _%g4291242915%_
                                               _%g4291342918%_))
                                       '()
                                       _%g4256142635%_)
                                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let* ((_%__stx4497044971%_
                                                         _%rest42655%_)
                                                        (_%g4266142701%_
                                                         (lambda ()
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%__stx4497044971%_))))
                                                   (let ((_%__kont4497344974%_
                                                          (lambda (_%g4266342882%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g4266442884%_)
                    (_%lp42652%_
                     _%g4266342882%_
                     (cons (foldr (lambda (_%g4290042903%_ _%g4290142906%_)
                                    (cons _%g4290042903%_ _%g4290142906%_))
                                  '()
                                  _%g4266442884%_)
                           _%handlers42657%_))))
                 (_%__kont4497744978%_
                  (lambda (_%g4268042767%_)
                    (let* ((_%g4278842796%_
                            (lambda (_%g4278942792%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4278942792%_)))
                           (_%g4278742823%_
                            (lambda (_%g4278942800%_)
                              ((lambda (_%g4279042803%_)
                                 (_%generate-fini42394%_
                                  (cons (gx#datum->syntax '#f 'lambda)
                                        (cons '() (cons _%g4279042803%_ '())))
                                  (foldr (lambda (_%g4281442817%_
                                                  _%g4281542820%_)
                                           (cons _%g4281442817%_
                                                 _%g4281542820%_))
                                         '()
                                         _%g4268042767%_)))
                               _%g4278942800%_))))
                      (_%g4278742823%_
                       (_%generate-catch42395%_
                        _%handlers42657%_
                        (_%generate-thunk42392%_ _%body42484%_))))))
                 (_%__kont4498144982%_
                  (lambda ()
                    (_%generate-catch42395%_
                     _%handlers42657%_
                     (_%generate-thunk42392%_ _%body42484%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%g4266042712%_
                                                             (lambda ()
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%__stx4497044971%_)
                           (_%__kont4498144982%_)
                           (let () (declare (not safe)) (_%g4266142701%_)))))
                    (_%__match4503145032%_
                     (lambda (_%e4268142719%_
                              _%hd4268242723%_
                              _%tl4268342726%_
                              _%e4268442729%_
                              _%hd4268542733%_
                              _%tl4268642736%_
                              _%__splice4497944980%_
                              _%target4268742739%_
                              _%tl4268942742%_)
                       (letrec ((_%loop4269042745%_
                                 (lambda (_%hd4268842749%_ _%fini4269442752%_)
                                   (if (gx#stx-pair? _%hd4268842749%_)
                                       (let ((_%e4269142754%_
                                              (gx#syntax-e _%hd4268842749%_)))
                                         (let ((_%lp-tl4269342761%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4269142754%_)))
                                               (_%lp-hd4269242758%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4269142754%_))))
                                           (_%loop4269042745%_
                                            _%lp-tl4269342761%_
                                            (cons _%lp-hd4269242758%_
                                                  _%fini4269442752%_))))
                                       (let ((_%fini4269542764%_
                                              (reverse _%fini4269442752%_)))
                                         (if (gx#stx-null? _%tl4268342726%_)
                                             (_%__kont4497744978%_
                                              _%fini4269542764%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%g4266142701%_))))))))
                         (_%loop4269042745%_ _%target4268742739%_ '()))))
                    (_%__match4500745008%_
                     (lambda (_%e4266542834%_
                              _%hd4266642838%_
                              _%tl4266742841%_
                              _%e4266842844%_
                              _%hd4266942848%_
                              _%tl4267042851%_
                              _%__splice4497544976%_
                              _%target4267142854%_
                              _%tl4267342857%_)
                       (letrec ((_%loop4267442860%_
                                 (lambda (_%hd4267242864%_
                                          _%handler4267842867%_)
                                   (if (gx#stx-pair? _%hd4267242864%_)
                                       (let ((_%e4267542869%_
                                              (gx#syntax-e _%hd4267242864%_)))
                                         (let ((_%lp-tl4267742876%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4267542869%_)))
                                               (_%lp-hd4267642873%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4267542869%_))))
                                           (_%loop4267442860%_
                                            _%lp-tl4267742876%_
                                            (cons _%lp-hd4267642873%_
                                                  _%handler4267842867%_))))
                                       (let ((_%handler4267942879%_
                                              (reverse _%handler4267842867%_)))
                                         (_%__kont4497344974%_
                                          _%tl4266742841%_
                                          _%handler4267942879%_))))))
                         (_%loop4267442860%_ _%target4267142854%_ '())))))
               (if (gx#stx-pair? _%__stx4497044971%_)
                   (let ((_%e4266542834%_ (gx#syntax-e _%__stx4497044971%_)))
                     (let ((_%tl4266742841%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e4266542834%_)))
                           (_%hd4266642838%_
                            (let ()
                              (declare (not safe))
                              (##car _%e4266542834%_))))
                       (if (gx#stx-pair? _%hd4266642838%_)
                           (let ((_%e4266842844%_
                                  (gx#syntax-e _%hd4266642838%_)))
                             (let ((_%tl4267042851%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e4266842844%_)))
                                   (_%hd4266942848%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e4266842844%_))))
                               (if (gx#identifier? _%hd4266942848%_)
                                   (if (gx#free-identifier=?
                                        |gerbil/core/more-sugar[1]#_g45147_|
                                        _%hd4266942848%_)
                                       (if (gx#stx-pair/null? _%tl4267042851%_)
                                           (let ((_%__splice4497544976%_
                                                  (gx#syntax-split-splice->vector
                                                   _%tl4267042851%_
                                                   '0)))
                                             (let ((_%tl4267342857%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4497544976%_
                                                       '1)))
                                                   (_%target4267142854%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice4497544976%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl4267342857%_)
                                                   (_%__match4500745008%_
                                                    _%e4266542834%_
                                                    _%hd4266642838%_
                                                    _%tl4266742841%_
                                                    _%e4266842844%_
                                                    _%hd4266942848%_
                                                    _%tl4267042851%_
                                                    _%__splice4497544976%_
                                                    _%target4267142854%_
                                                    _%tl4267342857%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g4266142701%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4266142701%_)))
                                       (if (gx#free-identifier=?
                                            |gerbil/core/more-sugar[1]#_g45148_|
                                            _%hd4266942848%_)
                                           (if (gx#stx-pair/null?
                                                _%tl4267042851%_)
                                               (let ((_%__splice4497944980%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl4267042851%_
                                                       '0)))
                                                 (let ((_%tl4268942742%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4497944980%_
                                                           '1)))
                                                       (_%target4268742739%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice4497944980%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl4268942742%_)
                                                       (_%__match4503145032%_
                                                        _%e4266542834%_
                                                        _%hd4266642838%_
                                                        _%tl4266742841%_
                                                        _%e4266842844%_
                                                        _%hd4266942848%_
                                                        _%tl4267042851%_
                                                        _%__splice4497944980%_
                                                        _%target4268742739%_
                                                        _%tl4268942742%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g4266142701%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g4266142701%_)))
                                           (let ()
                                             (declare (not safe))
                                             (_%g4266142701%_))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g4266142701%_)))))
                           (let () (declare (not safe)) (_%g4266142701%_)))))
                   (let () (declare (not safe)) (_%g4266042712%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont4504745048%_
                                             (lambda ()
                                               (_%lp42479%_
                                                _%g4248942527%_
                                                (cons _%g4249042529%_
                                                      _%body42484%_)))))
                                        (let* ((_%__match4508545086%_
                                                (lambda (_%e4256242597%_
                                                         _%hd4256342601%_
                                                         _%tl4256442604%_
                                                         _%__splice4504545046%_
                                                         _%target4256542607%_
                                                         _%tl4256742610%_)
                                                  (letrec ((_%loop4256842613%_
                                                            (lambda (_%hd4256642617%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%handler4257242620%_)
                      (if (gx#stx-pair? _%hd4256642617%_)
                          (let ((_%e4256942622%_
                                 (gx#syntax-e _%hd4256642617%_)))
                            (let ((_%lp-tl4257142629%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4256942622%_)))
                                  (_%lp-hd4257042626%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4256942622%_))))
                              (_%loop4256842613%_
                               _%lp-tl4257142629%_
                               (cons _%lp-hd4257042626%_
                                     _%handler4257242620%_))))
                          (let ((_%handler4257342632%_
                                 (reverse _%handler4257242620%_)))
                            (_%__kont4504345044%_ _%handler4257342632%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop4256842613%_
                                                     _%target4256542607%_
                                                     '()))))
                                               (_%__match4506745068%_
                                                (lambda (_%e4254942928%_
                                                         _%hd4255042932%_
                                                         _%tl4255142935%_
                                                         _%__splice4504145042%_
                                                         _%target4255242938%_
                                                         _%tl4255442941%_)
                                                  (letrec ((_%loop4255542944%_
                                                            (lambda (_%hd4255342948%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%fini4255942951%_)
                      (if (gx#stx-pair? _%hd4255342948%_)
                          (let ((_%e4255642953%_
                                 (gx#syntax-e _%hd4255342948%_)))
                            (let ((_%lp-tl4255842960%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4255642953%_)))
                                  (_%lp-hd4255742957%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4255642953%_))))
                              (_%loop4255542944%_
                               _%lp-tl4255842960%_
                               (cons _%lp-hd4255742957%_ _%fini4255942951%_))))
                          (let ((_%fini4256042963%_
                                 (reverse _%fini4255942951%_)))
                            (_%__kont4503945040%_ _%fini4256042963%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop4255542944%_
                                                     _%target4255242938%_
                                                     '())))))
                                          (if (gx#stx-pair?
                                               _%__stx4503645037%_)
                                              (let ((_%e4254942928%_
                                                     (gx#syntax-e
                                                      _%__stx4503645037%_)))
                                                (let ((_%tl4255142935%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4254942928%_)))
                                                      (_%hd4255042932%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4254942928%_))))
                                                  (if (gx#identifier?
                                                       _%hd4255042932%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/more-sugar[1]#_g45149_|
                                                           _%hd4255042932%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4255142935%_)
                                                              (let ((_%__splice4504145042%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl4255142935%_
                              '0)))
                        (let ((_%tl4255442941%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice4504145042%_ '1)))
                              (_%target4255242938%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice4504145042%_ '0))))
                          (if (gx#stx-null? _%tl4255442941%_)
                              (_%__match4506745068%_
                               _%e4254942928%_
                               _%hd4255042932%_
                               _%tl4255142935%_
                               _%__splice4504145042%_
                               _%target4255242938%_
                               _%tl4255442941%_)
                              (_%__kont4504745048%_))))
                      (_%__kont4504745048%_))
                  (if (gx#free-identifier=?
                       |gerbil/core/more-sugar[1]#_g45150_|
                       _%hd4255042932%_)
                      (if (gx#stx-pair/null? _%tl4255142935%_)
                          (let ((_%__splice4504545046%_
                                 (gx#syntax-split-splice->vector
                                  _%tl4255142935%_
                                  '0)))
                            (let ((_%tl4256742610%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice4504545046%_ '1)))
                                  (_%target4256542607%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice4504545046%_
                                      '0))))
                              (if (gx#stx-null? _%tl4256742610%_)
                                  (_%__match4508545086%_
                                   _%e4254942928%_
                                   _%hd4255042932%_
                                   _%tl4255142935%_
                                   _%__splice4504545046%_
                                   _%target4256542607%_
                                   _%tl4256742610%_)
                                  (_%__kont4504745048%_))))
                          (_%__kont4504745048%_))
                      (_%__kont4504745048%_)))
              (_%__kont4504745048%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont4504745048%_)))))))
                                 (_%__kont4509345094%_
                                  (lambda ()
                                    (cons 'begin (reverse _%body42484%_)))))
                             (let ((_%g4248642510%_
                                    (lambda ()
                                      (if (gx#stx-null? _%__stx4508845089%_)
                                          (_%__kont4509345094%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4248742499%_))))))
                               (if (gx#stx-pair? _%__stx4508845089%_)
                                   (let ((_%e4249142517%_
                                          (gx#syntax-e _%__stx4508845089%_)))
                                     (let ((_%tl4249342524%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4249142517%_)))
                                           (_%hd4249242521%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4249142517%_))))
                                       (_%__kont4509145092%_
                                        _%tl4249342524%_
                                        _%hd4249242521%_)))
                                   (let ()
                                     (declare (not safe))
                                     (_%g4248642510%_))))))))
                     _%e4241142459%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop4240642440%_
                                             _%target4240342434%_
                                             '()))
                                          (_%g4239742417%_ _%g4239842421%_)))))
                                (_%g4239742417%_ _%g4239842421%_))))
                        (_%g4239742417%_ _%g4239842421%_)))))
            (_%g4239643005%_ _%stx42389%_)))))
    (define |gerbil/core/more-sugar[:0:]#hash|
      (lambda (_%$stx43805%_)
        (let* ((_%g4380943838%_
                (lambda (_%g4381043834%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4381043834%_)))
               (_%g4380843934%_
                (lambda (_%g4381043842%_)
                  (if (gx#stx-pair? _%g4381043842%_)
                      (let ((_%e4381343845%_ (gx#syntax-e _%g4381043842%_)))
                        (let ((_%hd4381443849%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4381343845%_)))
                              (_%tl4381543852%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4381343845%_))))
                          (if (gx#stx-pair/null? _%tl4381543852%_)
                              (let ((_g45151_
                                     (gx#syntax-split-splice
                                      _%tl4381543852%_
                                      '0)))
                                (begin
                                  (let ((_g45152_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g45151_)
                                               (##values-length _g45151_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g45152_ 2)))
                                        (error "Context expects 2 values"
                                               _g45152_)))
                                  (let ((_%target4381643855%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45151_ 0)))
                                        (_%tl4381843858%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45151_ 1))))
                                    (if (gx#stx-null? _%tl4381843858%_)
                                        (letrec ((_%loop4381943861%_
                                                  (lambda (_%hd4381743865%_
                                                           _%val4382343868%_
                                                           _%key4382443869%_)
                                                    (if (gx#stx-pair?
                                                         _%hd4381743865%_)
                                                        (let ((_%e4382043871%_
                                                               (gx#syntax-e
                                                                _%hd4381743865%_)))
                                                          (let ((_%lp-hd4382143875%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4382043871%_)))
                        (_%lp-tl4382243878%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4382043871%_))))
                    (if (gx#stx-pair? _%lp-hd4382143875%_)
                        (let ((_%e4382743881%_
                               (gx#syntax-e _%lp-hd4382143875%_)))
                          (let ((_%hd4382843885%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4382743881%_)))
                                (_%tl4382943888%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4382743881%_))))
                            (if (gx#stx-pair? _%tl4382943888%_)
                                (let ((_%e4383043891%_
                                       (gx#syntax-e _%tl4382943888%_)))
                                  (let ((_%hd4383143895%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4383043891%_)))
                                        (_%tl4383243898%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4383043891%_))))
                                    (if (gx#stx-null? _%tl4383243898%_)
                                        (_%loop4381943861%_
                                         _%lp-tl4382243878%_
                                         (cons _%hd4383143895%_
                                               _%val4382343868%_)
                                         (cons _%hd4382843885%_
                                               _%key4382443869%_))
                                        (_%g4380943838%_ _%g4381043842%_))))
                                (_%g4380943838%_ _%g4381043842%_))))
                        (_%g4380943838%_ _%g4381043842%_))))
                (let ((_%val4382543901%_ (reverse _%val4382343868%_))
                      (_%key4382643903%_ (reverse _%key4382443869%_)))
                  ((lambda (_%g4381143905%_ _%g4381243907%_)
                     (cons (gx#datum->syntax '#f '~hash-table)
                           (cons (gx#datum->syntax '#f 'make-hash-table)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _%g4381143905%_
                                    _%g4381243907%_)
                                   (foldr (lambda (_%g4392243926%_
                                                   _%g4392343929%_
                                                   _%g4392443931%_)
                                            (cons (cons _%g4392343929%_
                                                        (cons _%g4392243926%_
                                                              '()))
                                                  _%g4392443931%_))
                                          '()
                                          _%g4381143905%_
                                          _%g4381243907%_)))))
                   _%val4382543901%_
                   _%key4382643903%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop4381943861%_
                                           _%target4381643855%_
                                           '()
                                           '()))
                                        (_%g4380943838%_ _%g4381043842%_)))))
                              (_%g4380943838%_ _%g4381043842%_))))
                      (_%g4380943838%_ _%g4381043842%_)))))
          (_%g4380843934%_ _%$stx43805%_))))
    (define |gerbil/core/more-sugar[:0:]#hash-eq|
      (lambda (_%$stx43939%_)
        (let* ((_%g4394343972%_
                (lambda (_%g4394443968%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4394443968%_)))
               (_%g4394244068%_
                (lambda (_%g4394443976%_)
                  (if (gx#stx-pair? _%g4394443976%_)
                      (let ((_%e4394743979%_ (gx#syntax-e _%g4394443976%_)))
                        (let ((_%hd4394843983%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4394743979%_)))
                              (_%tl4394943986%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4394743979%_))))
                          (if (gx#stx-pair/null? _%tl4394943986%_)
                              (let ((_g45153_
                                     (gx#syntax-split-splice
                                      _%tl4394943986%_
                                      '0)))
                                (begin
                                  (let ((_g45154_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g45153_)
                                               (##values-length _g45153_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g45154_ 2)))
                                        (error "Context expects 2 values"
                                               _g45154_)))
                                  (let ((_%target4395043989%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45153_ 0)))
                                        (_%tl4395243992%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45153_ 1))))
                                    (if (gx#stx-null? _%tl4395243992%_)
                                        (letrec ((_%loop4395343995%_
                                                  (lambda (_%hd4395143999%_
                                                           _%val4395744002%_
                                                           _%key4395844003%_)
                                                    (if (gx#stx-pair?
                                                         _%hd4395143999%_)
                                                        (let ((_%e4395444005%_
                                                               (gx#syntax-e
                                                                _%hd4395143999%_)))
                                                          (let ((_%lp-hd4395544009%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4395444005%_)))
                        (_%lp-tl4395644012%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4395444005%_))))
                    (if (gx#stx-pair? _%lp-hd4395544009%_)
                        (let ((_%e4396144015%_
                               (gx#syntax-e _%lp-hd4395544009%_)))
                          (let ((_%hd4396244019%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4396144015%_)))
                                (_%tl4396344022%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4396144015%_))))
                            (if (gx#stx-pair? _%tl4396344022%_)
                                (let ((_%e4396444025%_
                                       (gx#syntax-e _%tl4396344022%_)))
                                  (let ((_%hd4396544029%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4396444025%_)))
                                        (_%tl4396644032%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4396444025%_))))
                                    (if (gx#stx-null? _%tl4396644032%_)
                                        (_%loop4395343995%_
                                         _%lp-tl4395644012%_
                                         (cons _%hd4396544029%_
                                               _%val4395744002%_)
                                         (cons _%hd4396244019%_
                                               _%key4395844003%_))
                                        (_%g4394343972%_ _%g4394443976%_))))
                                (_%g4394343972%_ _%g4394443976%_))))
                        (_%g4394343972%_ _%g4394443976%_))))
                (let ((_%val4395944035%_ (reverse _%val4395744002%_))
                      (_%key4396044037%_ (reverse _%key4395844003%_)))
                  ((lambda (_%g4394544039%_ _%g4394644041%_)
                     (cons (gx#datum->syntax '#f '~hash-table)
                           (cons (gx#datum->syntax '#f 'make-hash-table-eq)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _%g4394544039%_
                                    _%g4394644041%_)
                                   (foldr (lambda (_%g4405644060%_
                                                   _%g4405744063%_
                                                   _%g4405844065%_)
                                            (cons (cons _%g4405744063%_
                                                        (cons _%g4405644060%_
                                                              '()))
                                                  _%g4405844065%_))
                                          '()
                                          _%g4394544039%_
                                          _%g4394644041%_)))))
                   _%val4395944035%_
                   _%key4396044037%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop4395343995%_
                                           _%target4395043989%_
                                           '()
                                           '()))
                                        (_%g4394343972%_ _%g4394443976%_)))))
                              (_%g4394343972%_ _%g4394443976%_))))
                      (_%g4394343972%_ _%g4394443976%_)))))
          (_%g4394244068%_ _%$stx43939%_))))
    (define |gerbil/core/more-sugar[:0:]#hash-eqv|
      (lambda (_%$stx44073%_)
        (let* ((_%g4407744106%_
                (lambda (_%g4407844102%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4407844102%_)))
               (_%g4407644202%_
                (lambda (_%g4407844110%_)
                  (if (gx#stx-pair? _%g4407844110%_)
                      (let ((_%e4408144113%_ (gx#syntax-e _%g4407844110%_)))
                        (let ((_%hd4408244117%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4408144113%_)))
                              (_%tl4408344120%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4408144113%_))))
                          (if (gx#stx-pair/null? _%tl4408344120%_)
                              (let ((_g45155_
                                     (gx#syntax-split-splice
                                      _%tl4408344120%_
                                      '0)))
                                (begin
                                  (let ((_g45156_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g45155_)
                                               (##values-length _g45155_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g45156_ 2)))
                                        (error "Context expects 2 values"
                                               _g45156_)))
                                  (let ((_%target4408444123%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45155_ 0)))
                                        (_%tl4408644126%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g45155_ 1))))
                                    (if (gx#stx-null? _%tl4408644126%_)
                                        (letrec ((_%loop4408744129%_
                                                  (lambda (_%hd4408544133%_
                                                           _%val4409144136%_
                                                           _%key4409244137%_)
                                                    (if (gx#stx-pair?
                                                         _%hd4408544133%_)
                                                        (let ((_%e4408844139%_
                                                               (gx#syntax-e
                                                                _%hd4408544133%_)))
                                                          (let ((_%lp-hd4408944143%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4408844139%_)))
                        (_%lp-tl4409044146%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4408844139%_))))
                    (if (gx#stx-pair? _%lp-hd4408944143%_)
                        (let ((_%e4409544149%_
                               (gx#syntax-e _%lp-hd4408944143%_)))
                          (let ((_%hd4409644153%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4409544149%_)))
                                (_%tl4409744156%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4409544149%_))))
                            (if (gx#stx-pair? _%tl4409744156%_)
                                (let ((_%e4409844159%_
                                       (gx#syntax-e _%tl4409744156%_)))
                                  (let ((_%hd4409944163%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4409844159%_)))
                                        (_%tl4410044166%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4409844159%_))))
                                    (if (gx#stx-null? _%tl4410044166%_)
                                        (_%loop4408744129%_
                                         _%lp-tl4409044146%_
                                         (cons _%hd4409944163%_
                                               _%val4409144136%_)
                                         (cons _%hd4409644153%_
                                               _%key4409244137%_))
                                        (_%g4407744106%_ _%g4407844110%_))))
                                (_%g4407744106%_ _%g4407844110%_))))
                        (_%g4407744106%_ _%g4407844110%_))))
                (let ((_%val4409344169%_ (reverse _%val4409144136%_))
                      (_%key4409444171%_ (reverse _%key4409244137%_)))
                  ((lambda (_%g4407944173%_ _%g4408044175%_)
                     (cons (gx#datum->syntax '#f '~hash-table)
                           (cons (gx#datum->syntax '#f 'make-hash-table-eqv)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _%g4407944173%_
                                    _%g4408044175%_)
                                   (foldr (lambda (_%g4419044194%_
                                                   _%g4419144197%_
                                                   _%g4419244199%_)
                                            (cons (cons _%g4419144197%_
                                                        (cons _%g4419044194%_
                                                              '()))
                                                  _%g4419244199%_))
                                          '()
                                          _%g4407944173%_
                                          _%g4408044175%_)))))
                   _%val4409344169%_
                   _%key4409444171%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop4408744129%_
                                           _%target4408444123%_
                                           '()
                                           '()))
                                        (_%g4407744106%_ _%g4407844110%_)))))
                              (_%g4407744106%_ _%g4407844110%_))))
                      (_%g4407744106%_ _%g4407844110%_)))))
          (_%g4407644202%_ _%$stx44073%_))))
    (define |gerbil/core/more-sugar[:0:]#~hash-table|
      (lambda (_%stx44207%_)
        (let* ((_%g4421044234%_
                (lambda (_%g4421144230%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4421144230%_)))
               (_%g4420944475%_
                (lambda (_%g4421144238%_)
                  (if (gx#stx-pair? _%g4421144238%_)
                      (let ((_%e4421444241%_ (gx#syntax-e _%g4421144238%_)))
                        (let ((_%hd4421544245%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4421444241%_)))
                              (_%tl4421644248%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4421444241%_))))
                          (if (gx#stx-pair? _%tl4421644248%_)
                              (let ((_%e4421744251%_
                                     (gx#syntax-e _%tl4421644248%_)))
                                (let ((_%hd4421844255%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4421744251%_)))
                                      (_%tl4421944258%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4421744251%_))))
                                  (if (gx#stx-pair/null? _%tl4421944258%_)
                                      (let ((_g45157_
                                             (gx#syntax-split-splice
                                              _%tl4421944258%_
                                              '0)))
                                        (begin
                                          (let ((_g45158_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45157_)
                                                       (##values-length
                                                        _g45157_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45158_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45158_)))
                                          (let ((_%target4422044261%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45157_ 0)))
                                                (_%tl4422244264%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g45157_ 1))))
                                            (if (gx#stx-null? _%tl4422244264%_)
                                                (letrec ((_%loop4422344267%_
                                                          (lambda (_%hd4422144271%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%entry4422744274%_)
                    (if (gx#stx-pair? _%hd4422144271%_)
                        (let ((_%e4422444276%_ (gx#syntax-e _%hd4422144271%_)))
                          (let ((_%lp-hd4422544280%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4422444276%_)))
                                (_%lp-tl4422644283%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4422444276%_))))
                            (_%loop4422344267%_
                             _%lp-tl4422644283%_
                             (cons _%lp-hd4422544280%_ _%entry4422744274%_))))
                        (let ((_%entry4422844286%_
                               (reverse _%entry4422744274%_)))
                          ((lambda (_%g4421244289%_ _%g4421344291%_)
                             (let* ((_%g4430944317%_
                                     (lambda (_%g4431044313%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g4431044313%_)))
                                    (_%g4430844463%_
                                     (lambda (_%g4431044321%_)
                                       ((lambda (_%g4431144324%_)
                                          (let* ((_%g4433644362%_
                                                  (lambda (_%g4433744358%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g4433744358%_)))
                                                 (_%g4433544451%_
                                                  (lambda (_%g4433744366%_)
                                                    (if (gx#stx-pair/null?
                                                         _%g4433744366%_)
                                                        (let ((_g45159_
                                                               (gx#syntax-split-splice
                                                                _%g4433744366%_
                                                                '0)))
                                                          (begin
                                                            (let ((_g45160_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (if (##values? _g45159_)
                                 (##values-length _g45159_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g45160_ 2)))
                          (error "Context expects 2 values" _g45160_)))
                    (let ((_%target4434044369%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g45159_ 0)))
                          (_%tl4434244372%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g45159_ 1))))
                      (if (gx#stx-null? _%tl4434244372%_)
                          (letrec ((_%loop4434344375%_
                                    (lambda (_%hd4434144379%_
                                             _%val4434744382%_
                                             _%key4434844383%_)
                                      (if (gx#stx-pair? _%hd4434144379%_)
                                          (let ((_%e4434444385%_
                                                 (gx#syntax-e
                                                  _%hd4434144379%_)))
                                            (let ((_%lp-hd4434544389%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4434444385%_)))
                                                  (_%lp-tl4434644392%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4434444385%_))))
                                              (if (gx#stx-pair?
                                                   _%lp-hd4434544389%_)
                                                  (let ((_%e4435144395%_
                                                         (gx#syntax-e
                                                          _%lp-hd4434544389%_)))
                                                    (let ((_%hd4435244399%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4435144395%_)))
                                                          (_%tl4435344402%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4435144395%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl4435344402%_)
                                                          (let ((_%e4435444405%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4435344402%_)))
                    (let ((_%hd4435544409%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4435444405%_)))
                          (_%tl4435644412%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4435444405%_))))
                      (if (gx#stx-null? _%tl4435644412%_)
                          (_%loop4434344375%_
                           _%lp-tl4434644392%_
                           (cons _%hd4435544409%_ _%val4434744382%_)
                           (cons _%hd4435244399%_ _%key4434844383%_))
                          (_%g4433644362%_ _%g4433744366%_))))
                  (_%g4433644362%_ _%g4433744366%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4433644362%_
                                                   _%g4433744366%_))))
                                          (let ((_%val4434944415%_
                                                 (reverse _%val4434744382%_))
                                                (_%key4435044417%_
                                                 (reverse _%key4434844383%_)))
                                            ((lambda (_%g4433844419%_
                                                      _%g4433944421%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'ht)
                         (cons (cons _%g4421344291%_
                                     (cons 'size: (cons _%g4431144324%_ '())))
                               '()))
                   (begin
                     (gx#syntax-check-splice-targets
                      _%g4433844419%_
                      _%g4433944421%_)
                     (foldr (lambda (_%g4443944443%_
                                     _%g4444044446%_
                                     _%g4444144448%_)
                              (cons (cons (gx#datum->syntax '#f 'hash-put!)
                                          (cons (gx#datum->syntax '#f 'ht)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quasiquote)
                                                            (cons _%g4444044446%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%g4443944443%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%g4444144448%_))
                            (cons (gx#datum->syntax '#f 'ht) '())
                            _%g4433844419%_
                            _%g4433944421%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%val4434944415%_
                                             _%key4435044417%_))))))
                            (_%loop4434344375%_ _%target4434044369%_ '() '()))
                          (_%g4433644362%_ _%g4433744366%_)))))
                (_%g4433644362%_ _%g4433744366%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g4433544451%_
                                             (foldr (lambda (_%g4445444457%_
                                                             _%g4445544460%_)
                                                      (cons _%g4445444457%_
                                                            _%g4445544460%_))
                                                    '()
                                                    _%g4421244289%_))))
                                        _%g4431044321%_))))
                               (_%g4430844463%_
                                (gx#stx-length
                                 (foldr (lambda (_%g4446644469%_
                                                 _%g4446744472%_)
                                          (cons _%g4446644469%_
                                                _%g4446744472%_))
                                        '()
                                        _%g4421244289%_)))))
                           _%entry4422844286%_
                           _%hd4421844255%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4422344267%_
                                                   _%target4422044261%_
                                                   '()))
                                                (_%g4421044234%_
                                                 _%g4421144238%_)))))
                                      (_%g4421044234%_ _%g4421144238%_))))
                              (_%g4421044234%_ _%g4421144238%_))))
                      (_%g4421044234%_ _%g4421144238%_)))))
          (_%g4420944475%_ _%stx44207%_))))
    (define |gerbil/core/more-sugar[:0:]#@bytes|
      (lambda (_%stx44481%_)
        (let* ((_%g4448444498%_
                (lambda (_%g4448544494%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4448544494%_)))
               (_%g4448344570%_
                (lambda (_%g4448544502%_)
                  (if (gx#stx-pair? _%g4448544502%_)
                      (let ((_%e4448744505%_ (gx#syntax-e _%g4448544502%_)))
                        (let ((_%hd4448844509%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4448744505%_)))
                              (_%tl4448944512%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4448744505%_))))
                          (if (gx#stx-pair? _%tl4448944512%_)
                              (let ((_%e4449044515%_
                                     (gx#syntax-e _%tl4448944512%_)))
                                (let ((_%hd4449144519%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4449044515%_)))
                                      (_%tl4449244522%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4449044515%_))))
                                  (if (gx#stx-null? _%tl4449244522%_)
                                      ((lambda (_%g4448644525%_)
                                         (if (gx#stx-string? _%g4448644525%_)
                                             (let* ((_%g4453944547%_
                                                     (lambda (_%g4454044543%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g4454044543%_)))
                                                    (_%g4453844566%_
                                                     (lambda (_%g4454044551%_)
                                                       ((lambda (_%g4454144554%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%g4454144554%_ '())))
                _%g4454044551%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g4453844566%_
                                                (string->bytes
                                                 (gx#stx-e _%g4448644525%_))))
                                             (_%g4448444498%_
                                              _%g4448544502%_)))
                                       _%hd4449144519%_)
                                      (_%g4448444498%_ _%g4448544502%_))))
                              (_%g4448444498%_ _%g4448544502%_))))
                      (_%g4448444498%_ _%g4448544502%_)))))
          (_%g4448344570%_ _%stx44481%_))))
    (define |gerbil/core/more-sugar[:0:]#eval-when-compile|
      (lambda (_%stx44574%_)
        (let* ((_%g4457744591%_
                (lambda (_%g4457844587%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4457844587%_)))
               (_%g4457644632%_
                (lambda (_%g4457844595%_)
                  (if (gx#stx-pair? _%g4457844595%_)
                      (let ((_%e4458044598%_ (gx#syntax-e _%g4457844595%_)))
                        (let ((_%hd4458144602%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4458044598%_)))
                              (_%tl4458244605%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4458044598%_))))
                          (if (gx#stx-pair? _%tl4458244605%_)
                              (let ((_%e4458344608%_
                                     (gx#syntax-e _%tl4458244605%_)))
                                (let ((_%hd4458444612%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4458344608%_)))
                                      (_%tl4458544615%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4458344608%_))))
                                  (if (gx#stx-null? _%tl4458544615%_)
                                      ((lambda (_%g4457944618%_)
                                         (if (gx#current-expander-compiling?)
                                             (gx#eval-syntax _%g4457944618%_)
                                             '#!void)
                                         (cons (gx#datum->syntax '#f 'void)
                                               '()))
                                       _%hd4458444612%_)
                                      (_%g4457744591%_ _%g4457844595%_))))
                              (_%g4457744591%_ _%g4457844595%_))))
                      (_%g4457744591%_ _%g4457844595%_)))))
          (_%g4457644632%_ _%stx44574%_))))))
