(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeCast[1]#_g102561_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypeCast[1]#_g102562_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypeCast[1]#_g102563_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/contract~TypeCast[:0:]#:|
      (lambda (_%stx51067%_)
        (let* ((_%__stx9561195612%_ _%stx51067%_)
               (_%$%g5107151104%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9561195612%_))))
          (let ((_%__kont9561495615%_
                 (lambda (_%$%g5107351353%_ _%$%g5107451355%_)
                   (let ((_%meta51370%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                             _%stx51067%_
                             _%$%g5107351353%_))))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/mop~MOP-2#class-type-info::t
                            _%meta51370%_))
                         (let* ((_%$%g5137551390%_
                                 (lambda (_%$%g5137651386%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%$%g5137651386%_)))
                                (_%$%g5137451437%_
                                 (lambda (_%$%g5137651394%_)
                                   (if (gx#stx-pair? _%$%g5137651394%_)
                                       (let ((_%$%e5137951397%_
                                              (gx#syntax-e _%$%g5137651394%_)))
                                         (let ((_%$%hd5138051401%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e5137951397%_)))
                                               (_%$%tl5138151404%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e5137951397%_))))
                                           (if (gx#stx-pair?
                                                _%$%tl5138151404%_)
                                               (let ((_%$%e5138251407%_
                                                      (gx#syntax-e
                                                       _%$%tl5138151404%_)))
                                                 (let ((_%$%hd5138351411%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e5138251407%_)))
                                                       (_%$%tl5138451414%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e5138251407%_))))
                                                   (if (gx#stx-null?
                                                        _%$%tl5138451414%_)
                                                       (if (let ((__tmp102558
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__obj102377 _%meta51370%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-direct-instance-of?
                                   __obj102377
                                   'gerbil/core#class-type-info::t))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   __obj102377
                                   '2
                                   '#f
                                   '#f))
                                (unchecked-slot-ref __obj102377 'id)))))
                     (declare (not safe))
                     (##memq __tmp102558 '(t void)))
                   (cons (gx#datum->syntax '#f 'begin-annotation)
                         (cons (cons (gx#datum->syntax '#f '@type)
                                     (cons _%$%hd5138051401%_ '()))
                               (cons _%$%g5107451355%_ '())))
                   (cons (gx#datum->syntax '#f 'begin-annotation)
                         (cons (cons (gx#datum->syntax '#f '@type)
                                     (cons _%$%hd5138051401%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'val)
                                                       (cons _%$%g5107451355%_
                                                             '()))
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'if)
                                                             (cons (cons _%$%hd5138351411%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (gx#datum->syntax '#f 'val) '()))
                           (cons (gx#datum->syntax '#f 'val)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'contract-violation!)
                                             (cons _%$%g5107451355%_
                                                   (cons (cons _%$%hd5138351411%_
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
               (_%$%g5137551390%_ _%$%g5137651394%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g5137551390%_
                                                _%$%g5137651394%_))))
                                       (_%$%g5137551390%_
                                        _%$%g5137651394%_)))))
                           (_%$%g5137451437%_
                            (list (let ((__obj102378 _%meta51370%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-direct-instance-of?
                                           __obj102378
                                           'gerbil/core#class-type-info::t))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __obj102378
                                           '4
                                           '#f
                                           '#f))
                                        (unchecked-slot-ref
                                         __obj102378
                                         'type-descriptor)))
                                  (let ((__obj102379 _%meta51370%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-direct-instance-of?
                                           __obj102379
                                           'gerbil/core#class-type-info::t))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __obj102379
                                           '15
                                           '#f
                                           '#f))
                                        (unchecked-slot-ref
                                         __obj102379
                                         'predicate))))))
                         (if (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/contract~InterfaceInfo#interface-info::t
                                _%meta51370%_))
                             (let* ((_%$%g5144351458%_
                                     (lambda (_%$%g5144451454%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%$%g5144451454%_)))
                                    (_%$%g5144251503%_
                                     (lambda (_%$%g5144451462%_)
                                       (if (gx#stx-pair? _%$%g5144451462%_)
                                           (let ((_%$%e5144751465%_
                                                  (gx#syntax-e
                                                   _%$%g5144451462%_)))
                                             (let ((_%$%hd5144851469%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e5144751465%_)))
                                                   (_%$%tl5144951472%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e5144751465%_))))
                                               (if (gx#stx-pair?
                                                    _%$%tl5144951472%_)
                                                   (let ((_%$%e5145051475%_
                                                          (gx#syntax-e
                                                           _%$%tl5144951472%_)))
                                                     (let ((_%$%hd5145151479%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e5145051475%_)))
                                                           (_%$%tl5145251482%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e5145051475%_))))
                                                       (if (gx#stx-null?
                                                            _%$%tl5145251482%_)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'begin-annotation)
                         (cons (cons (gx#datum->syntax '#f '@type)
                                     (cons _%$%hd5144851469%_ '()))
                               (cons (cons _%$%hd5145151479%_
                                           (cons _%$%g5107451355%_ '()))
                                     '())))
                   (_%$%g5144351458%_ _%$%g5144451462%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g5144351458%_
                                                    _%$%g5144451462%_))))
                                           (_%$%g5144351458%_
                                            _%$%g5144451462%_)))))
                               (_%$%g5144251503%_
                                (list (let ((__obj102376 _%meta51370%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj102376
                                               'gerbil/core#runtime-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj102376
                                               '3
                                               '#f
                                               '#f))
                                            (unchecked-slot-ref
                                             __obj102376
                                             'type-descriptor)))
                                      (let ()
                                        (declare (not safe))
                                        (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                         _%stx51067%_
                                         _%$%g5107351353%_)))))
                             (gx#raise-syntax-error
                              '#f
                              '"not a class type or interface"
                              _%stx51067%_
                              _%$%g5107351353%_))))))
                (_%__kont9561695617%_
                 (lambda (_%$%g5108451155%_ _%$%g5108551157%_)
                   (let ((_%meta51177%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                             _%stx51067%_
                             _%$%g5108451155%_))))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/mop~MOP-2#class-type-info::t
                            _%meta51177%_))
                         (let* ((_%$%g5118251197%_
                                 (lambda (_%$%g5118351193%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%$%g5118351193%_)))
                                (_%$%g5118151244%_
                                 (lambda (_%$%g5118351201%_)
                                   (if (gx#stx-pair? _%$%g5118351201%_)
                                       (let ((_%$%e5118651204%_
                                              (gx#syntax-e _%$%g5118351201%_)))
                                         (let ((_%$%hd5118751208%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e5118651204%_)))
                                               (_%$%tl5118851211%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e5118651204%_))))
                                           (if (gx#stx-pair?
                                                _%$%tl5118851211%_)
                                               (let ((_%$%e5118951214%_
                                                      (gx#syntax-e
                                                       _%$%tl5118851211%_)))
                                                 (let ((_%$%hd5119051218%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e5118951214%_)))
                                                       (_%$%tl5119151221%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e5118951214%_))))
                                                   (if (gx#stx-null?
                                                        _%$%tl5119151221%_)
                                                       (if (let ((__tmp102559
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__obj102381 _%meta51177%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-direct-instance-of?
                                   __obj102381
                                   'gerbil/core#class-type-info::t))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   __obj102381
                                   '2
                                   '#f
                                   '#f))
                                (unchecked-slot-ref __obj102381 'id)))))
                     (declare (not safe))
                     (##memq __tmp102559 '(t void)))
                   (cons (gx#datum->syntax '#f 'begin-annotation)
                         (cons (cons (gx#datum->syntax '#f '@type)
                                     (cons _%$%hd5118751208%_ '()))
                               (cons _%$%g5108551157%_ '())))
                   (cons (gx#datum->syntax '#f 'begin-annotation)
                         (cons (cons (gx#datum->syntax '#f '@type)
                                     (cons _%$%hd5118751208%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'val)
                                                       (cons _%$%g5108551157%_
                                                             '()))
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'if)
                                                             (cons (cons _%$%hd5119051218%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (gx#datum->syntax '#f 'val) '()))
                           (cons (gx#datum->syntax '#f 'val)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'runtime-contract-violation!)
                                             (cons _%$%g5108551157%_
                                                   (cons (cons _%$%hd5119051218%_
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
               (_%$%g5118251197%_ _%$%g5118351201%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g5118251197%_
                                                _%$%g5118351201%_))))
                                       (_%$%g5118251197%_
                                        _%$%g5118351201%_)))))
                           (_%$%g5118151244%_
                            (list (let ((__obj102382 _%meta51177%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-direct-instance-of?
                                           __obj102382
                                           'gerbil/core#class-type-info::t))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __obj102382
                                           '4
                                           '#f
                                           '#f))
                                        (unchecked-slot-ref
                                         __obj102382
                                         'type-descriptor)))
                                  (let ((__obj102383 _%meta51177%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-direct-instance-of?
                                           __obj102383
                                           'gerbil/core#class-type-info::t))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __obj102383
                                           '15
                                           '#f
                                           '#f))
                                        (unchecked-slot-ref
                                         __obj102383
                                         'predicate))))))
                         (if (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/contract~InterfaceInfo#interface-info::t
                                _%meta51177%_))
                             (let* ((_%$%g5125051265%_
                                     (lambda (_%$%g5125151261%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%$%g5125151261%_)))
                                    (_%$%g5124951310%_
                                     (lambda (_%$%g5125151269%_)
                                       (if (gx#stx-pair? _%$%g5125151269%_)
                                           (let ((_%$%e5125451272%_
                                                  (gx#syntax-e
                                                   _%$%g5125151269%_)))
                                             (let ((_%$%hd5125551276%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e5125451272%_)))
                                                   (_%$%tl5125651279%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e5125451272%_))))
                                               (if (gx#stx-pair?
                                                    _%$%tl5125651279%_)
                                                   (let ((_%$%e5125751282%_
                                                          (gx#syntax-e
                                                           _%$%tl5125651279%_)))
                                                     (let ((_%$%hd5125851286%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e5125751282%_)))
                                                           (_%$%tl5125951289%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e5125751282%_))))
                                                       (if (gx#stx-null?
                                                            _%$%tl5125951289%_)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'begin-annotation)
                         (cons (cons (gx#datum->syntax '#f '@type)
                                     (cons _%$%hd5125551276%_ '()))
                               (cons (cons _%$%hd5125851286%_
                                           (cons _%$%g5108551157%_ '()))
                                     '())))
                   (_%$%g5125051265%_ _%$%g5125151269%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g5125051265%_
                                                    _%$%g5125151269%_))))
                                           (_%$%g5125051265%_
                                            _%$%g5125151269%_)))))
                               (_%$%g5124951310%_
                                (list (let ((__obj102380 _%meta51177%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj102380
                                               'gerbil/core#runtime-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj102380
                                               '3
                                               '#f
                                               '#f))
                                            (unchecked-slot-ref
                                             __obj102380
                                             'type-descriptor)))
                                      (let ()
                                        (declare (not safe))
                                        (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                         _%stx51067%_
                                         _%$%g5108451155%_)))))
                             (gx#raise-syntax-error
                              '#f
                              '"not a class type or interface"
                              _%stx51067%_
                              _%$%g5108451155%_)))))))
            (let* ((_%__match9567095671%_
                    (lambda (_%$%e5108651111%_
                             _%$%hd5108751115%_
                             _%$%tl5108851118%_
                             _%$%e5108951121%_
                             _%$%hd5109051125%_
                             _%$%tl5109151128%_
                             _%$%e5109251131%_
                             _%$%hd5109351135%_
                             _%$%tl5109451138%_
                             _%$%e5109551141%_
                             _%$%e5109651145%_
                             _%$%hd5109751149%_
                             _%$%tl5109851152%_)
                      (let ((_%$%g5108451155%_ _%$%hd5109751149%_)
                            (_%$%g5108551157%_ _%$%hd5109051125%_))
                        (if (gx#identifier? _%$%g5108451155%_)
                            (_%__kont9561695617%_
                             _%$%g5108451155%_
                             _%$%g5108551157%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g5107151104%_))))))
                   (_%__match9563895639%_
                    (lambda (_%$%e5107551323%_
                             _%$%hd5107651327%_
                             _%$%tl5107751330%_
                             _%$%e5107851333%_
                             _%$%hd5107951337%_
                             _%$%tl5108051340%_
                             _%$%e5108151343%_
                             _%$%hd5108251347%_
                             _%$%tl5108351350%_)
                      (let ((_%$%g5107351353%_ _%$%hd5108251347%_)
                            (_%$%g5107451355%_ _%$%hd5107951337%_))
                        (if (gx#identifier? _%$%g5107351353%_)
                            (_%__kont9561495615%_
                             _%$%g5107351353%_
                             _%$%g5107451355%_)
                            (if (gx#stx-datum? _%$%hd5108251347%_)
                                (let ((_%$%e5109551141%_
                                       (gx#stx-e _%$%hd5108251347%_)))
                                  (declare (not safe))
                                  (_%$%g5107151104%_))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g5107151104%_))))))))
              (if (gx#stx-pair? _%__stx9561195612%_)
                  (let ((_%$%e5107551323%_ (gx#syntax-e _%__stx9561195612%_)))
                    (let ((_%$%tl5107751330%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5107551323%_)))
                          (_%$%hd5107651327%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5107551323%_))))
                      (if (gx#stx-pair? _%$%tl5107751330%_)
                          (let ((_%$%e5107851333%_
                                 (gx#syntax-e _%$%tl5107751330%_)))
                            (let ((_%$%tl5108051340%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5107851333%_)))
                                  (_%$%hd5107951337%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5107851333%_))))
                              (if (gx#stx-pair? _%$%tl5108051340%_)
                                  (let ((_%$%e5108151343%_
                                         (gx#syntax-e _%$%tl5108051340%_)))
                                    (let ((_%$%tl5108351350%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5108151343%_)))
                                          (_%$%hd5108251347%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5108151343%_))))
                                      (if (gx#stx-null? _%$%tl5108351350%_)
                                          (_%__match9563895639%_
                                           _%$%e5107551323%_
                                           _%$%hd5107651327%_
                                           _%$%tl5107751330%_
                                           _%$%e5107851333%_
                                           _%$%hd5107951337%_
                                           _%$%tl5108051340%_
                                           _%$%e5108151343%_
                                           _%$%hd5108251347%_
                                           _%$%tl5108351350%_)
                                          (if (gx#stx-datum?
                                               _%$%hd5108251347%_)
                                              (let ((_%$%e5109551141%_
                                                     (gx#stx-e
                                                      _%$%hd5108251347%_)))
                                                (if (equal? _%$%e5109551141%_
                                                            'runtime:)
                                                    (if (gx#stx-pair?
                                                         _%$%tl5108351350%_)
                                                        (let ((_%$%e5109651145%_
                                                               (gx#syntax-e
                                                                _%$%tl5108351350%_)))
                                                          (let ((_%$%tl5109851152%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e5109651145%_)))
                        (_%$%hd5109751149%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e5109651145%_))))
                    (if (gx#stx-null? _%$%tl5109851152%_)
                        (_%__match9567095671%_
                         _%$%e5107551323%_
                         _%$%hd5107651327%_
                         _%$%tl5107751330%_
                         _%$%e5107851333%_
                         _%$%hd5107951337%_
                         _%$%tl5108051340%_
                         _%$%e5108151343%_
                         _%$%hd5108251347%_
                         _%$%tl5108351350%_
                         _%$%e5109551141%_
                         _%$%e5109651145%_
                         _%$%hd5109751149%_
                         _%$%tl5109851152%_)
                        (let () (declare (not safe)) (_%$%g5107151104%_)))))
                (let () (declare (not safe)) (_%$%g5107151104%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5107151104%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5107151104%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5107151104%_)))))
                          (let () (declare (not safe)) (_%$%g5107151104%_)))))
                  (let () (declare (not safe)) (_%$%g5107151104%_))))))))
    (define |gerbil/core/contract~TypeCast[:0:]#:?|
      (lambda (_%stx51513%_)
        (let* ((_%$%g5151651534%_
                (lambda (_%$%g5151751530%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g5151751530%_)))
               (_%$%g5151551728%_
                (lambda (_%$%g5151751538%_)
                  (if (gx#stx-pair? _%$%g5151751538%_)
                      (let ((_%$%e5152051541%_
                             (gx#syntax-e _%$%g5151751538%_)))
                        (let ((_%$%hd5152151545%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5152051541%_)))
                              (_%$%tl5152251548%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5152051541%_))))
                          (if (gx#stx-pair? _%$%tl5152251548%_)
                              (let ((_%$%e5152351551%_
                                     (gx#syntax-e _%$%tl5152251548%_)))
                                (let ((_%$%hd5152451555%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5152351551%_)))
                                      (_%$%tl5152551558%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5152351551%_))))
                                  (if (gx#stx-pair? _%$%tl5152551558%_)
                                      (let ((_%$%e5152651561%_
                                             (gx#syntax-e _%$%tl5152551558%_)))
                                        (let ((_%$%hd5152751565%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5152651561%_)))
                                              (_%$%tl5152851568%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5152651561%_))))
                                          (if (gx#stx-null? _%$%tl5152851568%_)
                                              (if (gx#identifier?
                                                   _%$%hd5152751565%_)
                                                  (let ((_%meta51589%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                            _%stx51513%_
                                                            _%$%hd5152751565%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (class-instance?
                                                           gerbil/core/mop~MOP-2#class-type-info::t
                                                           _%meta51589%_))
                                                        (let* ((_%$%g5159451609%_
                                                                (lambda (_%$%g5159551605%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%$%g5159551605%_)))
                       (_%$%g5159351656%_
                        (lambda (_%$%g5159551613%_)
                          (if (gx#stx-pair? _%$%g5159551613%_)
                              (let ((_%$%e5159851616%_
                                     (gx#syntax-e _%$%g5159551613%_)))
                                (let ((_%$%hd5159951620%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5159851616%_)))
                                      (_%$%tl5160051623%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5159851616%_))))
                                  (if (gx#stx-pair? _%$%tl5160051623%_)
                                      (let ((_%$%e5160151626%_
                                             (gx#syntax-e _%$%tl5160051623%_)))
                                        (let ((_%$%hd5160251630%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5160151626%_)))
                                              (_%$%tl5160351633%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5160151626%_))))
                                          (if (gx#stx-null? _%$%tl5160351633%_)
                                              (if (let ((__tmp102560
                                                         (let ((__obj102385
                                                                _%meta51589%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##structure-direct-instance-of?
                          __obj102385
                          'gerbil/core#class-type-info::t))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref __obj102385 '2 '#f '#f))
                       (unchecked-slot-ref __obj102385 'id)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (##memq __tmp102560
                                                            '(t void)))
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'begin-annotation)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '@type)
                            (cons _%$%hd5159951620%_ '()))
                      (cons _%$%hd5152451555%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'begin-annotation)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '@type)
                            (cons _%$%hd5159951620%_ '()))
                      (cons (cons (gx#datum->syntax '#f 'let)
                                  (cons (cons (gx#datum->syntax '#f 'val)
                                              (cons _%$%hd5152451555%_ '()))
                                        (cons (cons (gx#datum->syntax '#f 'if)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'or)
                        (cons (cons (gx#datum->syntax '#f 'not)
                                    (cons (gx#datum->syntax '#f 'val) '()))
                              (cons (cons _%$%hd5160251630%_
                                          (cons (gx#datum->syntax '#f 'val)
                                                '()))
                                    '())))
                  (cons (gx#datum->syntax '#f 'val)
                        (cons (cons (gx#datum->syntax '#f 'contract-violation!)
                                    (cons _%$%hd5152451555%_
                                          (cons (cons _%$%hd5160251630%_
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
                                              (_%$%g5159451609%_
                                               _%$%g5159551613%_))))
                                      (_%$%g5159451609%_ _%$%g5159551613%_))))
                              (_%$%g5159451609%_ _%$%g5159551613%_)))))
                  (_%$%g5159351656%_
                   (list (let ((__obj102386 _%meta51589%_))
                           (if (let ()
                                 (declare (not safe))
                                 (##structure-direct-instance-of?
                                  __obj102386
                                  'gerbil/core#class-type-info::t))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  __obj102386
                                  '4
                                  '#f
                                  '#f))
                               (unchecked-slot-ref
                                __obj102386
                                'type-descriptor)))
                         (let ((__obj102387 _%meta51589%_))
                           (if (let ()
                                 (declare (not safe))
                                 (##structure-direct-instance-of?
                                  __obj102387
                                  'gerbil/core#class-type-info::t))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  __obj102387
                                  '15
                                  '#f
                                  '#f))
                               (unchecked-slot-ref __obj102387 'predicate))))))
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       gerbil/core/contract~InterfaceInfo#interface-info::t
                       _%meta51589%_))
                    (let* ((_%$%g5166251677%_
                            (lambda (_%$%g5166351673%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g5166351673%_)))
                           (_%$%g5166151722%_
                            (lambda (_%$%g5166351681%_)
                              (if (gx#stx-pair? _%$%g5166351681%_)
                                  (let ((_%$%e5166651684%_
                                         (gx#syntax-e _%$%g5166351681%_)))
                                    (let ((_%$%hd5166751688%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5166651684%_)))
                                          (_%$%tl5166851691%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5166651684%_))))
                                      (if (gx#stx-pair? _%$%tl5166851691%_)
                                          (let ((_%$%e5166951694%_
                                                 (gx#syntax-e
                                                  _%$%tl5166851691%_)))
                                            (let ((_%$%hd5167051698%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5166951694%_)))
                                                  (_%$%tl5167151701%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5166951694%_))))
                                              (if (gx#stx-null?
                                                   _%$%tl5167151701%_)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'begin-annotation)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '@type)
                            (cons _%$%hd5166751688%_ '()))
                      (cons (cons (gx#datum->syntax '#f 'let)
                                  (cons (cons (gx#datum->syntax '#f 'val)
                                              (cons _%$%hd5152451555%_ '()))
                                        (cons (cons (gx#datum->syntax '#f 'and)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'val)
                                                          (cons (cons _%$%hd5167051698%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f 'val) '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g5166251677%_
                                                   _%$%g5166351681%_))))
                                          (_%$%g5166251677%_
                                           _%$%g5166351681%_))))
                                  (_%$%g5166251677%_ _%$%g5166351681%_)))))
                      (_%$%g5166151722%_
                       (list (let ((__obj102384 _%meta51589%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj102384
                                      'gerbil/core#runtime-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj102384
                                      '3
                                      '#f
                                      '#f))
                                   (unchecked-slot-ref
                                    __obj102384
                                    'type-descriptor)))
                             (let ()
                               (declare (not safe))
                               (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                _%stx51513%_
                                _%$%hd5152751565%_)))))
                    (gx#raise-syntax-error
                     '#f
                     '"not a class type or interface"
                     _%stx51513%_
                     _%$%hd5152751565%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g5151651534%_
                                                   _%$%g5151751538%_))
                                              (_%$%g5151651534%_
                                               _%$%g5151751538%_))))
                                      (_%$%g5151651534%_ _%$%g5151751538%_))))
                              (_%$%g5151651534%_ _%$%g5151751538%_))))
                      (_%$%g5151651534%_ _%$%g5151751538%_)))))
          (_%$%g5151551728%_ _%stx51513%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:-|
      (lambda (_%stx51732%_)
        (let* ((_%$%g5173551753%_
                (lambda (_%$%g5173651749%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g5173651749%_)))
               (_%$%g5173451839%_
                (lambda (_%$%g5173651757%_)
                  (if (gx#stx-pair? _%$%g5173651757%_)
                      (let ((_%$%e5173951760%_
                             (gx#syntax-e _%$%g5173651757%_)))
                        (let ((_%$%hd5174051764%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5173951760%_)))
                              (_%$%tl5174151767%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5173951760%_))))
                          (if (gx#stx-pair? _%$%tl5174151767%_)
                              (let ((_%$%e5174251770%_
                                     (gx#syntax-e _%$%tl5174151767%_)))
                                (let ((_%$%hd5174351774%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5174251770%_)))
                                      (_%$%tl5174451777%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5174251770%_))))
                                  (if (gx#stx-pair? _%$%tl5174451777%_)
                                      (let ((_%$%e5174551780%_
                                             (gx#syntax-e _%$%tl5174451777%_)))
                                        (let ((_%$%hd5174651784%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5174551780%_)))
                                              (_%$%tl5174751787%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5174551780%_))))
                                          (if (gx#stx-null? _%$%tl5174751787%_)
                                              (if (gx#identifier?
                                                   _%$%hd5174651784%_)
                                                  (let* ((_%$%g5180851816%_
                                                          (lambda (_%$%g5180951812%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%$%g5180951812%_)))
                                                         (_%$%g5180751835%_
                                                          (lambda (_%$%g5180951820%_)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@type)
                                      (cons _%$%g5180951820%_ '()))
                                (cons _%$%hd5174351774%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g5180751835%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                                        _%stx51732%_
                                                        _%$%hd5174651784%_))))
                                                  (_%$%g5173551753%_
                                                   _%$%g5173651757%_))
                                              (_%$%g5173551753%_
                                               _%$%g5173651757%_))))
                                      (_%$%g5173551753%_ _%$%g5173651757%_))))
                              (_%$%g5173551753%_ _%$%g5173651757%_))))
                      (_%$%g5173551753%_ _%$%g5173651757%_)))))
          (_%$%g5173451839%_ _%stx51732%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#do-with-lock|
      (lambda (_%$stx51843%_)
        (let* ((_%__stx9567395674%_ _%$stx51843%_)
               (_%$%g5184951933%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9567395674%_))))
          (let ((_%__kont9567695677%_
                 (lambda (_%$%g5185152237%_
                          _%$%g5185252239%_
                          _%$%g5185352240%_
                          _%$%g5185452241%_)
                   (cons (gx#datum->syntax '#f ':-)
                         (cons (cons (gx#datum->syntax '#f 'do-with-lock)
                                     (cons _%$%g5185452241%_
                                           (cons _%$%g5185252239%_
                                                 (foldr (lambda (_%$%g5226552268%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g5226652271%_)
                  (cons _%$%g5226552268%_ _%$%g5226652271%_))
                '()
                _%$%g5185152237%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%$%g5185352240%_ '())))))
                (_%__kont9568095681%_
                 (lambda (_%$%g5187952115%_
                          _%$%g5188052117%_
                          _%$%g5188152118%_
                          _%$%g5188252119%_)
                   (cons (gx#datum->syntax '#f ':)
                         (cons (cons (gx#datum->syntax '#f 'do-with-lock)
                                     (cons _%$%g5188252119%_
                                           (cons _%$%g5188052117%_
                                                 (foldr (lambda (_%$%g5214352146%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g5214452149%_)
                  (cons _%$%g5214352146%_ _%$%g5214452149%_))
                '()
                _%$%g5187952115%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%$%g5188152118%_ '())))))
                (_%__kont9568495685%_
                 (lambda (_%$%g5190751998%_
                          _%$%g5190852000%_
                          _%$%g5190952001%_)
                   (cons (gx#datum->syntax '#f 'with-lock)
                         (cons _%$%g5190952001%_
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons '()
                                                 (cons _%$%g5190852000%_
                                                       (foldr (lambda (_%$%g5202152024%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%g5202252027%_)
                        (cons _%$%g5202152024%_ _%$%g5202252027%_))
                      '()
                      _%$%g5190751998%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match9579895799%_
                    (lambda (_%$%e5191051940%_
                             _%$%hd5191151944%_
                             _%$%tl5191251947%_
                             _%$%e5191351950%_
                             _%$%hd5191451954%_
                             _%$%tl5191551957%_
                             _%$%e5191651960%_
                             _%$%hd5191751964%_
                             _%$%tl5191851967%_
                             _%__splice9568695687%_
                             _%$%target5191951970%_
                             _%$%tl5192151973%_)
                      (letrec ((_%$%loop5192251976%_
                                (lambda (_%$%hd5192051980%_
                                         _%$%rest5192651983%_)
                                  (if (gx#stx-pair? _%$%hd5192051980%_)
                                      (let ((_%$%e5192351985%_
                                             (gx#syntax-e _%$%hd5192051980%_)))
                                        (let ((_%$%lp-tl5192551992%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5192351985%_)))
                                              (_%$%lp-hd5192451989%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5192351985%_))))
                                          (_%$%loop5192251976%_
                                           _%$%lp-tl5192551992%_
                                           (cons _%$%lp-hd5192451989%_
                                                 _%$%rest5192651983%_))))
                                      (let ((_%$%rest5192751995%_
                                             (reverse _%$%rest5192651983%_)))
                                        (_%__kont9568495685%_
                                         _%$%rest5192751995%_
                                         _%$%hd5191751964%_
                                         _%$%hd5191451954%_))))))
                        (_%$%loop5192251976%_ _%$%target5191951970%_ '()))))
                   (_%__match9577295773%_
                    (lambda (_%$%e5188352037%_
                             _%$%hd5188452041%_
                             _%$%tl5188552044%_
                             _%$%e5188652047%_
                             _%$%hd5188752051%_
                             _%$%tl5188852054%_
                             _%$%e5188952057%_
                             _%$%hd5189052061%_
                             _%$%tl5189152064%_
                             _%$%e5189252067%_
                             _%$%hd5189352071%_
                             _%$%tl5189452074%_
                             _%$%e5189552077%_
                             _%$%hd5189652081%_
                             _%$%tl5189752084%_
                             _%__splice9568295683%_
                             _%$%target5189852087%_
                             _%$%tl5190052090%_)
                      (letrec ((_%$%loop5190152093%_
                                (lambda (_%$%hd5189952097%_
                                         _%$%rest5190552100%_)
                                  (if (gx#stx-pair? _%$%hd5189952097%_)
                                      (let ((_%$%e5190252102%_
                                             (gx#syntax-e _%$%hd5189952097%_)))
                                        (let ((_%$%lp-tl5190452109%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5190252102%_)))
                                              (_%$%lp-hd5190352106%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5190252102%_))))
                                          (_%$%loop5190152093%_
                                           _%$%lp-tl5190452109%_
                                           (cons _%$%lp-hd5190352106%_
                                                 _%$%rest5190552100%_))))
                                      (let ((_%$%rest5190652112%_
                                             (reverse _%$%rest5190552100%_)))
                                        (_%__kont9568095681%_
                                         _%$%rest5190652112%_
                                         _%$%hd5189652081%_
                                         _%$%hd5189352071%_
                                         _%$%hd5188752051%_))))))
                        (_%$%loop5190152093%_ _%$%target5189852087%_ '()))))
                   (_%__match9573095731%_
                    (lambda (_%$%e5185552159%_
                             _%$%hd5185652163%_
                             _%$%tl5185752166%_
                             _%$%e5185852169%_
                             _%$%hd5185952173%_
                             _%$%tl5186052176%_
                             _%$%e5186152179%_
                             _%$%hd5186252183%_
                             _%$%tl5186352186%_
                             _%$%e5186452189%_
                             _%$%hd5186552193%_
                             _%$%tl5186652196%_
                             _%$%e5186752199%_
                             _%$%hd5186852203%_
                             _%$%tl5186952206%_
                             _%__splice9567895679%_
                             _%$%target5187052209%_
                             _%$%tl5187252212%_)
                      (letrec ((_%$%loop5187352215%_
                                (lambda (_%$%hd5187152219%_
                                         _%$%rest5187752222%_)
                                  (if (gx#stx-pair? _%$%hd5187152219%_)
                                      (let ((_%$%e5187452224%_
                                             (gx#syntax-e _%$%hd5187152219%_)))
                                        (let ((_%$%lp-tl5187652231%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5187452224%_)))
                                              (_%$%lp-hd5187552228%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5187452224%_))))
                                          (_%$%loop5187352215%_
                                           _%$%lp-tl5187652231%_
                                           (cons _%$%lp-hd5187552228%_
                                                 _%$%rest5187752222%_))))
                                      (let ((_%$%rest5187852234%_
                                             (reverse _%$%rest5187752222%_)))
                                        (_%__kont9567695677%_
                                         _%$%rest5187852234%_
                                         _%$%hd5186852203%_
                                         _%$%hd5186552193%_
                                         _%$%hd5185952173%_))))))
                        (_%$%loop5187352215%_ _%$%target5187052209%_ '())))))
              (if (gx#stx-pair? _%__stx9567395674%_)
                  (let ((_%$%e5185552159%_ (gx#syntax-e _%__stx9567395674%_)))
                    (let ((_%$%tl5185752166%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5185552159%_)))
                          (_%$%hd5185652163%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5185552159%_))))
                      (if (gx#stx-pair? _%$%tl5185752166%_)
                          (let ((_%$%e5185852169%_
                                 (gx#syntax-e _%$%tl5185752166%_)))
                            (let ((_%$%tl5186052176%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5185852169%_)))
                                  (_%$%hd5185952173%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5185852169%_))))
                              (if (gx#stx-pair? _%$%tl5186052176%_)
                                  (let ((_%$%e5186152179%_
                                         (gx#syntax-e _%$%tl5186052176%_)))
                                    (let ((_%$%tl5186352186%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5186152179%_)))
                                          (_%$%hd5186252183%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5186152179%_))))
                                      (if (gx#identifier? _%$%hd5186252183%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/contract~TypeCast[1]#_g102561_|
                                               _%$%hd5186252183%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl5186352186%_)
                                                  (let ((_%$%e5186452189%_
                                                         (gx#syntax-e
                                                          _%$%tl5186352186%_)))
                                                    (let ((_%$%tl5186652196%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5186452189%_)))
                                                          (_%$%hd5186552193%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5186452189%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl5186652196%_)
                                                          (let ((_%$%e5186752199%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl5186652196%_)))
                    (let ((_%$%tl5186952206%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5186752199%_)))
                          (_%$%hd5186852203%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5186752199%_))))
                      (if (gx#stx-pair/null? _%$%tl5186952206%_)
                          (let ((_%__splice9567895679%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5186952206%_
                                  '0)))
                            (let ((_%$%tl5187252212%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9567895679%_ '1)))
                                  (_%$%target5187052209%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9567895679%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5187252212%_)
                                  (_%__match9573095731%_
                                   _%$%e5185552159%_
                                   _%$%hd5185652163%_
                                   _%$%tl5185752166%_
                                   _%$%e5185852169%_
                                   _%$%hd5185952173%_
                                   _%$%tl5186052176%_
                                   _%$%e5186152179%_
                                   _%$%hd5186252183%_
                                   _%$%tl5186352186%_
                                   _%$%e5186452189%_
                                   _%$%hd5186552193%_
                                   _%$%tl5186652196%_
                                   _%$%e5186752199%_
                                   _%$%hd5186852203%_
                                   _%$%tl5186952206%_
                                   _%__splice9567895679%_
                                   _%$%target5187052209%_
                                   _%$%tl5187252212%_)
                                  (if (gx#stx-pair/null? _%$%tl5186352186%_)
                                      (let ((_%__splice9568695687%_
                                             (gx#syntax-split-splice->vector
                                              _%$%tl5186352186%_
                                              '0)))
                                        (let ((_%$%tl5192151973%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9568695687%_
                                                  '1)))
                                              (_%$%target5191951970%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9568695687%_
                                                  '0))))
                                          (if (gx#stx-null? _%$%tl5192151973%_)
                                              (_%__match9579895799%_
                                               _%$%e5185552159%_
                                               _%$%hd5185652163%_
                                               _%$%tl5185752166%_
                                               _%$%e5185852169%_
                                               _%$%hd5185952173%_
                                               _%$%tl5186052176%_
                                               _%$%e5186152179%_
                                               _%$%hd5186252183%_
                                               _%$%tl5186352186%_
                                               _%__splice9568695687%_
                                               _%$%target5191951970%_
                                               _%$%tl5192151973%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5184951933%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5184951933%_))))))
                          (if (gx#stx-pair/null? _%$%tl5186352186%_)
                              (let ((_%__splice9568695687%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl5186352186%_
                                      '0)))
                                (let ((_%$%tl5192151973%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9568695687%_
                                          '1)))
                                      (_%$%target5191951970%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9568695687%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl5192151973%_)
                                      (_%__match9579895799%_
                                       _%$%e5185552159%_
                                       _%$%hd5185652163%_
                                       _%$%tl5185752166%_
                                       _%$%e5185852169%_
                                       _%$%hd5185952173%_
                                       _%$%tl5186052176%_
                                       _%$%e5186152179%_
                                       _%$%hd5186252183%_
                                       _%$%tl5186352186%_
                                       _%__splice9568695687%_
                                       _%$%target5191951970%_
                                       _%$%tl5192151973%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5184951933%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5184951933%_))))))
                  (if (gx#stx-pair/null? _%$%tl5186352186%_)
                      (let ((_%__splice9568695687%_
                             (gx#syntax-split-splice->vector
                              _%$%tl5186352186%_
                              '0)))
                        (let ((_%$%tl5192151973%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9568695687%_ '1)))
                              (_%$%target5191951970%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9568695687%_ '0))))
                          (if (gx#stx-null? _%$%tl5192151973%_)
                              (_%__match9579895799%_
                               _%$%e5185552159%_
                               _%$%hd5185652163%_
                               _%$%tl5185752166%_
                               _%$%e5185852169%_
                               _%$%hd5185952173%_
                               _%$%tl5186052176%_
                               _%$%e5186152179%_
                               _%$%hd5186252183%_
                               _%$%tl5186352186%_
                               _%__splice9568695687%_
                               _%$%target5191951970%_
                               _%$%tl5192151973%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g5184951933%_)))))
                      (let () (declare (not safe)) (_%$%g5184951933%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5186352186%_)
                                                      (let ((_%__splice9568695687%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5186352186%_
                                                              '0)))
                                                        (let ((_%$%tl5192151973%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9568695687%_ '1)))
                      (_%$%target5191951970%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9568695687%_ '0))))
                  (if (gx#stx-null? _%$%tl5192151973%_)
                      (_%__match9579895799%_
                       _%$%e5185552159%_
                       _%$%hd5185652163%_
                       _%$%tl5185752166%_
                       _%$%e5185852169%_
                       _%$%hd5185952173%_
                       _%$%tl5186052176%_
                       _%$%e5186152179%_
                       _%$%hd5186252183%_
                       _%$%tl5186352186%_
                       _%__splice9568695687%_
                       _%$%target5191951970%_
                       _%$%tl5192151973%_)
                      (let () (declare (not safe)) (_%$%g5184951933%_)))))
              (let () (declare (not safe)) (_%$%g5184951933%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~TypeCast[1]#_g102562_|
                                                   _%$%hd5186252183%_)
                                                  (if (gx#stx-pair?
                                                       _%$%tl5186352186%_)
                                                      (let ((_%$%e5189252067%_
                                                             (gx#syntax-e
                                                              _%$%tl5186352186%_)))
                                                        (let ((_%$%tl5189452074%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e5189252067%_)))
                      (_%$%hd5189352071%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e5189252067%_))))
                  (if (gx#stx-pair? _%$%tl5189452074%_)
                      (let ((_%$%e5189552077%_
                             (gx#syntax-e _%$%tl5189452074%_)))
                        (let ((_%$%tl5189752084%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5189552077%_)))
                              (_%$%hd5189652081%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5189552077%_))))
                          (if (gx#stx-pair/null? _%$%tl5189752084%_)
                              (let ((_%__splice9568295683%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl5189752084%_
                                      '0)))
                                (let ((_%$%tl5190052090%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9568295683%_
                                          '1)))
                                      (_%$%target5189852087%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9568295683%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl5190052090%_)
                                      (_%__match9577295773%_
                                       _%$%e5185552159%_
                                       _%$%hd5185652163%_
                                       _%$%tl5185752166%_
                                       _%$%e5185852169%_
                                       _%$%hd5185952173%_
                                       _%$%tl5186052176%_
                                       _%$%e5186152179%_
                                       _%$%hd5186252183%_
                                       _%$%tl5186352186%_
                                       _%$%e5189252067%_
                                       _%$%hd5189352071%_
                                       _%$%tl5189452074%_
                                       _%$%e5189552077%_
                                       _%$%hd5189652081%_
                                       _%$%tl5189752084%_
                                       _%__splice9568295683%_
                                       _%$%target5189852087%_
                                       _%$%tl5190052090%_)
                                      (if (gx#stx-pair/null?
                                           _%$%tl5186352186%_)
                                          (let ((_%__splice9568695687%_
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl5186352186%_
                                                  '0)))
                                            (let ((_%$%tl5192151973%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9568695687%_
                                                      '1)))
                                                  (_%$%target5191951970%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9568695687%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%$%tl5192151973%_)
                                                  (_%__match9579895799%_
                                                   _%$%e5185552159%_
                                                   _%$%hd5185652163%_
                                                   _%$%tl5185752166%_
                                                   _%$%e5185852169%_
                                                   _%$%hd5185952173%_
                                                   _%$%tl5186052176%_
                                                   _%$%e5186152179%_
                                                   _%$%hd5186252183%_
                                                   _%$%tl5186352186%_
                                                   _%__splice9568695687%_
                                                   _%$%target5191951970%_
                                                   _%$%tl5192151973%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5184951933%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5184951933%_))))))
                              (if (gx#stx-pair/null? _%$%tl5186352186%_)
                                  (let ((_%__splice9568695687%_
                                         (gx#syntax-split-splice->vector
                                          _%$%tl5186352186%_
                                          '0)))
                                    (let ((_%$%tl5192151973%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9568695687%_
                                              '1)))
                                          (_%$%target5191951970%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9568695687%_
                                              '0))))
                                      (if (gx#stx-null? _%$%tl5192151973%_)
                                          (_%__match9579895799%_
                                           _%$%e5185552159%_
                                           _%$%hd5185652163%_
                                           _%$%tl5185752166%_
                                           _%$%e5185852169%_
                                           _%$%hd5185952173%_
                                           _%$%tl5186052176%_
                                           _%$%e5186152179%_
                                           _%$%hd5186252183%_
                                           _%$%tl5186352186%_
                                           _%__splice9568695687%_
                                           _%$%target5191951970%_
                                           _%$%tl5192151973%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5184951933%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5184951933%_))))))
                      (if (gx#stx-pair/null? _%$%tl5186352186%_)
                          (let ((_%__splice9568695687%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5186352186%_
                                  '0)))
                            (let ((_%$%tl5192151973%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9568695687%_ '1)))
                                  (_%$%target5191951970%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9568695687%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5192151973%_)
                                  (_%__match9579895799%_
                                   _%$%e5185552159%_
                                   _%$%hd5185652163%_
                                   _%$%tl5185752166%_
                                   _%$%e5185852169%_
                                   _%$%hd5185952173%_
                                   _%$%tl5186052176%_
                                   _%$%e5186152179%_
                                   _%$%hd5186252183%_
                                   _%$%tl5186352186%_
                                   _%__splice9568695687%_
                                   _%$%target5191951970%_
                                   _%$%tl5192151973%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5184951933%_)))))
                          (let () (declare (not safe)) (_%$%g5184951933%_))))))
              (if (gx#stx-pair/null? _%$%tl5186352186%_)
                  (let ((_%__splice9568695687%_
                         (gx#syntax-split-splice->vector
                          _%$%tl5186352186%_
                          '0)))
                    (let ((_%$%tl5192151973%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9568695687%_ '1)))
                          (_%$%target5191951970%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9568695687%_ '0))))
                      (if (gx#stx-null? _%$%tl5192151973%_)
                          (_%__match9579895799%_
                           _%$%e5185552159%_
                           _%$%hd5185652163%_
                           _%$%tl5185752166%_
                           _%$%e5185852169%_
                           _%$%hd5185952173%_
                           _%$%tl5186052176%_
                           _%$%e5186152179%_
                           _%$%hd5186252183%_
                           _%$%tl5186352186%_
                           _%__splice9568695687%_
                           _%$%target5191951970%_
                           _%$%tl5192151973%_)
                          (let () (declare (not safe)) (_%$%g5184951933%_)))))
                  (let () (declare (not safe)) (_%$%g5184951933%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5186352186%_)
                                                      (let ((_%__splice9568695687%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5186352186%_
                                                              '0)))
                                                        (let ((_%$%tl5192151973%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9568695687%_ '1)))
                      (_%$%target5191951970%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9568695687%_ '0))))
                  (if (gx#stx-null? _%$%tl5192151973%_)
                      (_%__match9579895799%_
                       _%$%e5185552159%_
                       _%$%hd5185652163%_
                       _%$%tl5185752166%_
                       _%$%e5185852169%_
                       _%$%hd5185952173%_
                       _%$%tl5186052176%_
                       _%$%e5186152179%_
                       _%$%hd5186252183%_
                       _%$%tl5186352186%_
                       _%__splice9568695687%_
                       _%$%target5191951970%_
                       _%$%tl5192151973%_)
                      (let () (declare (not safe)) (_%$%g5184951933%_)))))
              (let () (declare (not safe)) (_%$%g5184951933%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%$%tl5186352186%_)
                                              (let ((_%__splice9568695687%_
                                                     (gx#syntax-split-splice->vector
                                                      _%$%tl5186352186%_
                                                      '0)))
                                                (let ((_%$%tl5192151973%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9568695687%_
                                                          '1)))
                                                      (_%$%target5191951970%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9568695687%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%$%tl5192151973%_)
                                                      (_%__match9579895799%_
                                                       _%$%e5185552159%_
                                                       _%$%hd5185652163%_
                                                       _%$%tl5185752166%_
                                                       _%$%e5185852169%_
                                                       _%$%hd5185952173%_
                                                       _%$%tl5186052176%_
                                                       _%$%e5186152179%_
                                                       _%$%hd5186252183%_
                                                       _%$%tl5186352186%_
                                                       _%__splice9568695687%_
                                                       _%$%target5191951970%_
                                                       _%$%tl5192151973%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g5184951933%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5184951933%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5184951933%_)))))
                          (let () (declare (not safe)) (_%$%g5184951933%_)))))
                  (let () (declare (not safe)) (_%$%g5184951933%_))))))))
    (define |gerbil/core/contract~TypeCast[:0:]#:~|
      (lambda (_%$stx52281%_)
        (let* ((_%__stx9580195802%_ _%$stx52281%_)
               (_%$%g5228652322%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9580195802%_))))
          (let ((_%__kont9580495805%_
                 (lambda (_%$%g5228852440%_ _%$%g5228952442%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f 'val)
                                     (cons _%$%g5228952442%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (cons _%$%g5228852440%_
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
                           (cons _%$%g5228952442%_
                                 (cons _%$%g5228852440%_
                                       (cons (gx#datum->syntax '#f 'val)
                                             '()))))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9580695807%_
                 (lambda (_%$%g5229952379%_
                          _%$%g5230052381%_
                          _%$%g5230152382%_)
                   (cons (gx#datum->syntax '#f ':-)
                         (cons (cons (gx#datum->syntax '#f ':~)
                                     (cons _%$%g5230152382%_
                                           (cons _%$%g5230052381%_ '())))
                               (cons _%$%g5229952379%_ '()))))))
            (if (gx#stx-pair? _%__stx9580195802%_)
                (let ((_%$%e5229052410%_ (gx#syntax-e _%__stx9580195802%_)))
                  (let ((_%$%tl5229252417%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e5229052410%_)))
                        (_%$%hd5229152414%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e5229052410%_))))
                    (if (gx#stx-pair? _%$%tl5229252417%_)
                        (let ((_%$%e5229352420%_
                               (gx#syntax-e _%$%tl5229252417%_)))
                          (let ((_%$%tl5229552427%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e5229352420%_)))
                                (_%$%hd5229452424%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e5229352420%_))))
                            (if (gx#stx-pair? _%$%tl5229552427%_)
                                (let ((_%$%e5229652430%_
                                       (gx#syntax-e _%$%tl5229552427%_)))
                                  (let ((_%$%tl5229852437%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e5229652430%_)))
                                        (_%$%hd5229752434%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e5229652430%_))))
                                    (if (gx#stx-null? _%$%tl5229852437%_)
                                        (_%__kont9580495805%_
                                         _%$%hd5229752434%_
                                         _%$%hd5229452424%_)
                                        (if (gx#stx-pair? _%$%tl5229852437%_)
                                            (let ((_%$%e5231152359%_
                                                   (gx#syntax-e
                                                    _%$%tl5229852437%_)))
                                              (let ((_%$%tl5231352366%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e5231152359%_)))
                                                    (_%$%hd5231252363%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e5231152359%_))))
                                                (if (gx#identifier?
                                                     _%$%hd5231252363%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~TypeCast[1]#_g102563_|
                                                         _%$%hd5231252363%_)
                                                        (if (gx#stx-pair?
                                                             _%$%tl5231352366%_)
                                                            (let ((_%$%e5231452369%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%tl5231352366%_)))
                      (let ((_%$%tl5231652376%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5231452369%_)))
                            (_%$%hd5231552373%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5231452369%_))))
                        (if (gx#stx-null? _%$%tl5231652376%_)
                            (_%__kont9580695807%_
                             _%$%hd5231552373%_
                             _%$%hd5229752434%_
                             _%$%hd5229452424%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g5228652322%_)))))
                    (let () (declare (not safe)) (_%$%g5228652322%_)))
                (let () (declare (not safe)) (_%$%g5228652322%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5228652322%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5228652322%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g5228652322%_)))))
                        (let () (declare (not safe)) (_%$%g5228652322%_)))))
                (let () (declare (not safe)) (_%$%g5228652322%_)))))))
    (define |gerbil/core/contract~TypeCast[:0:]#::-|
      (lambda (_%$stx52461%_)
        (let ((_%$%g5246452471%_
               (lambda (_%$%g5246552467%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g5246552467%_))))
          (_%$%g5246452471%_ _%$stx52461%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:=|
      (lambda (_%$stx52475%_)
        (let ((_%$%g5247852485%_
               (lambda (_%$%g5247952481%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g5247952481%_))))
          (_%$%g5247852485%_ _%$stx52475%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#check-nil!|
      (lambda (_%$stx52489%_)
        (let* ((_%$%g5249352507%_
                (lambda (_%$%g5249452503%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g5249452503%_)))
               (_%$%g5249252548%_
                (lambda (_%$%g5249452511%_)
                  (if (gx#stx-pair? _%$%g5249452511%_)
                      (let ((_%$%e5249652514%_
                             (gx#syntax-e _%$%g5249452511%_)))
                        (let ((_%$%hd5249752518%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5249652514%_)))
                              (_%$%tl5249852521%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5249652514%_))))
                          (if (gx#stx-pair? _%$%tl5249852521%_)
                              (let ((_%$%e5249952524%_
                                     (gx#syntax-e _%$%tl5249852521%_)))
                                (let ((_%$%hd5250052528%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5249952524%_)))
                                      (_%$%tl5250152531%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5249952524%_))))
                                  (if (gx#stx-null? _%$%tl5250152531%_)
                                      (cons (gx#datum->syntax '#f 'or)
                                            (cons _%$%hd5250052528%_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'nil-dereference!)
                                                              (cons _%$%hd5250052528%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%g5249352507%_ _%$%g5249452511%_))))
                              (_%$%g5249352507%_ _%$%g5249452511%_))))
                      (_%$%g5249352507%_ _%$%g5249452511%_)))))
          (_%$%g5249252548%_ _%$stx52489%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#contract-violation!|
      (lambda (_%stx52552%_)
        (let* ((_%$%g5255552578%_
                (lambda (_%$%g5255652574%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g5255652574%_)))
               (_%$%g5255452702%_
                (lambda (_%$%g5255652582%_)
                  (if (gx#stx-pair? _%$%g5255652582%_)
                      (let ((_%$%e5256152585%_
                             (gx#syntax-e _%$%g5255652582%_)))
                        (let ((_%$%hd5256252589%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5256152585%_)))
                              (_%$%tl5256352592%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5256152585%_))))
                          (if (gx#stx-pair? _%$%tl5256352592%_)
                              (let ((_%$%e5256452595%_
                                     (gx#syntax-e _%$%tl5256352592%_)))
                                (let ((_%$%hd5256552599%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5256452595%_)))
                                      (_%$%tl5256652602%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5256452595%_))))
                                  (if (gx#stx-pair? _%$%tl5256652602%_)
                                      (let ((_%$%e5256752605%_
                                             (gx#syntax-e _%$%tl5256652602%_)))
                                        (let ((_%$%hd5256852609%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5256752605%_)))
                                              (_%$%tl5256952612%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5256752605%_))))
                                          (if (gx#stx-pair? _%$%tl5256952612%_)
                                              (let ((_%$%e5257052615%_
                                                     (gx#syntax-e
                                                      _%$%tl5256952612%_)))
                                                (let ((_%$%hd5257152619%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5257052615%_)))
                                                      (_%$%tl5257252622%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5257052615%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl5257252622%_)
                                                      (let* ((_%$%g5264952657%_
                                                              (lambda (_%$%g5265052653%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%$%g5265052653%_)))
                     (_%$%g5264852676%_
                      (lambda (_%$%g5265052661%_)
                        (cons (gx#datum->syntax '#f 'begin-annotation)
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           '@contract-violation)
                                          (cons _%$%g5265052661%_
                                                (cons _%$%hd5256852609%_
                                                      (cons _%$%hd5257152619%_
                                                            '()))))
                                    (cons (cons (gx#datum->syntax '#f 'abort!)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'raise-contract-violation-error)
                                                            (cons '"contract violation"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'context:
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%$%g5265052661%_ '()))
                                      (cons 'contract:
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'quote)
                                                        (cons _%$%hd5256852609%_
                                                              '()))
                                                  (cons 'value:
                                                        (cons _%$%hd5257152619%_
                                                              '()))))))))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))))))
                (_%$%g5264852676%_
                 (let ((_%$e52688%_
                        (let ((_%$e52680%_ (gx#stx-source _%$%hd5256552599%_)))
                          (if _%$e52680%_
                              _%$e52680%_
                              (let ((_%$e52684%_ (gx#stx-source _%stx52552%_)))
                                (if _%$e52684%_
                                    _%$e52684%_
                                    (gx#stx-source _%$%hd5256252589%_)))))))
                   (if _%$e52688%_
                       (call-with-output-string
                        '""
                        (lambda (_%$%g5269452696%_)
                          (let ()
                            (declare (not safe))
                            (##display-locat
                             _%$e52688%_
                             '#t
                             _%$%g5269452696%_))))
                       (gx#expander-context-id (gx#core-context-top))))))
              (_%$%g5255552578%_ _%$%g5255652582%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g5255552578%_
                                               _%$%g5255652582%_))))
                                      (_%$%g5255552578%_ _%$%g5255652582%_))))
                              (_%$%g5255552578%_ _%$%g5255652582%_))))
                      (_%$%g5255552578%_ _%$%g5255652582%_)))))
          (_%$%g5255452702%_ _%stx52552%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#runtime-contract-violation!|
      (lambda (_%stx52706%_)
        (let* ((_%$%g5270952732%_
                (lambda (_%$%g5271052728%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g5271052728%_)))
               (_%$%g5270852856%_
                (lambda (_%$%g5271052736%_)
                  (if (gx#stx-pair? _%$%g5271052736%_)
                      (let ((_%$%e5271552739%_
                             (gx#syntax-e _%$%g5271052736%_)))
                        (let ((_%$%hd5271652743%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5271552739%_)))
                              (_%$%tl5271752746%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5271552739%_))))
                          (if (gx#stx-pair? _%$%tl5271752746%_)
                              (let ((_%$%e5271852749%_
                                     (gx#syntax-e _%$%tl5271752746%_)))
                                (let ((_%$%hd5271952753%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5271852749%_)))
                                      (_%$%tl5272052756%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5271852749%_))))
                                  (if (gx#stx-pair? _%$%tl5272052756%_)
                                      (let ((_%$%e5272152759%_
                                             (gx#syntax-e _%$%tl5272052756%_)))
                                        (let ((_%$%hd5272252763%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5272152759%_)))
                                              (_%$%tl5272352766%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5272152759%_))))
                                          (if (gx#stx-pair? _%$%tl5272352766%_)
                                              (let ((_%$%e5272452769%_
                                                     (gx#syntax-e
                                                      _%$%tl5272352766%_)))
                                                (let ((_%$%hd5272552773%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5272452769%_)))
                                                      (_%$%tl5272652776%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5272452769%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl5272652776%_)
                                                      (let* ((_%$%g5280352811%_
                                                              (lambda (_%$%g5280452807%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%$%g5280452807%_)))
                     (_%$%g5280252830%_
                      (lambda (_%$%g5280452815%_)
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
                          (cons _%$%g5280452815%_ '()))
                    (cons 'contract:
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _%$%hd5272252763%_ '()))
                                (cons 'value:
                                      (cons _%$%hd5272552773%_ '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))))
                (_%$%g5280252830%_
                 (let ((_%$e52842%_
                        (let ((_%$e52834%_ (gx#stx-source _%$%hd5271952753%_)))
                          (if _%$e52834%_
                              _%$e52834%_
                              (let ((_%$e52838%_ (gx#stx-source _%stx52706%_)))
                                (if _%$e52838%_
                                    _%$e52838%_
                                    (gx#stx-source _%$%hd5271652743%_)))))))
                   (if _%$e52842%_
                       (call-with-output-string
                        '""
                        (lambda (_%$%g5284852850%_)
                          (let ()
                            (declare (not safe))
                            (##display-locat
                             _%$e52842%_
                             '#t
                             _%$%g5284852850%_))))
                       (gx#expander-context-id (gx#core-context-top))))))
              (_%$%g5270952732%_ _%$%g5271052736%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g5270952732%_
                                               _%$%g5271052736%_))))
                                      (_%$%g5270952732%_ _%$%g5271052736%_))))
                              (_%$%g5270952732%_ _%$%g5271052736%_))))
                      (_%$%g5270952732%_ _%$%g5271052736%_)))))
          (_%$%g5270852856%_ _%stx52706%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#nil-dereference!|
      (lambda (_%stx52860%_)
        (let* ((_%$%g5286352878%_
                (lambda (_%$%g5286452874%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g5286452874%_)))
               (_%$%g5286252974%_
                (lambda (_%$%g5286452882%_)
                  (if (gx#stx-pair? _%$%g5286452882%_)
                      (let ((_%$%e5286752885%_
                             (gx#syntax-e _%$%g5286452882%_)))
                        (let ((_%$%hd5286852889%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5286752885%_)))
                              (_%$%tl5286952892%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5286752885%_))))
                          (if (gx#stx-pair? _%$%tl5286952892%_)
                              (let ((_%$%e5287052895%_
                                     (gx#syntax-e _%$%tl5286952892%_)))
                                (let ((_%$%hd5287152899%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5287052895%_)))
                                      (_%$%tl5287252902%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5287052895%_))))
                                  (if (gx#stx-null? _%$%tl5287252902%_)
                                      (let* ((_%$%g5292152929%_
                                              (lambda (_%$%g5292252925%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%$%g5292252925%_)))
                                             (_%$%g5292052948%_
                                              (lambda (_%$%g5292252933%_)
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
                                                  (cons _%$%g5292252933%_ '()))
                                            (cons 'contract:
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'check-nil!)
                                  (cons _%$%hd5287152899%_ '()))
                            '()))
                (cons 'value: (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%$%g5292052948%_
                                         (let ((_%$e52960%_
                                                (let ((_%$e52952%_
                                                       (gx#stx-source
                                                        _%$%hd5287152899%_)))
                                                  (if _%$e52952%_
                                                      _%$e52952%_
                                                      (let ((_%$e52956%_
                                                             (gx#stx-source
                                                              _%stx52860%_)))
                                                        (if _%$e52956%_
                                                            _%$e52956%_
                                                            (gx#stx-source
                                                             _%$%hd5286852889%_)))))))
                                           (if _%$e52960%_
                                               (call-with-output-string
                                                '""
                                                (lambda (_%$%g5296652968%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (##display-locat
                                                     _%$e52960%_
                                                     '#t
                                                     _%$%g5296652968%_))))
                                               (gx#expander-context-id
                                                (gx#core-context-top))))))
                                      (_%$%g5286352878%_ _%$%g5286452882%_))))
                              (_%$%g5286352878%_ _%$%g5286452882%_))))
                      (_%$%g5286352878%_ _%$%g5286452882%_)))))
          (_%$%g5286252974%_ _%stx52860%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#abort!|
      (lambda (_%$stx52978%_)
        (let* ((_%$%g5298252996%_
                (lambda (_%$%g5298352992%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g5298352992%_)))
               (_%$%g5298153037%_
                (lambda (_%$%g5298353000%_)
                  (if (gx#stx-pair? _%$%g5298353000%_)
                      (let ((_%$%e5298553003%_
                             (gx#syntax-e _%$%g5298353000%_)))
                        (let ((_%$%hd5298653007%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5298553003%_)))
                              (_%$%tl5298753010%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5298553003%_))))
                          (if (gx#stx-pair? _%$%tl5298753010%_)
                              (let ((_%$%e5298853013%_
                                     (gx#syntax-e _%$%tl5298753010%_)))
                                (let ((_%$%hd5298953017%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5298853013%_)))
                                      (_%$%tl5299053020%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5298853013%_))))
                                  (if (gx#stx-null? _%$%tl5299053020%_)
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
                                                              (cons _%$%hd5298953017%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'void) '())
                                  '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%g5298252996%_ _%$%g5298353000%_))))
                              (_%$%g5298252996%_ _%$%g5298353000%_))))
                      (_%$%g5298252996%_ _%$%g5298353000%_)))))
          (_%$%g5298153037%_ _%$stx52978%_))))))
