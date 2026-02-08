(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeCast[1]#_g97799_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypeCast[1]#_g97800_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypeCast[1]#_g97801_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/contract~TypeCast[:0:]#:|
      (lambda (_%stx49641%_)
        (let* ((_%g4964449662%_
                (lambda (_%g4964549658%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4964549658%_)))
               (_%g4964349857%_
                (lambda (_%g4964549666%_)
                  (if (gx#stx-pair? _%g4964549666%_)
                      (let ((_%e4964849669%_ (gx#syntax-e _%g4964549666%_)))
                        (let ((_%hd4964949673%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4964849669%_)))
                              (_%tl4965049676%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4964849669%_))))
                          (if (gx#stx-pair? _%tl4965049676%_)
                              (let ((_%e4965149679%_
                                     (gx#syntax-e _%tl4965049676%_)))
                                (let ((_%hd4965249683%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4965149679%_)))
                                      (_%tl4965349686%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4965149679%_))))
                                  (if (gx#stx-pair? _%tl4965349686%_)
                                      (let ((_%e4965449689%_
                                             (gx#syntax-e _%tl4965349686%_)))
                                        (let ((_%hd4965549693%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4965449689%_)))
                                              (_%tl4965649696%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4965449689%_))))
                                          (if (gx#stx-null? _%tl4965649696%_)
                                              ((lambda (_%g4964649699%_
                                                        _%g4964749701%_)
                                                 (if (gx#identifier?
                                                      _%g4964649699%_)
                                                     (let ((_%meta49718%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                               _%stx49641%_
                                                               _%g4964649699%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (class-instance?
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              _%meta49718%_))
                                                           (let* ((_%g4972349738%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g4972449734%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g4972449734%_)))
                          (_%g4972249785%_
                           (lambda (_%g4972449742%_)
                             (if (gx#stx-pair? _%g4972449742%_)
                                 (let ((_%e4972749745%_
                                        (gx#syntax-e _%g4972449742%_)))
                                   (let ((_%hd4972849749%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4972749745%_)))
                                         (_%tl4972949752%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4972749745%_))))
                                     (if (gx#stx-pair? _%tl4972949752%_)
                                         (let ((_%e4973049755%_
                                                (gx#syntax-e
                                                 _%tl4972949752%_)))
                                           (let ((_%hd4973149759%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e4973049755%_)))
                                                 (_%tl4973249762%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e4973049755%_))))
                                             (if (gx#stx-null?
                                                  _%tl4973249762%_)
                                                 ((lambda (_%g4972549765%_
                                                           _%g4972649767%_)
                                                    (if (let ((__tmp97797
                                                               (let ((__obj97626
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%meta49718%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj97626
                                'gerbil.core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj97626
                                '1
                                '#f
                                '#f))
                             (unchecked-slot-ref __obj97626 'id)))))
                  (declare (not safe))
                  (##memq __tmp97797 '(t void)))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%g4972649767%_ '()))
                            (cons _%g4964749701%_ '())))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%g4972649767%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%g4964749701%_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons _%g4972549765%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f 'val) '()))
                        (cons (gx#datum->syntax '#f 'val)
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'contract-violation!)
                                          (cons _%g4964749701%_
                                                (cons (cons _%g4972549765%_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'val)
                          '()))
              (cons (gx#datum->syntax '#f 'val) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%hd4973149759%_
                                                  _%hd4972849749%_)
                                                 (_%g4972349738%_
                                                  _%g4972449742%_))))
                                         (_%g4972349738%_ _%g4972449742%_))))
                                 (_%g4972349738%_ _%g4972449742%_)))))
                     (_%g4972249785%_
                      (list (let ((__obj97627 _%meta49718%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj97627
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj97627
                                     '3
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj97627
                                   'type-descriptor)))
                            (let ((__obj97628 _%meta49718%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj97628
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj97628
                                     '14
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj97628
                                   'predicate))))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%meta49718%_))
                       (let* ((_%g4979149806%_
                               (lambda (_%g4979249802%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g4979249802%_)))
                              (_%g4979049851%_
                               (lambda (_%g4979249810%_)
                                 (if (gx#stx-pair? _%g4979249810%_)
                                     (let ((_%e4979549813%_
                                            (gx#syntax-e _%g4979249810%_)))
                                       (let ((_%hd4979649817%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4979549813%_)))
                                             (_%tl4979749820%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4979549813%_))))
                                         (if (gx#stx-pair? _%tl4979749820%_)
                                             (let ((_%e4979849823%_
                                                    (gx#syntax-e
                                                     _%tl4979749820%_)))
                                               (let ((_%hd4979949827%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4979849823%_)))
                                                     (_%tl4980049830%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4979849823%_))))
                                                 (if (gx#stx-null?
                                                      _%tl4980049830%_)
                                                     ((lambda (_%g4979349833%_
                                                               _%g4979449835%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@type)
                                  (cons _%g4979449835%_ '()))
                            (cons (cons _%g4979349833%_
                                        (cons _%g4964749701%_ '()))
                                  '()))))
              _%hd4979949827%_
              _%hd4979649817%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4979149806%_
                                                      _%g4979249810%_))))
                                             (_%g4979149806%_
                                              _%g4979249810%_))))
                                     (_%g4979149806%_ _%g4979249810%_)))))
                         (_%g4979049851%_
                          (list (let ((__obj97625 _%meta49718%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj97625
                                         'gerbil.core#runtime-type-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj97625
                                         '3
                                         '#f
                                         '#f))
                                      (unchecked-slot-ref
                                       __obj97625
                                       'type-descriptor)))
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                   _%stx49641%_
                                   _%g4964649699%_)))))
                       (gx#raise-syntax-error
                        '#f
                        '"not a class type or interface"
                        _%stx49641%_
                        _%g4964649699%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4964449662%_
                                                      _%g4964549666%_)))
                                               _%hd4965549693%_
                                               _%hd4965249683%_)
                                              (_%g4964449662%_
                                               _%g4964549666%_))))
                                      (_%g4964449662%_ _%g4964549666%_))))
                              (_%g4964449662%_ _%g4964549666%_))))
                      (_%g4964449662%_ _%g4964549666%_)))))
          (_%g4964349857%_ _%stx49641%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:?|
      (lambda (_%stx49861%_)
        (let* ((_%g4986449882%_
                (lambda (_%g4986549878%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4986549878%_)))
               (_%g4986350076%_
                (lambda (_%g4986549886%_)
                  (if (gx#stx-pair? _%g4986549886%_)
                      (let ((_%e4986849889%_ (gx#syntax-e _%g4986549886%_)))
                        (let ((_%hd4986949893%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4986849889%_)))
                              (_%tl4987049896%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4986849889%_))))
                          (if (gx#stx-pair? _%tl4987049896%_)
                              (let ((_%e4987149899%_
                                     (gx#syntax-e _%tl4987049896%_)))
                                (let ((_%hd4987249903%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4987149899%_)))
                                      (_%tl4987349906%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4987149899%_))))
                                  (if (gx#stx-pair? _%tl4987349906%_)
                                      (let ((_%e4987449909%_
                                             (gx#syntax-e _%tl4987349906%_)))
                                        (let ((_%hd4987549913%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4987449909%_)))
                                              (_%tl4987649916%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4987449909%_))))
                                          (if (gx#stx-null? _%tl4987649916%_)
                                              ((lambda (_%g4986649919%_
                                                        _%g4986749921%_)
                                                 (if (gx#identifier?
                                                      _%g4986649919%_)
                                                     (let ((_%meta49937%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                               _%stx49861%_
                                                               _%g4986649919%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (class-instance?
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              _%meta49937%_))
                                                           (let* ((_%g4994249957%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g4994349953%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g4994349953%_)))
                          (_%g4994150004%_
                           (lambda (_%g4994349961%_)
                             (if (gx#stx-pair? _%g4994349961%_)
                                 (let ((_%e4994649964%_
                                        (gx#syntax-e _%g4994349961%_)))
                                   (let ((_%hd4994749968%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4994649964%_)))
                                         (_%tl4994849971%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4994649964%_))))
                                     (if (gx#stx-pair? _%tl4994849971%_)
                                         (let ((_%e4994949974%_
                                                (gx#syntax-e
                                                 _%tl4994849971%_)))
                                           (let ((_%hd4995049978%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e4994949974%_)))
                                                 (_%tl4995149981%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e4994949974%_))))
                                             (if (gx#stx-null?
                                                  _%tl4995149981%_)
                                                 ((lambda (_%g4994449984%_
                                                           _%g4994549986%_)
                                                    (if (let ((__tmp97798
                                                               (let ((__obj97630
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%meta49937%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj97630
                                'gerbil.core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj97630
                                '1
                                '#f
                                '#f))
                             (unchecked-slot-ref __obj97630 'id)))))
                  (declare (not safe))
                  (##memq __tmp97798 '(t void)))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%g4994549986%_ '()))
                            (cons _%g4986749921%_ '())))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%g4994549986%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%g4986749921%_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'or)
                              (cons (cons (gx#datum->syntax '#f 'not)
                                          (cons (gx#datum->syntax '#f 'val)
                                                '()))
                                    (cons (cons _%g4994449984%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'val)
                                                      '()))
                                          '())))
                        (cons (gx#datum->syntax '#f 'val)
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'contract-violation!)
                                          (cons _%g4986749921%_
                                                (cons (cons _%g4994449984%_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'val)
                          '()))
              (cons (gx#datum->syntax '#f 'val) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%hd4995049978%_
                                                  _%hd4994749968%_)
                                                 (_%g4994249957%_
                                                  _%g4994349961%_))))
                                         (_%g4994249957%_ _%g4994349961%_))))
                                 (_%g4994249957%_ _%g4994349961%_)))))
                     (_%g4994150004%_
                      (list (let ((__obj97631 _%meta49937%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj97631
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj97631
                                     '3
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj97631
                                   'type-descriptor)))
                            (let ((__obj97632 _%meta49937%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj97632
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj97632
                                     '14
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj97632
                                   'predicate))))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%meta49937%_))
                       (let* ((_%g5001050025%_
                               (lambda (_%g5001150021%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g5001150021%_)))
                              (_%g5000950070%_
                               (lambda (_%g5001150029%_)
                                 (if (gx#stx-pair? _%g5001150029%_)
                                     (let ((_%e5001450032%_
                                            (gx#syntax-e _%g5001150029%_)))
                                       (let ((_%hd5001550036%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e5001450032%_)))
                                             (_%tl5001650039%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e5001450032%_))))
                                         (if (gx#stx-pair? _%tl5001650039%_)
                                             (let ((_%e5001750042%_
                                                    (gx#syntax-e
                                                     _%tl5001650039%_)))
                                               (let ((_%hd5001850046%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e5001750042%_)))
                                                     (_%tl5001950049%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e5001750042%_))))
                                                 (if (gx#stx-null?
                                                      _%tl5001950049%_)
                                                     ((lambda (_%g5001250052%_
                                                               _%g5001350054%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@type)
                                  (cons _%g5001350054%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%g4986749921%_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'and)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'val)
                        (cons (cons _%g5001250052%_
                                    (cons (gx#datum->syntax '#f 'val) '()))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '()))))
              _%hd5001850046%_
              _%hd5001550036%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g5001050025%_
                                                      _%g5001150029%_))))
                                             (_%g5001050025%_
                                              _%g5001150029%_))))
                                     (_%g5001050025%_ _%g5001150029%_)))))
                         (_%g5000950070%_
                          (list (let ((__obj97629 _%meta49937%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj97629
                                         'gerbil.core#runtime-type-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj97629
                                         '3
                                         '#f
                                         '#f))
                                      (unchecked-slot-ref
                                       __obj97629
                                       'type-descriptor)))
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                   _%stx49861%_
                                   _%g4986649919%_)))))
                       (gx#raise-syntax-error
                        '#f
                        '"not a class type or interface"
                        _%stx49861%_
                        _%g4986649919%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4986449882%_
                                                      _%g4986549886%_)))
                                               _%hd4987549913%_
                                               _%hd4987249903%_)
                                              (_%g4986449882%_
                                               _%g4986549886%_))))
                                      (_%g4986449882%_ _%g4986549886%_))))
                              (_%g4986449882%_ _%g4986549886%_))))
                      (_%g4986449882%_ _%g4986549886%_)))))
          (_%g4986350076%_ _%stx49861%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:-|
      (lambda (_%stx50080%_)
        (let* ((_%g5008350101%_
                (lambda (_%g5008450097%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5008450097%_)))
               (_%g5008250187%_
                (lambda (_%g5008450105%_)
                  (if (gx#stx-pair? _%g5008450105%_)
                      (let ((_%e5008750108%_ (gx#syntax-e _%g5008450105%_)))
                        (let ((_%hd5008850112%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5008750108%_)))
                              (_%tl5008950115%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5008750108%_))))
                          (if (gx#stx-pair? _%tl5008950115%_)
                              (let ((_%e5009050118%_
                                     (gx#syntax-e _%tl5008950115%_)))
                                (let ((_%hd5009150122%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5009050118%_)))
                                      (_%tl5009250125%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5009050118%_))))
                                  (if (gx#stx-pair? _%tl5009250125%_)
                                      (let ((_%e5009350128%_
                                             (gx#syntax-e _%tl5009250125%_)))
                                        (let ((_%hd5009450132%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5009350128%_)))
                                              (_%tl5009550135%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5009350128%_))))
                                          (if (gx#stx-null? _%tl5009550135%_)
                                              ((lambda (_%g5008550138%_
                                                        _%g5008650140%_)
                                                 (if (gx#identifier?
                                                      _%g5008550138%_)
                                                     (let* ((_%g5015650164%_
                                                             (lambda (_%g5015750160%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g5015750160%_)))
                                                            (_%g5015550183%_
                                                             (lambda (_%g5015750168%_)
                                                               ((lambda (_%g5015850171%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'begin-annotation)
                                (cons (cons (gx#datum->syntax '#f '@type)
                                            (cons _%g5015850171%_ '()))
                                      (cons _%g5008650140%_ '()))))
                        _%g5015750168%_))))
               (_%g5015550183%_
                (let ()
                  (declare (not safe))
                  (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                   _%stx50080%_
                   _%g5008550138%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g5008350101%_
                                                      _%g5008450105%_)))
                                               _%hd5009450132%_
                                               _%hd5009150122%_)
                                              (_%g5008350101%_
                                               _%g5008450105%_))))
                                      (_%g5008350101%_ _%g5008450105%_))))
                              (_%g5008350101%_ _%g5008450105%_))))
                      (_%g5008350101%_ _%g5008450105%_)))))
          (_%g5008250187%_ _%stx50080%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#do-with-lock|
      (lambda (_%$stx50191%_)
        (let* ((_%__stx9134291343%_ _%$stx50191%_)
               (_%g5019750281%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9134291343%_))))
          (let ((_%__kont9134591346%_
                 (lambda (_%g5019950585%_
                          _%g5020050587%_
                          _%g5020150588%_
                          _%g5020250589%_)
                   (cons (gx#datum->syntax '#f ':-)
                         (cons (cons (gx#datum->syntax '#f 'do-with-lock)
                                     (cons _%g5020250589%_
                                           (cons _%g5020050587%_
                                                 (foldr (lambda (_%g5061350616%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5061450619%_)
                  (cons _%g5061350616%_ _%g5061450619%_))
                '()
                _%g5019950585%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%g5020150588%_ '())))))
                (_%__kont9134991350%_
                 (lambda (_%g5022750463%_
                          _%g5022850465%_
                          _%g5022950466%_
                          _%g5023050467%_)
                   (cons (gx#datum->syntax '#f ':)
                         (cons (cons (gx#datum->syntax '#f 'do-with-lock)
                                     (cons _%g5023050467%_
                                           (cons _%g5022850465%_
                                                 (foldr (lambda (_%g5049150494%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5049250497%_)
                  (cons _%g5049150494%_ _%g5049250497%_))
                '()
                _%g5022750463%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%g5022950466%_ '())))))
                (_%__kont9135391354%_
                 (lambda (_%g5025550346%_ _%g5025650348%_ _%g5025750349%_)
                   (cons (gx#datum->syntax '#f 'with-lock)
                         (cons _%g5025750349%_
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons '()
                                                 (cons _%g5025650348%_
                                                       (foldr (lambda (_%g5036950372%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g5037050375%_)
                        (cons _%g5036950372%_ _%g5037050375%_))
                      '()
                      _%g5025550346%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match9146791468%_
                    (lambda (_%e5025850288%_
                             _%hd5025950292%_
                             _%tl5026050295%_
                             _%e5026150298%_
                             _%hd5026250302%_
                             _%tl5026350305%_
                             _%e5026450308%_
                             _%hd5026550312%_
                             _%tl5026650315%_
                             _%__splice9135591356%_
                             _%target5026750318%_
                             _%tl5026950321%_)
                      (letrec ((_%loop5027050324%_
                                (lambda (_%hd5026850328%_ _%rest5027450331%_)
                                  (if (gx#stx-pair? _%hd5026850328%_)
                                      (let ((_%e5027150333%_
                                             (gx#syntax-e _%hd5026850328%_)))
                                        (let ((_%lp-tl5027350340%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5027150333%_)))
                                              (_%lp-hd5027250337%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5027150333%_))))
                                          (_%loop5027050324%_
                                           _%lp-tl5027350340%_
                                           (cons _%lp-hd5027250337%_
                                                 _%rest5027450331%_))))
                                      (let ((_%rest5027550343%_
                                             (reverse _%rest5027450331%_)))
                                        (_%__kont9135391354%_
                                         _%rest5027550343%_
                                         _%hd5026550312%_
                                         _%hd5026250302%_))))))
                        (_%loop5027050324%_ _%target5026750318%_ '()))))
                   (_%__match9144191442%_
                    (lambda (_%e5023150385%_
                             _%hd5023250389%_
                             _%tl5023350392%_
                             _%e5023450395%_
                             _%hd5023550399%_
                             _%tl5023650402%_
                             _%e5023750405%_
                             _%hd5023850409%_
                             _%tl5023950412%_
                             _%e5024050415%_
                             _%hd5024150419%_
                             _%tl5024250422%_
                             _%e5024350425%_
                             _%hd5024450429%_
                             _%tl5024550432%_
                             _%__splice9135191352%_
                             _%target5024650435%_
                             _%tl5024850438%_)
                      (letrec ((_%loop5024950441%_
                                (lambda (_%hd5024750445%_ _%rest5025350448%_)
                                  (if (gx#stx-pair? _%hd5024750445%_)
                                      (let ((_%e5025050450%_
                                             (gx#syntax-e _%hd5024750445%_)))
                                        (let ((_%lp-tl5025250457%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5025050450%_)))
                                              (_%lp-hd5025150454%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5025050450%_))))
                                          (_%loop5024950441%_
                                           _%lp-tl5025250457%_
                                           (cons _%lp-hd5025150454%_
                                                 _%rest5025350448%_))))
                                      (let ((_%rest5025450460%_
                                             (reverse _%rest5025350448%_)))
                                        (_%__kont9134991350%_
                                         _%rest5025450460%_
                                         _%hd5024450429%_
                                         _%hd5024150419%_
                                         _%hd5023550399%_))))))
                        (_%loop5024950441%_ _%target5024650435%_ '()))))
                   (_%__match9139991400%_
                    (lambda (_%e5020350507%_
                             _%hd5020450511%_
                             _%tl5020550514%_
                             _%e5020650517%_
                             _%hd5020750521%_
                             _%tl5020850524%_
                             _%e5020950527%_
                             _%hd5021050531%_
                             _%tl5021150534%_
                             _%e5021250537%_
                             _%hd5021350541%_
                             _%tl5021450544%_
                             _%e5021550547%_
                             _%hd5021650551%_
                             _%tl5021750554%_
                             _%__splice9134791348%_
                             _%target5021850557%_
                             _%tl5022050560%_)
                      (letrec ((_%loop5022150563%_
                                (lambda (_%hd5021950567%_ _%rest5022550570%_)
                                  (if (gx#stx-pair? _%hd5021950567%_)
                                      (let ((_%e5022250572%_
                                             (gx#syntax-e _%hd5021950567%_)))
                                        (let ((_%lp-tl5022450579%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5022250572%_)))
                                              (_%lp-hd5022350576%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5022250572%_))))
                                          (_%loop5022150563%_
                                           _%lp-tl5022450579%_
                                           (cons _%lp-hd5022350576%_
                                                 _%rest5022550570%_))))
                                      (let ((_%rest5022650582%_
                                             (reverse _%rest5022550570%_)))
                                        (_%__kont9134591346%_
                                         _%rest5022650582%_
                                         _%hd5021650551%_
                                         _%hd5021350541%_
                                         _%hd5020750521%_))))))
                        (_%loop5022150563%_ _%target5021850557%_ '())))))
              (if (gx#stx-pair? _%__stx9134291343%_)
                  (let ((_%e5020350507%_ (gx#syntax-e _%__stx9134291343%_)))
                    (let ((_%tl5020550514%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5020350507%_)))
                          (_%hd5020450511%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5020350507%_))))
                      (if (gx#stx-pair? _%tl5020550514%_)
                          (let ((_%e5020650517%_
                                 (gx#syntax-e _%tl5020550514%_)))
                            (let ((_%tl5020850524%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5020650517%_)))
                                  (_%hd5020750521%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5020650517%_))))
                              (if (gx#stx-pair? _%tl5020850524%_)
                                  (let ((_%e5020950527%_
                                         (gx#syntax-e _%tl5020850524%_)))
                                    (let ((_%tl5021150534%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5020950527%_)))
                                          (_%hd5021050531%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5020950527%_))))
                                      (if (gx#identifier? _%hd5021050531%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/contract~TypeCast[1]#_g97799_|
                                               _%hd5021050531%_)
                                              (if (gx#stx-pair?
                                                   _%tl5021150534%_)
                                                  (let ((_%e5021250537%_
                                                         (gx#syntax-e
                                                          _%tl5021150534%_)))
                                                    (let ((_%tl5021450544%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5021250537%_)))
                                                          (_%hd5021350541%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5021250537%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5021450544%_)
                                                          (let ((_%e5021550547%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5021450544%_)))
                    (let ((_%tl5021750554%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5021550547%_)))
                          (_%hd5021650551%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5021550547%_))))
                      (if (gx#stx-pair/null? _%tl5021750554%_)
                          (let ((_%__splice9134791348%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5021750554%_
                                  '0)))
                            (let ((_%tl5022050560%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9134791348%_ '1)))
                                  (_%target5021850557%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9134791348%_
                                      '0))))
                              (if (gx#stx-null? _%tl5022050560%_)
                                  (_%__match9139991400%_
                                   _%e5020350507%_
                                   _%hd5020450511%_
                                   _%tl5020550514%_
                                   _%e5020650517%_
                                   _%hd5020750521%_
                                   _%tl5020850524%_
                                   _%e5020950527%_
                                   _%hd5021050531%_
                                   _%tl5021150534%_
                                   _%e5021250537%_
                                   _%hd5021350541%_
                                   _%tl5021450544%_
                                   _%e5021550547%_
                                   _%hd5021650551%_
                                   _%tl5021750554%_
                                   _%__splice9134791348%_
                                   _%target5021850557%_
                                   _%tl5022050560%_)
                                  (if (gx#stx-pair/null? _%tl5021150534%_)
                                      (let ((_%__splice9135591356%_
                                             (gx#syntax-split-splice->vector
                                              _%tl5021150534%_
                                              '0)))
                                        (let ((_%tl5026950321%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9135591356%_
                                                  '1)))
                                              (_%target5026750318%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9135591356%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5026950321%_)
                                              (_%__match9146791468%_
                                               _%e5020350507%_
                                               _%hd5020450511%_
                                               _%tl5020550514%_
                                               _%e5020650517%_
                                               _%hd5020750521%_
                                               _%tl5020850524%_
                                               _%e5020950527%_
                                               _%hd5021050531%_
                                               _%tl5021150534%_
                                               _%__splice9135591356%_
                                               _%target5026750318%_
                                               _%tl5026950321%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5019750281%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5019750281%_))))))
                          (if (gx#stx-pair/null? _%tl5021150534%_)
                              (let ((_%__splice9135591356%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5021150534%_
                                      '0)))
                                (let ((_%tl5026950321%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9135591356%_
                                          '1)))
                                      (_%target5026750318%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9135591356%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5026950321%_)
                                      (_%__match9146791468%_
                                       _%e5020350507%_
                                       _%hd5020450511%_
                                       _%tl5020550514%_
                                       _%e5020650517%_
                                       _%hd5020750521%_
                                       _%tl5020850524%_
                                       _%e5020950527%_
                                       _%hd5021050531%_
                                       _%tl5021150534%_
                                       _%__splice9135591356%_
                                       _%target5026750318%_
                                       _%tl5026950321%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5019750281%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5019750281%_))))))
                  (if (gx#stx-pair/null? _%tl5021150534%_)
                      (let ((_%__splice9135591356%_
                             (gx#syntax-split-splice->vector
                              _%tl5021150534%_
                              '0)))
                        (let ((_%tl5026950321%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9135591356%_ '1)))
                              (_%target5026750318%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9135591356%_ '0))))
                          (if (gx#stx-null? _%tl5026950321%_)
                              (_%__match9146791468%_
                               _%e5020350507%_
                               _%hd5020450511%_
                               _%tl5020550514%_
                               _%e5020650517%_
                               _%hd5020750521%_
                               _%tl5020850524%_
                               _%e5020950527%_
                               _%hd5021050531%_
                               _%tl5021150534%_
                               _%__splice9135591356%_
                               _%target5026750318%_
                               _%tl5026950321%_)
                              (let ()
                                (declare (not safe))
                                (_%g5019750281%_)))))
                      (let () (declare (not safe)) (_%g5019750281%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5021150534%_)
                                                      (let ((_%__splice9135591356%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5021150534%_
                                                              '0)))
                                                        (let ((_%tl5026950321%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9135591356%_ '1)))
                      (_%target5026750318%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9135591356%_ '0))))
                  (if (gx#stx-null? _%tl5026950321%_)
                      (_%__match9146791468%_
                       _%e5020350507%_
                       _%hd5020450511%_
                       _%tl5020550514%_
                       _%e5020650517%_
                       _%hd5020750521%_
                       _%tl5020850524%_
                       _%e5020950527%_
                       _%hd5021050531%_
                       _%tl5021150534%_
                       _%__splice9135591356%_
                       _%target5026750318%_
                       _%tl5026950321%_)
                      (let () (declare (not safe)) (_%g5019750281%_)))))
              (let () (declare (not safe)) (_%g5019750281%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~TypeCast[1]#_g97800_|
                                                   _%hd5021050531%_)
                                                  (if (gx#stx-pair?
                                                       _%tl5021150534%_)
                                                      (let ((_%e5024050415%_
                                                             (gx#syntax-e
                                                              _%tl5021150534%_)))
                                                        (let ((_%tl5024250422%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5024050415%_)))
                      (_%hd5024150419%_
                       (let () (declare (not safe)) (##car _%e5024050415%_))))
                  (if (gx#stx-pair? _%tl5024250422%_)
                      (let ((_%e5024350425%_ (gx#syntax-e _%tl5024250422%_)))
                        (let ((_%tl5024550432%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5024350425%_)))
                              (_%hd5024450429%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5024350425%_))))
                          (if (gx#stx-pair/null? _%tl5024550432%_)
                              (let ((_%__splice9135191352%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5024550432%_
                                      '0)))
                                (let ((_%tl5024850438%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9135191352%_
                                          '1)))
                                      (_%target5024650435%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9135191352%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5024850438%_)
                                      (_%__match9144191442%_
                                       _%e5020350507%_
                                       _%hd5020450511%_
                                       _%tl5020550514%_
                                       _%e5020650517%_
                                       _%hd5020750521%_
                                       _%tl5020850524%_
                                       _%e5020950527%_
                                       _%hd5021050531%_
                                       _%tl5021150534%_
                                       _%e5024050415%_
                                       _%hd5024150419%_
                                       _%tl5024250422%_
                                       _%e5024350425%_
                                       _%hd5024450429%_
                                       _%tl5024550432%_
                                       _%__splice9135191352%_
                                       _%target5024650435%_
                                       _%tl5024850438%_)
                                      (if (gx#stx-pair/null? _%tl5021150534%_)
                                          (let ((_%__splice9135591356%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5021150534%_
                                                  '0)))
                                            (let ((_%tl5026950321%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9135591356%_
                                                      '1)))
                                                  (_%target5026750318%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9135591356%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5026950321%_)
                                                  (_%__match9146791468%_
                                                   _%e5020350507%_
                                                   _%hd5020450511%_
                                                   _%tl5020550514%_
                                                   _%e5020650517%_
                                                   _%hd5020750521%_
                                                   _%tl5020850524%_
                                                   _%e5020950527%_
                                                   _%hd5021050531%_
                                                   _%tl5021150534%_
                                                   _%__splice9135591356%_
                                                   _%target5026750318%_
                                                   _%tl5026950321%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5019750281%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5019750281%_))))))
                              (if (gx#stx-pair/null? _%tl5021150534%_)
                                  (let ((_%__splice9135591356%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5021150534%_
                                          '0)))
                                    (let ((_%tl5026950321%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9135591356%_
                                              '1)))
                                          (_%target5026750318%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9135591356%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5026950321%_)
                                          (_%__match9146791468%_
                                           _%e5020350507%_
                                           _%hd5020450511%_
                                           _%tl5020550514%_
                                           _%e5020650517%_
                                           _%hd5020750521%_
                                           _%tl5020850524%_
                                           _%e5020950527%_
                                           _%hd5021050531%_
                                           _%tl5021150534%_
                                           _%__splice9135591356%_
                                           _%target5026750318%_
                                           _%tl5026950321%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5019750281%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5019750281%_))))))
                      (if (gx#stx-pair/null? _%tl5021150534%_)
                          (let ((_%__splice9135591356%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5021150534%_
                                  '0)))
                            (let ((_%tl5026950321%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9135591356%_ '1)))
                                  (_%target5026750318%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9135591356%_
                                      '0))))
                              (if (gx#stx-null? _%tl5026950321%_)
                                  (_%__match9146791468%_
                                   _%e5020350507%_
                                   _%hd5020450511%_
                                   _%tl5020550514%_
                                   _%e5020650517%_
                                   _%hd5020750521%_
                                   _%tl5020850524%_
                                   _%e5020950527%_
                                   _%hd5021050531%_
                                   _%tl5021150534%_
                                   _%__splice9135591356%_
                                   _%target5026750318%_
                                   _%tl5026950321%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5019750281%_)))))
                          (let () (declare (not safe)) (_%g5019750281%_))))))
              (if (gx#stx-pair/null? _%tl5021150534%_)
                  (let ((_%__splice9135591356%_
                         (gx#syntax-split-splice->vector _%tl5021150534%_ '0)))
                    (let ((_%tl5026950321%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9135591356%_ '1)))
                          (_%target5026750318%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9135591356%_ '0))))
                      (if (gx#stx-null? _%tl5026950321%_)
                          (_%__match9146791468%_
                           _%e5020350507%_
                           _%hd5020450511%_
                           _%tl5020550514%_
                           _%e5020650517%_
                           _%hd5020750521%_
                           _%tl5020850524%_
                           _%e5020950527%_
                           _%hd5021050531%_
                           _%tl5021150534%_
                           _%__splice9135591356%_
                           _%target5026750318%_
                           _%tl5026950321%_)
                          (let () (declare (not safe)) (_%g5019750281%_)))))
                  (let () (declare (not safe)) (_%g5019750281%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5021150534%_)
                                                      (let ((_%__splice9135591356%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5021150534%_
                                                              '0)))
                                                        (let ((_%tl5026950321%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9135591356%_ '1)))
                      (_%target5026750318%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9135591356%_ '0))))
                  (if (gx#stx-null? _%tl5026950321%_)
                      (_%__match9146791468%_
                       _%e5020350507%_
                       _%hd5020450511%_
                       _%tl5020550514%_
                       _%e5020650517%_
                       _%hd5020750521%_
                       _%tl5020850524%_
                       _%e5020950527%_
                       _%hd5021050531%_
                       _%tl5021150534%_
                       _%__splice9135591356%_
                       _%target5026750318%_
                       _%tl5026950321%_)
                      (let () (declare (not safe)) (_%g5019750281%_)))))
              (let () (declare (not safe)) (_%g5019750281%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl5021150534%_)
                                              (let ((_%__splice9135591356%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5021150534%_
                                                      '0)))
                                                (let ((_%tl5026950321%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9135591356%_
                                                          '1)))
                                                      (_%target5026750318%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9135591356%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5026950321%_)
                                                      (_%__match9146791468%_
                                                       _%e5020350507%_
                                                       _%hd5020450511%_
                                                       _%tl5020550514%_
                                                       _%e5020650517%_
                                                       _%hd5020750521%_
                                                       _%tl5020850524%_
                                                       _%e5020950527%_
                                                       _%hd5021050531%_
                                                       _%tl5021150534%_
                                                       _%__splice9135591356%_
                                                       _%target5026750318%_
                                                       _%tl5026950321%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5019750281%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5019750281%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5019750281%_)))))
                          (let () (declare (not safe)) (_%g5019750281%_)))))
                  (let () (declare (not safe)) (_%g5019750281%_))))))))
    (define |gerbil/core/contract~TypeCast[:0:]#:~|
      (lambda (_%$stx50629%_)
        (let* ((_%__stx9147091471%_ _%$stx50629%_)
               (_%g5063450670%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9147091471%_))))
          (let ((_%__kont9147391474%_
                 (lambda (_%g5063650788%_ _%g5063750790%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f 'val)
                                     (cons _%g5063750790%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (cons _%g5063650788%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'val)
                                                             '()))
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'val)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'contract-violation!)
                           (cons _%g5063750790%_
                                 (cons _%g5063650788%_
                                       (cons (gx#datum->syntax '#f 'val)
                                             '()))))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9147591476%_
                 (lambda (_%g5064750727%_ _%g5064850729%_ _%g5064950730%_)
                   (cons (gx#datum->syntax '#f ':-)
                         (cons (cons (gx#datum->syntax '#f ':~)
                                     (cons _%g5064950730%_
                                           (cons _%g5064850729%_ '())))
                               (cons _%g5064750727%_ '()))))))
            (if (gx#stx-pair? _%__stx9147091471%_)
                (let ((_%e5063850758%_ (gx#syntax-e _%__stx9147091471%_)))
                  (let ((_%tl5064050765%_
                         (let () (declare (not safe)) (##cdr _%e5063850758%_)))
                        (_%hd5063950762%_
                         (let ()
                           (declare (not safe))
                           (##car _%e5063850758%_))))
                    (if (gx#stx-pair? _%tl5064050765%_)
                        (let ((_%e5064150768%_ (gx#syntax-e _%tl5064050765%_)))
                          (let ((_%tl5064350775%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5064150768%_)))
                                (_%hd5064250772%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5064150768%_))))
                            (if (gx#stx-pair? _%tl5064350775%_)
                                (let ((_%e5064450778%_
                                       (gx#syntax-e _%tl5064350775%_)))
                                  (let ((_%tl5064650785%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5064450778%_)))
                                        (_%hd5064550782%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5064450778%_))))
                                    (if (gx#stx-null? _%tl5064650785%_)
                                        (_%__kont9147391474%_
                                         _%hd5064550782%_
                                         _%hd5064250772%_)
                                        (if (gx#stx-pair? _%tl5064650785%_)
                                            (let ((_%e5065950707%_
                                                   (gx#syntax-e
                                                    _%tl5064650785%_)))
                                              (let ((_%tl5066150714%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5065950707%_)))
                                                    (_%hd5066050711%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5065950707%_))))
                                                (if (gx#identifier?
                                                     _%hd5066050711%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~TypeCast[1]#_g97801_|
                                                         _%hd5066050711%_)
                                                        (if (gx#stx-pair?
                                                             _%tl5066150714%_)
                                                            (let ((_%e5066250717%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl5066150714%_)))
                      (let ((_%tl5066450724%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5066250717%_)))
                            (_%hd5066350721%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5066250717%_))))
                        (if (gx#stx-null? _%tl5066450724%_)
                            (_%__kont9147591476%_
                             _%hd5066350721%_
                             _%hd5064550782%_
                             _%hd5064250772%_)
                            (let () (declare (not safe)) (_%g5063450670%_)))))
                    (let () (declare (not safe)) (_%g5063450670%_)))
                (let () (declare (not safe)) (_%g5063450670%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5063450670%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5063450670%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g5063450670%_)))))
                        (let () (declare (not safe)) (_%g5063450670%_)))))
                (let () (declare (not safe)) (_%g5063450670%_)))))))
    (define |gerbil/core/contract~TypeCast[:0:]#::-|
      (lambda (_%$stx50809%_)
        (let ((_%g5081250819%_
               (lambda (_%g5081350815%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g5081350815%_))))
          (_%g5081250819%_ _%$stx50809%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:=|
      (lambda (_%$stx50823%_)
        (let ((_%g5082650833%_
               (lambda (_%g5082750829%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g5082750829%_))))
          (_%g5082650833%_ _%$stx50823%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#check-nil!|
      (lambda (_%$stx50837%_)
        (let* ((_%g5084150855%_
                (lambda (_%g5084250851%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5084250851%_)))
               (_%g5084050896%_
                (lambda (_%g5084250859%_)
                  (if (gx#stx-pair? _%g5084250859%_)
                      (let ((_%e5084450862%_ (gx#syntax-e _%g5084250859%_)))
                        (let ((_%hd5084550866%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5084450862%_)))
                              (_%tl5084650869%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5084450862%_))))
                          (if (gx#stx-pair? _%tl5084650869%_)
                              (let ((_%e5084750872%_
                                     (gx#syntax-e _%tl5084650869%_)))
                                (let ((_%hd5084850876%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5084750872%_)))
                                      (_%tl5084950879%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5084750872%_))))
                                  (if (gx#stx-null? _%tl5084950879%_)
                                      ((lambda (_%g5084350882%_)
                                         (cons (gx#datum->syntax '#f 'or)
                                               (cons _%g5084350882%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'nil-dereference!)
                         (cons _%g5084350882%_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd5084850876%_)
                                      (_%g5084150855%_ _%g5084250859%_))))
                              (_%g5084150855%_ _%g5084250859%_))))
                      (_%g5084150855%_ _%g5084250859%_)))))
          (_%g5084050896%_ _%$stx50837%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#contract-violation!|
      (lambda (_%stx50900%_)
        (let* ((_%g5090350926%_
                (lambda (_%g5090450922%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5090450922%_)))
               (_%g5090251050%_
                (lambda (_%g5090450930%_)
                  (if (gx#stx-pair? _%g5090450930%_)
                      (let ((_%e5090950933%_ (gx#syntax-e _%g5090450930%_)))
                        (let ((_%hd5091050937%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5090950933%_)))
                              (_%tl5091150940%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5090950933%_))))
                          (if (gx#stx-pair? _%tl5091150940%_)
                              (let ((_%e5091250943%_
                                     (gx#syntax-e _%tl5091150940%_)))
                                (let ((_%hd5091350947%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5091250943%_)))
                                      (_%tl5091450950%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5091250943%_))))
                                  (if (gx#stx-pair? _%tl5091450950%_)
                                      (let ((_%e5091550953%_
                                             (gx#syntax-e _%tl5091450950%_)))
                                        (let ((_%hd5091650957%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5091550953%_)))
                                              (_%tl5091750960%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5091550953%_))))
                                          (if (gx#stx-pair? _%tl5091750960%_)
                                              (let ((_%e5091850963%_
                                                     (gx#syntax-e
                                                      _%tl5091750960%_)))
                                                (let ((_%hd5091950967%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5091850963%_)))
                                                      (_%tl5092050970%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5091850963%_))))
                                                  (if (gx#stx-null?
                                                       _%tl5092050970%_)
                                                      ((lambda (_%g5090550973%_
                                                                _%g5090650975%_
                                                                _%g5090750976%_
                                                                _%g5090850977%_)
                                                         (let* ((_%g5099751005%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g5099851001%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g5099851001%_)))
                        (_%g5099651024%_
                         (lambda (_%g5099851009%_)
                           ((lambda (_%g5099951012%_)
                              (cons (gx#datum->syntax '#f 'abort!)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'raise-contract-violation-error)
                                                (cons '"contract violation"
                                                      (cons 'context:
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g5099951012%_ '()))
                          (cons 'contract:
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%g5090650975%_ '()))
                                      (cons 'value:
                                            (cons _%g5090550973%_ '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                            _%g5099851009%_))))
                   (_%g5099651024%_
                    (let ((_%$e51036%_
                           (let ((_%$e51028%_ (gx#stx-source _%g5090750976%_)))
                             (if _%$e51028%_
                                 _%$e51028%_
                                 (let ((_%$e51032%_
                                        (gx#stx-source _%stx50900%_)))
                                   (if _%$e51032%_
                                       _%$e51032%_
                                       (gx#stx-source _%g5090850977%_)))))))
                      (if _%$e51036%_
                          ((lambda (_%locat51040%_)
                             (call-with-output-string
                              '""
                              (lambda (_%g5104251044%_)
                                (let ()
                                  (declare (not safe))
                                  (##display-locat
                                   _%locat51040%_
                                   '#t
                                   _%g5104251044%_)))))
                           _%$e51036%_)
                          (gx#expander-context-id (gx#core-context-top)))))))
               _%hd5091950967%_
               _%hd5091650957%_
               _%hd5091350947%_
               _%hd5091050937%_)
              (_%g5090350926%_ _%g5090450930%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g5090350926%_
                                               _%g5090450930%_))))
                                      (_%g5090350926%_ _%g5090450930%_))))
                              (_%g5090350926%_ _%g5090450930%_))))
                      (_%g5090350926%_ _%g5090450930%_)))))
          (_%g5090251050%_ _%stx50900%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#nil-dereference!|
      (lambda (_%stx51054%_)
        (let* ((_%g5105751072%_
                (lambda (_%g5105851068%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5105851068%_)))
               (_%g5105651168%_
                (lambda (_%g5105851076%_)
                  (if (gx#stx-pair? _%g5105851076%_)
                      (let ((_%e5106151079%_ (gx#syntax-e _%g5105851076%_)))
                        (let ((_%hd5106251083%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5106151079%_)))
                              (_%tl5106351086%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5106151079%_))))
                          (if (gx#stx-pair? _%tl5106351086%_)
                              (let ((_%e5106451089%_
                                     (gx#syntax-e _%tl5106351086%_)))
                                (let ((_%hd5106551093%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5106451089%_)))
                                      (_%tl5106651096%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5106451089%_))))
                                  (if (gx#stx-null? _%tl5106651096%_)
                                      ((lambda (_%g5105951099%_
                                                _%g5106051101%_)
                                         (let* ((_%g5111551123%_
                                                 (lambda (_%g5111651119%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5111651119%_)))
                                                (_%g5111451142%_
                                                 (lambda (_%g5111651127%_)
                                                   ((lambda (_%g5111751130%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'abort!)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'raise-contract-violation-error)
                                (cons '"nil (#f) derefence"
                                      (cons 'context:
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'quote)
                                                        (cons _%g5111751130%_
                                                              '()))
                                                  (cons 'contract:
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                        (cons _%g5105951099%_ '()))
                                  '()))
                      (cons 'value: (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g5111651127%_))))
                                           (_%g5111451142%_
                                            (let ((_%$e51154%_
                                                   (let ((_%$e51146%_
                                                          (gx#stx-source
                                                           _%g5105951099%_)))
                                                     (if _%$e51146%_
                                                         _%$e51146%_
                                                         (let ((_%$e51150%_
                                                                (gx#stx-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx51054%_)))
                   (if _%$e51150%_
                       _%$e51150%_
                       (gx#stx-source _%g5106051101%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if _%$e51154%_
                                                  ((lambda (_%locat51158%_)
                                                     (call-with-output-string
                                                      '""
                                                      (lambda (_%g5116051162%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (##display-locat
                                                           _%locat51158%_
                                                           '#t
                                                           _%g5116051162%_)))))
                                                   _%$e51154%_)
                                                  (gx#expander-context-id
                                                   (gx#core-context-top)))))))
                                       _%hd5106551093%_
                                       _%hd5106251083%_)
                                      (_%g5105751072%_ _%g5105851076%_))))
                              (_%g5105751072%_ _%g5105851076%_))))
                      (_%g5105751072%_ _%g5105851076%_)))))
          (_%g5105651168%_ _%stx51054%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#abort!|
      (lambda (_%$stx51172%_)
        (let* ((_%g5117651190%_
                (lambda (_%g5117751186%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5117751186%_)))
               (_%g5117551231%_
                (lambda (_%g5117751194%_)
                  (if (gx#stx-pair? _%g5117751194%_)
                      (let ((_%e5117951197%_ (gx#syntax-e _%g5117751194%_)))
                        (let ((_%hd5118051201%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5117951197%_)))
                              (_%tl5118151204%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5117951197%_))))
                          (if (gx#stx-pair? _%tl5118151204%_)
                              (let ((_%e5118251207%_
                                     (gx#syntax-e _%tl5118151204%_)))
                                (let ((_%hd5118351211%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5118251207%_)))
                                      (_%tl5118451214%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5118251207%_))))
                                  (if (gx#stx-null? _%tl5118451214%_)
                                      ((lambda (_%g5117851217%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'begin-annotation)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '@abort)
                                                           '())
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'begin)
                         (cons _%g5117851217%_
                               (cons (cons (gx#datum->syntax '#f 'void) '())
                                     '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd5118351211%_)
                                      (_%g5117651190%_ _%g5117751194%_))))
                              (_%g5117651190%_ _%g5117751194%_))))
                      (_%g5117651190%_ _%g5117751194%_)))))
          (_%g5117551231%_ _%$stx51172%_))))))
