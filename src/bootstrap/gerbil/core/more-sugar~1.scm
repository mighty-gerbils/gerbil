(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
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
    (lambda _%$args40376%_
      (apply make-instance
             |gerbil/core/more-sugar[1]#setq-macro::t|
             _%$args40376%_)))
  (define |gerbil/core/more-sugar[1]#setq-macro-macro|
    (make-class-slot-accessor
     |gerbil/core/more-sugar[1]#setq-macro::t|
     'macro))
  (define |gerbil/core/more-sugar[1]#setq-macro-macro-set!|
    (make-class-slot-mutator |gerbil/core/more-sugar[1]#setq-macro::t| 'macro))
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
    (lambda _%$args40372%_
      (apply make-instance
             |gerbil/core/more-sugar[1]#setf-macro::t|
             _%$args40372%_)))
  (define |gerbil/core/more-sugar[1]#setf-macro-macro|
    (make-class-slot-accessor
     |gerbil/core/more-sugar[1]#setf-macro::t|
     'macro))
  (define |gerbil/core/more-sugar[1]#setf-macro-macro-set!|
    (make-class-slot-mutator |gerbil/core/more-sugar[1]#setf-macro::t| 'macro))
  (define |gerbil/core/more-sugar[1]#&setf-macro-macro|
    (make-class-slot-unchecked-accessor
     |gerbil/core/more-sugar[1]#setf-macro::t|
     'macro))
  (define |gerbil/core/more-sugar[1]#&setf-macro-macro-set!|
    (make-class-slot-unchecked-mutator
     |gerbil/core/more-sugar[1]#setf-macro::t|
     'macro))
  (define |gerbil/core/more-sugar[1]#syntax-local-setf-macro?|
    (lambda (_%stx40369%_)
      (if (gx#identifier? _%stx40369%_)
          (let ((__tmp41594 (gx#syntax-local-value _%stx40369%_ false)))
            (declare (not safe))
            (class-instance?
             |gerbil/core/more-sugar[1]#setf-macro::t|
             __tmp41594))
          '#f)))
  (define |gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
    (lambda (_%stx40366%_)
      (if (gx#identifier? _%stx40366%_)
          (let ((__tmp41595 (gx#syntax-local-value _%stx40366%_ false)))
            (declare (not safe))
            (class-instance?
             |gerbil/core/more-sugar[1]#setq-macro::t|
             __tmp41595))
          '#f)))
  (define |gerbil/core/more-sugar[1]#expand-set!|
    (lambda (_%stx39991%_)
      (let* ((_%__stx4143341434%_ _%stx39991%_)
             (_%g3999740060%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4143341434%_))))
        (let ((_%__kont4143641437%_
               (lambda (_%L40343%_ _%L40345%_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _%L40345%_)
                  _%stx39991%_)))
              (_%__kont4143841439%_
               (lambda (_%L40232%_ _%L40234%_ _%L40235%_)
                 (let* ((_%g4025740265%_
                         (lambda (_%g4025840261%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g4025840261%_)))
                        (_%g4025640292%_
                         (lambda (_%g4025840269%_)
                           ((lambda (_%L40272%_)
                              (cons _%L40272%_
                                    (foldr (lambda (_%g4028340286%_
                                                    _%g4028440289%_)
                                             (cons _%g4028340286%_
                                                   _%g4028440289%_))
                                           (cons _%L40232%_ '())
                                           _%L40234%_)))
                            _%g4025840269%_))))
                   (_%g4025640292%_
                    (gx#stx-identifier _%L40235%_ _%L40235%_ '"-set!")))))
              (_%__kont4144241443%_
               (lambda (_%L40142%_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _%L40142%_)
                  _%stx39991%_)))
              (_%__kont4144441445%_
               (lambda (_%L40097%_ _%L40099%_)
                 (cons (gx#datum->syntax '#f '%#set!)
                       (cons _%L40099%_ (cons _%L40097%_ '()))))))
          (let* ((_%__match4153241533%_
                  (lambda (_%e4004640067%_
                           _%hd4004740071%_
                           _%tl4004840074%_
                           _%e4004940077%_
                           _%hd4005040081%_
                           _%tl4005140084%_
                           _%e4005240087%_
                           _%hd4005340091%_
                           _%tl4005440094%_)
                    (let ((_%L40097%_ _%hd4005340091%_)
                          (_%L40099%_ _%hd4005040081%_))
                      (if (gx#identifier? _%L40099%_)
                          (_%__kont4144441445%_ _%L40097%_ _%L40099%_)
                          (let () (declare (not safe)) (_%g3999740060%_))))))
                 (_%__match4151241513%_
                  (lambda (_%e4003840122%_
                           _%hd4003940126%_
                           _%tl4004040129%_
                           _%e4004140132%_
                           _%hd4004240136%_
                           _%tl4004340139%_)
                    (let ((_%L40142%_ _%hd4004240136%_))
                      (if (|gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
                           _%L40142%_)
                          (_%__kont4144241443%_ _%L40142%_)
                          (if (gx#stx-pair? _%tl4004340139%_)
                              (let ((_%e4005240087%_
                                     (gx#syntax-e _%tl4004340139%_)))
                                (let ((_%tl4005440094%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4005240087%_)))
                                      (_%hd4005340091%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4005240087%_))))
                                  (if (gx#stx-null? _%tl4005440094%_)
                                      (_%__match4153241533%_
                                       _%e4003840122%_
                                       _%hd4003940126%_
                                       _%tl4004040129%_
                                       _%e4004140132%_
                                       _%hd4004240136%_
                                       _%tl4004340139%_
                                       _%e4005240087%_
                                       _%hd4005340091%_
                                       _%tl4005440094%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g3999740060%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g3999740060%_)))))))
                 (_%__match4150041501%_
                  (lambda (_%e4001640162%_
                           _%hd4001740166%_
                           _%tl4001840169%_
                           _%e4001940172%_
                           _%hd4002040176%_
                           _%tl4002140179%_
                           _%e4002240182%_
                           _%hd4002340186%_
                           _%tl4002440189%_
                           _%__splice4144041441%_
                           _%target4002540192%_
                           _%tl4002740195%_)
                    (letrec ((_%loop4002840198%_
                              (lambda (_%hd4002640202%_ _%arg4003240205%_)
                                (if (gx#stx-pair? _%hd4002640202%_)
                                    (let ((_%e4002940208%_
                                           (gx#syntax-e _%hd4002640202%_)))
                                      (let ((_%lp-tl4003140215%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4002940208%_)))
                                            (_%lp-hd4003040212%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4002940208%_))))
                                        (_%loop4002840198%_
                                         _%lp-tl4003140215%_
                                         (cons _%lp-hd4003040212%_
                                               _%arg4003240205%_))))
                                    (let ((_%arg4003340218%_
                                           (reverse _%arg4003240205%_)))
                                      (if (gx#stx-pair? _%tl4002140179%_)
                                          (let ((_%e4003440222%_
                                                 (gx#syntax-e
                                                  _%tl4002140179%_)))
                                            (let ((_%tl4003640229%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4003440222%_)))
                                                  (_%hd4003540226%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4003440222%_))))
                                              (if (gx#stx-null?
                                                   _%tl4003640229%_)
                                                  (let ((_%L40232%_
                                                         _%hd4003540226%_)
                                                        (_%L40234%_
                                                         _%arg4003340218%_)
                                                        (_%L40235%_
                                                         _%hd4002340186%_))
                                                    (if (gx#identifier?
                                                         _%L40235%_)
                                                        (_%__kont4143841439%_
                                                         _%L40232%_
                                                         _%L40234%_
                                                         _%L40235%_)
                                                        (_%__match4151241513%_
                                                         _%e4001640162%_
                                                         _%hd4001740166%_
                                                         _%tl4001840169%_
                                                         _%e4001940172%_
                                                         _%hd4002040176%_
                                                         _%tl4002140179%_)))
                                                  (_%__match4151241513%_
                                                   _%e4001640162%_
                                                   _%hd4001740166%_
                                                   _%tl4001840169%_
                                                   _%e4001940172%_
                                                   _%hd4002040176%_
                                                   _%tl4002140179%_))))
                                          (_%__match4151241513%_
                                           _%e4001640162%_
                                           _%hd4001740166%_
                                           _%tl4001840169%_
                                           _%e4001940172%_
                                           _%hd4002040176%_
                                           _%tl4002140179%_)))))))
                      (_%loop4002840198%_ _%target4002540192%_ '())))))
            (if (gx#stx-pair? _%__stx4143341434%_)
                (let ((_%e4000140303%_ (gx#syntax-e _%__stx4143341434%_)))
                  (let ((_%tl4000340310%_
                         (let () (declare (not safe)) (##cdr _%e4000140303%_)))
                        (_%hd4000240307%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4000140303%_))))
                    (if (gx#stx-pair? _%tl4000340310%_)
                        (let ((_%e4000440313%_ (gx#syntax-e _%tl4000340310%_)))
                          (let ((_%tl4000640320%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4000440313%_)))
                                (_%hd4000540317%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4000440313%_))))
                            (if (gx#stx-pair? _%hd4000540317%_)
                                (let ((_%e4000740323%_
                                       (gx#syntax-e _%hd4000540317%_)))
                                  (let ((_%tl4000940330%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4000740323%_)))
                                        (_%hd4000840327%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4000740323%_))))
                                    (if (gx#stx-pair? _%tl4000640320%_)
                                        (let ((_%e4001040333%_
                                               (gx#syntax-e _%tl4000640320%_)))
                                          (let ((_%tl4001240340%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4001040333%_)))
                                                (_%hd4001140337%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4001040333%_))))
                                            (if (gx#stx-null? _%tl4001240340%_)
                                                (if (|gerbil/core/more-sugar[1]#syntax-local-setf-macro?|
                                                     (gx#datum->syntax
                                                      '#f
                                                      'setfid))
                                                    (let ((_%L40343%_
                                                           _%hd4001140337%_)
                                                          (_%L40345%_
                                                           _%hd4000840327%_))
                                                      (_%__kont4143641437%_
                                                       _%L40343%_
                                                       _%L40345%_))
                                                    (if (gx#stx-pair/null?
                                                         _%tl4000940330%_)
                                                        (let ((_%__splice4144041441%_
                                                               (gx#syntax-split-splice
                                                                _%tl4000940330%_
                                                                '0)))
                                                          (let ((_%tl4002740195%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4144041441%_ '1)))
                        (_%target4002540192%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4144041441%_ '0))))
                    (if (gx#stx-null? _%tl4002740195%_)
                        (_%__match4150041501%_
                         _%e4000140303%_
                         _%hd4000240307%_
                         _%tl4000340310%_
                         _%e4000440313%_
                         _%hd4000540317%_
                         _%tl4000640320%_
                         _%e4000740323%_
                         _%hd4000840327%_
                         _%tl4000940330%_
                         _%__splice4144041441%_
                         _%target4002540192%_
                         _%tl4002740195%_)
                        (_%__match4151241513%_
                         _%e4000140303%_
                         _%hd4000240307%_
                         _%tl4000340310%_
                         _%e4000440313%_
                         _%hd4000540317%_
                         _%tl4000640320%_))))
                (_%__match4151241513%_
                 _%e4000140303%_
                 _%hd4000240307%_
                 _%tl4000340310%_
                 _%e4000440313%_
                 _%hd4000540317%_
                 _%tl4000640320%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _%tl4000940330%_)
                                                    (let ((_%__splice4144041441%_
                                                           (gx#syntax-split-splice
                                                            _%tl4000940330%_
                                                            '0)))
                                                      (let ((_%tl4002740195%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4144041441%_ '1)))
                    (_%target4002540192%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4144041441%_ '0))))
                (if (gx#stx-null? _%tl4002740195%_)
                    (_%__match4150041501%_
                     _%e4000140303%_
                     _%hd4000240307%_
                     _%tl4000340310%_
                     _%e4000440313%_
                     _%hd4000540317%_
                     _%tl4000640320%_
                     _%e4000740323%_
                     _%hd4000840327%_
                     _%tl4000940330%_
                     _%__splice4144041441%_
                     _%target4002540192%_
                     _%tl4002740195%_)
                    (_%__match4151241513%_
                     _%e4000140303%_
                     _%hd4000240307%_
                     _%tl4000340310%_
                     _%e4000440313%_
                     _%hd4000540317%_
                     _%tl4000640320%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match4151241513%_
                                                     _%e4000140303%_
                                                     _%hd4000240307%_
                                                     _%tl4000340310%_
                                                     _%e4000440313%_
                                                     _%hd4000540317%_
                                                     _%tl4000640320%_)))))
                                        (if (gx#stx-pair/null?
                                             _%tl4000940330%_)
                                            (let ((_%__splice4144041441%_
                                                   (gx#syntax-split-splice
                                                    _%tl4000940330%_
                                                    '0)))
                                              (let ((_%tl4002740195%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4144041441%_
                                                        '1)))
                                                    (_%target4002540192%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4144041441%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4002740195%_)
                                                    (_%__match4150041501%_
                                                     _%e4000140303%_
                                                     _%hd4000240307%_
                                                     _%tl4000340310%_
                                                     _%e4000440313%_
                                                     _%hd4000540317%_
                                                     _%tl4000640320%_
                                                     _%e4000740323%_
                                                     _%hd4000840327%_
                                                     _%tl4000940330%_
                                                     _%__splice4144041441%_
                                                     _%target4002540192%_
                                                     _%tl4002740195%_)
                                                    (_%__match4151241513%_
                                                     _%e4000140303%_
                                                     _%hd4000240307%_
                                                     _%tl4000340310%_
                                                     _%e4000440313%_
                                                     _%hd4000540317%_
                                                     _%tl4000640320%_))))
                                            (_%__match4151241513%_
                                             _%e4000140303%_
                                             _%hd4000240307%_
                                             _%tl4000340310%_
                                             _%e4000440313%_
                                             _%hd4000540317%_
                                             _%tl4000640320%_)))))
                                (_%__match4151241513%_
                                 _%e4000140303%_
                                 _%hd4000240307%_
                                 _%tl4000340310%_
                                 _%e4000440313%_
                                 _%hd4000540317%_
                                 _%tl4000640320%_))))
                        (let () (declare (not safe)) (_%g3999740060%_)))))
                (let () (declare (not safe)) (_%g3999740060%_))))))))
  (define |gerbil/core/more-sugar[:0:]#set!|
    (lambda (_%stx40381%_)
      (|gerbil/core/more-sugar[1]#expand-set!| _%stx40381%_)))
  (define |gerbil/core/more-sugar[:0:]#values-set!|
    (lambda (_%stx40384%_)
      (let* ((_%g4038740411%_
              (lambda (_%g4038840407%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4038840407%_)))
             (_%g4038640589%_
              (lambda (_%g4038840415%_)
                (if (gx#stx-pair? _%g4038840415%_)
                    (let ((_%e4039140418%_ (gx#syntax-e _%g4038840415%_)))
                      (let ((_%hd4039240422%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4039140418%_)))
                            (_%tl4039340425%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4039140418%_))))
                        (if (gx#stx-pair/null? _%tl4039340425%_)
                            (if (let ((__tmp41596
                                       (gx#stx-length _%tl4039340425%_)))
                                  (declare (not safe))
                                  (##fx>= __tmp41596 '1))
                                (let ((_g41597_
                                       (gx#syntax-split-splice
                                        _%tl4039340425%_
                                        '1)))
                                  (begin
                                    (let ((_g41598_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g41597_)
                                                 (##vector-length _g41597_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g41598_ 2)))
                                          (error "Context expects 2 values"
                                                 _g41598_)))
                                    (let ((_%target4039440428%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g41597_ 0)))
                                          (_%tl4039640431%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g41597_ 1))))
                                      (if (gx#stx-pair? _%tl4039640431%_)
                                          (let ((_%e4040340434%_
                                                 (gx#syntax-e
                                                  _%tl4039640431%_)))
                                            (let ((_%hd4040440438%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4040340434%_)))
                                                  (_%tl4040540441%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4040340434%_))))
                                              (if (gx#stx-null?
                                                   _%tl4040540441%_)
                                                  (letrec ((_%loop4039740444%_
                                                            (lambda (_%hd4039540448%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%tgt4040140451%_)
                      (if (gx#stx-pair? _%hd4039540448%_)
                          (let ((_%e4039840454%_
                                 (gx#syntax-e _%hd4039540448%_)))
                            (let ((_%lp-hd4039940458%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4039840454%_)))
                                  (_%lp-tl4040040461%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4039840454%_))))
                              (_%loop4039740444%_
                               _%lp-tl4040040461%_
                               (cons _%lp-hd4039940458%_ _%tgt4040140451%_))))
                          (let ((_%tgt4040240464%_
                                 (reverse _%tgt4040140451%_)))
                            ((lambda (_%L40468%_ _%L40470%_)
                               (let* ((_%g4048840505%_
                                       (lambda (_%g4048940501%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g4048940501%_)))
                                      (_%g4048740577%_
                                       (lambda (_%g4048940509%_)
                                         (if (gx#stx-pair/null?
                                              _%g4048940509%_)
                                             (let ((_g41599_
                                                    (gx#syntax-split-splice
                                                     _%g4048940509%_
                                                     '0)))
                                               (begin
                                                 (let ((_g41600_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g41599_)
                                                              (##vector-length
                                                               _g41599_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g41600_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g41600_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%target4049140512%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g41599_
                                                           0)))
                                                       (_%tl4049340515%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g41599_
                                                           1))))
                                                   (if (gx#stx-null?
                                                        _%tl4049340515%_)
                                                       (letrec ((_%loop4049440518%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%hd4049240522%_ _%$e4049840525%_)
                           (if (gx#stx-pair? _%hd4049240522%_)
                               (let ((_%e4049540528%_
                                      (gx#syntax-e _%hd4049240522%_)))
                                 (let ((_%lp-hd4049640532%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4049540528%_)))
                                       (_%lp-tl4049740535%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4049540528%_))))
                                   (_%loop4049440518%_
                                    _%lp-tl4049740535%_
                                    (cons _%lp-hd4049640532%_
                                          _%$e4049840525%_))))
                               (let ((_%$e4049940538%_
                                      (reverse _%$e4049840525%_)))
                                 ((lambda (_%L40542%_)
                                    (cons (gx#datum->syntax '#f 'let-values)
                                          (cons (cons (cons (foldr (lambda (_%g4056040563%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g4056140566%_)
                             (cons _%g4056040563%_ _%g4056140566%_))
                           '()
                           _%L40542%_)
                    (cons _%L40468%_ '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (begin
                                                  (gx#syntax-check-splice-targets
                                                   _%L40542%_
                                                   _%L40470%_)
                                                  (foldr (lambda (_%g4055740569%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g4055840572%_
                          _%g4055940574%_)
                   (cons (cons (gx#datum->syntax '#f 'set!)
                               (cons _%g4055840572%_
                                     (cons _%g4055740569%_ '())))
                         _%g4055940574%_))
                 '()
                 _%L40542%_
                 _%L40470%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _%$e4049940538%_))))))
                 (_%loop4049440518%_ _%target4049140512%_ '()))
               (_%g4048840505%_ _%g4048940509%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g4048840505%_
                                              _%g4048940509%_)))))
                                 (_%g4048740577%_
                                  (gx#gentemps
                                   (foldr (lambda (_%g4058040583%_
                                                   _%g4058140586%_)
                                            (cons _%g4058040583%_
                                                  _%g4058140586%_))
                                          '()
                                          _%L40470%_)))))
                             _%hd4040440438%_
                             _%tgt4040240464%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop4039740444%_
                                                     _%target4039440428%_
                                                     '()))
                                                  (_%g4038740411%_
                                                   _%g4038840415%_))))
                                          (_%g4038740411%_ _%g4038840415%_)))))
                                (_%g4038740411%_ _%g4038840415%_))
                            (_%g4038740411%_ _%g4038840415%_))))
                    (_%g4038740411%_ _%g4038840415%_)))))
        (_%g4038640589%_ _%stx40384%_))))
  (define |gerbil/core/more-sugar[:0:]#parameterize|
    (lambda (_%stx40595%_)
      (let* ((_%__stx4153541536%_ _%stx40595%_)
             (_%g4059940657%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4153541536%_))))
        (let ((_%__kont4153841539%_
               (lambda (_%L40991%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons '()
                             (foldr (lambda (_%g4100741010%_ _%g4100841013%_)
                                      (cons _%g4100741010%_ _%g4100841013%_))
                                    '()
                                    _%L40991%_)))))
              (_%__kont4154241543%_
               (lambda (_%L40768%_ _%L40770%_ _%L40771%_)
                 (let* ((_%g4079440802%_
                         (lambda (_%g4079540798%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g4079540798%_)))
                        (_%g4079340922%_
                         (lambda (_%g4079540806%_)
                           ((lambda (_%L40809%_)
                              (let* ((_%g4082140838%_
                                      (lambda (_%g4082240834%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g4082240834%_)))
                                     (_%g4082040902%_
                                      (lambda (_%g4082240842%_)
                                        (if (gx#stx-pair/null? _%g4082240842%_)
                                            (let ((_g41601_
                                                   (gx#syntax-split-splice
                                                    _%g4082240842%_
                                                    '0)))
                                              (begin
                                                (let ((_g41602_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g41601_)
                                                             (##vector-length
                                                              _g41601_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g41602_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g41602_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target4082440845%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g41601_
                                                          0)))
                                                      (_%tl4082640848%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g41601_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl4082640848%_)
                                                      (letrec ((_%loop4082740851%_
                                                                (lambda (_%hd4082540855%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%arg4083140858%_)
                          (if (gx#stx-pair? _%hd4082540855%_)
                              (let ((_%e4082840861%_
                                     (gx#syntax-e _%hd4082540855%_)))
                                (let ((_%lp-hd4082940865%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4082840861%_)))
                                      (_%lp-tl4083040868%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4082840861%_))))
                                  (_%loop4082740851%_
                                   _%lp-tl4083040868%_
                                   (cons _%lp-hd4082940865%_
                                         _%arg4083140858%_))))
                              (let ((_%arg4083240871%_
                                     (reverse _%arg4083140858%_)))
                                ((lambda (_%L40875%_)
                                   (cons (gx#datum->syntax
                                          '#f
                                          'call-with-parameters)
                                         (cons _%L40809%_
                                               (foldr (lambda (_%g4089340896%_
                                                               _%g4089440899%_)
                                                        (cons _%g4089340896%_
                                                              _%g4089440899%_))
                                                      '()
                                                      _%L40875%_))))
                                 _%arg4083240871%_))))))
                (_%loop4082740851%_ _%target4082440845%_ '()))
              (_%g4082140838%_ _%g4082240842%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g4082140838%_
                                             _%g4082240842%_)))))
                                (_%g4082040902%_
                                 (foldr cons*
                                        '()
                                        (gx#syntax->list
                                         (foldr (lambda (_%g4090540908%_
                                                         _%g4090640911%_)
                                                  (cons _%g4090540908%_
                                                        _%g4090640911%_))
                                                '()
                                                _%L40771%_))
                                        (gx#syntax->list
                                         (foldr (lambda (_%g4091340916%_
                                                         _%g4091440919%_)
                                                  (cons _%g4091340916%_
                                                        _%g4091440919%_))
                                                '()
                                                _%L40770%_))))))
                            _%g4079540806%_))))
                   (_%g4079340922%_
                    (gx#stx-wrap-source
                     (cons (gx#datum->syntax '#f 'lambda)
                           (cons '()
                                 (foldr (lambda (_%g4092540928%_
                                                 _%g4092640931%_)
                                          (cons _%g4092540928%_
                                                _%g4092640931%_))
                                        '()
                                        _%L40768%_)))
                     (gx#stx-source _%stx40595%_)))))))
          (let* ((_%__match4159041591%_
                  (lambda (_%e4062040664%_
                           _%hd4062140668%_
                           _%tl4062240671%_
                           _%e4062340674%_
                           _%hd4062440678%_
                           _%tl4062540681%_
                           _%__splice4154441545%_
                           _%target4062640684%_
                           _%tl4062840687%_)
                    (letrec ((_%loop4062940690%_
                              (lambda (_%hd4062740694%_
                                       _%expr4063340697%_
                                       _%param4063440699%_)
                                (if (gx#stx-pair? _%hd4062740694%_)
                                    (let ((_%e4063040702%_
                                           (gx#syntax-e _%hd4062740694%_)))
                                      (let ((_%lp-tl4063240709%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4063040702%_)))
                                            (_%lp-hd4063140706%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4063040702%_))))
                                        (if (gx#stx-pair? _%lp-hd4063140706%_)
                                            (let ((_%e4064640712%_
                                                   (gx#syntax-e
                                                    _%lp-hd4063140706%_)))
                                              (let ((_%tl4064840719%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4064640712%_)))
                                                    (_%hd4064740716%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4064640712%_))))
                                                (if (gx#stx-pair?
                                                     _%tl4064840719%_)
                                                    (let ((_%e4064940722%_
                                                           (gx#syntax-e
                                                            _%tl4064840719%_)))
                                                      (let ((_%tl4065140729%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4064940722%_)))
                    (_%hd4065040726%_
                     (let () (declare (not safe)) (##car _%e4064940722%_))))
                (if (gx#stx-null? _%tl4065140729%_)
                    (_%loop4062940690%_
                     _%lp-tl4063240709%_
                     (cons _%hd4065040726%_ _%expr4063340697%_)
                     (cons _%hd4064740716%_ _%param4063440699%_))
                    (let () (declare (not safe)) (_%g4059940657%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4059940657%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4059940657%_)))))
                                    (let ((_%param4063640735%_
                                           (reverse _%param4063440699%_))
                                          (_%expr4063540732%_
                                           (reverse _%expr4063340697%_)))
                                      (if (gx#stx-pair/null? _%tl4062540681%_)
                                          (let ((_%__splice4154641547%_
                                                 (gx#syntax-split-splice
                                                  _%tl4062540681%_
                                                  '0)))
                                            (let ((_%tl4063940741%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4154641547%_
                                                      '1)))
                                                  (_%target4063740738%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4154641547%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4063940741%_)
                                                  (letrec ((_%loop4064040744%_
                                                            (lambda (_%hd4063840748%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body4064440751%_)
                      (if (gx#stx-pair? _%hd4063840748%_)
                          (let ((_%e4064140754%_
                                 (gx#syntax-e _%hd4063840748%_)))
                            (let ((_%lp-tl4064340761%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4064140754%_)))
                                  (_%lp-hd4064240758%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4064140754%_))))
                              (_%loop4064040744%_
                               _%lp-tl4064340761%_
                               (cons _%lp-hd4064240758%_ _%body4064440751%_))))
                          (let ((_%body4064540764%_
                                 (reverse _%body4064440751%_)))
                            (_%__kont4154241543%_
                             _%body4064540764%_
                             _%expr4063540732%_
                             _%param4063640735%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop4064040744%_
                                                     _%target4063740738%_
                                                     '()))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4059940657%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4059940657%_))))))))
                      (_%loop4062940690%_ _%target4062640684%_ '() '()))))
                 (_%__match4157041571%_
                  (lambda (_%e4060240941%_
                           _%hd4060340945%_
                           _%tl4060440948%_
                           _%e4060540951%_
                           _%hd4060640955%_
                           _%tl4060740958%_
                           _%__splice4154041541%_
                           _%target4060840961%_
                           _%tl4061040964%_)
                    (letrec ((_%loop4061140967%_
                              (lambda (_%hd4060940971%_ _%body4061540974%_)
                                (if (gx#stx-pair? _%hd4060940971%_)
                                    (let ((_%e4061240977%_
                                           (gx#syntax-e _%hd4060940971%_)))
                                      (let ((_%lp-tl4061440984%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4061240977%_)))
                                            (_%lp-hd4061340981%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4061240977%_))))
                                        (_%loop4061140967%_
                                         _%lp-tl4061440984%_
                                         (cons _%lp-hd4061340981%_
                                               _%body4061540974%_))))
                                    (let ((_%body4061640987%_
                                           (reverse _%body4061540974%_)))
                                      (_%__kont4153841539%_
                                       _%body4061640987%_))))))
                      (_%loop4061140967%_ _%target4060840961%_ '())))))
            (if (gx#stx-pair? _%__stx4153541536%_)
                (let ((_%e4060240941%_ (gx#syntax-e _%__stx4153541536%_)))
                  (let ((_%tl4060440948%_
                         (let () (declare (not safe)) (##cdr _%e4060240941%_)))
                        (_%hd4060340945%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4060240941%_))))
                    (if (gx#stx-pair? _%tl4060440948%_)
                        (let ((_%e4060540951%_ (gx#syntax-e _%tl4060440948%_)))
                          (let ((_%tl4060740958%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4060540951%_)))
                                (_%hd4060640955%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4060540951%_))))
                            (if (gx#stx-null? _%hd4060640955%_)
                                (if (gx#stx-pair/null? _%tl4060740958%_)
                                    (let ((_%__splice4154041541%_
                                           (gx#syntax-split-splice
                                            _%tl4060740958%_
                                            '0)))
                                      (let ((_%tl4061040964%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice4154041541%_
                                                '1)))
                                            (_%target4060840961%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice4154041541%_
                                                '0))))
                                        (if (gx#stx-null? _%tl4061040964%_)
                                            (_%__match4157041571%_
                                             _%e4060240941%_
                                             _%hd4060340945%_
                                             _%tl4060440948%_
                                             _%e4060540951%_
                                             _%hd4060640955%_
                                             _%tl4060740958%_
                                             _%__splice4154041541%_
                                             _%target4060840961%_
                                             _%tl4061040964%_)
                                            (if (gx#stx-pair/null?
                                                 _%hd4060640955%_)
                                                (let ((_%__splice4154441545%_
                                                       (gx#syntax-split-splice
                                                        _%hd4060640955%_
                                                        '0)))
                                                  (let ((_%tl4062840687%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice4154441545%_
                                                            '1)))
                                                        (_%target4062640684%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice4154441545%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl4062840687%_)
                                                        (_%__match4159041591%_
                                                         _%e4060240941%_
                                                         _%hd4060340945%_
                                                         _%tl4060440948%_
                                                         _%e4060540951%_
                                                         _%hd4060640955%_
                                                         _%tl4060740958%_
                                                         _%__splice4154441545%_
                                                         _%target4062640684%_
                                                         _%tl4062840687%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g4059940657%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4059940657%_))))))
                                    (if (gx#stx-pair/null? _%hd4060640955%_)
                                        (let ((_%__splice4154441545%_
                                               (gx#syntax-split-splice
                                                _%hd4060640955%_
                                                '0)))
                                          (let ((_%tl4062840687%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4154441545%_
                                                    '1)))
                                                (_%target4062640684%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4154441545%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl4062840687%_)
                                                (_%__match4159041591%_
                                                 _%e4060240941%_
                                                 _%hd4060340945%_
                                                 _%tl4060440948%_
                                                 _%e4060540951%_
                                                 _%hd4060640955%_
                                                 _%tl4060740958%_
                                                 _%__splice4154441545%_
                                                 _%target4062640684%_
                                                 _%tl4062840687%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4059940657%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g4059940657%_))))
                                (if (gx#stx-pair/null? _%hd4060640955%_)
                                    (let ((_%__splice4154441545%_
                                           (gx#syntax-split-splice
                                            _%hd4060640955%_
                                            '0)))
                                      (let ((_%tl4062840687%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice4154441545%_
                                                '1)))
                                            (_%target4062640684%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice4154441545%_
                                                '0))))
                                        (if (gx#stx-null? _%tl4062840687%_)
                                            (_%__match4159041591%_
                                             _%e4060240941%_
                                             _%hd4060340945%_
                                             _%tl4060440948%_
                                             _%e4060540951%_
                                             _%hd4060640955%_
                                             _%tl4060740958%_
                                             _%__splice4154441545%_
                                             _%target4062640684%_
                                             _%tl4062840687%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4059940657%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4059940657%_))))))
                        (let () (declare (not safe)) (_%g4059940657%_)))))
                (let () (declare (not safe)) (_%g4059940657%_))))))))
  (define |gerbil/core/more-sugar[:0:]#let/cc|
    (lambda (_%$stx41024%_)
      (let* ((_%g4102841052%_
              (lambda (_%g4102941048%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4102941048%_)))
             (_%g4102741137%_
              (lambda (_%g4102941056%_)
                (if (gx#stx-pair? _%g4102941056%_)
                    (let ((_%e4103241059%_ (gx#syntax-e _%g4102941056%_)))
                      (let ((_%hd4103341063%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4103241059%_)))
                            (_%tl4103441066%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4103241059%_))))
                        (if (gx#stx-pair? _%tl4103441066%_)
                            (let ((_%e4103541069%_
                                   (gx#syntax-e _%tl4103441066%_)))
                              (let ((_%hd4103641073%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4103541069%_)))
                                    (_%tl4103741076%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4103541069%_))))
                                (if (gx#stx-pair/null? _%tl4103741076%_)
                                    (let ((_g41603_
                                           (gx#syntax-split-splice
                                            _%tl4103741076%_
                                            '0)))
                                      (begin
                                        (let ((_g41604_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g41603_)
                                                     (##vector-length _g41603_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g41604_ 2)))
                                              (error "Context expects 2 values"
                                                     _g41604_)))
                                        (let ((_%target4103841079%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g41603_ 0)))
                                              (_%tl4104041082%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g41603_ 1))))
                                          (if (gx#stx-null? _%tl4104041082%_)
                                              (letrec ((_%loop4104141085%_
                                                        (lambda (_%hd4103941089%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%body4104541092%_)
                  (if (gx#stx-pair? _%hd4103941089%_)
                      (let ((_%e4104241095%_ (gx#syntax-e _%hd4103941089%_)))
                        (let ((_%lp-hd4104341099%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4104241095%_)))
                              (_%lp-tl4104441102%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4104241095%_))))
                          (_%loop4104141085%_
                           _%lp-tl4104441102%_
                           (cons _%lp-hd4104341099%_ _%body4104541092%_))))
                      (let ((_%body4104641105%_ (reverse _%body4104541092%_)))
                        ((lambda (_%L41109%_ _%L41111%_)
                           (if (gx#identifier? _%L41111%_)
                               (cons (gx#datum->syntax '#f 'call/cc)
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons (cons _%L41111%_ '())
                                                       (foldr (lambda (_%g4112841131%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g4112941134%_)
                        (cons _%g4112841131%_ _%g4112941134%_))
                      '()
                      _%L41109%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))
                               (_%g4102841052%_ _%g4102941056%_)))
                         _%body4104641105%_
                         _%hd4103641073%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop4104141085%_
                                                 _%target4103841079%_
                                                 '()))
                                              (_%g4102841052%_
                                               _%g4102941056%_)))))
                                    (_%g4102841052%_ _%g4102941056%_))))
                            (_%g4102841052%_ _%g4102941056%_))))
                    (_%g4102841052%_ _%g4102941056%_)))))
        (_%g4102741137%_ _%$stx41024%_))))
  (define |gerbil/core/more-sugar[:0:]#unwind-protect|
    (lambda (_%$stx41142%_)
      (let* ((_%g4114641174%_
              (lambda (_%g4114741170%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4114741170%_)))
             (_%g4114541273%_
              (lambda (_%g4114741178%_)
                (if (gx#stx-pair? _%g4114741178%_)
                    (let ((_%e4115141181%_ (gx#syntax-e _%g4114741178%_)))
                      (let ((_%hd4115241185%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4115141181%_)))
                            (_%tl4115341188%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4115141181%_))))
                        (if (gx#stx-pair? _%tl4115341188%_)
                            (let ((_%e4115441191%_
                                   (gx#syntax-e _%tl4115341188%_)))
                              (let ((_%hd4115541195%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4115441191%_)))
                                    (_%tl4115641198%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4115441191%_))))
                                (if (gx#stx-pair? _%tl4115641198%_)
                                    (let ((_%e4115741201%_
                                           (gx#syntax-e _%tl4115641198%_)))
                                      (let ((_%hd4115841205%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4115741201%_)))
                                            (_%tl4115941208%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4115741201%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4115941208%_)
                                            (let ((_g41605_
                                                   (gx#syntax-split-splice
                                                    _%tl4115941208%_
                                                    '0)))
                                              (begin
                                                (let ((_g41606_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g41605_)
                                                             (##vector-length
                                                              _g41605_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g41606_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g41606_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target4116041211%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g41605_
                                                          0)))
                                                      (_%tl4116241214%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g41605_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl4116241214%_)
                                                      (letrec ((_%loop4116341217%_
                                                                (lambda (_%hd4116141221%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%rest4116741224%_)
                          (if (gx#stx-pair? _%hd4116141221%_)
                              (let ((_%e4116441227%_
                                     (gx#syntax-e _%hd4116141221%_)))
                                (let ((_%lp-hd4116541231%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4116441227%_)))
                                      (_%lp-tl4116641234%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4116441227%_))))
                                  (_%loop4116341217%_
                                   _%lp-tl4116641234%_
                                   (cons _%lp-hd4116541231%_
                                         _%rest4116741224%_))))
                              (let ((_%rest4116841237%_
                                     (reverse _%rest4116741224%_)))
                                ((lambda (_%L41241%_ _%L41243%_ _%L41244%_)
                                   (cons (gx#datum->syntax
                                          '#f
                                          'with-unwind-protect)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons '()
                                                           (cons _%L41244%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda)
                                                           (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L41243%_
                               (foldr (lambda (_%g4126441267%_ _%g4126541270%_)
                                        (cons _%g4126441267%_ _%g4126541270%_))
                                      '()
                                      _%L41241%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                                 _%rest4116841237%_
                                 _%hd4115841205%_
                                 _%hd4115541195%_))))))
                (_%loop4116341217%_ _%target4116041211%_ '()))
              (_%g4114641174%_ _%g4114741178%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g4114641174%_
                                             _%g4114741178%_))))
                                    (_%g4114641174%_ _%g4114741178%_))))
                            (_%g4114641174%_ _%g4114741178%_))))
                    (_%g4114641174%_ _%g4114741178%_)))))
        (_%g4114541273%_ _%$stx41142%_))))
  (define |gerbil/core/more-sugar[:0:]#@bytes|
    (lambda (_%stx41278%_)
      (let* ((_%g4128141295%_
              (lambda (_%g4128241291%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4128241291%_)))
             (_%g4128041367%_
              (lambda (_%g4128241299%_)
                (if (gx#stx-pair? _%g4128241299%_)
                    (let ((_%e4128441302%_ (gx#syntax-e _%g4128241299%_)))
                      (let ((_%hd4128541306%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4128441302%_)))
                            (_%tl4128641309%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4128441302%_))))
                        (if (gx#stx-pair? _%tl4128641309%_)
                            (let ((_%e4128741312%_
                                   (gx#syntax-e _%tl4128641309%_)))
                              (let ((_%hd4128841316%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4128741312%_)))
                                    (_%tl4128941319%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4128741312%_))))
                                (if (gx#stx-null? _%tl4128941319%_)
                                    ((lambda (_%L41322%_)
                                       (if (gx#stx-string? _%L41322%_)
                                           (let* ((_%g4133641344%_
                                                   (lambda (_%g4133741340%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g4133741340%_)))
                                                  (_%g4133541363%_
                                                   (lambda (_%g4133741348%_)
                                                     ((lambda (_%L41351%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons _%L41351%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
              _%g4133741348%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g4133541363%_
                                              (string->bytes
                                               (gx#stx-e _%L41322%_))))
                                           (_%g4128141295%_ _%g4128241299%_)))
                                     _%hd4128841316%_)
                                    (_%g4128141295%_ _%g4128241299%_))))
                            (_%g4128141295%_ _%g4128241299%_))))
                    (_%g4128141295%_ _%g4128241299%_)))))
        (_%g4128041367%_ _%stx41278%_))))
  (define |gerbil/core/more-sugar[:0:]#eval-when-compile|
    (lambda (_%stx41371%_)
      (let* ((_%g4137441388%_
              (lambda (_%g4137541384%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4137541384%_)))
             (_%g4137341429%_
              (lambda (_%g4137541392%_)
                (if (gx#stx-pair? _%g4137541392%_)
                    (let ((_%e4137741395%_ (gx#syntax-e _%g4137541392%_)))
                      (let ((_%hd4137841399%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4137741395%_)))
                            (_%tl4137941402%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4137741395%_))))
                        (if (gx#stx-pair? _%tl4137941402%_)
                            (let ((_%e4138041405%_
                                   (gx#syntax-e _%tl4137941402%_)))
                              (let ((_%hd4138141409%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4138041405%_)))
                                    (_%tl4138241412%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4138041405%_))))
                                (if (gx#stx-null? _%tl4138241412%_)
                                    ((lambda (_%L41415%_)
                                       (if (gx#current-expander-compiling?)
                                           (gx#eval-syntax _%L41415%_)
                                           '#!void)
                                       (cons (gx#datum->syntax '#f 'void) '()))
                                     _%hd4138141409%_)
                                    (_%g4137441388%_ _%g4137541392%_))))
                            (_%g4137441388%_ _%g4137541392%_))))
                    (_%g4137441388%_ _%g4137541392%_)))))
        (_%g4137341429%_ _%stx41371%_)))))
