(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeCast[1]#_g100825_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypeCast[1]#_g100826_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypeCast[1]#_g100827_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/contract~TypeCast[:0:]#:|
      (lambda (_%stx50017%_)
        (let* ((_%g5002050038%_
                (lambda (_%g5002150034%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5002150034%_)))
               (_%g5001950233%_
                (lambda (_%g5002150042%_)
                  (if (gx#stx-pair? _%g5002150042%_)
                      (let ((_%e5002450045%_ (gx#syntax-e _%g5002150042%_)))
                        (let ((_%hd5002550049%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5002450045%_)))
                              (_%tl5002650052%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5002450045%_))))
                          (if (gx#stx-pair? _%tl5002650052%_)
                              (let ((_%e5002750055%_
                                     (gx#syntax-e _%tl5002650052%_)))
                                (let ((_%hd5002850059%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5002750055%_)))
                                      (_%tl5002950062%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5002750055%_))))
                                  (if (gx#stx-pair? _%tl5002950062%_)
                                      (let ((_%e5003050065%_
                                             (gx#syntax-e _%tl5002950062%_)))
                                        (let ((_%hd5003150069%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5003050065%_)))
                                              (_%tl5003250072%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5003050065%_))))
                                          (if (gx#stx-null? _%tl5003250072%_)
                                              ((lambda (_%g5002250075%_
                                                        _%g5002350077%_)
                                                 (if (gx#identifier?
                                                      _%g5002250075%_)
                                                     (let ((_%meta50094%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                               _%stx50017%_
                                                               _%g5002250075%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (class-instance?
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              _%meta50094%_))
                                                           (let* ((_%g5009950114%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g5010050110%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g5010050110%_)))
                          (_%g5009850161%_
                           (lambda (_%g5010050118%_)
                             (if (gx#stx-pair? _%g5010050118%_)
                                 (let ((_%e5010350121%_
                                        (gx#syntax-e _%g5010050118%_)))
                                   (let ((_%hd5010450125%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e5010350121%_)))
                                         (_%tl5010550128%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e5010350121%_))))
                                     (if (gx#stx-pair? _%tl5010550128%_)
                                         (let ((_%e5010650131%_
                                                (gx#syntax-e
                                                 _%tl5010550128%_)))
                                           (let ((_%hd5010750135%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e5010650131%_)))
                                                 (_%tl5010850138%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e5010650131%_))))
                                             (if (gx#stx-null?
                                                  _%tl5010850138%_)
                                                 ((lambda (_%g5010150141%_
                                                           _%g5010250143%_)
                                                    (if (let ((__tmp100823
                                                               (let ((__obj100645
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%meta50094%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj100645
                                'gerbil.core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj100645
                                '2
                                '#f
                                '#f))
                             (unchecked-slot-ref __obj100645 'id)))))
                  (declare (not safe))
                  (##memq __tmp100823 '(t void)))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%g5010250143%_ '()))
                            (cons _%g5002350077%_ '())))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%g5010250143%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%g5002350077%_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons _%g5010150141%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f 'val) '()))
                        (cons (gx#datum->syntax '#f 'val)
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'contract-violation!)
                                          (cons _%g5002350077%_
                                                (cons (cons _%g5010150141%_
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
                                                  _%hd5010750135%_
                                                  _%hd5010450125%_)
                                                 (_%g5009950114%_
                                                  _%g5010050118%_))))
                                         (_%g5009950114%_ _%g5010050118%_))))
                                 (_%g5009950114%_ _%g5010050118%_)))))
                     (_%g5009850161%_
                      (list (let ((__obj100646 _%meta50094%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj100646
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj100646
                                     '4
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj100646
                                   'type-descriptor)))
                            (let ((__obj100647 _%meta50094%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj100647
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj100647
                                     '15
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj100647
                                   'predicate))))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%meta50094%_))
                       (let* ((_%g5016750182%_
                               (lambda (_%g5016850178%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g5016850178%_)))
                              (_%g5016650227%_
                               (lambda (_%g5016850186%_)
                                 (if (gx#stx-pair? _%g5016850186%_)
                                     (let ((_%e5017150189%_
                                            (gx#syntax-e _%g5016850186%_)))
                                       (let ((_%hd5017250193%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e5017150189%_)))
                                             (_%tl5017350196%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e5017150189%_))))
                                         (if (gx#stx-pair? _%tl5017350196%_)
                                             (let ((_%e5017450199%_
                                                    (gx#syntax-e
                                                     _%tl5017350196%_)))
                                               (let ((_%hd5017550203%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e5017450199%_)))
                                                     (_%tl5017650206%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e5017450199%_))))
                                                 (if (gx#stx-null?
                                                      _%tl5017650206%_)
                                                     ((lambda (_%g5016950209%_
                                                               _%g5017050211%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@type)
                                  (cons _%g5017050211%_ '()))
                            (cons (cons _%g5016950209%_
                                        (cons _%g5002350077%_ '()))
                                  '()))))
              _%hd5017550203%_
              _%hd5017250193%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g5016750182%_
                                                      _%g5016850186%_))))
                                             (_%g5016750182%_
                                              _%g5016850186%_))))
                                     (_%g5016750182%_ _%g5016850186%_)))))
                         (_%g5016650227%_
                          (list (let ((__obj100644 _%meta50094%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj100644
                                         'gerbil.core#runtime-type-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj100644
                                         '3
                                         '#f
                                         '#f))
                                      (unchecked-slot-ref
                                       __obj100644
                                       'type-descriptor)))
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                   _%stx50017%_
                                   _%g5002250075%_)))))
                       (gx#raise-syntax-error
                        '#f
                        '"not a class type or interface"
                        _%stx50017%_
                        _%g5002250075%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g5002050038%_
                                                      _%g5002150042%_)))
                                               _%hd5003150069%_
                                               _%hd5002850059%_)
                                              (_%g5002050038%_
                                               _%g5002150042%_))))
                                      (_%g5002050038%_ _%g5002150042%_))))
                              (_%g5002050038%_ _%g5002150042%_))))
                      (_%g5002050038%_ _%g5002150042%_)))))
          (_%g5001950233%_ _%stx50017%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:?|
      (lambda (_%stx50237%_)
        (let* ((_%g5024050258%_
                (lambda (_%g5024150254%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5024150254%_)))
               (_%g5023950452%_
                (lambda (_%g5024150262%_)
                  (if (gx#stx-pair? _%g5024150262%_)
                      (let ((_%e5024450265%_ (gx#syntax-e _%g5024150262%_)))
                        (let ((_%hd5024550269%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5024450265%_)))
                              (_%tl5024650272%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5024450265%_))))
                          (if (gx#stx-pair? _%tl5024650272%_)
                              (let ((_%e5024750275%_
                                     (gx#syntax-e _%tl5024650272%_)))
                                (let ((_%hd5024850279%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5024750275%_)))
                                      (_%tl5024950282%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5024750275%_))))
                                  (if (gx#stx-pair? _%tl5024950282%_)
                                      (let ((_%e5025050285%_
                                             (gx#syntax-e _%tl5024950282%_)))
                                        (let ((_%hd5025150289%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5025050285%_)))
                                              (_%tl5025250292%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5025050285%_))))
                                          (if (gx#stx-null? _%tl5025250292%_)
                                              ((lambda (_%g5024250295%_
                                                        _%g5024350297%_)
                                                 (if (gx#identifier?
                                                      _%g5024250295%_)
                                                     (let ((_%meta50313%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                               _%stx50237%_
                                                               _%g5024250295%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (class-instance?
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              _%meta50313%_))
                                                           (let* ((_%g5031850333%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g5031950329%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g5031950329%_)))
                          (_%g5031750380%_
                           (lambda (_%g5031950337%_)
                             (if (gx#stx-pair? _%g5031950337%_)
                                 (let ((_%e5032250340%_
                                        (gx#syntax-e _%g5031950337%_)))
                                   (let ((_%hd5032350344%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e5032250340%_)))
                                         (_%tl5032450347%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e5032250340%_))))
                                     (if (gx#stx-pair? _%tl5032450347%_)
                                         (let ((_%e5032550350%_
                                                (gx#syntax-e
                                                 _%tl5032450347%_)))
                                           (let ((_%hd5032650354%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e5032550350%_)))
                                                 (_%tl5032750357%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e5032550350%_))))
                                             (if (gx#stx-null?
                                                  _%tl5032750357%_)
                                                 ((lambda (_%g5032050360%_
                                                           _%g5032150362%_)
                                                    (if (let ((__tmp100824
                                                               (let ((__obj100649
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%meta50313%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj100649
                                'gerbil.core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj100649
                                '2
                                '#f
                                '#f))
                             (unchecked-slot-ref __obj100649 'id)))))
                  (declare (not safe))
                  (##memq __tmp100824 '(t void)))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%g5032150362%_ '()))
                            (cons _%g5024350297%_ '())))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%g5032150362%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%g5024350297%_ '()))
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
                                    (cons (cons _%g5032050360%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'val)
                                                      '()))
                                          '())))
                        (cons (gx#datum->syntax '#f 'val)
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'contract-violation!)
                                          (cons _%g5024350297%_
                                                (cons (cons _%g5032050360%_
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
                                                  _%hd5032650354%_
                                                  _%hd5032350344%_)
                                                 (_%g5031850333%_
                                                  _%g5031950337%_))))
                                         (_%g5031850333%_ _%g5031950337%_))))
                                 (_%g5031850333%_ _%g5031950337%_)))))
                     (_%g5031750380%_
                      (list (let ((__obj100650 _%meta50313%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj100650
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj100650
                                     '4
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj100650
                                   'type-descriptor)))
                            (let ((__obj100651 _%meta50313%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj100651
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj100651
                                     '15
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj100651
                                   'predicate))))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%meta50313%_))
                       (let* ((_%g5038650401%_
                               (lambda (_%g5038750397%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g5038750397%_)))
                              (_%g5038550446%_
                               (lambda (_%g5038750405%_)
                                 (if (gx#stx-pair? _%g5038750405%_)
                                     (let ((_%e5039050408%_
                                            (gx#syntax-e _%g5038750405%_)))
                                       (let ((_%hd5039150412%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e5039050408%_)))
                                             (_%tl5039250415%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e5039050408%_))))
                                         (if (gx#stx-pair? _%tl5039250415%_)
                                             (let ((_%e5039350418%_
                                                    (gx#syntax-e
                                                     _%tl5039250415%_)))
                                               (let ((_%hd5039450422%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e5039350418%_)))
                                                     (_%tl5039550425%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e5039350418%_))))
                                                 (if (gx#stx-null?
                                                      _%tl5039550425%_)
                                                     ((lambda (_%g5038850428%_
                                                               _%g5038950430%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@type)
                                  (cons _%g5038950430%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%g5024350297%_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'and)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'val)
                        (cons (cons _%g5038850428%_
                                    (cons (gx#datum->syntax '#f 'val) '()))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '()))))
              _%hd5039450422%_
              _%hd5039150412%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g5038650401%_
                                                      _%g5038750405%_))))
                                             (_%g5038650401%_
                                              _%g5038750405%_))))
                                     (_%g5038650401%_ _%g5038750405%_)))))
                         (_%g5038550446%_
                          (list (let ((__obj100648 _%meta50313%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj100648
                                         'gerbil.core#runtime-type-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj100648
                                         '3
                                         '#f
                                         '#f))
                                      (unchecked-slot-ref
                                       __obj100648
                                       'type-descriptor)))
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                   _%stx50237%_
                                   _%g5024250295%_)))))
                       (gx#raise-syntax-error
                        '#f
                        '"not a class type or interface"
                        _%stx50237%_
                        _%g5024250295%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g5024050258%_
                                                      _%g5024150262%_)))
                                               _%hd5025150289%_
                                               _%hd5024850279%_)
                                              (_%g5024050258%_
                                               _%g5024150262%_))))
                                      (_%g5024050258%_ _%g5024150262%_))))
                              (_%g5024050258%_ _%g5024150262%_))))
                      (_%g5024050258%_ _%g5024150262%_)))))
          (_%g5023950452%_ _%stx50237%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:-|
      (lambda (_%stx50456%_)
        (let* ((_%g5045950477%_
                (lambda (_%g5046050473%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5046050473%_)))
               (_%g5045850563%_
                (lambda (_%g5046050481%_)
                  (if (gx#stx-pair? _%g5046050481%_)
                      (let ((_%e5046350484%_ (gx#syntax-e _%g5046050481%_)))
                        (let ((_%hd5046450488%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5046350484%_)))
                              (_%tl5046550491%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5046350484%_))))
                          (if (gx#stx-pair? _%tl5046550491%_)
                              (let ((_%e5046650494%_
                                     (gx#syntax-e _%tl5046550491%_)))
                                (let ((_%hd5046750498%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5046650494%_)))
                                      (_%tl5046850501%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5046650494%_))))
                                  (if (gx#stx-pair? _%tl5046850501%_)
                                      (let ((_%e5046950504%_
                                             (gx#syntax-e _%tl5046850501%_)))
                                        (let ((_%hd5047050508%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5046950504%_)))
                                              (_%tl5047150511%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5046950504%_))))
                                          (if (gx#stx-null? _%tl5047150511%_)
                                              ((lambda (_%g5046150514%_
                                                        _%g5046250516%_)
                                                 (if (gx#identifier?
                                                      _%g5046150514%_)
                                                     (let* ((_%g5053250540%_
                                                             (lambda (_%g5053350536%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g5053350536%_)))
                                                            (_%g5053150559%_
                                                             (lambda (_%g5053350544%_)
                                                               ((lambda (_%g5053450547%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'begin-annotation)
                                (cons (cons (gx#datum->syntax '#f '@type)
                                            (cons _%g5053450547%_ '()))
                                      (cons _%g5046250516%_ '()))))
                        _%g5053350544%_))))
               (_%g5053150559%_
                (let ()
                  (declare (not safe))
                  (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                   _%stx50456%_
                   _%g5046150514%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g5045950477%_
                                                      _%g5046050481%_)))
                                               _%hd5047050508%_
                                               _%hd5046750498%_)
                                              (_%g5045950477%_
                                               _%g5046050481%_))))
                                      (_%g5045950477%_ _%g5046050481%_))))
                              (_%g5045950477%_ _%g5046050481%_))))
                      (_%g5045950477%_ _%g5046050481%_)))))
          (_%g5045850563%_ _%stx50456%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#do-with-lock|
      (lambda (_%$stx50567%_)
        (let* ((_%__stx9399193992%_ _%$stx50567%_)
               (_%g5057350657%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9399193992%_))))
          (let ((_%__kont9399493995%_
                 (lambda (_%g5057550961%_
                          _%g5057650963%_
                          _%g5057750964%_
                          _%g5057850965%_)
                   (cons (gx#datum->syntax '#f ':-)
                         (cons (cons (gx#datum->syntax '#f 'do-with-lock)
                                     (cons _%g5057850965%_
                                           (cons _%g5057650963%_
                                                 (foldr (lambda (_%g5098950992%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5099050995%_)
                  (cons _%g5098950992%_ _%g5099050995%_))
                '()
                _%g5057550961%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%g5057750964%_ '())))))
                (_%__kont9399893999%_
                 (lambda (_%g5060350839%_
                          _%g5060450841%_
                          _%g5060550842%_
                          _%g5060650843%_)
                   (cons (gx#datum->syntax '#f ':)
                         (cons (cons (gx#datum->syntax '#f 'do-with-lock)
                                     (cons _%g5060650843%_
                                           (cons _%g5060450841%_
                                                 (foldr (lambda (_%g5086750870%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5086850873%_)
                  (cons _%g5086750870%_ _%g5086850873%_))
                '()
                _%g5060350839%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%g5060550842%_ '())))))
                (_%__kont9400294003%_
                 (lambda (_%g5063150722%_ _%g5063250724%_ _%g5063350725%_)
                   (cons (gx#datum->syntax '#f 'with-lock)
                         (cons _%g5063350725%_
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons '()
                                                 (cons _%g5063250724%_
                                                       (foldr (lambda (_%g5074550748%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g5074650751%_)
                        (cons _%g5074550748%_ _%g5074650751%_))
                      '()
                      _%g5063150722%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match9411694117%_
                    (lambda (_%e5063450664%_
                             _%hd5063550668%_
                             _%tl5063650671%_
                             _%e5063750674%_
                             _%hd5063850678%_
                             _%tl5063950681%_
                             _%e5064050684%_
                             _%hd5064150688%_
                             _%tl5064250691%_
                             _%__splice9400494005%_
                             _%target5064350694%_
                             _%tl5064550697%_)
                      (letrec ((_%loop5064650700%_
                                (lambda (_%hd5064450704%_ _%rest5065050707%_)
                                  (if (gx#stx-pair? _%hd5064450704%_)
                                      (let ((_%e5064750709%_
                                             (gx#syntax-e _%hd5064450704%_)))
                                        (let ((_%lp-tl5064950716%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5064750709%_)))
                                              (_%lp-hd5064850713%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5064750709%_))))
                                          (_%loop5064650700%_
                                           _%lp-tl5064950716%_
                                           (cons _%lp-hd5064850713%_
                                                 _%rest5065050707%_))))
                                      (let ((_%rest5065150719%_
                                             (reverse _%rest5065050707%_)))
                                        (_%__kont9400294003%_
                                         _%rest5065150719%_
                                         _%hd5064150688%_
                                         _%hd5063850678%_))))))
                        (_%loop5064650700%_ _%target5064350694%_ '()))))
                   (_%__match9409094091%_
                    (lambda (_%e5060750761%_
                             _%hd5060850765%_
                             _%tl5060950768%_
                             _%e5061050771%_
                             _%hd5061150775%_
                             _%tl5061250778%_
                             _%e5061350781%_
                             _%hd5061450785%_
                             _%tl5061550788%_
                             _%e5061650791%_
                             _%hd5061750795%_
                             _%tl5061850798%_
                             _%e5061950801%_
                             _%hd5062050805%_
                             _%tl5062150808%_
                             _%__splice9400094001%_
                             _%target5062250811%_
                             _%tl5062450814%_)
                      (letrec ((_%loop5062550817%_
                                (lambda (_%hd5062350821%_ _%rest5062950824%_)
                                  (if (gx#stx-pair? _%hd5062350821%_)
                                      (let ((_%e5062650826%_
                                             (gx#syntax-e _%hd5062350821%_)))
                                        (let ((_%lp-tl5062850833%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5062650826%_)))
                                              (_%lp-hd5062750830%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5062650826%_))))
                                          (_%loop5062550817%_
                                           _%lp-tl5062850833%_
                                           (cons _%lp-hd5062750830%_
                                                 _%rest5062950824%_))))
                                      (let ((_%rest5063050836%_
                                             (reverse _%rest5062950824%_)))
                                        (_%__kont9399893999%_
                                         _%rest5063050836%_
                                         _%hd5062050805%_
                                         _%hd5061750795%_
                                         _%hd5061150775%_))))))
                        (_%loop5062550817%_ _%target5062250811%_ '()))))
                   (_%__match9404894049%_
                    (lambda (_%e5057950883%_
                             _%hd5058050887%_
                             _%tl5058150890%_
                             _%e5058250893%_
                             _%hd5058350897%_
                             _%tl5058450900%_
                             _%e5058550903%_
                             _%hd5058650907%_
                             _%tl5058750910%_
                             _%e5058850913%_
                             _%hd5058950917%_
                             _%tl5059050920%_
                             _%e5059150923%_
                             _%hd5059250927%_
                             _%tl5059350930%_
                             _%__splice9399693997%_
                             _%target5059450933%_
                             _%tl5059650936%_)
                      (letrec ((_%loop5059750939%_
                                (lambda (_%hd5059550943%_ _%rest5060150946%_)
                                  (if (gx#stx-pair? _%hd5059550943%_)
                                      (let ((_%e5059850948%_
                                             (gx#syntax-e _%hd5059550943%_)))
                                        (let ((_%lp-tl5060050955%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5059850948%_)))
                                              (_%lp-hd5059950952%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5059850948%_))))
                                          (_%loop5059750939%_
                                           _%lp-tl5060050955%_
                                           (cons _%lp-hd5059950952%_
                                                 _%rest5060150946%_))))
                                      (let ((_%rest5060250958%_
                                             (reverse _%rest5060150946%_)))
                                        (_%__kont9399493995%_
                                         _%rest5060250958%_
                                         _%hd5059250927%_
                                         _%hd5058950917%_
                                         _%hd5058350897%_))))))
                        (_%loop5059750939%_ _%target5059450933%_ '())))))
              (if (gx#stx-pair? _%__stx9399193992%_)
                  (let ((_%e5057950883%_ (gx#syntax-e _%__stx9399193992%_)))
                    (let ((_%tl5058150890%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5057950883%_)))
                          (_%hd5058050887%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5057950883%_))))
                      (if (gx#stx-pair? _%tl5058150890%_)
                          (let ((_%e5058250893%_
                                 (gx#syntax-e _%tl5058150890%_)))
                            (let ((_%tl5058450900%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5058250893%_)))
                                  (_%hd5058350897%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5058250893%_))))
                              (if (gx#stx-pair? _%tl5058450900%_)
                                  (let ((_%e5058550903%_
                                         (gx#syntax-e _%tl5058450900%_)))
                                    (let ((_%tl5058750910%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5058550903%_)))
                                          (_%hd5058650907%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5058550903%_))))
                                      (if (gx#identifier? _%hd5058650907%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/contract~TypeCast[1]#_g100825_|
                                               _%hd5058650907%_)
                                              (if (gx#stx-pair?
                                                   _%tl5058750910%_)
                                                  (let ((_%e5058850913%_
                                                         (gx#syntax-e
                                                          _%tl5058750910%_)))
                                                    (let ((_%tl5059050920%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5058850913%_)))
                                                          (_%hd5058950917%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5058850913%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5059050920%_)
                                                          (let ((_%e5059150923%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5059050920%_)))
                    (let ((_%tl5059350930%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5059150923%_)))
                          (_%hd5059250927%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5059150923%_))))
                      (if (gx#stx-pair/null? _%tl5059350930%_)
                          (let ((_%__splice9399693997%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5059350930%_
                                  '0)))
                            (let ((_%tl5059650936%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9399693997%_ '1)))
                                  (_%target5059450933%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9399693997%_
                                      '0))))
                              (if (gx#stx-null? _%tl5059650936%_)
                                  (_%__match9404894049%_
                                   _%e5057950883%_
                                   _%hd5058050887%_
                                   _%tl5058150890%_
                                   _%e5058250893%_
                                   _%hd5058350897%_
                                   _%tl5058450900%_
                                   _%e5058550903%_
                                   _%hd5058650907%_
                                   _%tl5058750910%_
                                   _%e5058850913%_
                                   _%hd5058950917%_
                                   _%tl5059050920%_
                                   _%e5059150923%_
                                   _%hd5059250927%_
                                   _%tl5059350930%_
                                   _%__splice9399693997%_
                                   _%target5059450933%_
                                   _%tl5059650936%_)
                                  (if (gx#stx-pair/null? _%tl5058750910%_)
                                      (let ((_%__splice9400494005%_
                                             (gx#syntax-split-splice->vector
                                              _%tl5058750910%_
                                              '0)))
                                        (let ((_%tl5064550697%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9400494005%_
                                                  '1)))
                                              (_%target5064350694%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9400494005%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5064550697%_)
                                              (_%__match9411694117%_
                                               _%e5057950883%_
                                               _%hd5058050887%_
                                               _%tl5058150890%_
                                               _%e5058250893%_
                                               _%hd5058350897%_
                                               _%tl5058450900%_
                                               _%e5058550903%_
                                               _%hd5058650907%_
                                               _%tl5058750910%_
                                               _%__splice9400494005%_
                                               _%target5064350694%_
                                               _%tl5064550697%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5057350657%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5057350657%_))))))
                          (if (gx#stx-pair/null? _%tl5058750910%_)
                              (let ((_%__splice9400494005%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5058750910%_
                                      '0)))
                                (let ((_%tl5064550697%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9400494005%_
                                          '1)))
                                      (_%target5064350694%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9400494005%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5064550697%_)
                                      (_%__match9411694117%_
                                       _%e5057950883%_
                                       _%hd5058050887%_
                                       _%tl5058150890%_
                                       _%e5058250893%_
                                       _%hd5058350897%_
                                       _%tl5058450900%_
                                       _%e5058550903%_
                                       _%hd5058650907%_
                                       _%tl5058750910%_
                                       _%__splice9400494005%_
                                       _%target5064350694%_
                                       _%tl5064550697%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5057350657%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5057350657%_))))))
                  (if (gx#stx-pair/null? _%tl5058750910%_)
                      (let ((_%__splice9400494005%_
                             (gx#syntax-split-splice->vector
                              _%tl5058750910%_
                              '0)))
                        (let ((_%tl5064550697%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9400494005%_ '1)))
                              (_%target5064350694%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9400494005%_ '0))))
                          (if (gx#stx-null? _%tl5064550697%_)
                              (_%__match9411694117%_
                               _%e5057950883%_
                               _%hd5058050887%_
                               _%tl5058150890%_
                               _%e5058250893%_
                               _%hd5058350897%_
                               _%tl5058450900%_
                               _%e5058550903%_
                               _%hd5058650907%_
                               _%tl5058750910%_
                               _%__splice9400494005%_
                               _%target5064350694%_
                               _%tl5064550697%_)
                              (let ()
                                (declare (not safe))
                                (_%g5057350657%_)))))
                      (let () (declare (not safe)) (_%g5057350657%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5058750910%_)
                                                      (let ((_%__splice9400494005%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5058750910%_
                                                              '0)))
                                                        (let ((_%tl5064550697%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9400494005%_ '1)))
                      (_%target5064350694%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9400494005%_ '0))))
                  (if (gx#stx-null? _%tl5064550697%_)
                      (_%__match9411694117%_
                       _%e5057950883%_
                       _%hd5058050887%_
                       _%tl5058150890%_
                       _%e5058250893%_
                       _%hd5058350897%_
                       _%tl5058450900%_
                       _%e5058550903%_
                       _%hd5058650907%_
                       _%tl5058750910%_
                       _%__splice9400494005%_
                       _%target5064350694%_
                       _%tl5064550697%_)
                      (let () (declare (not safe)) (_%g5057350657%_)))))
              (let () (declare (not safe)) (_%g5057350657%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~TypeCast[1]#_g100826_|
                                                   _%hd5058650907%_)
                                                  (if (gx#stx-pair?
                                                       _%tl5058750910%_)
                                                      (let ((_%e5061650791%_
                                                             (gx#syntax-e
                                                              _%tl5058750910%_)))
                                                        (let ((_%tl5061850798%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5061650791%_)))
                      (_%hd5061750795%_
                       (let () (declare (not safe)) (##car _%e5061650791%_))))
                  (if (gx#stx-pair? _%tl5061850798%_)
                      (let ((_%e5061950801%_ (gx#syntax-e _%tl5061850798%_)))
                        (let ((_%tl5062150808%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5061950801%_)))
                              (_%hd5062050805%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5061950801%_))))
                          (if (gx#stx-pair/null? _%tl5062150808%_)
                              (let ((_%__splice9400094001%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5062150808%_
                                      '0)))
                                (let ((_%tl5062450814%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9400094001%_
                                          '1)))
                                      (_%target5062250811%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9400094001%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5062450814%_)
                                      (_%__match9409094091%_
                                       _%e5057950883%_
                                       _%hd5058050887%_
                                       _%tl5058150890%_
                                       _%e5058250893%_
                                       _%hd5058350897%_
                                       _%tl5058450900%_
                                       _%e5058550903%_
                                       _%hd5058650907%_
                                       _%tl5058750910%_
                                       _%e5061650791%_
                                       _%hd5061750795%_
                                       _%tl5061850798%_
                                       _%e5061950801%_
                                       _%hd5062050805%_
                                       _%tl5062150808%_
                                       _%__splice9400094001%_
                                       _%target5062250811%_
                                       _%tl5062450814%_)
                                      (if (gx#stx-pair/null? _%tl5058750910%_)
                                          (let ((_%__splice9400494005%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5058750910%_
                                                  '0)))
                                            (let ((_%tl5064550697%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9400494005%_
                                                      '1)))
                                                  (_%target5064350694%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9400494005%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5064550697%_)
                                                  (_%__match9411694117%_
                                                   _%e5057950883%_
                                                   _%hd5058050887%_
                                                   _%tl5058150890%_
                                                   _%e5058250893%_
                                                   _%hd5058350897%_
                                                   _%tl5058450900%_
                                                   _%e5058550903%_
                                                   _%hd5058650907%_
                                                   _%tl5058750910%_
                                                   _%__splice9400494005%_
                                                   _%target5064350694%_
                                                   _%tl5064550697%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5057350657%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5057350657%_))))))
                              (if (gx#stx-pair/null? _%tl5058750910%_)
                                  (let ((_%__splice9400494005%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5058750910%_
                                          '0)))
                                    (let ((_%tl5064550697%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9400494005%_
                                              '1)))
                                          (_%target5064350694%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9400494005%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5064550697%_)
                                          (_%__match9411694117%_
                                           _%e5057950883%_
                                           _%hd5058050887%_
                                           _%tl5058150890%_
                                           _%e5058250893%_
                                           _%hd5058350897%_
                                           _%tl5058450900%_
                                           _%e5058550903%_
                                           _%hd5058650907%_
                                           _%tl5058750910%_
                                           _%__splice9400494005%_
                                           _%target5064350694%_
                                           _%tl5064550697%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5057350657%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5057350657%_))))))
                      (if (gx#stx-pair/null? _%tl5058750910%_)
                          (let ((_%__splice9400494005%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5058750910%_
                                  '0)))
                            (let ((_%tl5064550697%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9400494005%_ '1)))
                                  (_%target5064350694%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9400494005%_
                                      '0))))
                              (if (gx#stx-null? _%tl5064550697%_)
                                  (_%__match9411694117%_
                                   _%e5057950883%_
                                   _%hd5058050887%_
                                   _%tl5058150890%_
                                   _%e5058250893%_
                                   _%hd5058350897%_
                                   _%tl5058450900%_
                                   _%e5058550903%_
                                   _%hd5058650907%_
                                   _%tl5058750910%_
                                   _%__splice9400494005%_
                                   _%target5064350694%_
                                   _%tl5064550697%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5057350657%_)))))
                          (let () (declare (not safe)) (_%g5057350657%_))))))
              (if (gx#stx-pair/null? _%tl5058750910%_)
                  (let ((_%__splice9400494005%_
                         (gx#syntax-split-splice->vector _%tl5058750910%_ '0)))
                    (let ((_%tl5064550697%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9400494005%_ '1)))
                          (_%target5064350694%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9400494005%_ '0))))
                      (if (gx#stx-null? _%tl5064550697%_)
                          (_%__match9411694117%_
                           _%e5057950883%_
                           _%hd5058050887%_
                           _%tl5058150890%_
                           _%e5058250893%_
                           _%hd5058350897%_
                           _%tl5058450900%_
                           _%e5058550903%_
                           _%hd5058650907%_
                           _%tl5058750910%_
                           _%__splice9400494005%_
                           _%target5064350694%_
                           _%tl5064550697%_)
                          (let () (declare (not safe)) (_%g5057350657%_)))))
                  (let () (declare (not safe)) (_%g5057350657%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5058750910%_)
                                                      (let ((_%__splice9400494005%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5058750910%_
                                                              '0)))
                                                        (let ((_%tl5064550697%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9400494005%_ '1)))
                      (_%target5064350694%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9400494005%_ '0))))
                  (if (gx#stx-null? _%tl5064550697%_)
                      (_%__match9411694117%_
                       _%e5057950883%_
                       _%hd5058050887%_
                       _%tl5058150890%_
                       _%e5058250893%_
                       _%hd5058350897%_
                       _%tl5058450900%_
                       _%e5058550903%_
                       _%hd5058650907%_
                       _%tl5058750910%_
                       _%__splice9400494005%_
                       _%target5064350694%_
                       _%tl5064550697%_)
                      (let () (declare (not safe)) (_%g5057350657%_)))))
              (let () (declare (not safe)) (_%g5057350657%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl5058750910%_)
                                              (let ((_%__splice9400494005%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5058750910%_
                                                      '0)))
                                                (let ((_%tl5064550697%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9400494005%_
                                                          '1)))
                                                      (_%target5064350694%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9400494005%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5064550697%_)
                                                      (_%__match9411694117%_
                                                       _%e5057950883%_
                                                       _%hd5058050887%_
                                                       _%tl5058150890%_
                                                       _%e5058250893%_
                                                       _%hd5058350897%_
                                                       _%tl5058450900%_
                                                       _%e5058550903%_
                                                       _%hd5058650907%_
                                                       _%tl5058750910%_
                                                       _%__splice9400494005%_
                                                       _%target5064350694%_
                                                       _%tl5064550697%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5057350657%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5057350657%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5057350657%_)))))
                          (let () (declare (not safe)) (_%g5057350657%_)))))
                  (let () (declare (not safe)) (_%g5057350657%_))))))))
    (define |gerbil/core/contract~TypeCast[:0:]#:~|
      (lambda (_%$stx51005%_)
        (let* ((_%__stx9411994120%_ _%$stx51005%_)
               (_%g5101051046%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9411994120%_))))
          (let ((_%__kont9412294123%_
                 (lambda (_%g5101251164%_ _%g5101351166%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f 'val)
                                     (cons _%g5101351166%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (cons _%g5101251164%_
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
                           (cons _%g5101351166%_
                                 (cons _%g5101251164%_
                                       (cons (gx#datum->syntax '#f 'val)
                                             '()))))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9412494125%_
                 (lambda (_%g5102351103%_ _%g5102451105%_ _%g5102551106%_)
                   (cons (gx#datum->syntax '#f ':-)
                         (cons (cons (gx#datum->syntax '#f ':~)
                                     (cons _%g5102551106%_
                                           (cons _%g5102451105%_ '())))
                               (cons _%g5102351103%_ '()))))))
            (if (gx#stx-pair? _%__stx9411994120%_)
                (let ((_%e5101451134%_ (gx#syntax-e _%__stx9411994120%_)))
                  (let ((_%tl5101651141%_
                         (let () (declare (not safe)) (##cdr _%e5101451134%_)))
                        (_%hd5101551138%_
                         (let ()
                           (declare (not safe))
                           (##car _%e5101451134%_))))
                    (if (gx#stx-pair? _%tl5101651141%_)
                        (let ((_%e5101751144%_ (gx#syntax-e _%tl5101651141%_)))
                          (let ((_%tl5101951151%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5101751144%_)))
                                (_%hd5101851148%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5101751144%_))))
                            (if (gx#stx-pair? _%tl5101951151%_)
                                (let ((_%e5102051154%_
                                       (gx#syntax-e _%tl5101951151%_)))
                                  (let ((_%tl5102251161%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5102051154%_)))
                                        (_%hd5102151158%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5102051154%_))))
                                    (if (gx#stx-null? _%tl5102251161%_)
                                        (_%__kont9412294123%_
                                         _%hd5102151158%_
                                         _%hd5101851148%_)
                                        (if (gx#stx-pair? _%tl5102251161%_)
                                            (let ((_%e5103551083%_
                                                   (gx#syntax-e
                                                    _%tl5102251161%_)))
                                              (let ((_%tl5103751090%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5103551083%_)))
                                                    (_%hd5103651087%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5103551083%_))))
                                                (if (gx#identifier?
                                                     _%hd5103651087%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~TypeCast[1]#_g100827_|
                                                         _%hd5103651087%_)
                                                        (if (gx#stx-pair?
                                                             _%tl5103751090%_)
                                                            (let ((_%e5103851093%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl5103751090%_)))
                      (let ((_%tl5104051100%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5103851093%_)))
                            (_%hd5103951097%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5103851093%_))))
                        (if (gx#stx-null? _%tl5104051100%_)
                            (_%__kont9412494125%_
                             _%hd5103951097%_
                             _%hd5102151158%_
                             _%hd5101851148%_)
                            (let () (declare (not safe)) (_%g5101051046%_)))))
                    (let () (declare (not safe)) (_%g5101051046%_)))
                (let () (declare (not safe)) (_%g5101051046%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5101051046%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5101051046%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g5101051046%_)))))
                        (let () (declare (not safe)) (_%g5101051046%_)))))
                (let () (declare (not safe)) (_%g5101051046%_)))))))
    (define |gerbil/core/contract~TypeCast[:0:]#::-|
      (lambda (_%$stx51185%_)
        (let ((_%g5118851195%_
               (lambda (_%g5118951191%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g5118951191%_))))
          (_%g5118851195%_ _%$stx51185%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:=|
      (lambda (_%$stx51199%_)
        (let ((_%g5120251209%_
               (lambda (_%g5120351205%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g5120351205%_))))
          (_%g5120251209%_ _%$stx51199%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#check-nil!|
      (lambda (_%$stx51213%_)
        (let* ((_%g5121751231%_
                (lambda (_%g5121851227%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5121851227%_)))
               (_%g5121651272%_
                (lambda (_%g5121851235%_)
                  (if (gx#stx-pair? _%g5121851235%_)
                      (let ((_%e5122051238%_ (gx#syntax-e _%g5121851235%_)))
                        (let ((_%hd5122151242%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5122051238%_)))
                              (_%tl5122251245%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5122051238%_))))
                          (if (gx#stx-pair? _%tl5122251245%_)
                              (let ((_%e5122351248%_
                                     (gx#syntax-e _%tl5122251245%_)))
                                (let ((_%hd5122451252%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5122351248%_)))
                                      (_%tl5122551255%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5122351248%_))))
                                  (if (gx#stx-null? _%tl5122551255%_)
                                      ((lambda (_%g5121951258%_)
                                         (cons (gx#datum->syntax '#f 'or)
                                               (cons _%g5121951258%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'nil-dereference!)
                         (cons _%g5121951258%_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd5122451252%_)
                                      (_%g5121751231%_ _%g5121851235%_))))
                              (_%g5121751231%_ _%g5121851235%_))))
                      (_%g5121751231%_ _%g5121851235%_)))))
          (_%g5121651272%_ _%$stx51213%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#contract-violation!|
      (lambda (_%stx51276%_)
        (let* ((_%g5127951302%_
                (lambda (_%g5128051298%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5128051298%_)))
               (_%g5127851426%_
                (lambda (_%g5128051306%_)
                  (if (gx#stx-pair? _%g5128051306%_)
                      (let ((_%e5128551309%_ (gx#syntax-e _%g5128051306%_)))
                        (let ((_%hd5128651313%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5128551309%_)))
                              (_%tl5128751316%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5128551309%_))))
                          (if (gx#stx-pair? _%tl5128751316%_)
                              (let ((_%e5128851319%_
                                     (gx#syntax-e _%tl5128751316%_)))
                                (let ((_%hd5128951323%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5128851319%_)))
                                      (_%tl5129051326%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5128851319%_))))
                                  (if (gx#stx-pair? _%tl5129051326%_)
                                      (let ((_%e5129151329%_
                                             (gx#syntax-e _%tl5129051326%_)))
                                        (let ((_%hd5129251333%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5129151329%_)))
                                              (_%tl5129351336%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5129151329%_))))
                                          (if (gx#stx-pair? _%tl5129351336%_)
                                              (let ((_%e5129451339%_
                                                     (gx#syntax-e
                                                      _%tl5129351336%_)))
                                                (let ((_%hd5129551343%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5129451339%_)))
                                                      (_%tl5129651346%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5129451339%_))))
                                                  (if (gx#stx-null?
                                                       _%tl5129651346%_)
                                                      ((lambda (_%g5128151349%_
                                                                _%g5128251351%_
                                                                _%g5128351352%_
                                                                _%g5128451353%_)
                                                         (let* ((_%g5137351381%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g5137451377%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g5137451377%_)))
                        (_%g5137251400%_
                         (lambda (_%g5137451385%_)
                           ((lambda (_%g5137551388%_)
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
                                (cons _%g5137551388%_ '()))
                          (cons 'contract:
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%g5128251351%_ '()))
                                      (cons 'value:
                                            (cons _%g5128151349%_ '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                            _%g5137451385%_))))
                   (_%g5137251400%_
                    (let ((_%$e51412%_
                           (let ((_%$e51404%_ (gx#stx-source _%g5128351352%_)))
                             (if _%$e51404%_
                                 _%$e51404%_
                                 (let ((_%$e51408%_
                                        (gx#stx-source _%stx51276%_)))
                                   (if _%$e51408%_
                                       _%$e51408%_
                                       (gx#stx-source _%g5128451353%_)))))))
                      (if _%$e51412%_
                          ((lambda (_%locat51416%_)
                             (call-with-output-string
                              '""
                              (lambda (_%g5141851420%_)
                                (let ()
                                  (declare (not safe))
                                  (##display-locat
                                   _%locat51416%_
                                   '#t
                                   _%g5141851420%_)))))
                           _%$e51412%_)
                          (gx#expander-context-id (gx#core-context-top)))))))
               _%hd5129551343%_
               _%hd5129251333%_
               _%hd5128951323%_
               _%hd5128651313%_)
              (_%g5127951302%_ _%g5128051306%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g5127951302%_
                                               _%g5128051306%_))))
                                      (_%g5127951302%_ _%g5128051306%_))))
                              (_%g5127951302%_ _%g5128051306%_))))
                      (_%g5127951302%_ _%g5128051306%_)))))
          (_%g5127851426%_ _%stx51276%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#nil-dereference!|
      (lambda (_%stx51430%_)
        (let* ((_%g5143351448%_
                (lambda (_%g5143451444%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5143451444%_)))
               (_%g5143251544%_
                (lambda (_%g5143451452%_)
                  (if (gx#stx-pair? _%g5143451452%_)
                      (let ((_%e5143751455%_ (gx#syntax-e _%g5143451452%_)))
                        (let ((_%hd5143851459%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5143751455%_)))
                              (_%tl5143951462%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5143751455%_))))
                          (if (gx#stx-pair? _%tl5143951462%_)
                              (let ((_%e5144051465%_
                                     (gx#syntax-e _%tl5143951462%_)))
                                (let ((_%hd5144151469%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5144051465%_)))
                                      (_%tl5144251472%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5144051465%_))))
                                  (if (gx#stx-null? _%tl5144251472%_)
                                      ((lambda (_%g5143551475%_
                                                _%g5143651477%_)
                                         (let* ((_%g5149151499%_
                                                 (lambda (_%g5149251495%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5149251495%_)))
                                                (_%g5149051518%_
                                                 (lambda (_%g5149251503%_)
                                                   ((lambda (_%g5149351506%_)
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
                                                        (cons _%g5149351506%_
                                                              '()))
                                                  (cons 'contract:
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                        (cons _%g5143551475%_ '()))
                                  '()))
                      (cons 'value: (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g5149251503%_))))
                                           (_%g5149051518%_
                                            (let ((_%$e51530%_
                                                   (let ((_%$e51522%_
                                                          (gx#stx-source
                                                           _%g5143551475%_)))
                                                     (if _%$e51522%_
                                                         _%$e51522%_
                                                         (let ((_%$e51526%_
                                                                (gx#stx-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx51430%_)))
                   (if _%$e51526%_
                       _%$e51526%_
                       (gx#stx-source _%g5143651477%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if _%$e51530%_
                                                  ((lambda (_%locat51534%_)
                                                     (call-with-output-string
                                                      '""
                                                      (lambda (_%g5153651538%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (##display-locat
                                                           _%locat51534%_
                                                           '#t
                                                           _%g5153651538%_)))))
                                                   _%$e51530%_)
                                                  (gx#expander-context-id
                                                   (gx#core-context-top)))))))
                                       _%hd5144151469%_
                                       _%hd5143851459%_)
                                      (_%g5143351448%_ _%g5143451452%_))))
                              (_%g5143351448%_ _%g5143451452%_))))
                      (_%g5143351448%_ _%g5143451452%_)))))
          (_%g5143251544%_ _%stx51430%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#abort!|
      (lambda (_%$stx51548%_)
        (let* ((_%g5155251566%_
                (lambda (_%g5155351562%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5155351562%_)))
               (_%g5155151607%_
                (lambda (_%g5155351570%_)
                  (if (gx#stx-pair? _%g5155351570%_)
                      (let ((_%e5155551573%_ (gx#syntax-e _%g5155351570%_)))
                        (let ((_%hd5155651577%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5155551573%_)))
                              (_%tl5155751580%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5155551573%_))))
                          (if (gx#stx-pair? _%tl5155751580%_)
                              (let ((_%e5155851583%_
                                     (gx#syntax-e _%tl5155751580%_)))
                                (let ((_%hd5155951587%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5155851583%_)))
                                      (_%tl5156051590%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5155851583%_))))
                                  (if (gx#stx-null? _%tl5156051590%_)
                                      ((lambda (_%g5155451593%_)
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
                         (cons _%g5155451593%_
                               (cons (cons (gx#datum->syntax '#f 'void) '())
                                     '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd5155951587%_)
                                      (_%g5155251566%_ _%g5155351570%_))))
                              (_%g5155251566%_ _%g5155351570%_))))
                      (_%g5155251566%_ _%g5155351570%_)))))
          (_%g5155151607%_ _%$stx51548%_))))))
