(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeCast[1]#_g102382_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypeCast[1]#_g102383_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypeCast[1]#_g102384_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/contract~TypeCast[:0:]#:|
      (lambda (_%stx51096%_)
        (let* ((_%__stx9548195482%_ _%stx51096%_)
               (_%$%g5110051133%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9548195482%_))))
          (let ((_%__kont9548495485%_
                 (lambda (_%$%g5110251382%_ _%$%g5110351384%_)
                   (let ((_%meta51399%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                             _%stx51096%_
                             _%$%g5110251382%_))))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/mop~MOP-2#class-type-info::t
                            _%meta51399%_))
                         (let* ((_%$%g5140451419%_
                                 (lambda (_%$%g5140551415%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%$%g5140551415%_)))
                                (_%$%g5140351466%_
                                 (lambda (_%$%g5140551423%_)
                                   (if (gx#stx-pair? _%$%g5140551423%_)
                                       (let ((_%$%e5140851426%_
                                              (gx#syntax-e _%$%g5140551423%_)))
                                         (let ((_%$%hd5140951430%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e5140851426%_)))
                                               (_%$%tl5141051433%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e5140851426%_))))
                                           (if (gx#stx-pair?
                                                _%$%tl5141051433%_)
                                               (let ((_%$%e5141151436%_
                                                      (gx#syntax-e
                                                       _%$%tl5141051433%_)))
                                                 (let ((_%$%hd5141251440%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e5141151436%_)))
                                                       (_%$%tl5141351443%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e5141151436%_))))
                                                   (if (gx#stx-null?
                                                        _%$%tl5141351443%_)
                                                       (if (let ((__tmp102379
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__obj102197 _%meta51399%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-direct-instance-of?
                                   __obj102197
                                   'gerbil/core#class-type-info::t))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   __obj102197
                                   '2
                                   '#f
                                   '#f))
                                (unchecked-slot-ref __obj102197 'id)))))
                     (declare (not safe))
                     (##memq __tmp102379 '(t void)))
                   (cons (gx#datum->syntax '#f 'begin-annotation)
                         (cons (cons (gx#datum->syntax '#f '@type)
                                     (cons _%$%hd5140951430%_ '()))
                               (cons _%$%g5110351384%_ '())))
                   (cons (gx#datum->syntax '#f 'begin-annotation)
                         (cons (cons (gx#datum->syntax '#f '@type)
                                     (cons _%$%hd5140951430%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'val)
                                                       (cons _%$%g5110351384%_
                                                             '()))
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'if)
                                                             (cons (cons _%$%hd5141251440%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (gx#datum->syntax '#f 'val) '()))
                           (cons (gx#datum->syntax '#f 'val)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'contract-violation!)
                                             (cons _%$%g5110351384%_
                                                   (cons (cons _%$%hd5141251440%_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'val)
                             '()))
                 (cons (gx#datum->syntax '#f 'val) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))
               (_%$%g5140451419%_ _%$%g5140551423%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g5140451419%_
                                                _%$%g5140551423%_))))
                                       (_%$%g5140451419%_
                                        _%$%g5140551423%_)))))
                           (_%$%g5140351466%_
                            (list (let ((__obj102198 _%meta51399%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-direct-instance-of?
                                           __obj102198
                                           'gerbil/core#class-type-info::t))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __obj102198
                                           '4
                                           '#f
                                           '#f))
                                        (unchecked-slot-ref
                                         __obj102198
                                         'type-descriptor)))
                                  (let ((__obj102199 _%meta51399%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-direct-instance-of?
                                           __obj102199
                                           'gerbil/core#class-type-info::t))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __obj102199
                                           '15
                                           '#f
                                           '#f))
                                        (unchecked-slot-ref
                                         __obj102199
                                         'predicate))))))
                         (if (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/contract~InterfaceInfo#interface-info::t
                                _%meta51399%_))
                             (let* ((_%$%g5147251487%_
                                     (lambda (_%$%g5147351483%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%$%g5147351483%_)))
                                    (_%$%g5147151532%_
                                     (lambda (_%$%g5147351491%_)
                                       (if (gx#stx-pair? _%$%g5147351491%_)
                                           (let ((_%$%e5147651494%_
                                                  (gx#syntax-e
                                                   _%$%g5147351491%_)))
                                             (let ((_%$%hd5147751498%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e5147651494%_)))
                                                   (_%$%tl5147851501%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e5147651494%_))))
                                               (if (gx#stx-pair?
                                                    _%$%tl5147851501%_)
                                                   (let ((_%$%e5147951504%_
                                                          (gx#syntax-e
                                                           _%$%tl5147851501%_)))
                                                     (let ((_%$%hd5148051508%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e5147951504%_)))
                                                           (_%$%tl5148151511%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e5147951504%_))))
                                                       (if (gx#stx-null?
                                                            _%$%tl5148151511%_)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'begin-annotation)
                         (cons (cons (gx#datum->syntax '#f '@type)
                                     (cons _%$%hd5147751498%_ '()))
                               (cons (cons _%$%hd5148051508%_
                                           (cons _%$%g5110351384%_ '()))
                                     '())))
                   (_%$%g5147251487%_ _%$%g5147351491%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g5147251487%_
                                                    _%$%g5147351491%_))))
                                           (_%$%g5147251487%_
                                            _%$%g5147351491%_)))))
                               (_%$%g5147151532%_
                                (list (let ((__obj102196 _%meta51399%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj102196
                                               'gerbil/core#runtime-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj102196
                                               '3
                                               '#f
                                               '#f))
                                            (unchecked-slot-ref
                                             __obj102196
                                             'type-descriptor)))
                                      (let ()
                                        (declare (not safe))
                                        (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                         _%stx51096%_
                                         _%$%g5110251382%_)))))
                             (gx#raise-syntax-error
                              '#f
                              '"not a class type or interface"
                              _%stx51096%_
                              _%$%g5110251382%_))))))
                (_%__kont9548695487%_
                 (lambda (_%$%g5111351184%_ _%$%g5111451186%_)
                   (let ((_%meta51206%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                             _%stx51096%_
                             _%$%g5111351184%_))))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/mop~MOP-2#class-type-info::t
                            _%meta51206%_))
                         (let* ((_%$%g5121151226%_
                                 (lambda (_%$%g5121251222%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%$%g5121251222%_)))
                                (_%$%g5121051273%_
                                 (lambda (_%$%g5121251230%_)
                                   (if (gx#stx-pair? _%$%g5121251230%_)
                                       (let ((_%$%e5121551233%_
                                              (gx#syntax-e _%$%g5121251230%_)))
                                         (let ((_%$%hd5121651237%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e5121551233%_)))
                                               (_%$%tl5121751240%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e5121551233%_))))
                                           (if (gx#stx-pair?
                                                _%$%tl5121751240%_)
                                               (let ((_%$%e5121851243%_
                                                      (gx#syntax-e
                                                       _%$%tl5121751240%_)))
                                                 (let ((_%$%hd5121951247%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e5121851243%_)))
                                                       (_%$%tl5122051250%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e5121851243%_))))
                                                   (if (gx#stx-null?
                                                        _%$%tl5122051250%_)
                                                       (if (let ((__tmp102380
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__obj102201 _%meta51206%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-direct-instance-of?
                                   __obj102201
                                   'gerbil/core#class-type-info::t))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   __obj102201
                                   '2
                                   '#f
                                   '#f))
                                (unchecked-slot-ref __obj102201 'id)))))
                     (declare (not safe))
                     (##memq __tmp102380 '(t void)))
                   (cons (gx#datum->syntax '#f 'begin-annotation)
                         (cons (cons (gx#datum->syntax '#f '@type)
                                     (cons _%$%hd5121651237%_ '()))
                               (cons _%$%g5111451186%_ '())))
                   (cons (gx#datum->syntax '#f 'begin-annotation)
                         (cons (cons (gx#datum->syntax '#f '@type)
                                     (cons _%$%hd5121651237%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'val)
                                                       (cons _%$%g5111451186%_
                                                             '()))
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'if)
                                                             (cons (cons _%$%hd5121951247%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (gx#datum->syntax '#f 'val) '()))
                           (cons (gx#datum->syntax '#f 'val)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'runtime-contract-violation!)
                                             (cons _%$%g5111451186%_
                                                   (cons (cons _%$%hd5121951247%_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'val)
                             '()))
                 (cons (gx#datum->syntax '#f 'val) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))
               (_%$%g5121151226%_ _%$%g5121251230%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g5121151226%_
                                                _%$%g5121251230%_))))
                                       (_%$%g5121151226%_
                                        _%$%g5121251230%_)))))
                           (_%$%g5121051273%_
                            (list (let ((__obj102202 _%meta51206%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-direct-instance-of?
                                           __obj102202
                                           'gerbil/core#class-type-info::t))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __obj102202
                                           '4
                                           '#f
                                           '#f))
                                        (unchecked-slot-ref
                                         __obj102202
                                         'type-descriptor)))
                                  (let ((__obj102203 _%meta51206%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-direct-instance-of?
                                           __obj102203
                                           'gerbil/core#class-type-info::t))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __obj102203
                                           '15
                                           '#f
                                           '#f))
                                        (unchecked-slot-ref
                                         __obj102203
                                         'predicate))))))
                         (if (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/contract~InterfaceInfo#interface-info::t
                                _%meta51206%_))
                             (let* ((_%$%g5127951294%_
                                     (lambda (_%$%g5128051290%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%$%g5128051290%_)))
                                    (_%$%g5127851339%_
                                     (lambda (_%$%g5128051298%_)
                                       (if (gx#stx-pair? _%$%g5128051298%_)
                                           (let ((_%$%e5128351301%_
                                                  (gx#syntax-e
                                                   _%$%g5128051298%_)))
                                             (let ((_%$%hd5128451305%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e5128351301%_)))
                                                   (_%$%tl5128551308%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e5128351301%_))))
                                               (if (gx#stx-pair?
                                                    _%$%tl5128551308%_)
                                                   (let ((_%$%e5128651311%_
                                                          (gx#syntax-e
                                                           _%$%tl5128551308%_)))
                                                     (let ((_%$%hd5128751315%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e5128651311%_)))
                                                           (_%$%tl5128851318%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e5128651311%_))))
                                                       (if (gx#stx-null?
                                                            _%$%tl5128851318%_)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'begin-annotation)
                         (cons (cons (gx#datum->syntax '#f '@type)
                                     (cons _%$%hd5128451305%_ '()))
                               (cons (cons _%$%hd5128751315%_
                                           (cons _%$%g5111451186%_ '()))
                                     '())))
                   (_%$%g5127951294%_ _%$%g5128051298%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g5127951294%_
                                                    _%$%g5128051298%_))))
                                           (_%$%g5127951294%_
                                            _%$%g5128051298%_)))))
                               (_%$%g5127851339%_
                                (list (let ((__obj102200 _%meta51206%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj102200
                                               'gerbil/core#runtime-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj102200
                                               '3
                                               '#f
                                               '#f))
                                            (unchecked-slot-ref
                                             __obj102200
                                             'type-descriptor)))
                                      (let ()
                                        (declare (not safe))
                                        (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                         _%stx51096%_
                                         _%$%g5111351184%_)))))
                             (gx#raise-syntax-error
                              '#f
                              '"not a class type or interface"
                              _%stx51096%_
                              _%$%g5111351184%_)))))))
            (let* ((_%__match9554095541%_
                    (lambda (_%$%e5111551140%_
                             _%$%hd5111651144%_
                             _%$%tl5111751147%_
                             _%$%e5111851150%_
                             _%$%hd5111951154%_
                             _%$%tl5112051157%_
                             _%$%e5112151160%_
                             _%$%hd5112251164%_
                             _%$%tl5112351167%_
                             _%$%e5112451170%_
                             _%$%e5112551174%_
                             _%$%hd5112651178%_
                             _%$%tl5112751181%_)
                      (let ((_%$%g5111351184%_ _%$%hd5112651178%_)
                            (_%$%g5111451186%_ _%$%hd5111951154%_))
                        (if (gx#identifier? _%$%g5111351184%_)
                            (_%__kont9548695487%_
                             _%$%g5111351184%_
                             _%$%g5111451186%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g5110051133%_))))))
                   (_%__match9550895509%_
                    (lambda (_%$%e5110451352%_
                             _%$%hd5110551356%_
                             _%$%tl5110651359%_
                             _%$%e5110751362%_
                             _%$%hd5110851366%_
                             _%$%tl5110951369%_
                             _%$%e5111051372%_
                             _%$%hd5111151376%_
                             _%$%tl5111251379%_)
                      (let ((_%$%g5110251382%_ _%$%hd5111151376%_)
                            (_%$%g5110351384%_ _%$%hd5110851366%_))
                        (if (gx#identifier? _%$%g5110251382%_)
                            (_%__kont9548495485%_
                             _%$%g5110251382%_
                             _%$%g5110351384%_)
                            (if (gx#stx-datum? _%$%hd5111151376%_)
                                (let ((_%$%e5112451170%_
                                       (gx#stx-e _%$%hd5111151376%_)))
                                  (declare (not safe))
                                  (_%$%g5110051133%_))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g5110051133%_))))))))
              (if (gx#stx-pair? _%__stx9548195482%_)
                  (let ((_%$%e5110451352%_ (gx#syntax-e _%__stx9548195482%_)))
                    (let ((_%$%tl5110651359%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5110451352%_)))
                          (_%$%hd5110551356%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5110451352%_))))
                      (if (gx#stx-pair? _%$%tl5110651359%_)
                          (let ((_%$%e5110751362%_
                                 (gx#syntax-e _%$%tl5110651359%_)))
                            (let ((_%$%tl5110951369%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5110751362%_)))
                                  (_%$%hd5110851366%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5110751362%_))))
                              (if (gx#stx-pair? _%$%tl5110951369%_)
                                  (let ((_%$%e5111051372%_
                                         (gx#syntax-e _%$%tl5110951369%_)))
                                    (let ((_%$%tl5111251379%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5111051372%_)))
                                          (_%$%hd5111151376%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5111051372%_))))
                                      (if (gx#stx-null? _%$%tl5111251379%_)
                                          (_%__match9550895509%_
                                           _%$%e5110451352%_
                                           _%$%hd5110551356%_
                                           _%$%tl5110651359%_
                                           _%$%e5110751362%_
                                           _%$%hd5110851366%_
                                           _%$%tl5110951369%_
                                           _%$%e5111051372%_
                                           _%$%hd5111151376%_
                                           _%$%tl5111251379%_)
                                          (if (gx#stx-datum?
                                               _%$%hd5111151376%_)
                                              (let ((_%$%e5112451170%_
                                                     (gx#stx-e
                                                      _%$%hd5111151376%_)))
                                                (if (equal? _%$%e5112451170%_
                                                            'runtime:)
                                                    (if (gx#stx-pair?
                                                         _%$%tl5111251379%_)
                                                        (let ((_%$%e5112551174%_
                                                               (gx#syntax-e
                                                                _%$%tl5111251379%_)))
                                                          (let ((_%$%tl5112751181%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e5112551174%_)))
                        (_%$%hd5112651178%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e5112551174%_))))
                    (if (gx#stx-null? _%$%tl5112751181%_)
                        (_%__match9554095541%_
                         _%$%e5110451352%_
                         _%$%hd5110551356%_
                         _%$%tl5110651359%_
                         _%$%e5110751362%_
                         _%$%hd5110851366%_
                         _%$%tl5110951369%_
                         _%$%e5111051372%_
                         _%$%hd5111151376%_
                         _%$%tl5111251379%_
                         _%$%e5112451170%_
                         _%$%e5112551174%_
                         _%$%hd5112651178%_
                         _%$%tl5112751181%_)
                        (let () (declare (not safe)) (_%$%g5110051133%_)))))
                (let () (declare (not safe)) (_%$%g5110051133%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5110051133%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5110051133%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5110051133%_)))))
                          (let () (declare (not safe)) (_%$%g5110051133%_)))))
                  (let () (declare (not safe)) (_%$%g5110051133%_))))))))
    (define |gerbil/core/contract~TypeCast[:0:]#:?|
      (lambda (_%stx51542%_)
        (let* ((_%$%g5154551563%_
                (lambda (_%$%g5154651559%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g5154651559%_)))
               (_%$%g5154451757%_
                (lambda (_%$%g5154651567%_)
                  (if (gx#stx-pair? _%$%g5154651567%_)
                      (let ((_%$%e5154951570%_
                             (gx#syntax-e _%$%g5154651567%_)))
                        (let ((_%$%hd5155051574%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5154951570%_)))
                              (_%$%tl5155151577%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5154951570%_))))
                          (if (gx#stx-pair? _%$%tl5155151577%_)
                              (let ((_%$%e5155251580%_
                                     (gx#syntax-e _%$%tl5155151577%_)))
                                (let ((_%$%hd5155351584%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5155251580%_)))
                                      (_%$%tl5155451587%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5155251580%_))))
                                  (if (gx#stx-pair? _%$%tl5155451587%_)
                                      (let ((_%$%e5155551590%_
                                             (gx#syntax-e _%$%tl5155451587%_)))
                                        (let ((_%$%hd5155651594%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5155551590%_)))
                                              (_%$%tl5155751597%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5155551590%_))))
                                          (if (gx#stx-null? _%$%tl5155751597%_)
                                              (if (gx#identifier?
                                                   _%$%hd5155651594%_)
                                                  (let ((_%meta51618%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                            _%stx51542%_
                                                            _%$%hd5155651594%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (class-instance?
                                                           gerbil/core/mop~MOP-2#class-type-info::t
                                                           _%meta51618%_))
                                                        (let* ((_%$%g5162351638%_
                                                                (lambda (_%$%g5162451634%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%$%g5162451634%_)))
                       (_%$%g5162251685%_
                        (lambda (_%$%g5162451642%_)
                          (if (gx#stx-pair? _%$%g5162451642%_)
                              (let ((_%$%e5162751645%_
                                     (gx#syntax-e _%$%g5162451642%_)))
                                (let ((_%$%hd5162851649%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5162751645%_)))
                                      (_%$%tl5162951652%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5162751645%_))))
                                  (if (gx#stx-pair? _%$%tl5162951652%_)
                                      (let ((_%$%e5163051655%_
                                             (gx#syntax-e _%$%tl5162951652%_)))
                                        (let ((_%$%hd5163151659%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5163051655%_)))
                                              (_%$%tl5163251662%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5163051655%_))))
                                          (if (gx#stx-null? _%$%tl5163251662%_)
                                              (if (let ((__tmp102381
                                                         (let ((__obj102205
                                                                _%meta51618%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##structure-direct-instance-of?
                          __obj102205
                          'gerbil/core#class-type-info::t))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref __obj102205 '2 '#f '#f))
                       (unchecked-slot-ref __obj102205 'id)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (##memq __tmp102381
                                                            '(t void)))
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'begin-annotation)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '@type)
                            (cons _%$%hd5162851649%_ '()))
                      (cons _%$%hd5155351584%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'begin-annotation)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '@type)
                            (cons _%$%hd5162851649%_ '()))
                      (cons (cons (gx#datum->syntax '#f 'let)
                                  (cons (cons (gx#datum->syntax '#f 'val)
                                              (cons _%$%hd5155351584%_ '()))
                                        (cons (cons (gx#datum->syntax '#f 'if)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'or)
                        (cons (cons (gx#datum->syntax '#f 'not)
                                    (cons (gx#datum->syntax '#f 'val) '()))
                              (cons (cons _%$%hd5163151659%_
                                          (cons (gx#datum->syntax '#f 'val)
                                                '()))
                                    '())))
                  (cons (gx#datum->syntax '#f 'val)
                        (cons (cons (gx#datum->syntax '#f 'contract-violation!)
                                    (cons _%$%hd5155351584%_
                                          (cons (cons _%$%hd5163151659%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'val)
                                                            '()))
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'val)
                                                      '()))))
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g5162351638%_
                                               _%$%g5162451642%_))))
                                      (_%$%g5162351638%_ _%$%g5162451642%_))))
                              (_%$%g5162351638%_ _%$%g5162451642%_)))))
                  (_%$%g5162251685%_
                   (list (let ((__obj102206 _%meta51618%_))
                           (if (let ()
                                 (declare (not safe))
                                 (##structure-direct-instance-of?
                                  __obj102206
                                  'gerbil/core#class-type-info::t))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  __obj102206
                                  '4
                                  '#f
                                  '#f))
                               (unchecked-slot-ref
                                __obj102206
                                'type-descriptor)))
                         (let ((__obj102207 _%meta51618%_))
                           (if (let ()
                                 (declare (not safe))
                                 (##structure-direct-instance-of?
                                  __obj102207
                                  'gerbil/core#class-type-info::t))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  __obj102207
                                  '15
                                  '#f
                                  '#f))
                               (unchecked-slot-ref __obj102207 'predicate))))))
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       gerbil/core/contract~InterfaceInfo#interface-info::t
                       _%meta51618%_))
                    (let* ((_%$%g5169151706%_
                            (lambda (_%$%g5169251702%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g5169251702%_)))
                           (_%$%g5169051751%_
                            (lambda (_%$%g5169251710%_)
                              (if (gx#stx-pair? _%$%g5169251710%_)
                                  (let ((_%$%e5169551713%_
                                         (gx#syntax-e _%$%g5169251710%_)))
                                    (let ((_%$%hd5169651717%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5169551713%_)))
                                          (_%$%tl5169751720%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5169551713%_))))
                                      (if (gx#stx-pair? _%$%tl5169751720%_)
                                          (let ((_%$%e5169851723%_
                                                 (gx#syntax-e
                                                  _%$%tl5169751720%_)))
                                            (let ((_%$%hd5169951727%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5169851723%_)))
                                                  (_%$%tl5170051730%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5169851723%_))))
                                              (if (gx#stx-null?
                                                   _%$%tl5170051730%_)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'begin-annotation)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '@type)
                            (cons _%$%hd5169651717%_ '()))
                      (cons (cons (gx#datum->syntax '#f 'let)
                                  (cons (cons (gx#datum->syntax '#f 'val)
                                              (cons _%$%hd5155351584%_ '()))
                                        (cons (cons (gx#datum->syntax '#f 'and)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'val)
                                                          (cons (cons _%$%hd5169951727%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f 'val) '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g5169151706%_
                                                   _%$%g5169251710%_))))
                                          (_%$%g5169151706%_
                                           _%$%g5169251710%_))))
                                  (_%$%g5169151706%_ _%$%g5169251710%_)))))
                      (_%$%g5169051751%_
                       (list (let ((__obj102204 _%meta51618%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj102204
                                      'gerbil/core#runtime-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj102204
                                      '3
                                      '#f
                                      '#f))
                                   (unchecked-slot-ref
                                    __obj102204
                                    'type-descriptor)))
                             (let ()
                               (declare (not safe))
                               (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                _%stx51542%_
                                _%$%hd5155651594%_)))))
                    (gx#raise-syntax-error
                     '#f
                     '"not a class type or interface"
                     _%stx51542%_
                     _%$%hd5155651594%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g5154551563%_
                                                   _%$%g5154651567%_))
                                              (_%$%g5154551563%_
                                               _%$%g5154651567%_))))
                                      (_%$%g5154551563%_ _%$%g5154651567%_))))
                              (_%$%g5154551563%_ _%$%g5154651567%_))))
                      (_%$%g5154551563%_ _%$%g5154651567%_)))))
          (_%$%g5154451757%_ _%stx51542%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:-|
      (lambda (_%stx51761%_)
        (let* ((_%$%g5176451782%_
                (lambda (_%$%g5176551778%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g5176551778%_)))
               (_%$%g5176351868%_
                (lambda (_%$%g5176551786%_)
                  (if (gx#stx-pair? _%$%g5176551786%_)
                      (let ((_%$%e5176851789%_
                             (gx#syntax-e _%$%g5176551786%_)))
                        (let ((_%$%hd5176951793%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5176851789%_)))
                              (_%$%tl5177051796%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5176851789%_))))
                          (if (gx#stx-pair? _%$%tl5177051796%_)
                              (let ((_%$%e5177151799%_
                                     (gx#syntax-e _%$%tl5177051796%_)))
                                (let ((_%$%hd5177251803%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5177151799%_)))
                                      (_%$%tl5177351806%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5177151799%_))))
                                  (if (gx#stx-pair? _%$%tl5177351806%_)
                                      (let ((_%$%e5177451809%_
                                             (gx#syntax-e _%$%tl5177351806%_)))
                                        (let ((_%$%hd5177551813%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5177451809%_)))
                                              (_%$%tl5177651816%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5177451809%_))))
                                          (if (gx#stx-null? _%$%tl5177651816%_)
                                              (if (gx#identifier?
                                                   _%$%hd5177551813%_)
                                                  (let* ((_%$%g5183751845%_
                                                          (lambda (_%$%g5183851841%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%$%g5183851841%_)))
                                                         (_%$%g5183651864%_
                                                          (lambda (_%$%g5183851849%_)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@type)
                                      (cons _%$%g5183851849%_ '()))
                                (cons _%$%hd5177251803%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g5183651864%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                                        _%stx51761%_
                                                        _%$%hd5177551813%_))))
                                                  (_%$%g5176451782%_
                                                   _%$%g5176551786%_))
                                              (_%$%g5176451782%_
                                               _%$%g5176551786%_))))
                                      (_%$%g5176451782%_ _%$%g5176551786%_))))
                              (_%$%g5176451782%_ _%$%g5176551786%_))))
                      (_%$%g5176451782%_ _%$%g5176551786%_)))))
          (_%$%g5176351868%_ _%stx51761%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#do-with-lock|
      (lambda (_%$stx51872%_)
        (let* ((_%__stx9554395544%_ _%$stx51872%_)
               (_%$%g5187851962%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9554395544%_))))
          (let ((_%__kont9554695547%_
                 (lambda (_%$%g5188052266%_
                          _%$%g5188152268%_
                          _%$%g5188252269%_
                          _%$%g5188352270%_)
                   (cons (gx#datum->syntax '#f ':-)
                         (cons (cons (gx#datum->syntax '#f 'do-with-lock)
                                     (cons _%$%g5188352270%_
                                           (cons _%$%g5188152268%_
                                                 (foldr (lambda (_%$%g5229452297%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g5229552300%_)
                  (cons _%$%g5229452297%_ _%$%g5229552300%_))
                '()
                _%$%g5188052266%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%$%g5188252269%_ '())))))
                (_%__kont9555095551%_
                 (lambda (_%$%g5190852144%_
                          _%$%g5190952146%_
                          _%$%g5191052147%_
                          _%$%g5191152148%_)
                   (cons (gx#datum->syntax '#f ':)
                         (cons (cons (gx#datum->syntax '#f 'do-with-lock)
                                     (cons _%$%g5191152148%_
                                           (cons _%$%g5190952146%_
                                                 (foldr (lambda (_%$%g5217252175%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g5217352178%_)
                  (cons _%$%g5217252175%_ _%$%g5217352178%_))
                '()
                _%$%g5190852144%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%$%g5191052147%_ '())))))
                (_%__kont9555495555%_
                 (lambda (_%$%g5193652027%_
                          _%$%g5193752029%_
                          _%$%g5193852030%_)
                   (cons (gx#datum->syntax '#f 'with-lock)
                         (cons _%$%g5193852030%_
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons '()
                                                 (cons _%$%g5193752029%_
                                                       (foldr (lambda (_%$%g5205052053%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%g5205152056%_)
                        (cons _%$%g5205052053%_ _%$%g5205152056%_))
                      '()
                      _%$%g5193652027%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match9566895669%_
                    (lambda (_%$%e5193951969%_
                             _%$%hd5194051973%_
                             _%$%tl5194151976%_
                             _%$%e5194251979%_
                             _%$%hd5194351983%_
                             _%$%tl5194451986%_
                             _%$%e5194551989%_
                             _%$%hd5194651993%_
                             _%$%tl5194751996%_
                             _%__splice9555695557%_
                             _%$%target5194851999%_
                             _%$%tl5195052002%_)
                      (letrec ((_%$%loop5195152005%_
                                (lambda (_%$%hd5194952009%_
                                         _%$%rest5195552012%_)
                                  (if (gx#stx-pair? _%$%hd5194952009%_)
                                      (let ((_%$%e5195252014%_
                                             (gx#syntax-e _%$%hd5194952009%_)))
                                        (let ((_%$%lp-tl5195452021%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5195252014%_)))
                                              (_%$%lp-hd5195352018%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5195252014%_))))
                                          (_%$%loop5195152005%_
                                           _%$%lp-tl5195452021%_
                                           (cons _%$%lp-hd5195352018%_
                                                 _%$%rest5195552012%_))))
                                      (let ((_%$%rest5195652024%_
                                             (reverse _%$%rest5195552012%_)))
                                        (_%__kont9555495555%_
                                         _%$%rest5195652024%_
                                         _%$%hd5194651993%_
                                         _%$%hd5194351983%_))))))
                        (_%$%loop5195152005%_ _%$%target5194851999%_ '()))))
                   (_%__match9564295643%_
                    (lambda (_%$%e5191252066%_
                             _%$%hd5191352070%_
                             _%$%tl5191452073%_
                             _%$%e5191552076%_
                             _%$%hd5191652080%_
                             _%$%tl5191752083%_
                             _%$%e5191852086%_
                             _%$%hd5191952090%_
                             _%$%tl5192052093%_
                             _%$%e5192152096%_
                             _%$%hd5192252100%_
                             _%$%tl5192352103%_
                             _%$%e5192452106%_
                             _%$%hd5192552110%_
                             _%$%tl5192652113%_
                             _%__splice9555295553%_
                             _%$%target5192752116%_
                             _%$%tl5192952119%_)
                      (letrec ((_%$%loop5193052122%_
                                (lambda (_%$%hd5192852126%_
                                         _%$%rest5193452129%_)
                                  (if (gx#stx-pair? _%$%hd5192852126%_)
                                      (let ((_%$%e5193152131%_
                                             (gx#syntax-e _%$%hd5192852126%_)))
                                        (let ((_%$%lp-tl5193352138%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5193152131%_)))
                                              (_%$%lp-hd5193252135%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5193152131%_))))
                                          (_%$%loop5193052122%_
                                           _%$%lp-tl5193352138%_
                                           (cons _%$%lp-hd5193252135%_
                                                 _%$%rest5193452129%_))))
                                      (let ((_%$%rest5193552141%_
                                             (reverse _%$%rest5193452129%_)))
                                        (_%__kont9555095551%_
                                         _%$%rest5193552141%_
                                         _%$%hd5192552110%_
                                         _%$%hd5192252100%_
                                         _%$%hd5191652080%_))))))
                        (_%$%loop5193052122%_ _%$%target5192752116%_ '()))))
                   (_%__match9560095601%_
                    (lambda (_%$%e5188452188%_
                             _%$%hd5188552192%_
                             _%$%tl5188652195%_
                             _%$%e5188752198%_
                             _%$%hd5188852202%_
                             _%$%tl5188952205%_
                             _%$%e5189052208%_
                             _%$%hd5189152212%_
                             _%$%tl5189252215%_
                             _%$%e5189352218%_
                             _%$%hd5189452222%_
                             _%$%tl5189552225%_
                             _%$%e5189652228%_
                             _%$%hd5189752232%_
                             _%$%tl5189852235%_
                             _%__splice9554895549%_
                             _%$%target5189952238%_
                             _%$%tl5190152241%_)
                      (letrec ((_%$%loop5190252244%_
                                (lambda (_%$%hd5190052248%_
                                         _%$%rest5190652251%_)
                                  (if (gx#stx-pair? _%$%hd5190052248%_)
                                      (let ((_%$%e5190352253%_
                                             (gx#syntax-e _%$%hd5190052248%_)))
                                        (let ((_%$%lp-tl5190552260%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5190352253%_)))
                                              (_%$%lp-hd5190452257%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5190352253%_))))
                                          (_%$%loop5190252244%_
                                           _%$%lp-tl5190552260%_
                                           (cons _%$%lp-hd5190452257%_
                                                 _%$%rest5190652251%_))))
                                      (let ((_%$%rest5190752263%_
                                             (reverse _%$%rest5190652251%_)))
                                        (_%__kont9554695547%_
                                         _%$%rest5190752263%_
                                         _%$%hd5189752232%_
                                         _%$%hd5189452222%_
                                         _%$%hd5188852202%_))))))
                        (_%$%loop5190252244%_ _%$%target5189952238%_ '())))))
              (if (gx#stx-pair? _%__stx9554395544%_)
                  (let ((_%$%e5188452188%_ (gx#syntax-e _%__stx9554395544%_)))
                    (let ((_%$%tl5188652195%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5188452188%_)))
                          (_%$%hd5188552192%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5188452188%_))))
                      (if (gx#stx-pair? _%$%tl5188652195%_)
                          (let ((_%$%e5188752198%_
                                 (gx#syntax-e _%$%tl5188652195%_)))
                            (let ((_%$%tl5188952205%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5188752198%_)))
                                  (_%$%hd5188852202%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5188752198%_))))
                              (if (gx#stx-pair? _%$%tl5188952205%_)
                                  (let ((_%$%e5189052208%_
                                         (gx#syntax-e _%$%tl5188952205%_)))
                                    (let ((_%$%tl5189252215%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5189052208%_)))
                                          (_%$%hd5189152212%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5189052208%_))))
                                      (if (gx#identifier? _%$%hd5189152212%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/contract~TypeCast[1]#_g102382_|
                                               _%$%hd5189152212%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl5189252215%_)
                                                  (let ((_%$%e5189352218%_
                                                         (gx#syntax-e
                                                          _%$%tl5189252215%_)))
                                                    (let ((_%$%tl5189552225%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5189352218%_)))
                                                          (_%$%hd5189452222%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5189352218%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl5189552225%_)
                                                          (let ((_%$%e5189652228%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl5189552225%_)))
                    (let ((_%$%tl5189852235%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5189652228%_)))
                          (_%$%hd5189752232%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5189652228%_))))
                      (if (gx#stx-pair/null? _%$%tl5189852235%_)
                          (let ((_%__splice9554895549%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5189852235%_
                                  '0)))
                            (let ((_%$%tl5190152241%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9554895549%_ '1)))
                                  (_%$%target5189952238%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9554895549%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5190152241%_)
                                  (_%__match9560095601%_
                                   _%$%e5188452188%_
                                   _%$%hd5188552192%_
                                   _%$%tl5188652195%_
                                   _%$%e5188752198%_
                                   _%$%hd5188852202%_
                                   _%$%tl5188952205%_
                                   _%$%e5189052208%_
                                   _%$%hd5189152212%_
                                   _%$%tl5189252215%_
                                   _%$%e5189352218%_
                                   _%$%hd5189452222%_
                                   _%$%tl5189552225%_
                                   _%$%e5189652228%_
                                   _%$%hd5189752232%_
                                   _%$%tl5189852235%_
                                   _%__splice9554895549%_
                                   _%$%target5189952238%_
                                   _%$%tl5190152241%_)
                                  (if (gx#stx-pair/null? _%$%tl5189252215%_)
                                      (let ((_%__splice9555695557%_
                                             (gx#syntax-split-splice->vector
                                              _%$%tl5189252215%_
                                              '0)))
                                        (let ((_%$%tl5195052002%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9555695557%_
                                                  '1)))
                                              (_%$%target5194851999%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9555695557%_
                                                  '0))))
                                          (if (gx#stx-null? _%$%tl5195052002%_)
                                              (_%__match9566895669%_
                                               _%$%e5188452188%_
                                               _%$%hd5188552192%_
                                               _%$%tl5188652195%_
                                               _%$%e5188752198%_
                                               _%$%hd5188852202%_
                                               _%$%tl5188952205%_
                                               _%$%e5189052208%_
                                               _%$%hd5189152212%_
                                               _%$%tl5189252215%_
                                               _%__splice9555695557%_
                                               _%$%target5194851999%_
                                               _%$%tl5195052002%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5187851962%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5187851962%_))))))
                          (if (gx#stx-pair/null? _%$%tl5189252215%_)
                              (let ((_%__splice9555695557%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl5189252215%_
                                      '0)))
                                (let ((_%$%tl5195052002%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9555695557%_
                                          '1)))
                                      (_%$%target5194851999%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9555695557%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl5195052002%_)
                                      (_%__match9566895669%_
                                       _%$%e5188452188%_
                                       _%$%hd5188552192%_
                                       _%$%tl5188652195%_
                                       _%$%e5188752198%_
                                       _%$%hd5188852202%_
                                       _%$%tl5188952205%_
                                       _%$%e5189052208%_
                                       _%$%hd5189152212%_
                                       _%$%tl5189252215%_
                                       _%__splice9555695557%_
                                       _%$%target5194851999%_
                                       _%$%tl5195052002%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5187851962%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5187851962%_))))))
                  (if (gx#stx-pair/null? _%$%tl5189252215%_)
                      (let ((_%__splice9555695557%_
                             (gx#syntax-split-splice->vector
                              _%$%tl5189252215%_
                              '0)))
                        (let ((_%$%tl5195052002%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9555695557%_ '1)))
                              (_%$%target5194851999%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9555695557%_ '0))))
                          (if (gx#stx-null? _%$%tl5195052002%_)
                              (_%__match9566895669%_
                               _%$%e5188452188%_
                               _%$%hd5188552192%_
                               _%$%tl5188652195%_
                               _%$%e5188752198%_
                               _%$%hd5188852202%_
                               _%$%tl5188952205%_
                               _%$%e5189052208%_
                               _%$%hd5189152212%_
                               _%$%tl5189252215%_
                               _%__splice9555695557%_
                               _%$%target5194851999%_
                               _%$%tl5195052002%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g5187851962%_)))))
                      (let () (declare (not safe)) (_%$%g5187851962%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5189252215%_)
                                                      (let ((_%__splice9555695557%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5189252215%_
                                                              '0)))
                                                        (let ((_%$%tl5195052002%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9555695557%_ '1)))
                      (_%$%target5194851999%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9555695557%_ '0))))
                  (if (gx#stx-null? _%$%tl5195052002%_)
                      (_%__match9566895669%_
                       _%$%e5188452188%_
                       _%$%hd5188552192%_
                       _%$%tl5188652195%_
                       _%$%e5188752198%_
                       _%$%hd5188852202%_
                       _%$%tl5188952205%_
                       _%$%e5189052208%_
                       _%$%hd5189152212%_
                       _%$%tl5189252215%_
                       _%__splice9555695557%_
                       _%$%target5194851999%_
                       _%$%tl5195052002%_)
                      (let () (declare (not safe)) (_%$%g5187851962%_)))))
              (let () (declare (not safe)) (_%$%g5187851962%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~TypeCast[1]#_g102383_|
                                                   _%$%hd5189152212%_)
                                                  (if (gx#stx-pair?
                                                       _%$%tl5189252215%_)
                                                      (let ((_%$%e5192152096%_
                                                             (gx#syntax-e
                                                              _%$%tl5189252215%_)))
                                                        (let ((_%$%tl5192352103%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e5192152096%_)))
                      (_%$%hd5192252100%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e5192152096%_))))
                  (if (gx#stx-pair? _%$%tl5192352103%_)
                      (let ((_%$%e5192452106%_
                             (gx#syntax-e _%$%tl5192352103%_)))
                        (let ((_%$%tl5192652113%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5192452106%_)))
                              (_%$%hd5192552110%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5192452106%_))))
                          (if (gx#stx-pair/null? _%$%tl5192652113%_)
                              (let ((_%__splice9555295553%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl5192652113%_
                                      '0)))
                                (let ((_%$%tl5192952119%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9555295553%_
                                          '1)))
                                      (_%$%target5192752116%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9555295553%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl5192952119%_)
                                      (_%__match9564295643%_
                                       _%$%e5188452188%_
                                       _%$%hd5188552192%_
                                       _%$%tl5188652195%_
                                       _%$%e5188752198%_
                                       _%$%hd5188852202%_
                                       _%$%tl5188952205%_
                                       _%$%e5189052208%_
                                       _%$%hd5189152212%_
                                       _%$%tl5189252215%_
                                       _%$%e5192152096%_
                                       _%$%hd5192252100%_
                                       _%$%tl5192352103%_
                                       _%$%e5192452106%_
                                       _%$%hd5192552110%_
                                       _%$%tl5192652113%_
                                       _%__splice9555295553%_
                                       _%$%target5192752116%_
                                       _%$%tl5192952119%_)
                                      (if (gx#stx-pair/null?
                                           _%$%tl5189252215%_)
                                          (let ((_%__splice9555695557%_
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl5189252215%_
                                                  '0)))
                                            (let ((_%$%tl5195052002%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9555695557%_
                                                      '1)))
                                                  (_%$%target5194851999%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9555695557%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%$%tl5195052002%_)
                                                  (_%__match9566895669%_
                                                   _%$%e5188452188%_
                                                   _%$%hd5188552192%_
                                                   _%$%tl5188652195%_
                                                   _%$%e5188752198%_
                                                   _%$%hd5188852202%_
                                                   _%$%tl5188952205%_
                                                   _%$%e5189052208%_
                                                   _%$%hd5189152212%_
                                                   _%$%tl5189252215%_
                                                   _%__splice9555695557%_
                                                   _%$%target5194851999%_
                                                   _%$%tl5195052002%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5187851962%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5187851962%_))))))
                              (if (gx#stx-pair/null? _%$%tl5189252215%_)
                                  (let ((_%__splice9555695557%_
                                         (gx#syntax-split-splice->vector
                                          _%$%tl5189252215%_
                                          '0)))
                                    (let ((_%$%tl5195052002%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9555695557%_
                                              '1)))
                                          (_%$%target5194851999%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9555695557%_
                                              '0))))
                                      (if (gx#stx-null? _%$%tl5195052002%_)
                                          (_%__match9566895669%_
                                           _%$%e5188452188%_
                                           _%$%hd5188552192%_
                                           _%$%tl5188652195%_
                                           _%$%e5188752198%_
                                           _%$%hd5188852202%_
                                           _%$%tl5188952205%_
                                           _%$%e5189052208%_
                                           _%$%hd5189152212%_
                                           _%$%tl5189252215%_
                                           _%__splice9555695557%_
                                           _%$%target5194851999%_
                                           _%$%tl5195052002%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5187851962%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5187851962%_))))))
                      (if (gx#stx-pair/null? _%$%tl5189252215%_)
                          (let ((_%__splice9555695557%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5189252215%_
                                  '0)))
                            (let ((_%$%tl5195052002%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9555695557%_ '1)))
                                  (_%$%target5194851999%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9555695557%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5195052002%_)
                                  (_%__match9566895669%_
                                   _%$%e5188452188%_
                                   _%$%hd5188552192%_
                                   _%$%tl5188652195%_
                                   _%$%e5188752198%_
                                   _%$%hd5188852202%_
                                   _%$%tl5188952205%_
                                   _%$%e5189052208%_
                                   _%$%hd5189152212%_
                                   _%$%tl5189252215%_
                                   _%__splice9555695557%_
                                   _%$%target5194851999%_
                                   _%$%tl5195052002%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5187851962%_)))))
                          (let () (declare (not safe)) (_%$%g5187851962%_))))))
              (if (gx#stx-pair/null? _%$%tl5189252215%_)
                  (let ((_%__splice9555695557%_
                         (gx#syntax-split-splice->vector
                          _%$%tl5189252215%_
                          '0)))
                    (let ((_%$%tl5195052002%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9555695557%_ '1)))
                          (_%$%target5194851999%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9555695557%_ '0))))
                      (if (gx#stx-null? _%$%tl5195052002%_)
                          (_%__match9566895669%_
                           _%$%e5188452188%_
                           _%$%hd5188552192%_
                           _%$%tl5188652195%_
                           _%$%e5188752198%_
                           _%$%hd5188852202%_
                           _%$%tl5188952205%_
                           _%$%e5189052208%_
                           _%$%hd5189152212%_
                           _%$%tl5189252215%_
                           _%__splice9555695557%_
                           _%$%target5194851999%_
                           _%$%tl5195052002%_)
                          (let () (declare (not safe)) (_%$%g5187851962%_)))))
                  (let () (declare (not safe)) (_%$%g5187851962%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5189252215%_)
                                                      (let ((_%__splice9555695557%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5189252215%_
                                                              '0)))
                                                        (let ((_%$%tl5195052002%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9555695557%_ '1)))
                      (_%$%target5194851999%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9555695557%_ '0))))
                  (if (gx#stx-null? _%$%tl5195052002%_)
                      (_%__match9566895669%_
                       _%$%e5188452188%_
                       _%$%hd5188552192%_
                       _%$%tl5188652195%_
                       _%$%e5188752198%_
                       _%$%hd5188852202%_
                       _%$%tl5188952205%_
                       _%$%e5189052208%_
                       _%$%hd5189152212%_
                       _%$%tl5189252215%_
                       _%__splice9555695557%_
                       _%$%target5194851999%_
                       _%$%tl5195052002%_)
                      (let () (declare (not safe)) (_%$%g5187851962%_)))))
              (let () (declare (not safe)) (_%$%g5187851962%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%$%tl5189252215%_)
                                              (let ((_%__splice9555695557%_
                                                     (gx#syntax-split-splice->vector
                                                      _%$%tl5189252215%_
                                                      '0)))
                                                (let ((_%$%tl5195052002%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9555695557%_
                                                          '1)))
                                                      (_%$%target5194851999%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9555695557%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%$%tl5195052002%_)
                                                      (_%__match9566895669%_
                                                       _%$%e5188452188%_
                                                       _%$%hd5188552192%_
                                                       _%$%tl5188652195%_
                                                       _%$%e5188752198%_
                                                       _%$%hd5188852202%_
                                                       _%$%tl5188952205%_
                                                       _%$%e5189052208%_
                                                       _%$%hd5189152212%_
                                                       _%$%tl5189252215%_
                                                       _%__splice9555695557%_
                                                       _%$%target5194851999%_
                                                       _%$%tl5195052002%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g5187851962%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5187851962%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5187851962%_)))))
                          (let () (declare (not safe)) (_%$%g5187851962%_)))))
                  (let () (declare (not safe)) (_%$%g5187851962%_))))))))
    (define |gerbil/core/contract~TypeCast[:0:]#:~|
      (lambda (_%$stx52310%_)
        (let* ((_%__stx9567195672%_ _%$stx52310%_)
               (_%$%g5231552351%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9567195672%_))))
          (let ((_%__kont9567495675%_
                 (lambda (_%$%g5231752469%_ _%$%g5231852471%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f 'val)
                                     (cons _%$%g5231852471%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (cons _%$%g5231752469%_
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
                           (cons _%$%g5231852471%_
                                 (cons _%$%g5231752469%_
                                       (cons (gx#datum->syntax '#f 'val)
                                             '()))))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9567695677%_
                 (lambda (_%$%g5232852408%_
                          _%$%g5232952410%_
                          _%$%g5233052411%_)
                   (cons (gx#datum->syntax '#f ':-)
                         (cons (cons (gx#datum->syntax '#f ':~)
                                     (cons _%$%g5233052411%_
                                           (cons _%$%g5232952410%_ '())))
                               (cons _%$%g5232852408%_ '()))))))
            (if (gx#stx-pair? _%__stx9567195672%_)
                (let ((_%$%e5231952439%_ (gx#syntax-e _%__stx9567195672%_)))
                  (let ((_%$%tl5232152446%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e5231952439%_)))
                        (_%$%hd5232052443%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e5231952439%_))))
                    (if (gx#stx-pair? _%$%tl5232152446%_)
                        (let ((_%$%e5232252449%_
                               (gx#syntax-e _%$%tl5232152446%_)))
                          (let ((_%$%tl5232452456%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e5232252449%_)))
                                (_%$%hd5232352453%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e5232252449%_))))
                            (if (gx#stx-pair? _%$%tl5232452456%_)
                                (let ((_%$%e5232552459%_
                                       (gx#syntax-e _%$%tl5232452456%_)))
                                  (let ((_%$%tl5232752466%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e5232552459%_)))
                                        (_%$%hd5232652463%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e5232552459%_))))
                                    (if (gx#stx-null? _%$%tl5232752466%_)
                                        (_%__kont9567495675%_
                                         _%$%hd5232652463%_
                                         _%$%hd5232352453%_)
                                        (if (gx#stx-pair? _%$%tl5232752466%_)
                                            (let ((_%$%e5234052388%_
                                                   (gx#syntax-e
                                                    _%$%tl5232752466%_)))
                                              (let ((_%$%tl5234252395%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e5234052388%_)))
                                                    (_%$%hd5234152392%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e5234052388%_))))
                                                (if (gx#identifier?
                                                     _%$%hd5234152392%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~TypeCast[1]#_g102384_|
                                                         _%$%hd5234152392%_)
                                                        (if (gx#stx-pair?
                                                             _%$%tl5234252395%_)
                                                            (let ((_%$%e5234352398%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%tl5234252395%_)))
                      (let ((_%$%tl5234552405%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5234352398%_)))
                            (_%$%hd5234452402%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5234352398%_))))
                        (if (gx#stx-null? _%$%tl5234552405%_)
                            (_%__kont9567695677%_
                             _%$%hd5234452402%_
                             _%$%hd5232652463%_
                             _%$%hd5232352453%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g5231552351%_)))))
                    (let () (declare (not safe)) (_%$%g5231552351%_)))
                (let () (declare (not safe)) (_%$%g5231552351%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5231552351%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5231552351%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g5231552351%_)))))
                        (let () (declare (not safe)) (_%$%g5231552351%_)))))
                (let () (declare (not safe)) (_%$%g5231552351%_)))))))
    (define |gerbil/core/contract~TypeCast[:0:]#::-|
      (lambda (_%$stx52490%_)
        (let ((_%$%g5249352500%_
               (lambda (_%$%g5249452496%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g5249452496%_))))
          (_%$%g5249352500%_ _%$stx52490%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:=|
      (lambda (_%$stx52504%_)
        (let ((_%$%g5250752514%_
               (lambda (_%$%g5250852510%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g5250852510%_))))
          (_%$%g5250752514%_ _%$stx52504%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#check-nil!|
      (lambda (_%$stx52518%_)
        (let* ((_%$%g5252252536%_
                (lambda (_%$%g5252352532%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g5252352532%_)))
               (_%$%g5252152577%_
                (lambda (_%$%g5252352540%_)
                  (if (gx#stx-pair? _%$%g5252352540%_)
                      (let ((_%$%e5252552543%_
                             (gx#syntax-e _%$%g5252352540%_)))
                        (let ((_%$%hd5252652547%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5252552543%_)))
                              (_%$%tl5252752550%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5252552543%_))))
                          (if (gx#stx-pair? _%$%tl5252752550%_)
                              (let ((_%$%e5252852553%_
                                     (gx#syntax-e _%$%tl5252752550%_)))
                                (let ((_%$%hd5252952557%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5252852553%_)))
                                      (_%$%tl5253052560%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5252852553%_))))
                                  (if (gx#stx-null? _%$%tl5253052560%_)
                                      (cons (gx#datum->syntax '#f 'or)
                                            (cons _%$%hd5252952557%_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'nil-dereference!)
                                                              (cons _%$%hd5252952557%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%g5252252536%_ _%$%g5252352540%_))))
                              (_%$%g5252252536%_ _%$%g5252352540%_))))
                      (_%$%g5252252536%_ _%$%g5252352540%_)))))
          (_%$%g5252152577%_ _%$stx52518%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#contract-violation!|
      (lambda (_%stx52581%_)
        (let* ((_%$%g5258452607%_
                (lambda (_%$%g5258552603%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g5258552603%_)))
               (_%$%g5258352731%_
                (lambda (_%$%g5258552611%_)
                  (if (gx#stx-pair? _%$%g5258552611%_)
                      (let ((_%$%e5259052614%_
                             (gx#syntax-e _%$%g5258552611%_)))
                        (let ((_%$%hd5259152618%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5259052614%_)))
                              (_%$%tl5259252621%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5259052614%_))))
                          (if (gx#stx-pair? _%$%tl5259252621%_)
                              (let ((_%$%e5259352624%_
                                     (gx#syntax-e _%$%tl5259252621%_)))
                                (let ((_%$%hd5259452628%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5259352624%_)))
                                      (_%$%tl5259552631%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5259352624%_))))
                                  (if (gx#stx-pair? _%$%tl5259552631%_)
                                      (let ((_%$%e5259652634%_
                                             (gx#syntax-e _%$%tl5259552631%_)))
                                        (let ((_%$%hd5259752638%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5259652634%_)))
                                              (_%$%tl5259852641%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5259652634%_))))
                                          (if (gx#stx-pair? _%$%tl5259852641%_)
                                              (let ((_%$%e5259952644%_
                                                     (gx#syntax-e
                                                      _%$%tl5259852641%_)))
                                                (let ((_%$%hd5260052648%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5259952644%_)))
                                                      (_%$%tl5260152651%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5259952644%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl5260152651%_)
                                                      (let* ((_%$%g5267852686%_
                                                              (lambda (_%$%g5267952682%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%$%g5267952682%_)))
                     (_%$%g5267752705%_
                      (lambda (_%$%g5267952690%_)
                        (cons (gx#datum->syntax '#f 'begin-annotation)
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           '@contract-violation)
                                          (cons _%$%g5267952690%_
                                                (cons _%$%hd5259752638%_
                                                      (cons _%$%hd5260052648%_
                                                            '()))))
                                    (cons (cons (gx#datum->syntax '#f 'abort!)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'raise-contract-violation-error)
                                                            (cons '"contract violation"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'context:
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%$%g5267952690%_ '()))
                                      (cons 'contract:
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'quote)
                                                        (cons _%$%hd5259752638%_
                                                              '()))
                                                  (cons 'value:
                                                        (cons _%$%hd5260052648%_
                                                              '()))))))))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))))))
                (_%$%g5267752705%_
                 (let ((_%$e52717%_
                        (let ((_%$e52709%_ (gx#stx-source _%$%hd5259452628%_)))
                          (if _%$e52709%_
                              _%$e52709%_
                              (let ((_%$e52713%_ (gx#stx-source _%stx52581%_)))
                                (if _%$e52713%_
                                    _%$e52713%_
                                    (gx#stx-source _%$%hd5259152618%_)))))))
                   (if _%$e52717%_
                       (call-with-output-string
                        '""
                        (lambda (_%$%g5272352725%_)
                          (let ()
                            (declare (not safe))
                            (##display-locat
                             _%$e52717%_
                             '#t
                             _%$%g5272352725%_))))
                       (gx#expander-context-id (gx#core-context-top))))))
              (_%$%g5258452607%_ _%$%g5258552611%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g5258452607%_
                                               _%$%g5258552611%_))))
                                      (_%$%g5258452607%_ _%$%g5258552611%_))))
                              (_%$%g5258452607%_ _%$%g5258552611%_))))
                      (_%$%g5258452607%_ _%$%g5258552611%_)))))
          (_%$%g5258352731%_ _%stx52581%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#runtime-contract-violation!|
      (lambda (_%stx52735%_)
        (let* ((_%$%g5273852761%_
                (lambda (_%$%g5273952757%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g5273952757%_)))
               (_%$%g5273752885%_
                (lambda (_%$%g5273952765%_)
                  (if (gx#stx-pair? _%$%g5273952765%_)
                      (let ((_%$%e5274452768%_
                             (gx#syntax-e _%$%g5273952765%_)))
                        (let ((_%$%hd5274552772%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5274452768%_)))
                              (_%$%tl5274652775%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5274452768%_))))
                          (if (gx#stx-pair? _%$%tl5274652775%_)
                              (let ((_%$%e5274752778%_
                                     (gx#syntax-e _%$%tl5274652775%_)))
                                (let ((_%$%hd5274852782%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5274752778%_)))
                                      (_%$%tl5274952785%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5274752778%_))))
                                  (if (gx#stx-pair? _%$%tl5274952785%_)
                                      (let ((_%$%e5275052788%_
                                             (gx#syntax-e _%$%tl5274952785%_)))
                                        (let ((_%$%hd5275152792%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5275052788%_)))
                                              (_%$%tl5275252795%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5275052788%_))))
                                          (if (gx#stx-pair? _%$%tl5275252795%_)
                                              (let ((_%$%e5275352798%_
                                                     (gx#syntax-e
                                                      _%$%tl5275252795%_)))
                                                (let ((_%$%hd5275452802%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5275352798%_)))
                                                      (_%$%tl5275552805%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5275352798%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl5275552805%_)
                                                      (let* ((_%$%g5283252840%_
                                                              (lambda (_%$%g5283352836%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%$%g5283352836%_)))
                     (_%$%g5283152859%_
                      (lambda (_%$%g5283352844%_)
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
                          (cons _%$%g5283352844%_ '()))
                    (cons 'contract:
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _%$%hd5275152792%_ '()))
                                (cons 'value:
                                      (cons _%$%hd5275452802%_ '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))))
                (_%$%g5283152859%_
                 (let ((_%$e52871%_
                        (let ((_%$e52863%_ (gx#stx-source _%$%hd5274852782%_)))
                          (if _%$e52863%_
                              _%$e52863%_
                              (let ((_%$e52867%_ (gx#stx-source _%stx52735%_)))
                                (if _%$e52867%_
                                    _%$e52867%_
                                    (gx#stx-source _%$%hd5274552772%_)))))))
                   (if _%$e52871%_
                       (call-with-output-string
                        '""
                        (lambda (_%$%g5287752879%_)
                          (let ()
                            (declare (not safe))
                            (##display-locat
                             _%$e52871%_
                             '#t
                             _%$%g5287752879%_))))
                       (gx#expander-context-id (gx#core-context-top))))))
              (_%$%g5273852761%_ _%$%g5273952765%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g5273852761%_
                                               _%$%g5273952765%_))))
                                      (_%$%g5273852761%_ _%$%g5273952765%_))))
                              (_%$%g5273852761%_ _%$%g5273952765%_))))
                      (_%$%g5273852761%_ _%$%g5273952765%_)))))
          (_%$%g5273752885%_ _%stx52735%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#nil-dereference!|
      (lambda (_%stx52889%_)
        (let* ((_%$%g5289252907%_
                (lambda (_%$%g5289352903%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g5289352903%_)))
               (_%$%g5289153003%_
                (lambda (_%$%g5289352911%_)
                  (if (gx#stx-pair? _%$%g5289352911%_)
                      (let ((_%$%e5289652914%_
                             (gx#syntax-e _%$%g5289352911%_)))
                        (let ((_%$%hd5289752918%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5289652914%_)))
                              (_%$%tl5289852921%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5289652914%_))))
                          (if (gx#stx-pair? _%$%tl5289852921%_)
                              (let ((_%$%e5289952924%_
                                     (gx#syntax-e _%$%tl5289852921%_)))
                                (let ((_%$%hd5290052928%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5289952924%_)))
                                      (_%$%tl5290152931%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5289952924%_))))
                                  (if (gx#stx-null? _%$%tl5290152931%_)
                                      (let* ((_%$%g5295052958%_
                                              (lambda (_%$%g5295152954%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%$%g5295152954%_)))
                                             (_%$%g5294952977%_
                                              (lambda (_%$%g5295152962%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'abort!)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'raise-contract-violation-error)
                          (cons '"nil (#f) derefence"
                                (cons 'context:
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%$%g5295152962%_ '()))
                                            (cons 'contract:
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'check-nil!)
                                  (cons _%$%hd5290052928%_ '()))
                            '()))
                (cons 'value: (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%$%g5294952977%_
                                         (let ((_%$e52989%_
                                                (let ((_%$e52981%_
                                                       (gx#stx-source
                                                        _%$%hd5290052928%_)))
                                                  (if _%$e52981%_
                                                      _%$e52981%_
                                                      (let ((_%$e52985%_
                                                             (gx#stx-source
                                                              _%stx52889%_)))
                                                        (if _%$e52985%_
                                                            _%$e52985%_
                                                            (gx#stx-source
                                                             _%$%hd5289752918%_)))))))
                                           (if _%$e52989%_
                                               (call-with-output-string
                                                '""
                                                (lambda (_%$%g5299552997%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (##display-locat
                                                     _%$e52989%_
                                                     '#t
                                                     _%$%g5299552997%_))))
                                               (gx#expander-context-id
                                                (gx#core-context-top))))))
                                      (_%$%g5289252907%_ _%$%g5289352911%_))))
                              (_%$%g5289252907%_ _%$%g5289352911%_))))
                      (_%$%g5289252907%_ _%$%g5289352911%_)))))
          (_%$%g5289153003%_ _%stx52889%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#abort!|
      (lambda (_%$stx53007%_)
        (let* ((_%$%g5301153025%_
                (lambda (_%$%g5301253021%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g5301253021%_)))
               (_%$%g5301053066%_
                (lambda (_%$%g5301253029%_)
                  (if (gx#stx-pair? _%$%g5301253029%_)
                      (let ((_%$%e5301453032%_
                             (gx#syntax-e _%$%g5301253029%_)))
                        (let ((_%$%hd5301553036%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5301453032%_)))
                              (_%$%tl5301653039%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5301453032%_))))
                          (if (gx#stx-pair? _%$%tl5301653039%_)
                              (let ((_%$%e5301753042%_
                                     (gx#syntax-e _%$%tl5301653039%_)))
                                (let ((_%$%hd5301853046%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5301753042%_)))
                                      (_%$%tl5301953049%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5301753042%_))))
                                  (if (gx#stx-null? _%$%tl5301953049%_)
                                      (cons (gx#datum->syntax
                                             '#f
                                             'begin-annotation)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '@abort)
                                                        '())
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'begin)
                                                              (cons _%$%hd5301853046%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'void) '())
                                  '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%g5301153025%_ _%$%g5301253029%_))))
                              (_%$%g5301153025%_ _%$%g5301253029%_))))
                      (_%$%g5301153025%_ _%$%g5301253029%_)))))
          (_%$%g5301053066%_ _%$stx53007%_))))))
