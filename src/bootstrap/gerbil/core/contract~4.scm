(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeCast[1]#_g80701_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/contract~TypeCast[:0:]#:|
      (lambda (_%stx45419%_)
        (let* ((_%g4542245440%_
                (lambda (_%g4542345436%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4542345436%_)))
               (_%g4542145635%_
                (lambda (_%g4542345444%_)
                  (if (gx#stx-pair? _%g4542345444%_)
                      (let ((_%e4542845447%_ (gx#syntax-e _%g4542345444%_)))
                        (let ((_%hd4542745451%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4542845447%_)))
                              (_%tl4542645454%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4542845447%_))))
                          (if (gx#stx-pair? _%tl4542645454%_)
                              (let ((_%e4543145457%_
                                     (gx#syntax-e _%tl4542645454%_)))
                                (let ((_%hd4543045461%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4543145457%_)))
                                      (_%tl4542945464%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4543145457%_))))
                                  (if (gx#stx-pair? _%tl4542945464%_)
                                      (let ((_%e4543445467%_
                                             (gx#syntax-e _%tl4542945464%_)))
                                        (let ((_%hd4543345471%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4543445467%_)))
                                              (_%tl4543245474%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4543445467%_))))
                                          (if (gx#stx-null? _%tl4543245474%_)
                                              ((lambda (_%L45477%_ _%L45479%_)
                                                 (if (gx#identifier?
                                                      _%L45477%_)
                                                     (let ((_%meta45496%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                               _%stx45419%_
                                                               _%L45477%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (class-instance?
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              _%meta45496%_))
                                                           (let ()
                                                             (let* ((_%g4550145516%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%g4550245512%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g4550245512%_)))
                            (_%g4550045563%_
                             (lambda (_%g4550245520%_)
                               (if (gx#stx-pair? _%g4550245520%_)
                                   (let ((_%e4550745523%_
                                          (gx#syntax-e _%g4550245520%_)))
                                     (let ((_%hd4550645527%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4550745523%_)))
                                           (_%tl4550545530%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4550745523%_))))
                                       (if (gx#stx-pair? _%tl4550545530%_)
                                           (let ((_%e4551045533%_
                                                  (gx#syntax-e
                                                   _%tl4550545530%_)))
                                             (let ((_%hd4550945537%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e4551045533%_)))
                                                   (_%tl4550845540%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e4551045533%_))))
                                               (if (gx#stx-null?
                                                    _%tl4550845540%_)
                                                   ((lambda (_%L45543%_
                                                             _%L45545%_)
                                                      (let ()
                                                        (if (let ((__tmp80699
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__obj80552 _%meta45496%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    __obj80552
                                    'gerbil.core#class-type-info::t))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __obj80552
                                    '1
                                    '#f
                                    '#f))
                                 (class-slot-ref
                                  gerbil/core/mop~MOP-2#class-type-info::t
                                  __obj80552
                                  'id)))))
                      (declare (not safe))
                      (##memq __tmp80699 '(t void)))
                    (cons (gx#datum->syntax '#f 'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@type)
                                      (cons _%L45545%_ '()))
                                (cons _%L45479%_ '())))
                    (cons (gx#datum->syntax '#f 'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@type)
                                      (cons _%L45545%_ '()))
                                (cons (cons (gx#datum->syntax '#f 'let)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'val)
                                                        (cons _%L45479%_ '()))
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'if)
                                                              (cons (cons _%L45543%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (gx#datum->syntax '#f 'val) '()))
                            (cons (gx#datum->syntax '#f 'val)
                                  (cons (cons (gx#datum->syntax '#f 'error)
                                              (cons '"bad cast"
                                                    (cons _%L45545%_
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'val)
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '()))))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd4550945537%_
                                                    _%hd4550645527%_)
                                                   (_%g4550145516%_
                                                    _%g4550245520%_))))
                                           (_%g4550145516%_ _%g4550245520%_))))
                                   (_%g4550145516%_ _%g4550245520%_)))))
                       (_%g4550045563%_
                        (list (let ((__obj80553 _%meta45496%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-direct-instance-of?
                                       __obj80553
                                       'gerbil.core#class-type-info::t))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __obj80553
                                       '12
                                       '#f
                                       '#f))
                                    (class-slot-ref
                                     gerbil/core/mop~MOP-2#class-type-info::t
                                     __obj80553
                                     'type-descriptor)))
                              (let ((__obj80554 _%meta45496%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-direct-instance-of?
                                       __obj80554
                                       'gerbil.core#class-type-info::t))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __obj80554
                                       '14
                                       '#f
                                       '#f))
                                    (class-slot-ref
                                     gerbil/core/mop~MOP-2#class-type-info::t
                                     __obj80554
                                     'predicate)))))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%meta45496%_))
                       (let ()
                         (let* ((_%g4556945584%_
                                 (lambda (_%g4557045580%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g4557045580%_)))
                                (_%g4556845629%_
                                 (lambda (_%g4557045588%_)
                                   (if (gx#stx-pair? _%g4557045588%_)
                                       (let ((_%e4557545591%_
                                              (gx#syntax-e _%g4557045588%_)))
                                         (let ((_%hd4557445595%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4557545591%_)))
                                               (_%tl4557345598%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4557545591%_))))
                                           (if (gx#stx-pair? _%tl4557345598%_)
                                               (let ((_%e4557845601%_
                                                      (gx#syntax-e
                                                       _%tl4557345598%_)))
                                                 (let ((_%hd4557745605%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e4557845601%_)))
                                                       (_%tl4557645608%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e4557845601%_))))
                                                   (if (gx#stx-null?
                                                        _%tl4557645608%_)
                                                       ((lambda (_%L45611%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%L45613%_)
                  (let ()
                    (cons (gx#datum->syntax '#f 'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@type)
                                      (cons _%L45613%_ '()))
                                (cons (cons _%L45611%_ (cons _%L45479%_ '()))
                                      '())))))
                _%hd4557745605%_
                _%hd4557445595%_)
               (_%g4556945584%_ _%g4557045588%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g4556945584%_
                                                _%g4557045588%_))))
                                       (_%g4556945584%_ _%g4557045588%_)))))
                           (_%g4556845629%_
                            (list (let ((__obj80555 _%meta45496%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-direct-instance-of?
                                           __obj80555
                                           'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __obj80555
                                           '4
                                           '#f
                                           '#f))
                                        (class-slot-ref
                                         gerbil/core/contract~InterfaceInfo#interface-info::t
                                         __obj80555
                                         'instance-type)))
                                  (let ()
                                    (declare (not safe))
                                    (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                     _%stx45419%_
                                     _%L45477%_))))))
                       (let ()
                         (gx#raise-syntax-error
                          '#f
                          '"not a class type or interface"
                          _%stx45419%_
                          _%L45477%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4542245440%_
                                                      _%g4542345444%_)))
                                               _%hd4543345471%_
                                               _%hd4543045461%_)
                                              (_%g4542245440%_
                                               _%g4542345444%_))))
                                      (_%g4542245440%_ _%g4542345444%_))))
                              (_%g4542245440%_ _%g4542345444%_))))
                      (_%g4542245440%_ _%g4542345444%_)))))
          (_%g4542145635%_ _%stx45419%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:?|
      (lambda (_%stx45639%_)
        (let* ((_%g4564245660%_
                (lambda (_%g4564345656%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4564345656%_)))
               (_%g4564145854%_
                (lambda (_%g4564345664%_)
                  (if (gx#stx-pair? _%g4564345664%_)
                      (let ((_%e4564845667%_ (gx#syntax-e _%g4564345664%_)))
                        (let ((_%hd4564745671%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4564845667%_)))
                              (_%tl4564645674%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4564845667%_))))
                          (if (gx#stx-pair? _%tl4564645674%_)
                              (let ((_%e4565145677%_
                                     (gx#syntax-e _%tl4564645674%_)))
                                (let ((_%hd4565045681%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4565145677%_)))
                                      (_%tl4564945684%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4565145677%_))))
                                  (if (gx#stx-pair? _%tl4564945684%_)
                                      (let ((_%e4565445687%_
                                             (gx#syntax-e _%tl4564945684%_)))
                                        (let ((_%hd4565345691%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4565445687%_)))
                                              (_%tl4565245694%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4565445687%_))))
                                          (if (gx#stx-null? _%tl4565245694%_)
                                              ((lambda (_%L45697%_ _%L45699%_)
                                                 (if (gx#identifier?
                                                      _%L45697%_)
                                                     (let ((_%meta45715%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                               _%stx45639%_
                                                               _%L45697%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (class-instance?
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              _%meta45715%_))
                                                           (let ()
                                                             (let* ((_%g4572045735%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%g4572145731%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g4572145731%_)))
                            (_%g4571945782%_
                             (lambda (_%g4572145739%_)
                               (if (gx#stx-pair? _%g4572145739%_)
                                   (let ((_%e4572645742%_
                                          (gx#syntax-e _%g4572145739%_)))
                                     (let ((_%hd4572545746%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4572645742%_)))
                                           (_%tl4572445749%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4572645742%_))))
                                       (if (gx#stx-pair? _%tl4572445749%_)
                                           (let ((_%e4572945752%_
                                                  (gx#syntax-e
                                                   _%tl4572445749%_)))
                                             (let ((_%hd4572845756%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e4572945752%_)))
                                                   (_%tl4572745759%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e4572945752%_))))
                                               (if (gx#stx-null?
                                                    _%tl4572745759%_)
                                                   ((lambda (_%L45762%_
                                                             _%L45764%_)
                                                      (let ()
                                                        (if (let ((__tmp80700
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__obj80556 _%meta45715%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    __obj80556
                                    'gerbil.core#class-type-info::t))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __obj80556
                                    '1
                                    '#f
                                    '#f))
                                 (class-slot-ref
                                  gerbil/core/mop~MOP-2#class-type-info::t
                                  __obj80556
                                  'id)))))
                      (declare (not safe))
                      (##memq __tmp80700 '(t void)))
                    (cons (gx#datum->syntax '#f 'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@type)
                                      (cons _%L45764%_ '()))
                                (cons _%L45699%_ '())))
                    (cons (gx#datum->syntax '#f 'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@type)
                                      (cons _%L45764%_ '()))
                                (cons (cons (gx#datum->syntax '#f 'let)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'val)
                                                        (cons _%L45699%_ '()))
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
                                        (cons (cons _%L45762%_
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
                                                    (cons _%L45699%_
                                                          (cons _%L45762%_
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'val)
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '()))))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd4572845756%_
                                                    _%hd4572545746%_)
                                                   (_%g4572045735%_
                                                    _%g4572145739%_))))
                                           (_%g4572045735%_ _%g4572145739%_))))
                                   (_%g4572045735%_ _%g4572145739%_)))))
                       (_%g4571945782%_
                        (list (let ((__obj80557 _%meta45715%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-direct-instance-of?
                                       __obj80557
                                       'gerbil.core#class-type-info::t))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __obj80557
                                       '12
                                       '#f
                                       '#f))
                                    (class-slot-ref
                                     gerbil/core/mop~MOP-2#class-type-info::t
                                     __obj80557
                                     'type-descriptor)))
                              (let ((__obj80558 _%meta45715%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-direct-instance-of?
                                       __obj80558
                                       'gerbil.core#class-type-info::t))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __obj80558
                                       '14
                                       '#f
                                       '#f))
                                    (class-slot-ref
                                     gerbil/core/mop~MOP-2#class-type-info::t
                                     __obj80558
                                     'predicate)))))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%meta45715%_))
                       (let ()
                         (let* ((_%g4578845803%_
                                 (lambda (_%g4578945799%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g4578945799%_)))
                                (_%g4578745848%_
                                 (lambda (_%g4578945807%_)
                                   (if (gx#stx-pair? _%g4578945807%_)
                                       (let ((_%e4579445810%_
                                              (gx#syntax-e _%g4578945807%_)))
                                         (let ((_%hd4579345814%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4579445810%_)))
                                               (_%tl4579245817%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4579445810%_))))
                                           (if (gx#stx-pair? _%tl4579245817%_)
                                               (let ((_%e4579745820%_
                                                      (gx#syntax-e
                                                       _%tl4579245817%_)))
                                                 (let ((_%hd4579645824%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e4579745820%_)))
                                                       (_%tl4579545827%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e4579745820%_))))
                                                   (if (gx#stx-null?
                                                        _%tl4579545827%_)
                                                       ((lambda (_%L45830%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%L45832%_)
                  (let ()
                    (cons (gx#datum->syntax '#f 'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@type)
                                      (cons _%L45832%_ '()))
                                (cons (cons (gx#datum->syntax '#f 'let)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'val)
                                                        (cons _%L45699%_ '()))
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'and)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'val)
                            (cons (cons _%L45830%_
                                        (cons (gx#datum->syntax '#f 'val) '()))
                                  '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))
                _%hd4579645824%_
                _%hd4579345814%_)
               (_%g4578845803%_ _%g4578945807%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g4578845803%_
                                                _%g4578945807%_))))
                                       (_%g4578845803%_ _%g4578945807%_)))))
                           (_%g4578745848%_
                            (list (let ((__obj80559 _%meta45715%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-direct-instance-of?
                                           __obj80559
                                           'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __obj80559
                                           '4
                                           '#f
                                           '#f))
                                        (class-slot-ref
                                         gerbil/core/contract~InterfaceInfo#interface-info::t
                                         __obj80559
                                         'instance-type)))
                                  (let ()
                                    (declare (not safe))
                                    (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                     _%stx45639%_
                                     _%L45697%_))))))
                       (let ()
                         (gx#raise-syntax-error
                          '#f
                          '"not a class type or interface"
                          _%stx45639%_
                          _%L45697%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4564245660%_
                                                      _%g4564345664%_)))
                                               _%hd4565345691%_
                                               _%hd4565045681%_)
                                              (_%g4564245660%_
                                               _%g4564345664%_))))
                                      (_%g4564245660%_ _%g4564345664%_))))
                              (_%g4564245660%_ _%g4564345664%_))))
                      (_%g4564245660%_ _%g4564345664%_)))))
          (_%g4564145854%_ _%stx45639%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:-|
      (lambda (_%stx45858%_)
        (let* ((_%g4586145879%_
                (lambda (_%g4586245875%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4586245875%_)))
               (_%g4586045965%_
                (lambda (_%g4586245883%_)
                  (if (gx#stx-pair? _%g4586245883%_)
                      (let ((_%e4586745886%_ (gx#syntax-e _%g4586245883%_)))
                        (let ((_%hd4586645890%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4586745886%_)))
                              (_%tl4586545893%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4586745886%_))))
                          (if (gx#stx-pair? _%tl4586545893%_)
                              (let ((_%e4587045896%_
                                     (gx#syntax-e _%tl4586545893%_)))
                                (let ((_%hd4586945900%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4587045896%_)))
                                      (_%tl4586845903%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4587045896%_))))
                                  (if (gx#stx-pair? _%tl4586845903%_)
                                      (let ((_%e4587345906%_
                                             (gx#syntax-e _%tl4586845903%_)))
                                        (let ((_%hd4587245910%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4587345906%_)))
                                              (_%tl4587145913%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4587345906%_))))
                                          (if (gx#stx-null? _%tl4587145913%_)
                                              ((lambda (_%L45916%_ _%L45918%_)
                                                 (if (gx#identifier?
                                                      _%L45916%_)
                                                     (let* ((_%g4593445942%_
                                                             (lambda (_%g4593545938%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g4593545938%_)))
                                                            (_%g4593345961%_
                                                             (lambda (_%g4593545946%_)
                                                               ((lambda (_%L45949%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (cons (gx#datum->syntax '#f 'begin-annotation)
                                  (cons (cons (gx#datum->syntax '#f '@type)
                                              (cons _%L45949%_ '()))
                                        (cons _%L45918%_ '())))))
                        _%g4593545946%_))))
               (_%g4593345961%_
                (let ()
                  (declare (not safe))
                  (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                   _%stx45858%_
                   _%L45916%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4586145879%_
                                                      _%g4586245883%_)))
                                               _%hd4587245910%_
                                               _%hd4586945900%_)
                                              (_%g4586145879%_
                                               _%g4586245883%_))))
                                      (_%g4586145879%_ _%g4586245883%_))))
                              (_%g4586145879%_ _%g4586245883%_))))
                      (_%g4586145879%_ _%g4586245883%_)))))
          (_%g4586045965%_ _%stx45858%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:~|
      (lambda (_%$stx45969%_)
        (let* ((_%__stx7559375594%_ _%$stx45969%_)
               (_%g4597446010%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7559375594%_))))
          (let ((_%__kont7559675597%_
                 (lambda (_%L46128%_ _%L46130%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f 'val)
                                     (cons _%L46130%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (cons _%L46128%_
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
                           (cons _%L46130%_
                                 (cons _%L46128%_
                                       (cons (gx#datum->syntax '#f 'val)
                                             '()))))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7559875599%_
                 (lambda (_%L46067%_ _%L46069%_ _%L46070%_)
                   (cons (gx#datum->syntax '#f ':-)
                         (cons (cons (gx#datum->syntax '#f ':~)
                                     (cons _%L46070%_ (cons _%L46069%_ '())))
                               (cons _%L46067%_ '()))))))
            (if (gx#stx-pair? _%__stx7559375594%_)
                (let ((_%e4598046098%_ (gx#syntax-e _%__stx7559375594%_)))
                  (let ((_%tl4597846105%_
                         (let () (declare (not safe)) (##cdr _%e4598046098%_)))
                        (_%hd4597946102%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4598046098%_))))
                    (if (gx#stx-pair? _%tl4597846105%_)
                        (let ((_%e4598346108%_ (gx#syntax-e _%tl4597846105%_)))
                          (let ((_%tl4598146115%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4598346108%_)))
                                (_%hd4598246112%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4598346108%_))))
                            (if (gx#stx-pair? _%tl4598146115%_)
                                (let ((_%e4598646118%_
                                       (gx#syntax-e _%tl4598146115%_)))
                                  (let ((_%tl4598446125%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4598646118%_)))
                                        (_%hd4598546122%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4598646118%_))))
                                    (if (gx#stx-null? _%tl4598446125%_)
                                        (_%__kont7559675597%_
                                         _%hd4598546122%_
                                         _%hd4598246112%_)
                                        (if (gx#stx-pair? _%tl4598446125%_)
                                            (let ((_%e4600146047%_
                                                   (gx#syntax-e
                                                    _%tl4598446125%_)))
                                              (let ((_%tl4599946054%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4600146047%_)))
                                                    (_%hd4600046051%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4600146047%_))))
                                                (if (gx#identifier?
                                                     _%hd4600046051%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~TypeCast[1]#_g80701_|
                                                         _%hd4600046051%_)
                                                        (if (gx#stx-pair?
                                                             _%tl4599946054%_)
                                                            (let ((_%e4600446057%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl4599946054%_)))
                      (let ((_%tl4600246064%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4600446057%_)))
                            (_%hd4600346061%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4600446057%_))))
                        (if (gx#stx-null? _%tl4600246064%_)
                            (_%__kont7559875599%_
                             _%hd4600346061%_
                             _%hd4598546122%_
                             _%hd4598246112%_)
                            (let () (declare (not safe)) (_%g4597446010%_)))))
                    (let () (declare (not safe)) (_%g4597446010%_)))
                (let () (declare (not safe)) (_%g4597446010%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4597446010%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4597446010%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4597446010%_)))))
                        (let () (declare (not safe)) (_%g4597446010%_)))))
                (let () (declare (not safe)) (_%g4597446010%_)))))))
    (define |gerbil/core/contract~TypeCast[:0:]#::-|
      (lambda (_%$stx46149%_)
        (let ((_%g4615246159%_
               (lambda (_%g4615346155%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4615346155%_))))
          (_%g4615246159%_ _%$stx46149%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:=|
      (lambda (_%$stx46163%_)
        (let ((_%g4616646173%_
               (lambda (_%g4616746169%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4616746169%_))))
          (_%g4616646173%_ _%$stx46163%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#check-nil!|
      (lambda (_%$stx46177%_)
        (let* ((_%g4618146195%_
                (lambda (_%g4618246191%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4618246191%_)))
               (_%g4618046236%_
                (lambda (_%g4618246199%_)
                  (if (gx#stx-pair? _%g4618246199%_)
                      (let ((_%e4618646202%_ (gx#syntax-e _%g4618246199%_)))
                        (let ((_%hd4618546206%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4618646202%_)))
                              (_%tl4618446209%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4618646202%_))))
                          (if (gx#stx-pair? _%tl4618446209%_)
                              (let ((_%e4618946212%_
                                     (gx#syntax-e _%tl4618446209%_)))
                                (let ((_%hd4618846216%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4618946212%_)))
                                      (_%tl4618746219%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4618946212%_))))
                                  (if (gx#stx-null? _%tl4618746219%_)
                                      ((lambda (_%L46222%_)
                                         (cons (gx#datum->syntax '#f 'or)
                                               (cons _%L46222%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'nil-dereference!)
                         (cons _%L46222%_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd4618846216%_)
                                      (_%g4618146195%_ _%g4618246199%_))))
                              (_%g4618146195%_ _%g4618246199%_))))
                      (_%g4618146195%_ _%g4618246199%_)))))
          (_%g4618046236%_ _%$stx46177%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#contract-violation!|
      (lambda (_%stx46240%_)
        (let* ((_%g4624346266%_
                (lambda (_%g4624446262%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4624446262%_)))
               (_%g4624246390%_
                (lambda (_%g4624446270%_)
                  (if (gx#stx-pair? _%g4624446270%_)
                      (let ((_%e4625146273%_ (gx#syntax-e _%g4624446270%_)))
                        (let ((_%hd4625046277%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4625146273%_)))
                              (_%tl4624946280%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4625146273%_))))
                          (if (gx#stx-pair? _%tl4624946280%_)
                              (let ((_%e4625446283%_
                                     (gx#syntax-e _%tl4624946280%_)))
                                (let ((_%hd4625346287%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4625446283%_)))
                                      (_%tl4625246290%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4625446283%_))))
                                  (if (gx#stx-pair? _%tl4625246290%_)
                                      (let ((_%e4625746293%_
                                             (gx#syntax-e _%tl4625246290%_)))
                                        (let ((_%hd4625646297%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4625746293%_)))
                                              (_%tl4625546300%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4625746293%_))))
                                          (if (gx#stx-pair? _%tl4625546300%_)
                                              (let ((_%e4626046303%_
                                                     (gx#syntax-e
                                                      _%tl4625546300%_)))
                                                (let ((_%hd4625946307%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4626046303%_)))
                                                      (_%tl4625846310%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4626046303%_))))
                                                  (if (gx#stx-null?
                                                       _%tl4625846310%_)
                                                      ((lambda (_%L46313%_
                                                                _%L46315%_
                                                                _%L46316%_
                                                                _%L46317%_)
                                                         (let* ((_%g4633746345%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g4633846341%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g4633846341%_)))
                        (_%g4633646364%_
                         (lambda (_%g4633846349%_)
                           ((lambda (_%L46352%_)
                              (let ()
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
                                  (cons _%L46352%_ '()))
                            (cons 'contract:
                                  (cons (cons (gx#datum->syntax '#f 'quote)
                                              (cons _%L46315%_ '()))
                                        (cons 'value:
                                              (cons _%L46313%_ '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '()))))
                            _%g4633846349%_))))
                   (_%g4633646364%_
                    (let ((_%$e46376%_
                           (let ((_%$e46368%_ (gx#stx-source _%L46316%_)))
                             (if _%$e46368%_
                                 _%$e46368%_
                                 (let ((_%$e46372%_
                                        (gx#stx-source _%stx46240%_)))
                                   (if _%$e46372%_
                                       _%$e46372%_
                                       (gx#stx-source _%L46317%_)))))))
                      (if _%$e46376%_
                          ((lambda (_%locat46380%_)
                             (call-with-output-string
                              '""
                              (lambda (_%g4638246384%_)
                                (let ()
                                  (declare (not safe))
                                  (##display-locat
                                   _%locat46380%_
                                   '#t
                                   _%g4638246384%_)))))
                           _%$e46376%_)
                          (let ()
                            (gx#expander-context-id
                             (gx#core-context-top))))))))
               _%hd4625946307%_
               _%hd4625646297%_
               _%hd4625346287%_
               _%hd4625046277%_)
              (_%g4624346266%_ _%g4624446270%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4624346266%_
                                               _%g4624446270%_))))
                                      (_%g4624346266%_ _%g4624446270%_))))
                              (_%g4624346266%_ _%g4624446270%_))))
                      (_%g4624346266%_ _%g4624446270%_)))))
          (_%g4624246390%_ _%stx46240%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#nil-dereference!|
      (lambda (_%stx46394%_)
        (let* ((_%g4639746412%_
                (lambda (_%g4639846408%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4639846408%_)))
               (_%g4639646508%_
                (lambda (_%g4639846416%_)
                  (if (gx#stx-pair? _%g4639846416%_)
                      (let ((_%e4640346419%_ (gx#syntax-e _%g4639846416%_)))
                        (let ((_%hd4640246423%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4640346419%_)))
                              (_%tl4640146426%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4640346419%_))))
                          (if (gx#stx-pair? _%tl4640146426%_)
                              (let ((_%e4640646429%_
                                     (gx#syntax-e _%tl4640146426%_)))
                                (let ((_%hd4640546433%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4640646429%_)))
                                      (_%tl4640446436%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4640646429%_))))
                                  (if (gx#stx-null? _%tl4640446436%_)
                                      ((lambda (_%L46439%_ _%L46441%_)
                                         (let* ((_%g4645546463%_
                                                 (lambda (_%g4645646459%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g4645646459%_)))
                                                (_%g4645446482%_
                                                 (lambda (_%g4645646467%_)
                                                   ((lambda (_%L46470%_)
                                                      (let ()
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
                                                          (cons _%L46470%_
                                                                '()))
                                                    (cons 'contract:
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                          (cons _%L46439%_ '()))
                                    '()))
                        (cons 'value: (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g4645646467%_))))
                                           (_%g4645446482%_
                                            (let ((_%$e46494%_
                                                   (let ((_%$e46486%_
                                                          (gx#stx-source
                                                           _%L46439%_)))
                                                     (if _%$e46486%_
                                                         _%$e46486%_
                                                         (let ((_%$e46490%_
                                                                (gx#stx-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx46394%_)))
                   (if _%$e46490%_ _%$e46490%_ (gx#stx-source _%L46441%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if _%$e46494%_
                                                  ((lambda (_%locat46498%_)
                                                     (call-with-output-string
                                                      '""
                                                      (lambda (_%g4650046502%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (##display-locat
                                                           _%locat46498%_
                                                           '#t
                                                           _%g4650046502%_)))))
                                                   _%$e46494%_)
                                                  (let ()
                                                    (gx#expander-context-id
                                                     (gx#core-context-top))))))))
                                       _%hd4640546433%_
                                       _%hd4640246423%_)
                                      (_%g4639746412%_ _%g4639846416%_))))
                              (_%g4639746412%_ _%g4639846416%_))))
                      (_%g4639746412%_ _%g4639846416%_)))))
          (_%g4639646508%_ _%stx46394%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#abort!|
      (lambda (_%$stx46512%_)
        (let* ((_%g4651646530%_
                (lambda (_%g4651746526%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4651746526%_)))
               (_%g4651546571%_
                (lambda (_%g4651746534%_)
                  (if (gx#stx-pair? _%g4651746534%_)
                      (let ((_%e4652146537%_ (gx#syntax-e _%g4651746534%_)))
                        (let ((_%hd4652046541%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4652146537%_)))
                              (_%tl4651946544%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4652146537%_))))
                          (if (gx#stx-pair? _%tl4651946544%_)
                              (let ((_%e4652446547%_
                                     (gx#syntax-e _%tl4651946544%_)))
                                (let ((_%hd4652346551%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4652446547%_)))
                                      (_%tl4652246554%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4652446547%_))))
                                  (if (gx#stx-null? _%tl4652246554%_)
                                      ((lambda (_%L46557%_)
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
                         (cons _%L46557%_
                               (cons (cons (gx#datum->syntax '#f 'void) '())
                                     '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd4652346551%_)
                                      (_%g4651646530%_ _%g4651746534%_))))
                              (_%g4651646530%_ _%g4651746534%_))))
                      (_%g4651646530%_ _%g4651746534%_)))))
          (_%g4651546571%_ _%$stx46512%_))))))
