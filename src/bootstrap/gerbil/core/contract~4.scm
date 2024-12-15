(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeCast[1]#_g84890_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/contract~TypeCast[:0:]#:|
      (lambda (_%stx45227%_)
        (let* ((_%g4523045248%_
                (lambda (_%g4523145244%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4523145244%_)))
               (_%g4522945443%_
                (lambda (_%g4523145252%_)
                  (if (gx#stx-pair? _%g4523145252%_)
                      (let ((_%e4523445255%_ (gx#syntax-e _%g4523145252%_)))
                        (let ((_%hd4523545259%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4523445255%_)))
                              (_%tl4523645262%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4523445255%_))))
                          (if (gx#stx-pair? _%tl4523645262%_)
                              (let ((_%e4523745265%_
                                     (gx#syntax-e _%tl4523645262%_)))
                                (let ((_%hd4523845269%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4523745265%_)))
                                      (_%tl4523945272%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4523745265%_))))
                                  (if (gx#stx-pair? _%tl4523945272%_)
                                      (let ((_%e4524045275%_
                                             (gx#syntax-e _%tl4523945272%_)))
                                        (let ((_%hd4524145279%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4524045275%_)))
                                              (_%tl4524245282%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4524045275%_))))
                                          (if (gx#stx-null? _%tl4524245282%_)
                                              ((lambda (_%L45285%_ _%L45287%_)
                                                 (if (gx#identifier?
                                                      _%L45285%_)
                                                     (let ((_%meta45304%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                               _%stx45227%_
                                                               _%L45285%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (class-instance?
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              _%meta45304%_))
                                                           (let* ((_%g4530945324%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g4531045320%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g4531045320%_)))
                          (_%g4530845371%_
                           (lambda (_%g4531045328%_)
                             (if (gx#stx-pair? _%g4531045328%_)
                                 (let ((_%e4531345331%_
                                        (gx#syntax-e _%g4531045328%_)))
                                   (let ((_%hd4531445335%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4531345331%_)))
                                         (_%tl4531545338%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4531345331%_))))
                                     (if (gx#stx-pair? _%tl4531545338%_)
                                         (let ((_%e4531645341%_
                                                (gx#syntax-e
                                                 _%tl4531545338%_)))
                                           (let ((_%hd4531745345%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e4531645341%_)))
                                                 (_%tl4531845348%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e4531645341%_))))
                                             (if (gx#stx-null?
                                                  _%tl4531845348%_)
                                                 ((lambda (_%L45351%_
                                                           _%L45353%_)
                                                    (if (let ((__tmp84888
                                                               (let ((__obj84739
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%meta45304%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj84739
                                'gerbil.core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj84739
                                '1
                                '#f
                                '#f))
                             (unchecked-slot-ref __obj84739 'id)))))
                  (declare (not safe))
                  (##memq __tmp84888 '(t void)))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%L45353%_ '()))
                            (cons _%L45287%_ '())))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%L45353%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%L45287%_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons _%L45351%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f 'val) '()))
                        (cons (gx#datum->syntax '#f 'val)
                              (cons (cons (gx#datum->syntax '#f 'error)
                                          (cons '"bad cast"
                                                (cons _%L45353%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'val)
                                                            '()))))
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%hd4531745345%_
                                                  _%hd4531445335%_)
                                                 (_%g4530945324%_
                                                  _%g4531045328%_))))
                                         (_%g4530945324%_ _%g4531045328%_))))
                                 (_%g4530945324%_ _%g4531045328%_)))))
                     (_%g4530845371%_
                      (list (let ((__obj84740 _%meta45304%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj84740
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj84740
                                     '12
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj84740
                                   'type-descriptor)))
                            (let ((__obj84741 _%meta45304%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj84741
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj84741
                                     '14
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj84741
                                   'predicate))))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%meta45304%_))
                       (let* ((_%g4537745392%_
                               (lambda (_%g4537845388%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g4537845388%_)))
                              (_%g4537645437%_
                               (lambda (_%g4537845396%_)
                                 (if (gx#stx-pair? _%g4537845396%_)
                                     (let ((_%e4538145399%_
                                            (gx#syntax-e _%g4537845396%_)))
                                       (let ((_%hd4538245403%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4538145399%_)))
                                             (_%tl4538345406%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4538145399%_))))
                                         (if (gx#stx-pair? _%tl4538345406%_)
                                             (let ((_%e4538445409%_
                                                    (gx#syntax-e
                                                     _%tl4538345406%_)))
                                               (let ((_%hd4538545413%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4538445409%_)))
                                                     (_%tl4538645416%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4538445409%_))))
                                                 (if (gx#stx-null?
                                                      _%tl4538645416%_)
                                                     ((lambda (_%L45419%_
                                                               _%L45421%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@type)
                                  (cons _%L45421%_ '()))
                            (cons (cons _%L45419%_ (cons _%L45287%_ '()))
                                  '()))))
              _%hd4538545413%_
              _%hd4538245403%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4537745392%_
                                                      _%g4537845396%_))))
                                             (_%g4537745392%_
                                              _%g4537845396%_))))
                                     (_%g4537745392%_ _%g4537845396%_)))))
                         (_%g4537645437%_
                          (list (let ((__obj84738 _%meta45304%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj84738
                                         'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj84738
                                         '5
                                         '#f
                                         '#f))
                                      (unchecked-slot-ref
                                       __obj84738
                                       'instance-type)))
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                   _%stx45227%_
                                   _%L45285%_)))))
                       (gx#raise-syntax-error
                        '#f
                        '"not a class type or interface"
                        _%stx45227%_
                        _%L45285%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4523045248%_
                                                      _%g4523145252%_)))
                                               _%hd4524145279%_
                                               _%hd4523845269%_)
                                              (_%g4523045248%_
                                               _%g4523145252%_))))
                                      (_%g4523045248%_ _%g4523145252%_))))
                              (_%g4523045248%_ _%g4523145252%_))))
                      (_%g4523045248%_ _%g4523145252%_)))))
          (_%g4522945443%_ _%stx45227%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:?|
      (lambda (_%stx45447%_)
        (let* ((_%g4545045468%_
                (lambda (_%g4545145464%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4545145464%_)))
               (_%g4544945662%_
                (lambda (_%g4545145472%_)
                  (if (gx#stx-pair? _%g4545145472%_)
                      (let ((_%e4545445475%_ (gx#syntax-e _%g4545145472%_)))
                        (let ((_%hd4545545479%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4545445475%_)))
                              (_%tl4545645482%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4545445475%_))))
                          (if (gx#stx-pair? _%tl4545645482%_)
                              (let ((_%e4545745485%_
                                     (gx#syntax-e _%tl4545645482%_)))
                                (let ((_%hd4545845489%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4545745485%_)))
                                      (_%tl4545945492%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4545745485%_))))
                                  (if (gx#stx-pair? _%tl4545945492%_)
                                      (let ((_%e4546045495%_
                                             (gx#syntax-e _%tl4545945492%_)))
                                        (let ((_%hd4546145499%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4546045495%_)))
                                              (_%tl4546245502%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4546045495%_))))
                                          (if (gx#stx-null? _%tl4546245502%_)
                                              ((lambda (_%L45505%_ _%L45507%_)
                                                 (if (gx#identifier?
                                                      _%L45505%_)
                                                     (let ((_%meta45523%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                               _%stx45447%_
                                                               _%L45505%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (class-instance?
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              _%meta45523%_))
                                                           (let* ((_%g4552845543%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g4552945539%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g4552945539%_)))
                          (_%g4552745590%_
                           (lambda (_%g4552945547%_)
                             (if (gx#stx-pair? _%g4552945547%_)
                                 (let ((_%e4553245550%_
                                        (gx#syntax-e _%g4552945547%_)))
                                   (let ((_%hd4553345554%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4553245550%_)))
                                         (_%tl4553445557%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4553245550%_))))
                                     (if (gx#stx-pair? _%tl4553445557%_)
                                         (let ((_%e4553545560%_
                                                (gx#syntax-e
                                                 _%tl4553445557%_)))
                                           (let ((_%hd4553645564%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e4553545560%_)))
                                                 (_%tl4553745567%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e4553545560%_))))
                                             (if (gx#stx-null?
                                                  _%tl4553745567%_)
                                                 ((lambda (_%L45570%_
                                                           _%L45572%_)
                                                    (if (let ((__tmp84889
                                                               (let ((__obj84743
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%meta45523%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj84743
                                'gerbil.core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj84743
                                '1
                                '#f
                                '#f))
                             (unchecked-slot-ref __obj84743 'id)))))
                  (declare (not safe))
                  (##memq __tmp84889 '(t void)))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%L45572%_ '()))
                            (cons _%L45507%_ '())))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%L45572%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%L45507%_ '()))
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
                                    (cons (cons _%L45570%_
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
                                                (cons _%L45507%_
                                                      (cons _%L45570%_
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
                                                  _%hd4553645564%_
                                                  _%hd4553345554%_)
                                                 (_%g4552845543%_
                                                  _%g4552945547%_))))
                                         (_%g4552845543%_ _%g4552945547%_))))
                                 (_%g4552845543%_ _%g4552945547%_)))))
                     (_%g4552745590%_
                      (list (let ((__obj84744 _%meta45523%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj84744
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj84744
                                     '12
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj84744
                                   'type-descriptor)))
                            (let ((__obj84745 _%meta45523%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj84745
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj84745
                                     '14
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj84745
                                   'predicate))))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%meta45523%_))
                       (let* ((_%g4559645611%_
                               (lambda (_%g4559745607%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g4559745607%_)))
                              (_%g4559545656%_
                               (lambda (_%g4559745615%_)
                                 (if (gx#stx-pair? _%g4559745615%_)
                                     (let ((_%e4560045618%_
                                            (gx#syntax-e _%g4559745615%_)))
                                       (let ((_%hd4560145622%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4560045618%_)))
                                             (_%tl4560245625%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4560045618%_))))
                                         (if (gx#stx-pair? _%tl4560245625%_)
                                             (let ((_%e4560345628%_
                                                    (gx#syntax-e
                                                     _%tl4560245625%_)))
                                               (let ((_%hd4560445632%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4560345628%_)))
                                                     (_%tl4560545635%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4560345628%_))))
                                                 (if (gx#stx-null?
                                                      _%tl4560545635%_)
                                                     ((lambda (_%L45638%_
                                                               _%L45640%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@type)
                                  (cons _%L45640%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%L45507%_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'and)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'val)
                        (cons (cons _%L45638%_
                                    (cons (gx#datum->syntax '#f 'val) '()))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '()))))
              _%hd4560445632%_
              _%hd4560145622%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4559645611%_
                                                      _%g4559745615%_))))
                                             (_%g4559645611%_
                                              _%g4559745615%_))))
                                     (_%g4559645611%_ _%g4559745615%_)))))
                         (_%g4559545656%_
                          (list (let ((__obj84742 _%meta45523%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj84742
                                         'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj84742
                                         '5
                                         '#f
                                         '#f))
                                      (unchecked-slot-ref
                                       __obj84742
                                       'instance-type)))
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                   _%stx45447%_
                                   _%L45505%_)))))
                       (gx#raise-syntax-error
                        '#f
                        '"not a class type or interface"
                        _%stx45447%_
                        _%L45505%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4545045468%_
                                                      _%g4545145472%_)))
                                               _%hd4546145499%_
                                               _%hd4545845489%_)
                                              (_%g4545045468%_
                                               _%g4545145472%_))))
                                      (_%g4545045468%_ _%g4545145472%_))))
                              (_%g4545045468%_ _%g4545145472%_))))
                      (_%g4545045468%_ _%g4545145472%_)))))
          (_%g4544945662%_ _%stx45447%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:-|
      (lambda (_%stx45666%_)
        (let* ((_%g4566945687%_
                (lambda (_%g4567045683%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4567045683%_)))
               (_%g4566845773%_
                (lambda (_%g4567045691%_)
                  (if (gx#stx-pair? _%g4567045691%_)
                      (let ((_%e4567345694%_ (gx#syntax-e _%g4567045691%_)))
                        (let ((_%hd4567445698%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4567345694%_)))
                              (_%tl4567545701%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4567345694%_))))
                          (if (gx#stx-pair? _%tl4567545701%_)
                              (let ((_%e4567645704%_
                                     (gx#syntax-e _%tl4567545701%_)))
                                (let ((_%hd4567745708%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4567645704%_)))
                                      (_%tl4567845711%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4567645704%_))))
                                  (if (gx#stx-pair? _%tl4567845711%_)
                                      (let ((_%e4567945714%_
                                             (gx#syntax-e _%tl4567845711%_)))
                                        (let ((_%hd4568045718%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4567945714%_)))
                                              (_%tl4568145721%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4567945714%_))))
                                          (if (gx#stx-null? _%tl4568145721%_)
                                              ((lambda (_%L45724%_ _%L45726%_)
                                                 (if (gx#identifier?
                                                      _%L45724%_)
                                                     (let* ((_%g4574245750%_
                                                             (lambda (_%g4574345746%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g4574345746%_)))
                                                            (_%g4574145769%_
                                                             (lambda (_%g4574345754%_)
                                                               ((lambda (_%L45757%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'begin-annotation)
                                (cons (cons (gx#datum->syntax '#f '@type)
                                            (cons _%L45757%_ '()))
                                      (cons _%L45726%_ '()))))
                        _%g4574345754%_))))
               (_%g4574145769%_
                (let ()
                  (declare (not safe))
                  (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                   _%stx45666%_
                   _%L45724%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4566945687%_
                                                      _%g4567045691%_)))
                                               _%hd4568045718%_
                                               _%hd4567745708%_)
                                              (_%g4566945687%_
                                               _%g4567045691%_))))
                                      (_%g4566945687%_ _%g4567045691%_))))
                              (_%g4566945687%_ _%g4567045691%_))))
                      (_%g4566945687%_ _%g4567045691%_)))))
          (_%g4566845773%_ _%stx45666%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:~|
      (lambda (_%$stx45777%_)
        (let* ((_%__stx7917179172%_ _%$stx45777%_)
               (_%g4578245818%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7917179172%_))))
          (let ((_%__kont7917479175%_
                 (lambda (_%L45936%_ _%L45938%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f 'val)
                                     (cons _%L45938%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (cons _%L45936%_
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
                           (cons _%L45938%_
                                 (cons _%L45936%_
                                       (cons (gx#datum->syntax '#f 'val)
                                             '()))))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7917679177%_
                 (lambda (_%L45875%_ _%L45877%_ _%L45878%_)
                   (cons (gx#datum->syntax '#f ':-)
                         (cons (cons (gx#datum->syntax '#f ':~)
                                     (cons _%L45878%_ (cons _%L45877%_ '())))
                               (cons _%L45875%_ '()))))))
            (if (gx#stx-pair? _%__stx7917179172%_)
                (let ((_%e4578645906%_ (gx#syntax-e _%__stx7917179172%_)))
                  (let ((_%tl4578845913%_
                         (let () (declare (not safe)) (##cdr _%e4578645906%_)))
                        (_%hd4578745910%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4578645906%_))))
                    (if (gx#stx-pair? _%tl4578845913%_)
                        (let ((_%e4578945916%_ (gx#syntax-e _%tl4578845913%_)))
                          (let ((_%tl4579145923%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4578945916%_)))
                                (_%hd4579045920%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4578945916%_))))
                            (if (gx#stx-pair? _%tl4579145923%_)
                                (let ((_%e4579245926%_
                                       (gx#syntax-e _%tl4579145923%_)))
                                  (let ((_%tl4579445933%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4579245926%_)))
                                        (_%hd4579345930%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4579245926%_))))
                                    (if (gx#stx-null? _%tl4579445933%_)
                                        (_%__kont7917479175%_
                                         _%hd4579345930%_
                                         _%hd4579045920%_)
                                        (if (gx#stx-pair? _%tl4579445933%_)
                                            (let ((_%e4580745855%_
                                                   (gx#syntax-e
                                                    _%tl4579445933%_)))
                                              (let ((_%tl4580945862%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4580745855%_)))
                                                    (_%hd4580845859%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4580745855%_))))
                                                (if (gx#identifier?
                                                     _%hd4580845859%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~TypeCast[1]#_g84890_|
                                                         _%hd4580845859%_)
                                                        (if (gx#stx-pair?
                                                             _%tl4580945862%_)
                                                            (let ((_%e4581045865%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl4580945862%_)))
                      (let ((_%tl4581245872%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4581045865%_)))
                            (_%hd4581145869%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4581045865%_))))
                        (if (gx#stx-null? _%tl4581245872%_)
                            (_%__kont7917679177%_
                             _%hd4581145869%_
                             _%hd4579345930%_
                             _%hd4579045920%_)
                            (let () (declare (not safe)) (_%g4578245818%_)))))
                    (let () (declare (not safe)) (_%g4578245818%_)))
                (let () (declare (not safe)) (_%g4578245818%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4578245818%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4578245818%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4578245818%_)))))
                        (let () (declare (not safe)) (_%g4578245818%_)))))
                (let () (declare (not safe)) (_%g4578245818%_)))))))
    (define |gerbil/core/contract~TypeCast[:0:]#::-|
      (lambda (_%$stx45957%_)
        (let ((_%g4596045967%_
               (lambda (_%g4596145963%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4596145963%_))))
          (_%g4596045967%_ _%$stx45957%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:=|
      (lambda (_%$stx45971%_)
        (let ((_%g4597445981%_
               (lambda (_%g4597545977%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4597545977%_))))
          (_%g4597445981%_ _%$stx45971%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#check-nil!|
      (lambda (_%$stx45985%_)
        (let* ((_%g4598946003%_
                (lambda (_%g4599045999%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4599045999%_)))
               (_%g4598846044%_
                (lambda (_%g4599046007%_)
                  (if (gx#stx-pair? _%g4599046007%_)
                      (let ((_%e4599246010%_ (gx#syntax-e _%g4599046007%_)))
                        (let ((_%hd4599346014%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4599246010%_)))
                              (_%tl4599446017%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4599246010%_))))
                          (if (gx#stx-pair? _%tl4599446017%_)
                              (let ((_%e4599546020%_
                                     (gx#syntax-e _%tl4599446017%_)))
                                (let ((_%hd4599646024%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4599546020%_)))
                                      (_%tl4599746027%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4599546020%_))))
                                  (if (gx#stx-null? _%tl4599746027%_)
                                      ((lambda (_%L46030%_)
                                         (cons (gx#datum->syntax '#f 'or)
                                               (cons _%L46030%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'nil-dereference!)
                         (cons _%L46030%_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd4599646024%_)
                                      (_%g4598946003%_ _%g4599046007%_))))
                              (_%g4598946003%_ _%g4599046007%_))))
                      (_%g4598946003%_ _%g4599046007%_)))))
          (_%g4598846044%_ _%$stx45985%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#contract-violation!|
      (lambda (_%stx46048%_)
        (let* ((_%g4605146074%_
                (lambda (_%g4605246070%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4605246070%_)))
               (_%g4605046198%_
                (lambda (_%g4605246078%_)
                  (if (gx#stx-pair? _%g4605246078%_)
                      (let ((_%e4605746081%_ (gx#syntax-e _%g4605246078%_)))
                        (let ((_%hd4605846085%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4605746081%_)))
                              (_%tl4605946088%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4605746081%_))))
                          (if (gx#stx-pair? _%tl4605946088%_)
                              (let ((_%e4606046091%_
                                     (gx#syntax-e _%tl4605946088%_)))
                                (let ((_%hd4606146095%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4606046091%_)))
                                      (_%tl4606246098%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4606046091%_))))
                                  (if (gx#stx-pair? _%tl4606246098%_)
                                      (let ((_%e4606346101%_
                                             (gx#syntax-e _%tl4606246098%_)))
                                        (let ((_%hd4606446105%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4606346101%_)))
                                              (_%tl4606546108%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4606346101%_))))
                                          (if (gx#stx-pair? _%tl4606546108%_)
                                              (let ((_%e4606646111%_
                                                     (gx#syntax-e
                                                      _%tl4606546108%_)))
                                                (let ((_%hd4606746115%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4606646111%_)))
                                                      (_%tl4606846118%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4606646111%_))))
                                                  (if (gx#stx-null?
                                                       _%tl4606846118%_)
                                                      ((lambda (_%L46121%_
                                                                _%L46123%_
                                                                _%L46124%_
                                                                _%L46125%_)
                                                         (let* ((_%g4614546153%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g4614646149%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g4614646149%_)))
                        (_%g4614446172%_
                         (lambda (_%g4614646157%_)
                           ((lambda (_%L46160%_)
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
                                (cons _%L46160%_ '()))
                          (cons 'contract:
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%L46123%_ '()))
                                      (cons 'value:
                                            (cons _%L46121%_ '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                            _%g4614646157%_))))
                   (_%g4614446172%_
                    (let ((_%$e46184%_
                           (let ((_%$e46176%_ (gx#stx-source _%L46124%_)))
                             (if _%$e46176%_
                                 _%$e46176%_
                                 (let ((_%$e46180%_
                                        (gx#stx-source _%stx46048%_)))
                                   (if _%$e46180%_
                                       _%$e46180%_
                                       (gx#stx-source _%L46125%_)))))))
                      (if _%$e46184%_
                          ((lambda (_%locat46188%_)
                             (call-with-output-string
                              '""
                              (lambda (_%g4619046192%_)
                                (let ()
                                  (declare (not safe))
                                  (##display-locat
                                   _%locat46188%_
                                   '#t
                                   _%g4619046192%_)))))
                           _%$e46184%_)
                          (gx#expander-context-id (gx#core-context-top)))))))
               _%hd4606746115%_
               _%hd4606446105%_
               _%hd4606146095%_
               _%hd4605846085%_)
              (_%g4605146074%_ _%g4605246078%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4605146074%_
                                               _%g4605246078%_))))
                                      (_%g4605146074%_ _%g4605246078%_))))
                              (_%g4605146074%_ _%g4605246078%_))))
                      (_%g4605146074%_ _%g4605246078%_)))))
          (_%g4605046198%_ _%stx46048%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#nil-dereference!|
      (lambda (_%stx46202%_)
        (let* ((_%g4620546220%_
                (lambda (_%g4620646216%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4620646216%_)))
               (_%g4620446316%_
                (lambda (_%g4620646224%_)
                  (if (gx#stx-pair? _%g4620646224%_)
                      (let ((_%e4620946227%_ (gx#syntax-e _%g4620646224%_)))
                        (let ((_%hd4621046231%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4620946227%_)))
                              (_%tl4621146234%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4620946227%_))))
                          (if (gx#stx-pair? _%tl4621146234%_)
                              (let ((_%e4621246237%_
                                     (gx#syntax-e _%tl4621146234%_)))
                                (let ((_%hd4621346241%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4621246237%_)))
                                      (_%tl4621446244%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4621246237%_))))
                                  (if (gx#stx-null? _%tl4621446244%_)
                                      ((lambda (_%L46247%_ _%L46249%_)
                                         (let* ((_%g4626346271%_
                                                 (lambda (_%g4626446267%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g4626446267%_)))
                                                (_%g4626246290%_
                                                 (lambda (_%g4626446275%_)
                                                   ((lambda (_%L46278%_)
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
                                                        (cons _%L46278%_ '()))
                                                  (cons 'contract:
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                        (cons _%L46247%_ '()))
                                  '()))
                      (cons 'value: (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g4626446275%_))))
                                           (_%g4626246290%_
                                            (let ((_%$e46302%_
                                                   (let ((_%$e46294%_
                                                          (gx#stx-source
                                                           _%L46247%_)))
                                                     (if _%$e46294%_
                                                         _%$e46294%_
                                                         (let ((_%$e46298%_
                                                                (gx#stx-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx46202%_)))
                   (if _%$e46298%_ _%$e46298%_ (gx#stx-source _%L46249%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if _%$e46302%_
                                                  ((lambda (_%locat46306%_)
                                                     (call-with-output-string
                                                      '""
                                                      (lambda (_%g4630846310%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (##display-locat
                                                           _%locat46306%_
                                                           '#t
                                                           _%g4630846310%_)))))
                                                   _%$e46302%_)
                                                  (gx#expander-context-id
                                                   (gx#core-context-top)))))))
                                       _%hd4621346241%_
                                       _%hd4621046231%_)
                                      (_%g4620546220%_ _%g4620646224%_))))
                              (_%g4620546220%_ _%g4620646224%_))))
                      (_%g4620546220%_ _%g4620646224%_)))))
          (_%g4620446316%_ _%stx46202%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#abort!|
      (lambda (_%$stx46320%_)
        (let* ((_%g4632446338%_
                (lambda (_%g4632546334%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4632546334%_)))
               (_%g4632346379%_
                (lambda (_%g4632546342%_)
                  (if (gx#stx-pair? _%g4632546342%_)
                      (let ((_%e4632746345%_ (gx#syntax-e _%g4632546342%_)))
                        (let ((_%hd4632846349%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4632746345%_)))
                              (_%tl4632946352%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4632746345%_))))
                          (if (gx#stx-pair? _%tl4632946352%_)
                              (let ((_%e4633046355%_
                                     (gx#syntax-e _%tl4632946352%_)))
                                (let ((_%hd4633146359%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4633046355%_)))
                                      (_%tl4633246362%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4633046355%_))))
                                  (if (gx#stx-null? _%tl4633246362%_)
                                      ((lambda (_%L46365%_)
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
                         (cons _%L46365%_
                               (cons (cons (gx#datum->syntax '#f 'void) '())
                                     '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd4633146359%_)
                                      (_%g4632446338%_ _%g4632546342%_))))
                              (_%g4632446338%_ _%g4632546342%_))))
                      (_%g4632446338%_ _%g4632546342%_)))))
          (_%g4632346379%_ _%$stx46320%_))))))
