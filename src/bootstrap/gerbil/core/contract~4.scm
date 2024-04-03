(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeCast[1]#_g80139_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/contract~TypeCast[:0:]#:|
      (lambda (_%stx45423%_)
        (let* ((_%g4542645444%_
                (lambda (_%g4542745440%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4542745440%_)))
               (_%g4542545639%_
                (lambda (_%g4542745448%_)
                  (if (gx#stx-pair? _%g4542745448%_)
                      (let ((_%e4543245451%_ (gx#syntax-e _%g4542745448%_)))
                        (let ((_%hd4543145455%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4543245451%_)))
                              (_%tl4543045458%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4543245451%_))))
                          (if (gx#stx-pair? _%tl4543045458%_)
                              (let ((_%e4543545461%_
                                     (gx#syntax-e _%tl4543045458%_)))
                                (let ((_%hd4543445465%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4543545461%_)))
                                      (_%tl4543345468%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4543545461%_))))
                                  (if (gx#stx-pair? _%tl4543345468%_)
                                      (let ((_%e4543845471%_
                                             (gx#syntax-e _%tl4543345468%_)))
                                        (let ((_%hd4543745475%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4543845471%_)))
                                              (_%tl4543645478%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4543845471%_))))
                                          (if (gx#stx-null? _%tl4543645478%_)
                                              ((lambda (_%L45481%_ _%L45483%_)
                                                 (if (gx#identifier?
                                                      _%L45481%_)
                                                     (let ((_%meta45500%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                               _%stx45423%_
                                                               _%L45481%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (class-instance?
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              _%meta45500%_))
                                                           (let ()
                                                             (let* ((_%g4550545520%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%g4550645516%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g4550645516%_)))
                            (_%g4550445567%_
                             (lambda (_%g4550645524%_)
                               (if (gx#stx-pair? _%g4550645524%_)
                                   (let ((_%e4551145527%_
                                          (gx#syntax-e _%g4550645524%_)))
                                     (let ((_%hd4551045531%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4551145527%_)))
                                           (_%tl4550945534%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4551145527%_))))
                                       (if (gx#stx-pair? _%tl4550945534%_)
                                           (let ((_%e4551445537%_
                                                  (gx#syntax-e
                                                   _%tl4550945534%_)))
                                             (let ((_%hd4551345541%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e4551445537%_)))
                                                   (_%tl4551245544%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e4551445537%_))))
                                               (if (gx#stx-null?
                                                    _%tl4551245544%_)
                                                   ((lambda (_%L45547%_
                                                             _%L45549%_)
                                                      (let ()
                                                        (if (let ((__tmp80137
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__obj79986 _%meta45500%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    __obj79986
                                    'gerbil.core#class-type-info::t))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __obj79986
                                    '1
                                    '#f
                                    '#f))
                                 (class-slot-ref
                                  gerbil/core/mop~MOP-2#class-type-info::t
                                  __obj79986
                                  'id)))))
                      (declare (not safe))
                      (##memq __tmp80137 '(t void)))
                    (cons (gx#datum->syntax '#f 'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@type)
                                      (cons _%L45549%_ '()))
                                (cons _%L45483%_ '())))
                    (cons (gx#datum->syntax '#f 'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@type)
                                      (cons _%L45549%_ '()))
                                (cons (cons (gx#datum->syntax '#f 'let)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'val)
                                                        (cons _%L45483%_ '()))
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'if)
                                                              (cons (cons _%L45547%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (gx#datum->syntax '#f 'val) '()))
                            (cons (gx#datum->syntax '#f 'val)
                                  (cons (cons (gx#datum->syntax '#f 'error)
                                              (cons '"bad cast"
                                                    (cons _%L45549%_
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
                                                    _%hd4551345541%_
                                                    _%hd4551045531%_)
                                                   (_%g4550545520%_
                                                    _%g4550645524%_))))
                                           (_%g4550545520%_ _%g4550645524%_))))
                                   (_%g4550545520%_ _%g4550645524%_)))))
                       (_%g4550445567%_
                        (list (let ((__obj79987 _%meta45500%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-direct-instance-of?
                                       __obj79987
                                       'gerbil.core#class-type-info::t))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __obj79987
                                       '12
                                       '#f
                                       '#f))
                                    (class-slot-ref
                                     gerbil/core/mop~MOP-2#class-type-info::t
                                     __obj79987
                                     'type-descriptor)))
                              (let ((__obj79988 _%meta45500%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-direct-instance-of?
                                       __obj79988
                                       'gerbil.core#class-type-info::t))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __obj79988
                                       '14
                                       '#f
                                       '#f))
                                    (class-slot-ref
                                     gerbil/core/mop~MOP-2#class-type-info::t
                                     __obj79988
                                     'predicate)))))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%meta45500%_))
                       (let ()
                         (let* ((_%g4557345588%_
                                 (lambda (_%g4557445584%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g4557445584%_)))
                                (_%g4557245633%_
                                 (lambda (_%g4557445592%_)
                                   (if (gx#stx-pair? _%g4557445592%_)
                                       (let ((_%e4557945595%_
                                              (gx#syntax-e _%g4557445592%_)))
                                         (let ((_%hd4557845599%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4557945595%_)))
                                               (_%tl4557745602%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4557945595%_))))
                                           (if (gx#stx-pair? _%tl4557745602%_)
                                               (let ((_%e4558245605%_
                                                      (gx#syntax-e
                                                       _%tl4557745602%_)))
                                                 (let ((_%hd4558145609%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e4558245605%_)))
                                                       (_%tl4558045612%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e4558245605%_))))
                                                   (if (gx#stx-null?
                                                        _%tl4558045612%_)
                                                       ((lambda (_%L45615%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%L45617%_)
                  (let ()
                    (cons (gx#datum->syntax '#f 'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@type)
                                      (cons _%L45617%_ '()))
                                (cons (cons _%L45615%_ (cons _%L45483%_ '()))
                                      '())))))
                _%hd4558145609%_
                _%hd4557845599%_)
               (_%g4557345588%_ _%g4557445592%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g4557345588%_
                                                _%g4557445592%_))))
                                       (_%g4557345588%_ _%g4557445592%_)))))
                           (_%g4557245633%_
                            (list (let ((__obj79989 _%meta45500%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-direct-instance-of?
                                           __obj79989
                                           'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __obj79989
                                           '4
                                           '#f
                                           '#f))
                                        (class-slot-ref
                                         gerbil/core/contract~InterfaceInfo#interface-info::t
                                         __obj79989
                                         'instance-type)))
                                  (let ()
                                    (declare (not safe))
                                    (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                     _%stx45423%_
                                     _%L45481%_))))))
                       (let ()
                         (gx#raise-syntax-error
                          '#f
                          '"not a class type or interface"
                          _%stx45423%_
                          _%L45481%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4542645444%_
                                                      _%g4542745448%_)))
                                               _%hd4543745475%_
                                               _%hd4543445465%_)
                                              (_%g4542645444%_
                                               _%g4542745448%_))))
                                      (_%g4542645444%_ _%g4542745448%_))))
                              (_%g4542645444%_ _%g4542745448%_))))
                      (_%g4542645444%_ _%g4542745448%_)))))
          (_%g4542545639%_ _%stx45423%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:?|
      (lambda (_%stx45643%_)
        (let* ((_%g4564645664%_
                (lambda (_%g4564745660%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4564745660%_)))
               (_%g4564545858%_
                (lambda (_%g4564745668%_)
                  (if (gx#stx-pair? _%g4564745668%_)
                      (let ((_%e4565245671%_ (gx#syntax-e _%g4564745668%_)))
                        (let ((_%hd4565145675%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4565245671%_)))
                              (_%tl4565045678%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4565245671%_))))
                          (if (gx#stx-pair? _%tl4565045678%_)
                              (let ((_%e4565545681%_
                                     (gx#syntax-e _%tl4565045678%_)))
                                (let ((_%hd4565445685%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4565545681%_)))
                                      (_%tl4565345688%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4565545681%_))))
                                  (if (gx#stx-pair? _%tl4565345688%_)
                                      (let ((_%e4565845691%_
                                             (gx#syntax-e _%tl4565345688%_)))
                                        (let ((_%hd4565745695%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4565845691%_)))
                                              (_%tl4565645698%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4565845691%_))))
                                          (if (gx#stx-null? _%tl4565645698%_)
                                              ((lambda (_%L45701%_ _%L45703%_)
                                                 (if (gx#identifier?
                                                      _%L45701%_)
                                                     (let ((_%meta45719%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                               _%stx45643%_
                                                               _%L45701%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (class-instance?
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              _%meta45719%_))
                                                           (let ()
                                                             (let* ((_%g4572445739%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%g4572545735%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g4572545735%_)))
                            (_%g4572345786%_
                             (lambda (_%g4572545743%_)
                               (if (gx#stx-pair? _%g4572545743%_)
                                   (let ((_%e4573045746%_
                                          (gx#syntax-e _%g4572545743%_)))
                                     (let ((_%hd4572945750%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e4573045746%_)))
                                           (_%tl4572845753%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e4573045746%_))))
                                       (if (gx#stx-pair? _%tl4572845753%_)
                                           (let ((_%e4573345756%_
                                                  (gx#syntax-e
                                                   _%tl4572845753%_)))
                                             (let ((_%hd4573245760%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e4573345756%_)))
                                                   (_%tl4573145763%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e4573345756%_))))
                                               (if (gx#stx-null?
                                                    _%tl4573145763%_)
                                                   ((lambda (_%L45766%_
                                                             _%L45768%_)
                                                      (let ()
                                                        (if (let ((__tmp80138
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__obj79990 _%meta45719%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    __obj79990
                                    'gerbil.core#class-type-info::t))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __obj79990
                                    '1
                                    '#f
                                    '#f))
                                 (class-slot-ref
                                  gerbil/core/mop~MOP-2#class-type-info::t
                                  __obj79990
                                  'id)))))
                      (declare (not safe))
                      (##memq __tmp80138 '(t void)))
                    (cons (gx#datum->syntax '#f 'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@type)
                                      (cons _%L45768%_ '()))
                                (cons _%L45703%_ '())))
                    (cons (gx#datum->syntax '#f 'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@type)
                                      (cons _%L45768%_ '()))
                                (cons (cons (gx#datum->syntax '#f 'let)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'val)
                                                        (cons _%L45703%_ '()))
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
                                        (cons (cons _%L45766%_
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
                                                    (cons _%L45703%_
                                                          (cons _%L45766%_
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
                                                    _%hd4573245760%_
                                                    _%hd4572945750%_)
                                                   (_%g4572445739%_
                                                    _%g4572545743%_))))
                                           (_%g4572445739%_ _%g4572545743%_))))
                                   (_%g4572445739%_ _%g4572545743%_)))))
                       (_%g4572345786%_
                        (list (let ((__obj79991 _%meta45719%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-direct-instance-of?
                                       __obj79991
                                       'gerbil.core#class-type-info::t))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __obj79991
                                       '12
                                       '#f
                                       '#f))
                                    (class-slot-ref
                                     gerbil/core/mop~MOP-2#class-type-info::t
                                     __obj79991
                                     'type-descriptor)))
                              (let ((__obj79992 _%meta45719%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-direct-instance-of?
                                       __obj79992
                                       'gerbil.core#class-type-info::t))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __obj79992
                                       '14
                                       '#f
                                       '#f))
                                    (class-slot-ref
                                     gerbil/core/mop~MOP-2#class-type-info::t
                                     __obj79992
                                     'predicate)))))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%meta45719%_))
                       (let ()
                         (let* ((_%g4579245807%_
                                 (lambda (_%g4579345803%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g4579345803%_)))
                                (_%g4579145852%_
                                 (lambda (_%g4579345811%_)
                                   (if (gx#stx-pair? _%g4579345811%_)
                                       (let ((_%e4579845814%_
                                              (gx#syntax-e _%g4579345811%_)))
                                         (let ((_%hd4579745818%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e4579845814%_)))
                                               (_%tl4579645821%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e4579845814%_))))
                                           (if (gx#stx-pair? _%tl4579645821%_)
                                               (let ((_%e4580145824%_
                                                      (gx#syntax-e
                                                       _%tl4579645821%_)))
                                                 (let ((_%hd4580045828%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e4580145824%_)))
                                                       (_%tl4579945831%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e4580145824%_))))
                                                   (if (gx#stx-null?
                                                        _%tl4579945831%_)
                                                       ((lambda (_%L45834%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%L45836%_)
                  (let ()
                    (cons (gx#datum->syntax '#f 'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@type)
                                      (cons _%L45836%_ '()))
                                (cons (cons (gx#datum->syntax '#f 'let)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'val)
                                                        (cons _%L45703%_ '()))
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'and)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'val)
                            (cons (cons _%L45834%_
                                        (cons (gx#datum->syntax '#f 'val) '()))
                                  '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))
                _%hd4580045828%_
                _%hd4579745818%_)
               (_%g4579245807%_ _%g4579345811%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g4579245807%_
                                                _%g4579345811%_))))
                                       (_%g4579245807%_ _%g4579345811%_)))))
                           (_%g4579145852%_
                            (list (let ((__obj79993 _%meta45719%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-direct-instance-of?
                                           __obj79993
                                           'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __obj79993
                                           '4
                                           '#f
                                           '#f))
                                        (class-slot-ref
                                         gerbil/core/contract~InterfaceInfo#interface-info::t
                                         __obj79993
                                         'instance-type)))
                                  (let ()
                                    (declare (not safe))
                                    (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                     _%stx45643%_
                                     _%L45701%_))))))
                       (let ()
                         (gx#raise-syntax-error
                          '#f
                          '"not a class type or interface"
                          _%stx45643%_
                          _%L45701%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4564645664%_
                                                      _%g4564745668%_)))
                                               _%hd4565745695%_
                                               _%hd4565445685%_)
                                              (_%g4564645664%_
                                               _%g4564745668%_))))
                                      (_%g4564645664%_ _%g4564745668%_))))
                              (_%g4564645664%_ _%g4564745668%_))))
                      (_%g4564645664%_ _%g4564745668%_)))))
          (_%g4564545858%_ _%stx45643%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:-|
      (lambda (_%stx45862%_)
        (let* ((_%g4586545883%_
                (lambda (_%g4586645879%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4586645879%_)))
               (_%g4586445969%_
                (lambda (_%g4586645887%_)
                  (if (gx#stx-pair? _%g4586645887%_)
                      (let ((_%e4587145890%_ (gx#syntax-e _%g4586645887%_)))
                        (let ((_%hd4587045894%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4587145890%_)))
                              (_%tl4586945897%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4587145890%_))))
                          (if (gx#stx-pair? _%tl4586945897%_)
                              (let ((_%e4587445900%_
                                     (gx#syntax-e _%tl4586945897%_)))
                                (let ((_%hd4587345904%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4587445900%_)))
                                      (_%tl4587245907%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4587445900%_))))
                                  (if (gx#stx-pair? _%tl4587245907%_)
                                      (let ((_%e4587745910%_
                                             (gx#syntax-e _%tl4587245907%_)))
                                        (let ((_%hd4587645914%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4587745910%_)))
                                              (_%tl4587545917%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4587745910%_))))
                                          (if (gx#stx-null? _%tl4587545917%_)
                                              ((lambda (_%L45920%_ _%L45922%_)
                                                 (if (gx#identifier?
                                                      _%L45920%_)
                                                     (let* ((_%g4593845946%_
                                                             (lambda (_%g4593945942%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g4593945942%_)))
                                                            (_%g4593745965%_
                                                             (lambda (_%g4593945950%_)
                                                               ((lambda (_%L45953%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (cons (gx#datum->syntax '#f 'begin-annotation)
                                  (cons (cons (gx#datum->syntax '#f '@type)
                                              (cons _%L45953%_ '()))
                                        (cons _%L45922%_ '())))))
                        _%g4593945950%_))))
               (_%g4593745965%_
                (let ()
                  (declare (not safe))
                  (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                   _%stx45862%_
                   _%L45920%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4586545883%_
                                                      _%g4586645887%_)))
                                               _%hd4587645914%_
                                               _%hd4587345904%_)
                                              (_%g4586545883%_
                                               _%g4586645887%_))))
                                      (_%g4586545883%_ _%g4586645887%_))))
                              (_%g4586545883%_ _%g4586645887%_))))
                      (_%g4586545883%_ _%g4586645887%_)))))
          (_%g4586445969%_ _%stx45862%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:~|
      (lambda (_%$stx45973%_)
        (let* ((_%__stx7491374914%_ _%$stx45973%_)
               (_%g4597846014%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7491374914%_))))
          (let ((_%__kont7491674917%_
                 (lambda (_%L46132%_ _%L46134%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f 'val)
                                     (cons _%L46134%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (cons _%L46132%_
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
                           (cons _%L46134%_
                                 (cons _%L46132%_
                                       (cons (gx#datum->syntax '#f 'val)
                                             '()))))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7491874919%_
                 (lambda (_%L46071%_ _%L46073%_ _%L46074%_)
                   (cons (gx#datum->syntax '#f ':-)
                         (cons (cons (gx#datum->syntax '#f ':~)
                                     (cons _%L46074%_ (cons _%L46073%_ '())))
                               (cons _%L46071%_ '()))))))
            (if (gx#stx-pair? _%__stx7491374914%_)
                (let ((_%e4598446102%_ (gx#syntax-e _%__stx7491374914%_)))
                  (let ((_%tl4598246109%_
                         (let () (declare (not safe)) (##cdr _%e4598446102%_)))
                        (_%hd4598346106%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4598446102%_))))
                    (if (gx#stx-pair? _%tl4598246109%_)
                        (let ((_%e4598746112%_ (gx#syntax-e _%tl4598246109%_)))
                          (let ((_%tl4598546119%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4598746112%_)))
                                (_%hd4598646116%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4598746112%_))))
                            (if (gx#stx-pair? _%tl4598546119%_)
                                (let ((_%e4599046122%_
                                       (gx#syntax-e _%tl4598546119%_)))
                                  (let ((_%tl4598846129%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4599046122%_)))
                                        (_%hd4598946126%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4599046122%_))))
                                    (if (gx#stx-null? _%tl4598846129%_)
                                        (_%__kont7491674917%_
                                         _%hd4598946126%_
                                         _%hd4598646116%_)
                                        (if (gx#stx-pair? _%tl4598846129%_)
                                            (let ((_%e4600546051%_
                                                   (gx#syntax-e
                                                    _%tl4598846129%_)))
                                              (let ((_%tl4600346058%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4600546051%_)))
                                                    (_%hd4600446055%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4600546051%_))))
                                                (if (gx#identifier?
                                                     _%hd4600446055%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~TypeCast[1]#_g80139_|
                                                         _%hd4600446055%_)
                                                        (if (gx#stx-pair?
                                                             _%tl4600346058%_)
                                                            (let ((_%e4600846061%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl4600346058%_)))
                      (let ((_%tl4600646068%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4600846061%_)))
                            (_%hd4600746065%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4600846061%_))))
                        (if (gx#stx-null? _%tl4600646068%_)
                            (_%__kont7491874919%_
                             _%hd4600746065%_
                             _%hd4598946126%_
                             _%hd4598646116%_)
                            (let () (declare (not safe)) (_%g4597846014%_)))))
                    (let () (declare (not safe)) (_%g4597846014%_)))
                (let () (declare (not safe)) (_%g4597846014%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4597846014%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4597846014%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4597846014%_)))))
                        (let () (declare (not safe)) (_%g4597846014%_)))))
                (let () (declare (not safe)) (_%g4597846014%_)))))))
    (define |gerbil/core/contract~TypeCast[:0:]#::-|
      (lambda (_%$stx46153%_)
        (let ((_%g4615646163%_
               (lambda (_%g4615746159%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4615746159%_))))
          (_%g4615646163%_ _%$stx46153%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:=|
      (lambda (_%$stx46167%_)
        (let ((_%g4617046177%_
               (lambda (_%g4617146173%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4617146173%_))))
          (_%g4617046177%_ _%$stx46167%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#check-nil!|
      (lambda (_%$stx46181%_)
        (let* ((_%g4618546199%_
                (lambda (_%g4618646195%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4618646195%_)))
               (_%g4618446240%_
                (lambda (_%g4618646203%_)
                  (if (gx#stx-pair? _%g4618646203%_)
                      (let ((_%e4619046206%_ (gx#syntax-e _%g4618646203%_)))
                        (let ((_%hd4618946210%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4619046206%_)))
                              (_%tl4618846213%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4619046206%_))))
                          (if (gx#stx-pair? _%tl4618846213%_)
                              (let ((_%e4619346216%_
                                     (gx#syntax-e _%tl4618846213%_)))
                                (let ((_%hd4619246220%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4619346216%_)))
                                      (_%tl4619146223%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4619346216%_))))
                                  (if (gx#stx-null? _%tl4619146223%_)
                                      ((lambda (_%L46226%_)
                                         (cons (gx#datum->syntax '#f 'or)
                                               (cons _%L46226%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'nil-dereference!)
                         (cons _%L46226%_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd4619246220%_)
                                      (_%g4618546199%_ _%g4618646203%_))))
                              (_%g4618546199%_ _%g4618646203%_))))
                      (_%g4618546199%_ _%g4618646203%_)))))
          (_%g4618446240%_ _%$stx46181%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#contract-violation!|
      (lambda (_%stx46244%_)
        (let* ((_%g4624746270%_
                (lambda (_%g4624846266%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4624846266%_)))
               (_%g4624646394%_
                (lambda (_%g4624846274%_)
                  (if (gx#stx-pair? _%g4624846274%_)
                      (let ((_%e4625546277%_ (gx#syntax-e _%g4624846274%_)))
                        (let ((_%hd4625446281%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4625546277%_)))
                              (_%tl4625346284%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4625546277%_))))
                          (if (gx#stx-pair? _%tl4625346284%_)
                              (let ((_%e4625846287%_
                                     (gx#syntax-e _%tl4625346284%_)))
                                (let ((_%hd4625746291%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4625846287%_)))
                                      (_%tl4625646294%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4625846287%_))))
                                  (if (gx#stx-pair? _%tl4625646294%_)
                                      (let ((_%e4626146297%_
                                             (gx#syntax-e _%tl4625646294%_)))
                                        (let ((_%hd4626046301%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4626146297%_)))
                                              (_%tl4625946304%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4626146297%_))))
                                          (if (gx#stx-pair? _%tl4625946304%_)
                                              (let ((_%e4626446307%_
                                                     (gx#syntax-e
                                                      _%tl4625946304%_)))
                                                (let ((_%hd4626346311%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4626446307%_)))
                                                      (_%tl4626246314%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4626446307%_))))
                                                  (if (gx#stx-null?
                                                       _%tl4626246314%_)
                                                      ((lambda (_%L46317%_
                                                                _%L46319%_
                                                                _%L46320%_
                                                                _%L46321%_)
                                                         (let* ((_%g4634146349%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g4634246345%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g4634246345%_)))
                        (_%g4634046368%_
                         (lambda (_%g4634246353%_)
                           ((lambda (_%L46356%_)
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
                                  (cons _%L46356%_ '()))
                            (cons 'contract:
                                  (cons (cons (gx#datum->syntax '#f 'quote)
                                              (cons _%L46319%_ '()))
                                        (cons 'value:
                                              (cons _%L46317%_ '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '()))))
                            _%g4634246353%_))))
                   (_%g4634046368%_
                    (let ((_%$e46380%_
                           (let ((_%$e46372%_ (gx#stx-source _%L46320%_)))
                             (if _%$e46372%_
                                 _%$e46372%_
                                 (let ((_%$e46376%_
                                        (gx#stx-source _%stx46244%_)))
                                   (if _%$e46376%_
                                       _%$e46376%_
                                       (gx#stx-source _%L46321%_)))))))
                      (if _%$e46380%_
                          ((lambda (_%locat46384%_)
                             (call-with-output-string
                              '""
                              (lambda (_%g4638646388%_)
                                (let ()
                                  (declare (not safe))
                                  (##display-locat
                                   _%locat46384%_
                                   '#t
                                   _%g4638646388%_)))))
                           _%$e46380%_)
                          (let ()
                            (gx#expander-context-id
                             (gx#core-context-top))))))))
               _%hd4626346311%_
               _%hd4626046301%_
               _%hd4625746291%_
               _%hd4625446281%_)
              (_%g4624746270%_ _%g4624846274%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4624746270%_
                                               _%g4624846274%_))))
                                      (_%g4624746270%_ _%g4624846274%_))))
                              (_%g4624746270%_ _%g4624846274%_))))
                      (_%g4624746270%_ _%g4624846274%_)))))
          (_%g4624646394%_ _%stx46244%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#nil-dereference!|
      (lambda (_%stx46398%_)
        (let* ((_%g4640146416%_
                (lambda (_%g4640246412%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4640246412%_)))
               (_%g4640046512%_
                (lambda (_%g4640246420%_)
                  (if (gx#stx-pair? _%g4640246420%_)
                      (let ((_%e4640746423%_ (gx#syntax-e _%g4640246420%_)))
                        (let ((_%hd4640646427%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4640746423%_)))
                              (_%tl4640546430%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4640746423%_))))
                          (if (gx#stx-pair? _%tl4640546430%_)
                              (let ((_%e4641046433%_
                                     (gx#syntax-e _%tl4640546430%_)))
                                (let ((_%hd4640946437%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4641046433%_)))
                                      (_%tl4640846440%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4641046433%_))))
                                  (if (gx#stx-null? _%tl4640846440%_)
                                      ((lambda (_%L46443%_ _%L46445%_)
                                         (let* ((_%g4645946467%_
                                                 (lambda (_%g4646046463%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g4646046463%_)))
                                                (_%g4645846486%_
                                                 (lambda (_%g4646046471%_)
                                                   ((lambda (_%L46474%_)
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
                                                          (cons _%L46474%_
                                                                '()))
                                                    (cons 'contract:
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                          (cons _%L46443%_ '()))
                                    '()))
                        (cons 'value: (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g4646046471%_))))
                                           (_%g4645846486%_
                                            (let ((_%$e46498%_
                                                   (let ((_%$e46490%_
                                                          (gx#stx-source
                                                           _%L46443%_)))
                                                     (if _%$e46490%_
                                                         _%$e46490%_
                                                         (let ((_%$e46494%_
                                                                (gx#stx-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx46398%_)))
                   (if _%$e46494%_ _%$e46494%_ (gx#stx-source _%L46445%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if _%$e46498%_
                                                  ((lambda (_%locat46502%_)
                                                     (call-with-output-string
                                                      '""
                                                      (lambda (_%g4650446506%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (##display-locat
                                                           _%locat46502%_
                                                           '#t
                                                           _%g4650446506%_)))))
                                                   _%$e46498%_)
                                                  (let ()
                                                    (gx#expander-context-id
                                                     (gx#core-context-top))))))))
                                       _%hd4640946437%_
                                       _%hd4640646427%_)
                                      (_%g4640146416%_ _%g4640246420%_))))
                              (_%g4640146416%_ _%g4640246420%_))))
                      (_%g4640146416%_ _%g4640246420%_)))))
          (_%g4640046512%_ _%stx46398%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#abort!|
      (lambda (_%$stx46516%_)
        (let* ((_%g4652046534%_
                (lambda (_%g4652146530%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4652146530%_)))
               (_%g4651946575%_
                (lambda (_%g4652146538%_)
                  (if (gx#stx-pair? _%g4652146538%_)
                      (let ((_%e4652546541%_ (gx#syntax-e _%g4652146538%_)))
                        (let ((_%hd4652446545%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4652546541%_)))
                              (_%tl4652346548%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4652546541%_))))
                          (if (gx#stx-pair? _%tl4652346548%_)
                              (let ((_%e4652846551%_
                                     (gx#syntax-e _%tl4652346548%_)))
                                (let ((_%hd4652746555%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4652846551%_)))
                                      (_%tl4652646558%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4652846551%_))))
                                  (if (gx#stx-null? _%tl4652646558%_)
                                      ((lambda (_%L46561%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'begin-annotation)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '@abort)
                                                           '())
                                                     (cons _%L46561%_ '()))))
                                       _%hd4652746555%_)
                                      (_%g4652046534%_ _%g4652146538%_))))
                              (_%g4652046534%_ _%g4652146538%_))))
                      (_%g4652046534%_ _%g4652146538%_)))))
          (_%g4651946575%_ _%$stx46516%_))))))
