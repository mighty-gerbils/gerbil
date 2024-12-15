(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeCast[1]#_g84879_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/contract~TypeCast[:0:]#:|
      (lambda (_%stx45223%_)
        (let* ((_%g4522645244%_
                (lambda (_%g4522745240%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4522745240%_)))
               (_%g4522545439%_
                (lambda (_%g4522745248%_)
                  (if (gx#stx-pair? _%g4522745248%_)
                      (let ((_%e4523045251%_ (gx#syntax-e _%g4522745248%_)))
                        (let ((_%hd4523145255%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4523045251%_)))
                              (_%tl4523245258%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4523045251%_))))
                          (if (gx#stx-pair? _%tl4523245258%_)
                              (let ((_%e4523345261%_
                                     (gx#syntax-e _%tl4523245258%_)))
                                (let ((_%hd4523445265%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4523345261%_)))
                                      (_%tl4523545268%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4523345261%_))))
                                  (if (gx#stx-pair? _%tl4523545268%_)
                                      (let ((_%e4523645271%_
                                             (gx#syntax-e _%tl4523545268%_)))
                                        (let ((_%hd4523745275%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4523645271%_)))
                                              (_%tl4523845278%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4523645271%_))))
                                          (if (gx#stx-null? _%tl4523845278%_)
                                              ((lambda (_%L45281%_ _%L45283%_)
                                                 (if (gx#identifier?
                                                      _%L45281%_)
                                                     (let ((_%meta45300%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                               _%stx45223%_
                                                               _%L45281%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (class-instance?
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              _%meta45300%_))
                                                           (let* ((_%g4530545320%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g4530645316%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g4530645316%_)))
                          (_%g4530445367%_
                           (lambda (_%g4530645324%_)
                             (if (gx#stx-pair? _%g4530645324%_)
                                 (let ((_%e4530945327%_
                                        (gx#syntax-e _%g4530645324%_)))
                                   (let ((_%hd4531045331%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4530945327%_)))
                                         (_%tl4531145334%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4530945327%_))))
                                     (if (gx#stx-pair? _%tl4531145334%_)
                                         (let ((_%e4531245337%_
                                                (gx#syntax-e
                                                 _%tl4531145334%_)))
                                           (let ((_%hd4531345341%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e4531245337%_)))
                                                 (_%tl4531445344%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e4531245337%_))))
                                             (if (gx#stx-null?
                                                  _%tl4531445344%_)
                                                 ((lambda (_%L45347%_
                                                           _%L45349%_)
                                                    (if (let ((__tmp84877
                                                               (let ((__obj84728
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%meta45300%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj84728
                                'gerbil.core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj84728
                                '1
                                '#f
                                '#f))
                             (unchecked-slot-ref __obj84728 'id)))))
                  (declare (not safe))
                  (##memq __tmp84877 '(t void)))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%L45349%_ '()))
                            (cons _%L45283%_ '())))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%L45349%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%L45283%_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons _%L45347%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f 'val) '()))
                        (cons (gx#datum->syntax '#f 'val)
                              (cons (cons (gx#datum->syntax '#f 'error)
                                          (cons '"bad cast"
                                                (cons _%L45349%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'val)
                                                            '()))))
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%hd4531345341%_
                                                  _%hd4531045331%_)
                                                 (_%g4530545320%_
                                                  _%g4530645324%_))))
                                         (_%g4530545320%_ _%g4530645324%_))))
                                 (_%g4530545320%_ _%g4530645324%_)))))
                     (_%g4530445367%_
                      (list (let ((__obj84729 _%meta45300%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj84729
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj84729
                                     '12
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj84729
                                   'type-descriptor)))
                            (let ((__obj84730 _%meta45300%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj84730
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj84730
                                     '14
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj84730
                                   'predicate))))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%meta45300%_))
                       (let* ((_%g4537345388%_
                               (lambda (_%g4537445384%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g4537445384%_)))
                              (_%g4537245433%_
                               (lambda (_%g4537445392%_)
                                 (if (gx#stx-pair? _%g4537445392%_)
                                     (let ((_%e4537745395%_
                                            (gx#syntax-e _%g4537445392%_)))
                                       (let ((_%hd4537845399%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4537745395%_)))
                                             (_%tl4537945402%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4537745395%_))))
                                         (if (gx#stx-pair? _%tl4537945402%_)
                                             (let ((_%e4538045405%_
                                                    (gx#syntax-e
                                                     _%tl4537945402%_)))
                                               (let ((_%hd4538145409%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4538045405%_)))
                                                     (_%tl4538245412%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4538045405%_))))
                                                 (if (gx#stx-null?
                                                      _%tl4538245412%_)
                                                     ((lambda (_%L45415%_
                                                               _%L45417%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@type)
                                  (cons _%L45417%_ '()))
                            (cons (cons _%L45415%_ (cons _%L45283%_ '()))
                                  '()))))
              _%hd4538145409%_
              _%hd4537845399%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4537345388%_
                                                      _%g4537445392%_))))
                                             (_%g4537345388%_
                                              _%g4537445392%_))))
                                     (_%g4537345388%_ _%g4537445392%_)))))
                         (_%g4537245433%_
                          (list (let ((__obj84727 _%meta45300%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj84727
                                         'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj84727
                                         '5
                                         '#f
                                         '#f))
                                      (unchecked-slot-ref
                                       __obj84727
                                       'instance-type)))
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                   _%stx45223%_
                                   _%L45281%_)))))
                       (gx#raise-syntax-error
                        '#f
                        '"not a class type or interface"
                        _%stx45223%_
                        _%L45281%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4522645244%_
                                                      _%g4522745248%_)))
                                               _%hd4523745275%_
                                               _%hd4523445265%_)
                                              (_%g4522645244%_
                                               _%g4522745248%_))))
                                      (_%g4522645244%_ _%g4522745248%_))))
                              (_%g4522645244%_ _%g4522745248%_))))
                      (_%g4522645244%_ _%g4522745248%_)))))
          (_%g4522545439%_ _%stx45223%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:?|
      (lambda (_%stx45443%_)
        (let* ((_%g4544645464%_
                (lambda (_%g4544745460%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4544745460%_)))
               (_%g4544545658%_
                (lambda (_%g4544745468%_)
                  (if (gx#stx-pair? _%g4544745468%_)
                      (let ((_%e4545045471%_ (gx#syntax-e _%g4544745468%_)))
                        (let ((_%hd4545145475%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4545045471%_)))
                              (_%tl4545245478%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4545045471%_))))
                          (if (gx#stx-pair? _%tl4545245478%_)
                              (let ((_%e4545345481%_
                                     (gx#syntax-e _%tl4545245478%_)))
                                (let ((_%hd4545445485%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4545345481%_)))
                                      (_%tl4545545488%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4545345481%_))))
                                  (if (gx#stx-pair? _%tl4545545488%_)
                                      (let ((_%e4545645491%_
                                             (gx#syntax-e _%tl4545545488%_)))
                                        (let ((_%hd4545745495%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4545645491%_)))
                                              (_%tl4545845498%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4545645491%_))))
                                          (if (gx#stx-null? _%tl4545845498%_)
                                              ((lambda (_%L45501%_ _%L45503%_)
                                                 (if (gx#identifier?
                                                      _%L45501%_)
                                                     (let ((_%meta45519%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                               _%stx45443%_
                                                               _%L45501%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (class-instance?
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              _%meta45519%_))
                                                           (let* ((_%g4552445539%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g4552545535%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g4552545535%_)))
                          (_%g4552345586%_
                           (lambda (_%g4552545543%_)
                             (if (gx#stx-pair? _%g4552545543%_)
                                 (let ((_%e4552845546%_
                                        (gx#syntax-e _%g4552545543%_)))
                                   (let ((_%hd4552945550%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4552845546%_)))
                                         (_%tl4553045553%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4552845546%_))))
                                     (if (gx#stx-pair? _%tl4553045553%_)
                                         (let ((_%e4553145556%_
                                                (gx#syntax-e
                                                 _%tl4553045553%_)))
                                           (let ((_%hd4553245560%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e4553145556%_)))
                                                 (_%tl4553345563%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e4553145556%_))))
                                             (if (gx#stx-null?
                                                  _%tl4553345563%_)
                                                 ((lambda (_%L45566%_
                                                           _%L45568%_)
                                                    (if (let ((__tmp84878
                                                               (let ((__obj84732
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%meta45519%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj84732
                                'gerbil.core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj84732
                                '1
                                '#f
                                '#f))
                             (unchecked-slot-ref __obj84732 'id)))))
                  (declare (not safe))
                  (##memq __tmp84878 '(t void)))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%L45568%_ '()))
                            (cons _%L45503%_ '())))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%L45568%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%L45503%_ '()))
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
                                    (cons (cons _%L45566%_
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
                                                (cons _%L45503%_
                                                      (cons _%L45566%_
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
                                                  _%hd4553245560%_
                                                  _%hd4552945550%_)
                                                 (_%g4552445539%_
                                                  _%g4552545543%_))))
                                         (_%g4552445539%_ _%g4552545543%_))))
                                 (_%g4552445539%_ _%g4552545543%_)))))
                     (_%g4552345586%_
                      (list (let ((__obj84733 _%meta45519%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj84733
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj84733
                                     '12
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj84733
                                   'type-descriptor)))
                            (let ((__obj84734 _%meta45519%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj84734
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj84734
                                     '14
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj84734
                                   'predicate))))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%meta45519%_))
                       (let* ((_%g4559245607%_
                               (lambda (_%g4559345603%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g4559345603%_)))
                              (_%g4559145652%_
                               (lambda (_%g4559345611%_)
                                 (if (gx#stx-pair? _%g4559345611%_)
                                     (let ((_%e4559645614%_
                                            (gx#syntax-e _%g4559345611%_)))
                                       (let ((_%hd4559745618%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4559645614%_)))
                                             (_%tl4559845621%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4559645614%_))))
                                         (if (gx#stx-pair? _%tl4559845621%_)
                                             (let ((_%e4559945624%_
                                                    (gx#syntax-e
                                                     _%tl4559845621%_)))
                                               (let ((_%hd4560045628%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4559945624%_)))
                                                     (_%tl4560145631%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4559945624%_))))
                                                 (if (gx#stx-null?
                                                      _%tl4560145631%_)
                                                     ((lambda (_%L45634%_
                                                               _%L45636%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@type)
                                  (cons _%L45636%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%L45503%_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'and)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'val)
                        (cons (cons _%L45634%_
                                    (cons (gx#datum->syntax '#f 'val) '()))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '()))))
              _%hd4560045628%_
              _%hd4559745618%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4559245607%_
                                                      _%g4559345611%_))))
                                             (_%g4559245607%_
                                              _%g4559345611%_))))
                                     (_%g4559245607%_ _%g4559345611%_)))))
                         (_%g4559145652%_
                          (list (let ((__obj84731 _%meta45519%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj84731
                                         'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj84731
                                         '5
                                         '#f
                                         '#f))
                                      (unchecked-slot-ref
                                       __obj84731
                                       'instance-type)))
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                   _%stx45443%_
                                   _%L45501%_)))))
                       (gx#raise-syntax-error
                        '#f
                        '"not a class type or interface"
                        _%stx45443%_
                        _%L45501%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4544645464%_
                                                      _%g4544745468%_)))
                                               _%hd4545745495%_
                                               _%hd4545445485%_)
                                              (_%g4544645464%_
                                               _%g4544745468%_))))
                                      (_%g4544645464%_ _%g4544745468%_))))
                              (_%g4544645464%_ _%g4544745468%_))))
                      (_%g4544645464%_ _%g4544745468%_)))))
          (_%g4544545658%_ _%stx45443%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:-|
      (lambda (_%stx45662%_)
        (let* ((_%g4566545683%_
                (lambda (_%g4566645679%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4566645679%_)))
               (_%g4566445769%_
                (lambda (_%g4566645687%_)
                  (if (gx#stx-pair? _%g4566645687%_)
                      (let ((_%e4566945690%_ (gx#syntax-e _%g4566645687%_)))
                        (let ((_%hd4567045694%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4566945690%_)))
                              (_%tl4567145697%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4566945690%_))))
                          (if (gx#stx-pair? _%tl4567145697%_)
                              (let ((_%e4567245700%_
                                     (gx#syntax-e _%tl4567145697%_)))
                                (let ((_%hd4567345704%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4567245700%_)))
                                      (_%tl4567445707%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4567245700%_))))
                                  (if (gx#stx-pair? _%tl4567445707%_)
                                      (let ((_%e4567545710%_
                                             (gx#syntax-e _%tl4567445707%_)))
                                        (let ((_%hd4567645714%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4567545710%_)))
                                              (_%tl4567745717%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4567545710%_))))
                                          (if (gx#stx-null? _%tl4567745717%_)
                                              ((lambda (_%L45720%_ _%L45722%_)
                                                 (if (gx#identifier?
                                                      _%L45720%_)
                                                     (let* ((_%g4573845746%_
                                                             (lambda (_%g4573945742%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g4573945742%_)))
                                                            (_%g4573745765%_
                                                             (lambda (_%g4573945750%_)
                                                               ((lambda (_%L45753%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'begin-annotation)
                                (cons (cons (gx#datum->syntax '#f '@type)
                                            (cons _%L45753%_ '()))
                                      (cons _%L45722%_ '()))))
                        _%g4573945750%_))))
               (_%g4573745765%_
                (let ()
                  (declare (not safe))
                  (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                   _%stx45662%_
                   _%L45720%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4566545683%_
                                                      _%g4566645687%_)))
                                               _%hd4567645714%_
                                               _%hd4567345704%_)
                                              (_%g4566545683%_
                                               _%g4566645687%_))))
                                      (_%g4566545683%_ _%g4566645687%_))))
                              (_%g4566545683%_ _%g4566645687%_))))
                      (_%g4566545683%_ _%g4566645687%_)))))
          (_%g4566445769%_ _%stx45662%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:~|
      (lambda (_%$stx45773%_)
        (let* ((_%__stx7916379164%_ _%$stx45773%_)
               (_%g4577845814%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7916379164%_))))
          (let ((_%__kont7916679167%_
                 (lambda (_%L45932%_ _%L45934%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f 'val)
                                     (cons _%L45934%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (cons _%L45932%_
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
                           (cons _%L45934%_
                                 (cons _%L45932%_
                                       (cons (gx#datum->syntax '#f 'val)
                                             '()))))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7916879169%_
                 (lambda (_%L45871%_ _%L45873%_ _%L45874%_)
                   (cons (gx#datum->syntax '#f ':-)
                         (cons (cons (gx#datum->syntax '#f ':~)
                                     (cons _%L45874%_ (cons _%L45873%_ '())))
                               (cons _%L45871%_ '()))))))
            (if (gx#stx-pair? _%__stx7916379164%_)
                (let ((_%e4578245902%_ (gx#syntax-e _%__stx7916379164%_)))
                  (let ((_%tl4578445909%_
                         (let () (declare (not safe)) (##cdr _%e4578245902%_)))
                        (_%hd4578345906%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4578245902%_))))
                    (if (gx#stx-pair? _%tl4578445909%_)
                        (let ((_%e4578545912%_ (gx#syntax-e _%tl4578445909%_)))
                          (let ((_%tl4578745919%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4578545912%_)))
                                (_%hd4578645916%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4578545912%_))))
                            (if (gx#stx-pair? _%tl4578745919%_)
                                (let ((_%e4578845922%_
                                       (gx#syntax-e _%tl4578745919%_)))
                                  (let ((_%tl4579045929%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4578845922%_)))
                                        (_%hd4578945926%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4578845922%_))))
                                    (if (gx#stx-null? _%tl4579045929%_)
                                        (_%__kont7916679167%_
                                         _%hd4578945926%_
                                         _%hd4578645916%_)
                                        (if (gx#stx-pair? _%tl4579045929%_)
                                            (let ((_%e4580345851%_
                                                   (gx#syntax-e
                                                    _%tl4579045929%_)))
                                              (let ((_%tl4580545858%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4580345851%_)))
                                                    (_%hd4580445855%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4580345851%_))))
                                                (if (gx#identifier?
                                                     _%hd4580445855%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~TypeCast[1]#_g84879_|
                                                         _%hd4580445855%_)
                                                        (if (gx#stx-pair?
                                                             _%tl4580545858%_)
                                                            (let ((_%e4580645861%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl4580545858%_)))
                      (let ((_%tl4580845868%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4580645861%_)))
                            (_%hd4580745865%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4580645861%_))))
                        (if (gx#stx-null? _%tl4580845868%_)
                            (_%__kont7916879169%_
                             _%hd4580745865%_
                             _%hd4578945926%_
                             _%hd4578645916%_)
                            (let () (declare (not safe)) (_%g4577845814%_)))))
                    (let () (declare (not safe)) (_%g4577845814%_)))
                (let () (declare (not safe)) (_%g4577845814%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4577845814%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4577845814%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4577845814%_)))))
                        (let () (declare (not safe)) (_%g4577845814%_)))))
                (let () (declare (not safe)) (_%g4577845814%_)))))))
    (define |gerbil/core/contract~TypeCast[:0:]#::-|
      (lambda (_%$stx45953%_)
        (let ((_%g4595645963%_
               (lambda (_%g4595745959%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4595745959%_))))
          (_%g4595645963%_ _%$stx45953%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:=|
      (lambda (_%$stx45967%_)
        (let ((_%g4597045977%_
               (lambda (_%g4597145973%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4597145973%_))))
          (_%g4597045977%_ _%$stx45967%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#check-nil!|
      (lambda (_%$stx45981%_)
        (let* ((_%g4598545999%_
                (lambda (_%g4598645995%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4598645995%_)))
               (_%g4598446040%_
                (lambda (_%g4598646003%_)
                  (if (gx#stx-pair? _%g4598646003%_)
                      (let ((_%e4598846006%_ (gx#syntax-e _%g4598646003%_)))
                        (let ((_%hd4598946010%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4598846006%_)))
                              (_%tl4599046013%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4598846006%_))))
                          (if (gx#stx-pair? _%tl4599046013%_)
                              (let ((_%e4599146016%_
                                     (gx#syntax-e _%tl4599046013%_)))
                                (let ((_%hd4599246020%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4599146016%_)))
                                      (_%tl4599346023%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4599146016%_))))
                                  (if (gx#stx-null? _%tl4599346023%_)
                                      ((lambda (_%L46026%_)
                                         (cons (gx#datum->syntax '#f 'or)
                                               (cons _%L46026%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'nil-dereference!)
                         (cons _%L46026%_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd4599246020%_)
                                      (_%g4598545999%_ _%g4598646003%_))))
                              (_%g4598545999%_ _%g4598646003%_))))
                      (_%g4598545999%_ _%g4598646003%_)))))
          (_%g4598446040%_ _%$stx45981%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#contract-violation!|
      (lambda (_%stx46044%_)
        (let* ((_%g4604746070%_
                (lambda (_%g4604846066%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4604846066%_)))
               (_%g4604646194%_
                (lambda (_%g4604846074%_)
                  (if (gx#stx-pair? _%g4604846074%_)
                      (let ((_%e4605346077%_ (gx#syntax-e _%g4604846074%_)))
                        (let ((_%hd4605446081%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4605346077%_)))
                              (_%tl4605546084%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4605346077%_))))
                          (if (gx#stx-pair? _%tl4605546084%_)
                              (let ((_%e4605646087%_
                                     (gx#syntax-e _%tl4605546084%_)))
                                (let ((_%hd4605746091%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4605646087%_)))
                                      (_%tl4605846094%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4605646087%_))))
                                  (if (gx#stx-pair? _%tl4605846094%_)
                                      (let ((_%e4605946097%_
                                             (gx#syntax-e _%tl4605846094%_)))
                                        (let ((_%hd4606046101%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4605946097%_)))
                                              (_%tl4606146104%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4605946097%_))))
                                          (if (gx#stx-pair? _%tl4606146104%_)
                                              (let ((_%e4606246107%_
                                                     (gx#syntax-e
                                                      _%tl4606146104%_)))
                                                (let ((_%hd4606346111%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4606246107%_)))
                                                      (_%tl4606446114%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4606246107%_))))
                                                  (if (gx#stx-null?
                                                       _%tl4606446114%_)
                                                      ((lambda (_%L46117%_
                                                                _%L46119%_
                                                                _%L46120%_
                                                                _%L46121%_)
                                                         (let* ((_%g4614146149%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g4614246145%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g4614246145%_)))
                        (_%g4614046168%_
                         (lambda (_%g4614246153%_)
                           ((lambda (_%L46156%_)
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
                                (cons _%L46156%_ '()))
                          (cons 'contract:
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%L46119%_ '()))
                                      (cons 'value:
                                            (cons _%L46117%_ '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                            _%g4614246153%_))))
                   (_%g4614046168%_
                    (let ((_%$e46180%_
                           (let ((_%$e46172%_ (gx#stx-source _%L46120%_)))
                             (if _%$e46172%_
                                 _%$e46172%_
                                 (let ((_%$e46176%_
                                        (gx#stx-source _%stx46044%_)))
                                   (if _%$e46176%_
                                       _%$e46176%_
                                       (gx#stx-source _%L46121%_)))))))
                      (if _%$e46180%_
                          ((lambda (_%locat46184%_)
                             (call-with-output-string
                              '""
                              (lambda (_%g4618646188%_)
                                (let ()
                                  (declare (not safe))
                                  (##display-locat
                                   _%locat46184%_
                                   '#t
                                   _%g4618646188%_)))))
                           _%$e46180%_)
                          (gx#expander-context-id (gx#core-context-top)))))))
               _%hd4606346111%_
               _%hd4606046101%_
               _%hd4605746091%_
               _%hd4605446081%_)
              (_%g4604746070%_ _%g4604846074%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4604746070%_
                                               _%g4604846074%_))))
                                      (_%g4604746070%_ _%g4604846074%_))))
                              (_%g4604746070%_ _%g4604846074%_))))
                      (_%g4604746070%_ _%g4604846074%_)))))
          (_%g4604646194%_ _%stx46044%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#nil-dereference!|
      (lambda (_%stx46198%_)
        (let* ((_%g4620146216%_
                (lambda (_%g4620246212%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4620246212%_)))
               (_%g4620046312%_
                (lambda (_%g4620246220%_)
                  (if (gx#stx-pair? _%g4620246220%_)
                      (let ((_%e4620546223%_ (gx#syntax-e _%g4620246220%_)))
                        (let ((_%hd4620646227%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4620546223%_)))
                              (_%tl4620746230%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4620546223%_))))
                          (if (gx#stx-pair? _%tl4620746230%_)
                              (let ((_%e4620846233%_
                                     (gx#syntax-e _%tl4620746230%_)))
                                (let ((_%hd4620946237%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4620846233%_)))
                                      (_%tl4621046240%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4620846233%_))))
                                  (if (gx#stx-null? _%tl4621046240%_)
                                      ((lambda (_%L46243%_ _%L46245%_)
                                         (let* ((_%g4625946267%_
                                                 (lambda (_%g4626046263%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g4626046263%_)))
                                                (_%g4625846286%_
                                                 (lambda (_%g4626046271%_)
                                                   ((lambda (_%L46274%_)
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
                                                        (cons _%L46274%_ '()))
                                                  (cons 'contract:
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                        (cons _%L46243%_ '()))
                                  '()))
                      (cons 'value: (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g4626046271%_))))
                                           (_%g4625846286%_
                                            (let ((_%$e46298%_
                                                   (let ((_%$e46290%_
                                                          (gx#stx-source
                                                           _%L46243%_)))
                                                     (if _%$e46290%_
                                                         _%$e46290%_
                                                         (let ((_%$e46294%_
                                                                (gx#stx-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx46198%_)))
                   (if _%$e46294%_ _%$e46294%_ (gx#stx-source _%L46245%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if _%$e46298%_
                                                  ((lambda (_%locat46302%_)
                                                     (call-with-output-string
                                                      '""
                                                      (lambda (_%g4630446306%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (##display-locat
                                                           _%locat46302%_
                                                           '#t
                                                           _%g4630446306%_)))))
                                                   _%$e46298%_)
                                                  (gx#expander-context-id
                                                   (gx#core-context-top)))))))
                                       _%hd4620946237%_
                                       _%hd4620646227%_)
                                      (_%g4620146216%_ _%g4620246220%_))))
                              (_%g4620146216%_ _%g4620246220%_))))
                      (_%g4620146216%_ _%g4620246220%_)))))
          (_%g4620046312%_ _%stx46198%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#abort!|
      (lambda (_%$stx46316%_)
        (let* ((_%g4632046334%_
                (lambda (_%g4632146330%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4632146330%_)))
               (_%g4631946375%_
                (lambda (_%g4632146338%_)
                  (if (gx#stx-pair? _%g4632146338%_)
                      (let ((_%e4632346341%_ (gx#syntax-e _%g4632146338%_)))
                        (let ((_%hd4632446345%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4632346341%_)))
                              (_%tl4632546348%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4632346341%_))))
                          (if (gx#stx-pair? _%tl4632546348%_)
                              (let ((_%e4632646351%_
                                     (gx#syntax-e _%tl4632546348%_)))
                                (let ((_%hd4632746355%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4632646351%_)))
                                      (_%tl4632846358%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4632646351%_))))
                                  (if (gx#stx-null? _%tl4632846358%_)
                                      ((lambda (_%L46361%_)
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
                         (cons _%L46361%_
                               (cons (cons (gx#datum->syntax '#f 'void) '())
                                     '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd4632746355%_)
                                      (_%g4632046334%_ _%g4632146338%_))))
                              (_%g4632046334%_ _%g4632146338%_))))
                      (_%g4632046334%_ _%g4632146338%_)))))
          (_%g4631946375%_ _%$stx46316%_))))))
