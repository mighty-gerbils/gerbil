(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeCast[1]#_g80494_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/contract~TypeCast[:0:]#:|
      (lambda (_%stx45244%_)
        (let* ((_%g4524745265%_
                (lambda (_%g4524845261%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4524845261%_)))
               (_%g4524645460%_
                (lambda (_%g4524845269%_)
                  (if (gx#stx-pair? _%g4524845269%_)
                      (let ((_%e4525345272%_ (gx#syntax-e _%g4524845269%_)))
                        (let ((_%hd4525245276%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4525345272%_)))
                              (_%tl4525145279%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4525345272%_))))
                          (if (gx#stx-pair? _%tl4525145279%_)
                              (let ((_%e4525645282%_
                                     (gx#syntax-e _%tl4525145279%_)))
                                (let ((_%hd4525545286%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4525645282%_)))
                                      (_%tl4525445289%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4525645282%_))))
                                  (if (gx#stx-pair? _%tl4525445289%_)
                                      (let ((_%e4525945292%_
                                             (gx#syntax-e _%tl4525445289%_)))
                                        (let ((_%hd4525845296%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4525945292%_)))
                                              (_%tl4525745299%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4525945292%_))))
                                          (if (gx#stx-null? _%tl4525745299%_)
                                              ((lambda (_%L45302%_ _%L45304%_)
                                                 (if (gx#identifier?
                                                      _%L45302%_)
                                                     (let ((_%meta45321%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                               _%stx45244%_
                                                               _%L45302%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (class-instance?
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              _%meta45321%_))
                                                           (let* ((_%g4532645341%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g4532745337%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g4532745337%_)))
                          (_%g4532545388%_
                           (lambda (_%g4532745345%_)
                             (if (gx#stx-pair? _%g4532745345%_)
                                 (let ((_%e4533245348%_
                                        (gx#syntax-e _%g4532745345%_)))
                                   (let ((_%hd4533145352%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4533245348%_)))
                                         (_%tl4533045355%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4533245348%_))))
                                     (if (gx#stx-pair? _%tl4533045355%_)
                                         (let ((_%e4533545358%_
                                                (gx#syntax-e
                                                 _%tl4533045355%_)))
                                           (let ((_%hd4533445362%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e4533545358%_)))
                                                 (_%tl4533345365%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e4533545358%_))))
                                             (if (gx#stx-null?
                                                  _%tl4533345365%_)
                                                 ((lambda (_%L45368%_
                                                           _%L45370%_)
                                                    (if (let ((__tmp80492
                                                               (let ((__obj80354
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%meta45321%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj80354
                                'gerbil.core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj80354
                                '1
                                '#f
                                '#f))
                             (class-slot-ref
                              gerbil/core/mop~MOP-2#class-type-info::t
                              __obj80354
                              'id)))))
                  (declare (not safe))
                  (##memq __tmp80492 '(t void)))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%L45370%_ '()))
                            (cons _%L45304%_ '())))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%L45370%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%L45304%_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons _%L45368%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f 'val) '()))
                        (cons (gx#datum->syntax '#f 'val)
                              (cons (cons (gx#datum->syntax '#f 'error)
                                          (cons '"bad cast"
                                                (cons _%L45370%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'val)
                                                            '()))))
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%hd4533445362%_
                                                  _%hd4533145352%_)
                                                 (_%g4532645341%_
                                                  _%g4532745345%_))))
                                         (_%g4532645341%_ _%g4532745345%_))))
                                 (_%g4532645341%_ _%g4532745345%_)))))
                     (_%g4532545388%_
                      (list (let ((__obj80355 _%meta45321%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj80355
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj80355
                                     '12
                                     '#f
                                     '#f))
                                  (class-slot-ref
                                   gerbil/core/mop~MOP-2#class-type-info::t
                                   __obj80355
                                   'type-descriptor)))
                            (let ((__obj80356 _%meta45321%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj80356
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj80356
                                     '14
                                     '#f
                                     '#f))
                                  (class-slot-ref
                                   gerbil/core/mop~MOP-2#class-type-info::t
                                   __obj80356
                                   'predicate))))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%meta45321%_))
                       (let* ((_%g4539445409%_
                               (lambda (_%g4539545405%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g4539545405%_)))
                              (_%g4539345454%_
                               (lambda (_%g4539545413%_)
                                 (if (gx#stx-pair? _%g4539545413%_)
                                     (let ((_%e4540045416%_
                                            (gx#syntax-e _%g4539545413%_)))
                                       (let ((_%hd4539945420%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4540045416%_)))
                                             (_%tl4539845423%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4540045416%_))))
                                         (if (gx#stx-pair? _%tl4539845423%_)
                                             (let ((_%e4540345426%_
                                                    (gx#syntax-e
                                                     _%tl4539845423%_)))
                                               (let ((_%hd4540245430%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4540345426%_)))
                                                     (_%tl4540145433%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4540345426%_))))
                                                 (if (gx#stx-null?
                                                      _%tl4540145433%_)
                                                     ((lambda (_%L45436%_
                                                               _%L45438%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@type)
                                  (cons _%L45438%_ '()))
                            (cons (cons _%L45436%_ (cons _%L45304%_ '()))
                                  '()))))
              _%hd4540245430%_
              _%hd4539945420%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4539445409%_
                                                      _%g4539545413%_))))
                                             (_%g4539445409%_
                                              _%g4539545413%_))))
                                     (_%g4539445409%_ _%g4539545413%_)))))
                         (_%g4539345454%_
                          (list (let ((__obj80357 _%meta45321%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj80357
                                         'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj80357
                                         '4
                                         '#f
                                         '#f))
                                      (class-slot-ref
                                       gerbil/core/contract~InterfaceInfo#interface-info::t
                                       __obj80357
                                       'instance-type)))
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                   _%stx45244%_
                                   _%L45302%_)))))
                       (gx#raise-syntax-error
                        '#f
                        '"not a class type or interface"
                        _%stx45244%_
                        _%L45302%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4524745265%_
                                                      _%g4524845269%_)))
                                               _%hd4525845296%_
                                               _%hd4525545286%_)
                                              (_%g4524745265%_
                                               _%g4524845269%_))))
                                      (_%g4524745265%_ _%g4524845269%_))))
                              (_%g4524745265%_ _%g4524845269%_))))
                      (_%g4524745265%_ _%g4524845269%_)))))
          (_%g4524645460%_ _%stx45244%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:?|
      (lambda (_%stx45464%_)
        (let* ((_%g4546745485%_
                (lambda (_%g4546845481%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4546845481%_)))
               (_%g4546645679%_
                (lambda (_%g4546845489%_)
                  (if (gx#stx-pair? _%g4546845489%_)
                      (let ((_%e4547345492%_ (gx#syntax-e _%g4546845489%_)))
                        (let ((_%hd4547245496%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4547345492%_)))
                              (_%tl4547145499%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4547345492%_))))
                          (if (gx#stx-pair? _%tl4547145499%_)
                              (let ((_%e4547645502%_
                                     (gx#syntax-e _%tl4547145499%_)))
                                (let ((_%hd4547545506%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4547645502%_)))
                                      (_%tl4547445509%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4547645502%_))))
                                  (if (gx#stx-pair? _%tl4547445509%_)
                                      (let ((_%e4547945512%_
                                             (gx#syntax-e _%tl4547445509%_)))
                                        (let ((_%hd4547845516%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4547945512%_)))
                                              (_%tl4547745519%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4547945512%_))))
                                          (if (gx#stx-null? _%tl4547745519%_)
                                              ((lambda (_%L45522%_ _%L45524%_)
                                                 (if (gx#identifier?
                                                      _%L45522%_)
                                                     (let ((_%meta45540%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                               _%stx45464%_
                                                               _%L45522%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (class-instance?
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              _%meta45540%_))
                                                           (let* ((_%g4554545560%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g4554645556%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g4554645556%_)))
                          (_%g4554445607%_
                           (lambda (_%g4554645564%_)
                             (if (gx#stx-pair? _%g4554645564%_)
                                 (let ((_%e4555145567%_
                                        (gx#syntax-e _%g4554645564%_)))
                                   (let ((_%hd4555045571%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4555145567%_)))
                                         (_%tl4554945574%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4555145567%_))))
                                     (if (gx#stx-pair? _%tl4554945574%_)
                                         (let ((_%e4555445577%_
                                                (gx#syntax-e
                                                 _%tl4554945574%_)))
                                           (let ((_%hd4555345581%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e4555445577%_)))
                                                 (_%tl4555245584%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e4555445577%_))))
                                             (if (gx#stx-null?
                                                  _%tl4555245584%_)
                                                 ((lambda (_%L45587%_
                                                           _%L45589%_)
                                                    (if (let ((__tmp80493
                                                               (let ((__obj80358
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%meta45540%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj80358
                                'gerbil.core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj80358
                                '1
                                '#f
                                '#f))
                             (class-slot-ref
                              gerbil/core/mop~MOP-2#class-type-info::t
                              __obj80358
                              'id)))))
                  (declare (not safe))
                  (##memq __tmp80493 '(t void)))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%L45589%_ '()))
                            (cons _%L45524%_ '())))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%L45589%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%L45524%_ '()))
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
                                    (cons (cons _%L45587%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'val)
                                                      '()))
                                          '())))
                        (cons (gx#datum->syntax '#f 'val)
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'contract-violation!)
                                          (cons '"bad cast"
                                                (cons _%L45524%_
                                                      (cons _%L45587%_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'val)
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%hd4555345581%_
                                                  _%hd4555045571%_)
                                                 (_%g4554545560%_
                                                  _%g4554645564%_))))
                                         (_%g4554545560%_ _%g4554645564%_))))
                                 (_%g4554545560%_ _%g4554645564%_)))))
                     (_%g4554445607%_
                      (list (let ((__obj80359 _%meta45540%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj80359
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj80359
                                     '12
                                     '#f
                                     '#f))
                                  (class-slot-ref
                                   gerbil/core/mop~MOP-2#class-type-info::t
                                   __obj80359
                                   'type-descriptor)))
                            (let ((__obj80360 _%meta45540%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj80360
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj80360
                                     '14
                                     '#f
                                     '#f))
                                  (class-slot-ref
                                   gerbil/core/mop~MOP-2#class-type-info::t
                                   __obj80360
                                   'predicate))))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%meta45540%_))
                       (let* ((_%g4561345628%_
                               (lambda (_%g4561445624%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g4561445624%_)))
                              (_%g4561245673%_
                               (lambda (_%g4561445632%_)
                                 (if (gx#stx-pair? _%g4561445632%_)
                                     (let ((_%e4561945635%_
                                            (gx#syntax-e _%g4561445632%_)))
                                       (let ((_%hd4561845639%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4561945635%_)))
                                             (_%tl4561745642%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4561945635%_))))
                                         (if (gx#stx-pair? _%tl4561745642%_)
                                             (let ((_%e4562245645%_
                                                    (gx#syntax-e
                                                     _%tl4561745642%_)))
                                               (let ((_%hd4562145649%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4562245645%_)))
                                                     (_%tl4562045652%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4562245645%_))))
                                                 (if (gx#stx-null?
                                                      _%tl4562045652%_)
                                                     ((lambda (_%L45655%_
                                                               _%L45657%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@type)
                                  (cons _%L45657%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%L45524%_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'and)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'val)
                        (cons (cons _%L45655%_
                                    (cons (gx#datum->syntax '#f 'val) '()))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '()))))
              _%hd4562145649%_
              _%hd4561845639%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4561345628%_
                                                      _%g4561445632%_))))
                                             (_%g4561345628%_
                                              _%g4561445632%_))))
                                     (_%g4561345628%_ _%g4561445632%_)))))
                         (_%g4561245673%_
                          (list (let ((__obj80361 _%meta45540%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj80361
                                         'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj80361
                                         '4
                                         '#f
                                         '#f))
                                      (class-slot-ref
                                       gerbil/core/contract~InterfaceInfo#interface-info::t
                                       __obj80361
                                       'instance-type)))
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                   _%stx45464%_
                                   _%L45522%_)))))
                       (gx#raise-syntax-error
                        '#f
                        '"not a class type or interface"
                        _%stx45464%_
                        _%L45522%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4546745485%_
                                                      _%g4546845489%_)))
                                               _%hd4547845516%_
                                               _%hd4547545506%_)
                                              (_%g4546745485%_
                                               _%g4546845489%_))))
                                      (_%g4546745485%_ _%g4546845489%_))))
                              (_%g4546745485%_ _%g4546845489%_))))
                      (_%g4546745485%_ _%g4546845489%_)))))
          (_%g4546645679%_ _%stx45464%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:-|
      (lambda (_%stx45683%_)
        (let* ((_%g4568645704%_
                (lambda (_%g4568745700%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4568745700%_)))
               (_%g4568545790%_
                (lambda (_%g4568745708%_)
                  (if (gx#stx-pair? _%g4568745708%_)
                      (let ((_%e4569245711%_ (gx#syntax-e _%g4568745708%_)))
                        (let ((_%hd4569145715%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4569245711%_)))
                              (_%tl4569045718%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4569245711%_))))
                          (if (gx#stx-pair? _%tl4569045718%_)
                              (let ((_%e4569545721%_
                                     (gx#syntax-e _%tl4569045718%_)))
                                (let ((_%hd4569445725%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4569545721%_)))
                                      (_%tl4569345728%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4569545721%_))))
                                  (if (gx#stx-pair? _%tl4569345728%_)
                                      (let ((_%e4569845731%_
                                             (gx#syntax-e _%tl4569345728%_)))
                                        (let ((_%hd4569745735%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4569845731%_)))
                                              (_%tl4569645738%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4569845731%_))))
                                          (if (gx#stx-null? _%tl4569645738%_)
                                              ((lambda (_%L45741%_ _%L45743%_)
                                                 (if (gx#identifier?
                                                      _%L45741%_)
                                                     (let* ((_%g4575945767%_
                                                             (lambda (_%g4576045763%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g4576045763%_)))
                                                            (_%g4575845786%_
                                                             (lambda (_%g4576045771%_)
                                                               ((lambda (_%L45774%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'begin-annotation)
                                (cons (cons (gx#datum->syntax '#f '@type)
                                            (cons _%L45774%_ '()))
                                      (cons _%L45743%_ '()))))
                        _%g4576045771%_))))
               (_%g4575845786%_
                (let ()
                  (declare (not safe))
                  (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                   _%stx45683%_
                   _%L45741%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4568645704%_
                                                      _%g4568745708%_)))
                                               _%hd4569745735%_
                                               _%hd4569445725%_)
                                              (_%g4568645704%_
                                               _%g4568745708%_))))
                                      (_%g4568645704%_ _%g4568745708%_))))
                              (_%g4568645704%_ _%g4568745708%_))))
                      (_%g4568645704%_ _%g4568745708%_)))))
          (_%g4568545790%_ _%stx45683%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:~|
      (lambda (_%$stx45794%_)
        (let* ((_%__stx7540175402%_ _%$stx45794%_)
               (_%g4579945835%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7540175402%_))))
          (let ((_%__kont7540475405%_
                 (lambda (_%L45953%_ _%L45955%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f 'val)
                                     (cons _%L45955%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (cons _%L45953%_
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
                           (cons _%L45955%_
                                 (cons _%L45953%_
                                       (cons (gx#datum->syntax '#f 'val)
                                             '()))))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7540675407%_
                 (lambda (_%L45892%_ _%L45894%_ _%L45895%_)
                   (cons (gx#datum->syntax '#f ':-)
                         (cons (cons (gx#datum->syntax '#f ':~)
                                     (cons _%L45895%_ (cons _%L45894%_ '())))
                               (cons _%L45892%_ '()))))))
            (if (gx#stx-pair? _%__stx7540175402%_)
                (let ((_%e4580545923%_ (gx#syntax-e _%__stx7540175402%_)))
                  (let ((_%tl4580345930%_
                         (let () (declare (not safe)) (##cdr _%e4580545923%_)))
                        (_%hd4580445927%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4580545923%_))))
                    (if (gx#stx-pair? _%tl4580345930%_)
                        (let ((_%e4580845933%_ (gx#syntax-e _%tl4580345930%_)))
                          (let ((_%tl4580645940%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4580845933%_)))
                                (_%hd4580745937%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4580845933%_))))
                            (if (gx#stx-pair? _%tl4580645940%_)
                                (let ((_%e4581145943%_
                                       (gx#syntax-e _%tl4580645940%_)))
                                  (let ((_%tl4580945950%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4581145943%_)))
                                        (_%hd4581045947%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4581145943%_))))
                                    (if (gx#stx-null? _%tl4580945950%_)
                                        (_%__kont7540475405%_
                                         _%hd4581045947%_
                                         _%hd4580745937%_)
                                        (if (gx#stx-pair? _%tl4580945950%_)
                                            (let ((_%e4582645872%_
                                                   (gx#syntax-e
                                                    _%tl4580945950%_)))
                                              (let ((_%tl4582445879%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4582645872%_)))
                                                    (_%hd4582545876%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4582645872%_))))
                                                (if (gx#identifier?
                                                     _%hd4582545876%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~TypeCast[1]#_g80494_|
                                                         _%hd4582545876%_)
                                                        (if (gx#stx-pair?
                                                             _%tl4582445879%_)
                                                            (let ((_%e4582945882%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl4582445879%_)))
                      (let ((_%tl4582745889%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4582945882%_)))
                            (_%hd4582845886%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4582945882%_))))
                        (if (gx#stx-null? _%tl4582745889%_)
                            (_%__kont7540675407%_
                             _%hd4582845886%_
                             _%hd4581045947%_
                             _%hd4580745937%_)
                            (let () (declare (not safe)) (_%g4579945835%_)))))
                    (let () (declare (not safe)) (_%g4579945835%_)))
                (let () (declare (not safe)) (_%g4579945835%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4579945835%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4579945835%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4579945835%_)))))
                        (let () (declare (not safe)) (_%g4579945835%_)))))
                (let () (declare (not safe)) (_%g4579945835%_)))))))
    (define |gerbil/core/contract~TypeCast[:0:]#::-|
      (lambda (_%$stx45974%_)
        (let ((_%g4597745984%_
               (lambda (_%g4597845980%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4597845980%_))))
          (_%g4597745984%_ _%$stx45974%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:=|
      (lambda (_%$stx45988%_)
        (let ((_%g4599145998%_
               (lambda (_%g4599245994%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4599245994%_))))
          (_%g4599145998%_ _%$stx45988%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#check-nil!|
      (lambda (_%$stx46002%_)
        (let* ((_%g4600646020%_
                (lambda (_%g4600746016%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4600746016%_)))
               (_%g4600546061%_
                (lambda (_%g4600746024%_)
                  (if (gx#stx-pair? _%g4600746024%_)
                      (let ((_%e4601146027%_ (gx#syntax-e _%g4600746024%_)))
                        (let ((_%hd4601046031%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4601146027%_)))
                              (_%tl4600946034%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4601146027%_))))
                          (if (gx#stx-pair? _%tl4600946034%_)
                              (let ((_%e4601446037%_
                                     (gx#syntax-e _%tl4600946034%_)))
                                (let ((_%hd4601346041%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4601446037%_)))
                                      (_%tl4601246044%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4601446037%_))))
                                  (if (gx#stx-null? _%tl4601246044%_)
                                      ((lambda (_%L46047%_)
                                         (cons (gx#datum->syntax '#f 'or)
                                               (cons _%L46047%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'nil-dereference!)
                         (cons _%L46047%_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd4601346041%_)
                                      (_%g4600646020%_ _%g4600746024%_))))
                              (_%g4600646020%_ _%g4600746024%_))))
                      (_%g4600646020%_ _%g4600746024%_)))))
          (_%g4600546061%_ _%$stx46002%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#contract-violation!|
      (lambda (_%stx46065%_)
        (let* ((_%g4606846091%_
                (lambda (_%g4606946087%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4606946087%_)))
               (_%g4606746215%_
                (lambda (_%g4606946095%_)
                  (if (gx#stx-pair? _%g4606946095%_)
                      (let ((_%e4607646098%_ (gx#syntax-e _%g4606946095%_)))
                        (let ((_%hd4607546102%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4607646098%_)))
                              (_%tl4607446105%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4607646098%_))))
                          (if (gx#stx-pair? _%tl4607446105%_)
                              (let ((_%e4607946108%_
                                     (gx#syntax-e _%tl4607446105%_)))
                                (let ((_%hd4607846112%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4607946108%_)))
                                      (_%tl4607746115%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4607946108%_))))
                                  (if (gx#stx-pair? _%tl4607746115%_)
                                      (let ((_%e4608246118%_
                                             (gx#syntax-e _%tl4607746115%_)))
                                        (let ((_%hd4608146122%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4608246118%_)))
                                              (_%tl4608046125%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4608246118%_))))
                                          (if (gx#stx-pair? _%tl4608046125%_)
                                              (let ((_%e4608546128%_
                                                     (gx#syntax-e
                                                      _%tl4608046125%_)))
                                                (let ((_%hd4608446132%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4608546128%_)))
                                                      (_%tl4608346135%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4608546128%_))))
                                                  (if (gx#stx-null?
                                                       _%tl4608346135%_)
                                                      ((lambda (_%L46138%_
                                                                _%L46140%_
                                                                _%L46141%_
                                                                _%L46142%_)
                                                         (let* ((_%g4616246170%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g4616346166%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g4616346166%_)))
                        (_%g4616146189%_
                         (lambda (_%g4616346174%_)
                           ((lambda (_%L46177%_)
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
                                (cons _%L46177%_ '()))
                          (cons 'contract:
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%L46140%_ '()))
                                      (cons 'value:
                                            (cons _%L46138%_ '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                            _%g4616346174%_))))
                   (_%g4616146189%_
                    (let ((_%$e46201%_
                           (let ((_%$e46193%_ (gx#stx-source _%L46141%_)))
                             (if _%$e46193%_
                                 _%$e46193%_
                                 (let ((_%$e46197%_
                                        (gx#stx-source _%stx46065%_)))
                                   (if _%$e46197%_
                                       _%$e46197%_
                                       (gx#stx-source _%L46142%_)))))))
                      (if _%$e46201%_
                          ((lambda (_%locat46205%_)
                             (call-with-output-string
                              '""
                              (lambda (_%g4620746209%_)
                                (let ()
                                  (declare (not safe))
                                  (##display-locat
                                   _%locat46205%_
                                   '#t
                                   _%g4620746209%_)))))
                           _%$e46201%_)
                          (gx#expander-context-id (gx#core-context-top)))))))
               _%hd4608446132%_
               _%hd4608146122%_
               _%hd4607846112%_
               _%hd4607546102%_)
              (_%g4606846091%_ _%g4606946095%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4606846091%_
                                               _%g4606946095%_))))
                                      (_%g4606846091%_ _%g4606946095%_))))
                              (_%g4606846091%_ _%g4606946095%_))))
                      (_%g4606846091%_ _%g4606946095%_)))))
          (_%g4606746215%_ _%stx46065%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#nil-dereference!|
      (lambda (_%stx46219%_)
        (let* ((_%g4622246237%_
                (lambda (_%g4622346233%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4622346233%_)))
               (_%g4622146333%_
                (lambda (_%g4622346241%_)
                  (if (gx#stx-pair? _%g4622346241%_)
                      (let ((_%e4622846244%_ (gx#syntax-e _%g4622346241%_)))
                        (let ((_%hd4622746248%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4622846244%_)))
                              (_%tl4622646251%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4622846244%_))))
                          (if (gx#stx-pair? _%tl4622646251%_)
                              (let ((_%e4623146254%_
                                     (gx#syntax-e _%tl4622646251%_)))
                                (let ((_%hd4623046258%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4623146254%_)))
                                      (_%tl4622946261%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4623146254%_))))
                                  (if (gx#stx-null? _%tl4622946261%_)
                                      ((lambda (_%L46264%_ _%L46266%_)
                                         (let* ((_%g4628046288%_
                                                 (lambda (_%g4628146284%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g4628146284%_)))
                                                (_%g4627946307%_
                                                 (lambda (_%g4628146292%_)
                                                   ((lambda (_%L46295%_)
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
                                                        (cons _%L46295%_ '()))
                                                  (cons 'contract:
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                        (cons _%L46264%_ '()))
                                  '()))
                      (cons 'value: (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g4628146292%_))))
                                           (_%g4627946307%_
                                            (let ((_%$e46319%_
                                                   (let ((_%$e46311%_
                                                          (gx#stx-source
                                                           _%L46264%_)))
                                                     (if _%$e46311%_
                                                         _%$e46311%_
                                                         (let ((_%$e46315%_
                                                                (gx#stx-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx46219%_)))
                   (if _%$e46315%_ _%$e46315%_ (gx#stx-source _%L46266%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if _%$e46319%_
                                                  ((lambda (_%locat46323%_)
                                                     (call-with-output-string
                                                      '""
                                                      (lambda (_%g4632546327%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (##display-locat
                                                           _%locat46323%_
                                                           '#t
                                                           _%g4632546327%_)))))
                                                   _%$e46319%_)
                                                  (gx#expander-context-id
                                                   (gx#core-context-top)))))))
                                       _%hd4623046258%_
                                       _%hd4622746248%_)
                                      (_%g4622246237%_ _%g4622346241%_))))
                              (_%g4622246237%_ _%g4622346241%_))))
                      (_%g4622246237%_ _%g4622346241%_)))))
          (_%g4622146333%_ _%stx46219%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#abort!|
      (lambda (_%$stx46337%_)
        (let* ((_%g4634146355%_
                (lambda (_%g4634246351%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4634246351%_)))
               (_%g4634046396%_
                (lambda (_%g4634246359%_)
                  (if (gx#stx-pair? _%g4634246359%_)
                      (let ((_%e4634646362%_ (gx#syntax-e _%g4634246359%_)))
                        (let ((_%hd4634546366%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4634646362%_)))
                              (_%tl4634446369%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4634646362%_))))
                          (if (gx#stx-pair? _%tl4634446369%_)
                              (let ((_%e4634946372%_
                                     (gx#syntax-e _%tl4634446369%_)))
                                (let ((_%hd4634846376%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4634946372%_)))
                                      (_%tl4634746379%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4634946372%_))))
                                  (if (gx#stx-null? _%tl4634746379%_)
                                      ((lambda (_%L46382%_)
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
                         (cons _%L46382%_
                               (cons (cons (gx#datum->syntax '#f 'void) '())
                                     '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd4634846376%_)
                                      (_%g4634146355%_ _%g4634246359%_))))
                              (_%g4634146355%_ _%g4634246359%_))))
                      (_%g4634146355%_ _%g4634246359%_)))))
          (_%g4634046396%_ _%$stx46337%_))))))
