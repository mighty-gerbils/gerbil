(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeCast[1]#_g82595_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/contract~TypeCast[:0:]#:|
      (lambda (_%stx45158%_)
        (let* ((_%g4516145179%_
                (lambda (_%g4516245175%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4516245175%_)))
               (_%g4516045374%_
                (lambda (_%g4516245183%_)
                  (if (gx#stx-pair? _%g4516245183%_)
                      (let ((_%e4516545186%_ (gx#syntax-e _%g4516245183%_)))
                        (let ((_%hd4516645190%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4516545186%_)))
                              (_%tl4516745193%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4516545186%_))))
                          (if (gx#stx-pair? _%tl4516745193%_)
                              (let ((_%e4516845196%_
                                     (gx#syntax-e _%tl4516745193%_)))
                                (let ((_%hd4516945200%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4516845196%_)))
                                      (_%tl4517045203%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4516845196%_))))
                                  (if (gx#stx-pair? _%tl4517045203%_)
                                      (let ((_%e4517145206%_
                                             (gx#syntax-e _%tl4517045203%_)))
                                        (let ((_%hd4517245210%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4517145206%_)))
                                              (_%tl4517345213%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4517145206%_))))
                                          (if (gx#stx-null? _%tl4517345213%_)
                                              ((lambda (_%L45216%_ _%L45218%_)
                                                 (if (gx#identifier?
                                                      _%L45216%_)
                                                     (let ((_%meta45235%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                               _%stx45158%_
                                                               _%L45216%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (class-instance?
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              _%meta45235%_))
                                                           (let* ((_%g4524045255%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g4524145251%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g4524145251%_)))
                          (_%g4523945302%_
                           (lambda (_%g4524145259%_)
                             (if (gx#stx-pair? _%g4524145259%_)
                                 (let ((_%e4524445262%_
                                        (gx#syntax-e _%g4524145259%_)))
                                   (let ((_%hd4524545266%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4524445262%_)))
                                         (_%tl4524645269%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4524445262%_))))
                                     (if (gx#stx-pair? _%tl4524645269%_)
                                         (let ((_%e4524745272%_
                                                (gx#syntax-e
                                                 _%tl4524645269%_)))
                                           (let ((_%hd4524845276%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e4524745272%_)))
                                                 (_%tl4524945279%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e4524745272%_))))
                                             (if (gx#stx-null?
                                                  _%tl4524945279%_)
                                                 ((lambda (_%L45282%_
                                                           _%L45284%_)
                                                    (if (let ((__tmp82593
                                                               (let ((__obj82454
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%meta45235%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj82454
                                'gerbil.core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj82454
                                '1
                                '#f
                                '#f))
                             (unchecked-slot-ref __obj82454 'id)))))
                  (declare (not safe))
                  (##memq __tmp82593 '(t void)))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%L45284%_ '()))
                            (cons _%L45218%_ '())))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%L45284%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%L45218%_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons _%L45282%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f 'val) '()))
                        (cons (gx#datum->syntax '#f 'val)
                              (cons (cons (gx#datum->syntax '#f 'error)
                                          (cons '"bad cast"
                                                (cons _%L45284%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'val)
                                                            '()))))
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%hd4524845276%_
                                                  _%hd4524545266%_)
                                                 (_%g4524045255%_
                                                  _%g4524145259%_))))
                                         (_%g4524045255%_ _%g4524145259%_))))
                                 (_%g4524045255%_ _%g4524145259%_)))))
                     (_%g4523945302%_
                      (list (let ((__obj82455 _%meta45235%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj82455
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj82455
                                     '12
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj82455
                                   'type-descriptor)))
                            (let ((__obj82456 _%meta45235%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj82456
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj82456
                                     '14
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj82456
                                   'predicate))))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%meta45235%_))
                       (let* ((_%g4530845323%_
                               (lambda (_%g4530945319%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g4530945319%_)))
                              (_%g4530745368%_
                               (lambda (_%g4530945327%_)
                                 (if (gx#stx-pair? _%g4530945327%_)
                                     (let ((_%e4531245330%_
                                            (gx#syntax-e _%g4530945327%_)))
                                       (let ((_%hd4531345334%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4531245330%_)))
                                             (_%tl4531445337%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4531245330%_))))
                                         (if (gx#stx-pair? _%tl4531445337%_)
                                             (let ((_%e4531545340%_
                                                    (gx#syntax-e
                                                     _%tl4531445337%_)))
                                               (let ((_%hd4531645344%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4531545340%_)))
                                                     (_%tl4531745347%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4531545340%_))))
                                                 (if (gx#stx-null?
                                                      _%tl4531745347%_)
                                                     ((lambda (_%L45350%_
                                                               _%L45352%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@type)
                                  (cons _%L45352%_ '()))
                            (cons (cons _%L45350%_ (cons _%L45218%_ '()))
                                  '()))))
              _%hd4531645344%_
              _%hd4531345334%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4530845323%_
                                                      _%g4530945327%_))))
                                             (_%g4530845323%_
                                              _%g4530945327%_))))
                                     (_%g4530845323%_ _%g4530945327%_)))))
                         (_%g4530745368%_
                          (list (let ((__obj82453 _%meta45235%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj82453
                                         'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj82453
                                         '4
                                         '#f
                                         '#f))
                                      (unchecked-slot-ref
                                       __obj82453
                                       'instance-type)))
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                   _%stx45158%_
                                   _%L45216%_)))))
                       (gx#raise-syntax-error
                        '#f
                        '"not a class type or interface"
                        _%stx45158%_
                        _%L45216%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4516145179%_
                                                      _%g4516245183%_)))
                                               _%hd4517245210%_
                                               _%hd4516945200%_)
                                              (_%g4516145179%_
                                               _%g4516245183%_))))
                                      (_%g4516145179%_ _%g4516245183%_))))
                              (_%g4516145179%_ _%g4516245183%_))))
                      (_%g4516145179%_ _%g4516245183%_)))))
          (_%g4516045374%_ _%stx45158%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:?|
      (lambda (_%stx45378%_)
        (let* ((_%g4538145399%_
                (lambda (_%g4538245395%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4538245395%_)))
               (_%g4538045593%_
                (lambda (_%g4538245403%_)
                  (if (gx#stx-pair? _%g4538245403%_)
                      (let ((_%e4538545406%_ (gx#syntax-e _%g4538245403%_)))
                        (let ((_%hd4538645410%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4538545406%_)))
                              (_%tl4538745413%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4538545406%_))))
                          (if (gx#stx-pair? _%tl4538745413%_)
                              (let ((_%e4538845416%_
                                     (gx#syntax-e _%tl4538745413%_)))
                                (let ((_%hd4538945420%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4538845416%_)))
                                      (_%tl4539045423%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4538845416%_))))
                                  (if (gx#stx-pair? _%tl4539045423%_)
                                      (let ((_%e4539145426%_
                                             (gx#syntax-e _%tl4539045423%_)))
                                        (let ((_%hd4539245430%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4539145426%_)))
                                              (_%tl4539345433%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4539145426%_))))
                                          (if (gx#stx-null? _%tl4539345433%_)
                                              ((lambda (_%L45436%_ _%L45438%_)
                                                 (if (gx#identifier?
                                                      _%L45436%_)
                                                     (let ((_%meta45454%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                               _%stx45378%_
                                                               _%L45436%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (class-instance?
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              _%meta45454%_))
                                                           (let* ((_%g4545945474%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g4546045470%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g4546045470%_)))
                          (_%g4545845521%_
                           (lambda (_%g4546045478%_)
                             (if (gx#stx-pair? _%g4546045478%_)
                                 (let ((_%e4546345481%_
                                        (gx#syntax-e _%g4546045478%_)))
                                   (let ((_%hd4546445485%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4546345481%_)))
                                         (_%tl4546545488%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4546345481%_))))
                                     (if (gx#stx-pair? _%tl4546545488%_)
                                         (let ((_%e4546645491%_
                                                (gx#syntax-e
                                                 _%tl4546545488%_)))
                                           (let ((_%hd4546745495%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e4546645491%_)))
                                                 (_%tl4546845498%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e4546645491%_))))
                                             (if (gx#stx-null?
                                                  _%tl4546845498%_)
                                                 ((lambda (_%L45501%_
                                                           _%L45503%_)
                                                    (if (let ((__tmp82594
                                                               (let ((__obj82458
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%meta45454%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj82458
                                'gerbil.core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj82458
                                '1
                                '#f
                                '#f))
                             (unchecked-slot-ref __obj82458 'id)))))
                  (declare (not safe))
                  (##memq __tmp82594 '(t void)))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%L45503%_ '()))
                            (cons _%L45438%_ '())))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%L45503%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%L45438%_ '()))
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
                                    (cons (cons _%L45501%_
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
                                                (cons _%L45438%_
                                                      (cons _%L45501%_
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
                                                  _%hd4546745495%_
                                                  _%hd4546445485%_)
                                                 (_%g4545945474%_
                                                  _%g4546045478%_))))
                                         (_%g4545945474%_ _%g4546045478%_))))
                                 (_%g4545945474%_ _%g4546045478%_)))))
                     (_%g4545845521%_
                      (list (let ((__obj82459 _%meta45454%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj82459
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj82459
                                     '12
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj82459
                                   'type-descriptor)))
                            (let ((__obj82460 _%meta45454%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj82460
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj82460
                                     '14
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj82460
                                   'predicate))))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%meta45454%_))
                       (let* ((_%g4552745542%_
                               (lambda (_%g4552845538%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g4552845538%_)))
                              (_%g4552645587%_
                               (lambda (_%g4552845546%_)
                                 (if (gx#stx-pair? _%g4552845546%_)
                                     (let ((_%e4553145549%_
                                            (gx#syntax-e _%g4552845546%_)))
                                       (let ((_%hd4553245553%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4553145549%_)))
                                             (_%tl4553345556%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4553145549%_))))
                                         (if (gx#stx-pair? _%tl4553345556%_)
                                             (let ((_%e4553445559%_
                                                    (gx#syntax-e
                                                     _%tl4553345556%_)))
                                               (let ((_%hd4553545563%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4553445559%_)))
                                                     (_%tl4553645566%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4553445559%_))))
                                                 (if (gx#stx-null?
                                                      _%tl4553645566%_)
                                                     ((lambda (_%L45569%_
                                                               _%L45571%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@type)
                                  (cons _%L45571%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%L45438%_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'and)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'val)
                        (cons (cons _%L45569%_
                                    (cons (gx#datum->syntax '#f 'val) '()))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '()))))
              _%hd4553545563%_
              _%hd4553245553%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4552745542%_
                                                      _%g4552845546%_))))
                                             (_%g4552745542%_
                                              _%g4552845546%_))))
                                     (_%g4552745542%_ _%g4552845546%_)))))
                         (_%g4552645587%_
                          (list (let ((__obj82457 _%meta45454%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj82457
                                         'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj82457
                                         '4
                                         '#f
                                         '#f))
                                      (unchecked-slot-ref
                                       __obj82457
                                       'instance-type)))
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                   _%stx45378%_
                                   _%L45436%_)))))
                       (gx#raise-syntax-error
                        '#f
                        '"not a class type or interface"
                        _%stx45378%_
                        _%L45436%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4538145399%_
                                                      _%g4538245403%_)))
                                               _%hd4539245430%_
                                               _%hd4538945420%_)
                                              (_%g4538145399%_
                                               _%g4538245403%_))))
                                      (_%g4538145399%_ _%g4538245403%_))))
                              (_%g4538145399%_ _%g4538245403%_))))
                      (_%g4538145399%_ _%g4538245403%_)))))
          (_%g4538045593%_ _%stx45378%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:-|
      (lambda (_%stx45597%_)
        (let* ((_%g4560045618%_
                (lambda (_%g4560145614%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4560145614%_)))
               (_%g4559945704%_
                (lambda (_%g4560145622%_)
                  (if (gx#stx-pair? _%g4560145622%_)
                      (let ((_%e4560445625%_ (gx#syntax-e _%g4560145622%_)))
                        (let ((_%hd4560545629%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4560445625%_)))
                              (_%tl4560645632%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4560445625%_))))
                          (if (gx#stx-pair? _%tl4560645632%_)
                              (let ((_%e4560745635%_
                                     (gx#syntax-e _%tl4560645632%_)))
                                (let ((_%hd4560845639%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4560745635%_)))
                                      (_%tl4560945642%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4560745635%_))))
                                  (if (gx#stx-pair? _%tl4560945642%_)
                                      (let ((_%e4561045645%_
                                             (gx#syntax-e _%tl4560945642%_)))
                                        (let ((_%hd4561145649%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4561045645%_)))
                                              (_%tl4561245652%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4561045645%_))))
                                          (if (gx#stx-null? _%tl4561245652%_)
                                              ((lambda (_%L45655%_ _%L45657%_)
                                                 (if (gx#identifier?
                                                      _%L45655%_)
                                                     (let* ((_%g4567345681%_
                                                             (lambda (_%g4567445677%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g4567445677%_)))
                                                            (_%g4567245700%_
                                                             (lambda (_%g4567445685%_)
                                                               ((lambda (_%L45688%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'begin-annotation)
                                (cons (cons (gx#datum->syntax '#f '@type)
                                            (cons _%L45688%_ '()))
                                      (cons _%L45657%_ '()))))
                        _%g4567445685%_))))
               (_%g4567245700%_
                (let ()
                  (declare (not safe))
                  (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                   _%stx45597%_
                   _%L45655%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4560045618%_
                                                      _%g4560145622%_)))
                                               _%hd4561145649%_
                                               _%hd4560845639%_)
                                              (_%g4560045618%_
                                               _%g4560145622%_))))
                                      (_%g4560045618%_ _%g4560145622%_))))
                              (_%g4560045618%_ _%g4560145622%_))))
                      (_%g4560045618%_ _%g4560145622%_)))))
          (_%g4559945704%_ _%stx45597%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:~|
      (lambda (_%$stx45708%_)
        (let* ((_%__stx7715877159%_ _%$stx45708%_)
               (_%g4571345749%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7715877159%_))))
          (let ((_%__kont7716177162%_
                 (lambda (_%L45867%_ _%L45869%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f 'val)
                                     (cons _%L45869%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (cons _%L45867%_
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
                           (cons _%L45869%_
                                 (cons _%L45867%_
                                       (cons (gx#datum->syntax '#f 'val)
                                             '()))))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7716377164%_
                 (lambda (_%L45806%_ _%L45808%_ _%L45809%_)
                   (cons (gx#datum->syntax '#f ':-)
                         (cons (cons (gx#datum->syntax '#f ':~)
                                     (cons _%L45809%_ (cons _%L45808%_ '())))
                               (cons _%L45806%_ '()))))))
            (if (gx#stx-pair? _%__stx7715877159%_)
                (let ((_%e4571745837%_ (gx#syntax-e _%__stx7715877159%_)))
                  (let ((_%tl4571945844%_
                         (let () (declare (not safe)) (##cdr _%e4571745837%_)))
                        (_%hd4571845841%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4571745837%_))))
                    (if (gx#stx-pair? _%tl4571945844%_)
                        (let ((_%e4572045847%_ (gx#syntax-e _%tl4571945844%_)))
                          (let ((_%tl4572245854%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4572045847%_)))
                                (_%hd4572145851%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4572045847%_))))
                            (if (gx#stx-pair? _%tl4572245854%_)
                                (let ((_%e4572345857%_
                                       (gx#syntax-e _%tl4572245854%_)))
                                  (let ((_%tl4572545864%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4572345857%_)))
                                        (_%hd4572445861%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4572345857%_))))
                                    (if (gx#stx-null? _%tl4572545864%_)
                                        (_%__kont7716177162%_
                                         _%hd4572445861%_
                                         _%hd4572145851%_)
                                        (if (gx#stx-pair? _%tl4572545864%_)
                                            (let ((_%e4573845786%_
                                                   (gx#syntax-e
                                                    _%tl4572545864%_)))
                                              (let ((_%tl4574045793%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4573845786%_)))
                                                    (_%hd4573945790%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4573845786%_))))
                                                (if (gx#identifier?
                                                     _%hd4573945790%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~TypeCast[1]#_g82595_|
                                                         _%hd4573945790%_)
                                                        (if (gx#stx-pair?
                                                             _%tl4574045793%_)
                                                            (let ((_%e4574145796%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl4574045793%_)))
                      (let ((_%tl4574345803%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4574145796%_)))
                            (_%hd4574245800%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4574145796%_))))
                        (if (gx#stx-null? _%tl4574345803%_)
                            (_%__kont7716377164%_
                             _%hd4574245800%_
                             _%hd4572445861%_
                             _%hd4572145851%_)
                            (let () (declare (not safe)) (_%g4571345749%_)))))
                    (let () (declare (not safe)) (_%g4571345749%_)))
                (let () (declare (not safe)) (_%g4571345749%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4571345749%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4571345749%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4571345749%_)))))
                        (let () (declare (not safe)) (_%g4571345749%_)))))
                (let () (declare (not safe)) (_%g4571345749%_)))))))
    (define |gerbil/core/contract~TypeCast[:0:]#::-|
      (lambda (_%$stx45888%_)
        (let ((_%g4589145898%_
               (lambda (_%g4589245894%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4589245894%_))))
          (_%g4589145898%_ _%$stx45888%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:=|
      (lambda (_%$stx45902%_)
        (let ((_%g4590545912%_
               (lambda (_%g4590645908%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4590645908%_))))
          (_%g4590545912%_ _%$stx45902%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#check-nil!|
      (lambda (_%$stx45916%_)
        (let* ((_%g4592045934%_
                (lambda (_%g4592145930%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4592145930%_)))
               (_%g4591945975%_
                (lambda (_%g4592145938%_)
                  (if (gx#stx-pair? _%g4592145938%_)
                      (let ((_%e4592345941%_ (gx#syntax-e _%g4592145938%_)))
                        (let ((_%hd4592445945%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4592345941%_)))
                              (_%tl4592545948%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4592345941%_))))
                          (if (gx#stx-pair? _%tl4592545948%_)
                              (let ((_%e4592645951%_
                                     (gx#syntax-e _%tl4592545948%_)))
                                (let ((_%hd4592745955%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4592645951%_)))
                                      (_%tl4592845958%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4592645951%_))))
                                  (if (gx#stx-null? _%tl4592845958%_)
                                      ((lambda (_%L45961%_)
                                         (cons (gx#datum->syntax '#f 'or)
                                               (cons _%L45961%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'nil-dereference!)
                         (cons _%L45961%_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd4592745955%_)
                                      (_%g4592045934%_ _%g4592145938%_))))
                              (_%g4592045934%_ _%g4592145938%_))))
                      (_%g4592045934%_ _%g4592145938%_)))))
          (_%g4591945975%_ _%$stx45916%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#contract-violation!|
      (lambda (_%stx45979%_)
        (let* ((_%g4598246005%_
                (lambda (_%g4598346001%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4598346001%_)))
               (_%g4598146129%_
                (lambda (_%g4598346009%_)
                  (if (gx#stx-pair? _%g4598346009%_)
                      (let ((_%e4598846012%_ (gx#syntax-e _%g4598346009%_)))
                        (let ((_%hd4598946016%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4598846012%_)))
                              (_%tl4599046019%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4598846012%_))))
                          (if (gx#stx-pair? _%tl4599046019%_)
                              (let ((_%e4599146022%_
                                     (gx#syntax-e _%tl4599046019%_)))
                                (let ((_%hd4599246026%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4599146022%_)))
                                      (_%tl4599346029%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4599146022%_))))
                                  (if (gx#stx-pair? _%tl4599346029%_)
                                      (let ((_%e4599446032%_
                                             (gx#syntax-e _%tl4599346029%_)))
                                        (let ((_%hd4599546036%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4599446032%_)))
                                              (_%tl4599646039%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4599446032%_))))
                                          (if (gx#stx-pair? _%tl4599646039%_)
                                              (let ((_%e4599746042%_
                                                     (gx#syntax-e
                                                      _%tl4599646039%_)))
                                                (let ((_%hd4599846046%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4599746042%_)))
                                                      (_%tl4599946049%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4599746042%_))))
                                                  (if (gx#stx-null?
                                                       _%tl4599946049%_)
                                                      ((lambda (_%L46052%_
                                                                _%L46054%_
                                                                _%L46055%_
                                                                _%L46056%_)
                                                         (let* ((_%g4607646084%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g4607746080%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g4607746080%_)))
                        (_%g4607546103%_
                         (lambda (_%g4607746088%_)
                           ((lambda (_%L46091%_)
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
                                (cons _%L46091%_ '()))
                          (cons 'contract:
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%L46054%_ '()))
                                      (cons 'value:
                                            (cons _%L46052%_ '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                            _%g4607746088%_))))
                   (_%g4607546103%_
                    (let ((_%$e46115%_
                           (let ((_%$e46107%_ (gx#stx-source _%L46055%_)))
                             (if _%$e46107%_
                                 _%$e46107%_
                                 (let ((_%$e46111%_
                                        (gx#stx-source _%stx45979%_)))
                                   (if _%$e46111%_
                                       _%$e46111%_
                                       (gx#stx-source _%L46056%_)))))))
                      (if _%$e46115%_
                          ((lambda (_%locat46119%_)
                             (call-with-output-string
                              '""
                              (lambda (_%g4612146123%_)
                                (let ()
                                  (declare (not safe))
                                  (##display-locat
                                   _%locat46119%_
                                   '#t
                                   _%g4612146123%_)))))
                           _%$e46115%_)
                          (gx#expander-context-id (gx#core-context-top)))))))
               _%hd4599846046%_
               _%hd4599546036%_
               _%hd4599246026%_
               _%hd4598946016%_)
              (_%g4598246005%_ _%g4598346009%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4598246005%_
                                               _%g4598346009%_))))
                                      (_%g4598246005%_ _%g4598346009%_))))
                              (_%g4598246005%_ _%g4598346009%_))))
                      (_%g4598246005%_ _%g4598346009%_)))))
          (_%g4598146129%_ _%stx45979%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#nil-dereference!|
      (lambda (_%stx46133%_)
        (let* ((_%g4613646151%_
                (lambda (_%g4613746147%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4613746147%_)))
               (_%g4613546247%_
                (lambda (_%g4613746155%_)
                  (if (gx#stx-pair? _%g4613746155%_)
                      (let ((_%e4614046158%_ (gx#syntax-e _%g4613746155%_)))
                        (let ((_%hd4614146162%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4614046158%_)))
                              (_%tl4614246165%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4614046158%_))))
                          (if (gx#stx-pair? _%tl4614246165%_)
                              (let ((_%e4614346168%_
                                     (gx#syntax-e _%tl4614246165%_)))
                                (let ((_%hd4614446172%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4614346168%_)))
                                      (_%tl4614546175%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4614346168%_))))
                                  (if (gx#stx-null? _%tl4614546175%_)
                                      ((lambda (_%L46178%_ _%L46180%_)
                                         (let* ((_%g4619446202%_
                                                 (lambda (_%g4619546198%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g4619546198%_)))
                                                (_%g4619346221%_
                                                 (lambda (_%g4619546206%_)
                                                   ((lambda (_%L46209%_)
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
                                                        (cons _%L46209%_ '()))
                                                  (cons 'contract:
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                        (cons _%L46178%_ '()))
                                  '()))
                      (cons 'value: (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g4619546206%_))))
                                           (_%g4619346221%_
                                            (let ((_%$e46233%_
                                                   (let ((_%$e46225%_
                                                          (gx#stx-source
                                                           _%L46178%_)))
                                                     (if _%$e46225%_
                                                         _%$e46225%_
                                                         (let ((_%$e46229%_
                                                                (gx#stx-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx46133%_)))
                   (if _%$e46229%_ _%$e46229%_ (gx#stx-source _%L46180%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if _%$e46233%_
                                                  ((lambda (_%locat46237%_)
                                                     (call-with-output-string
                                                      '""
                                                      (lambda (_%g4623946241%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (##display-locat
                                                           _%locat46237%_
                                                           '#t
                                                           _%g4623946241%_)))))
                                                   _%$e46233%_)
                                                  (gx#expander-context-id
                                                   (gx#core-context-top)))))))
                                       _%hd4614446172%_
                                       _%hd4614146162%_)
                                      (_%g4613646151%_ _%g4613746155%_))))
                              (_%g4613646151%_ _%g4613746155%_))))
                      (_%g4613646151%_ _%g4613746155%_)))))
          (_%g4613546247%_ _%stx46133%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#abort!|
      (lambda (_%$stx46251%_)
        (let* ((_%g4625546269%_
                (lambda (_%g4625646265%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4625646265%_)))
               (_%g4625446310%_
                (lambda (_%g4625646273%_)
                  (if (gx#stx-pair? _%g4625646273%_)
                      (let ((_%e4625846276%_ (gx#syntax-e _%g4625646273%_)))
                        (let ((_%hd4625946280%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4625846276%_)))
                              (_%tl4626046283%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4625846276%_))))
                          (if (gx#stx-pair? _%tl4626046283%_)
                              (let ((_%e4626146286%_
                                     (gx#syntax-e _%tl4626046283%_)))
                                (let ((_%hd4626246290%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4626146286%_)))
                                      (_%tl4626346293%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4626146286%_))))
                                  (if (gx#stx-null? _%tl4626346293%_)
                                      ((lambda (_%L46296%_)
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
                         (cons _%L46296%_
                               (cons (cons (gx#datum->syntax '#f 'void) '())
                                     '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd4626246290%_)
                                      (_%g4625546269%_ _%g4625646273%_))))
                              (_%g4625546269%_ _%g4625646273%_))))
                      (_%g4625546269%_ _%g4625646273%_)))))
          (_%g4625446310%_ _%$stx46251%_))))))
