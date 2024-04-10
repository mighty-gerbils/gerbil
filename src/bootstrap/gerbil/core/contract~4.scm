(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeCast[1]#_g82364_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/contract~TypeCast[:0:]#:|
      (lambda (_%stx45239%_)
        (let* ((_%g4524245260%_
                (lambda (_%g4524345256%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4524345256%_)))
               (_%g4524145455%_
                (lambda (_%g4524345264%_)
                  (if (gx#stx-pair? _%g4524345264%_)
                      (let ((_%e4524645267%_ (gx#syntax-e _%g4524345264%_)))
                        (let ((_%hd4524745271%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4524645267%_)))
                              (_%tl4524845274%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4524645267%_))))
                          (if (gx#stx-pair? _%tl4524845274%_)
                              (let ((_%e4524945277%_
                                     (gx#syntax-e _%tl4524845274%_)))
                                (let ((_%hd4525045281%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4524945277%_)))
                                      (_%tl4525145284%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4524945277%_))))
                                  (if (gx#stx-pair? _%tl4525145284%_)
                                      (let ((_%e4525245287%_
                                             (gx#syntax-e _%tl4525145284%_)))
                                        (let ((_%hd4525345291%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4525245287%_)))
                                              (_%tl4525445294%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4525245287%_))))
                                          (if (gx#stx-null? _%tl4525445294%_)
                                              ((lambda (_%L45297%_ _%L45299%_)
                                                 (if (gx#identifier?
                                                      _%L45297%_)
                                                     (let ((_%meta45316%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                               _%stx45239%_
                                                               _%L45297%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (class-instance?
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              _%meta45316%_))
                                                           (let* ((_%g4532145336%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g4532245332%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g4532245332%_)))
                          (_%g4532045383%_
                           (lambda (_%g4532245340%_)
                             (if (gx#stx-pair? _%g4532245340%_)
                                 (let ((_%e4532545343%_
                                        (gx#syntax-e _%g4532245340%_)))
                                   (let ((_%hd4532645347%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4532545343%_)))
                                         (_%tl4532745350%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4532545343%_))))
                                     (if (gx#stx-pair? _%tl4532745350%_)
                                         (let ((_%e4532845353%_
                                                (gx#syntax-e
                                                 _%tl4532745350%_)))
                                           (let ((_%hd4532945357%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e4532845353%_)))
                                                 (_%tl4533045360%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e4532845353%_))))
                                             (if (gx#stx-null?
                                                  _%tl4533045360%_)
                                                 ((lambda (_%L45363%_
                                                           _%L45365%_)
                                                    (if (let ((__tmp82362
                                                               (let ((__obj82222
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%meta45316%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj82222
                                'gerbil.core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj82222
                                '1
                                '#f
                                '#f))
                             (class-slot-ref
                              gerbil/core/mop~MOP-2#class-type-info::t
                              __obj82222
                              'id)))))
                  (declare (not safe))
                  (##memq __tmp82362 '(t void)))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%L45365%_ '()))
                            (cons _%L45299%_ '())))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%L45365%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%L45299%_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons _%L45363%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f 'val) '()))
                        (cons (gx#datum->syntax '#f 'val)
                              (cons (cons (gx#datum->syntax '#f 'error)
                                          (cons '"bad cast"
                                                (cons _%L45365%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'val)
                                                            '()))))
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%hd4532945357%_
                                                  _%hd4532645347%_)
                                                 (_%g4532145336%_
                                                  _%g4532245340%_))))
                                         (_%g4532145336%_ _%g4532245340%_))))
                                 (_%g4532145336%_ _%g4532245340%_)))))
                     (_%g4532045383%_
                      (list (let ((__obj82223 _%meta45316%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj82223
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj82223
                                     '12
                                     '#f
                                     '#f))
                                  (class-slot-ref
                                   gerbil/core/mop~MOP-2#class-type-info::t
                                   __obj82223
                                   'type-descriptor)))
                            (let ((__obj82224 _%meta45316%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj82224
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj82224
                                     '14
                                     '#f
                                     '#f))
                                  (class-slot-ref
                                   gerbil/core/mop~MOP-2#class-type-info::t
                                   __obj82224
                                   'predicate))))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%meta45316%_))
                       (let* ((_%g4538945404%_
                               (lambda (_%g4539045400%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g4539045400%_)))
                              (_%g4538845449%_
                               (lambda (_%g4539045408%_)
                                 (if (gx#stx-pair? _%g4539045408%_)
                                     (let ((_%e4539345411%_
                                            (gx#syntax-e _%g4539045408%_)))
                                       (let ((_%hd4539445415%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4539345411%_)))
                                             (_%tl4539545418%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4539345411%_))))
                                         (if (gx#stx-pair? _%tl4539545418%_)
                                             (let ((_%e4539645421%_
                                                    (gx#syntax-e
                                                     _%tl4539545418%_)))
                                               (let ((_%hd4539745425%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4539645421%_)))
                                                     (_%tl4539845428%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4539645421%_))))
                                                 (if (gx#stx-null?
                                                      _%tl4539845428%_)
                                                     ((lambda (_%L45431%_
                                                               _%L45433%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@type)
                                  (cons _%L45433%_ '()))
                            (cons (cons _%L45431%_ (cons _%L45299%_ '()))
                                  '()))))
              _%hd4539745425%_
              _%hd4539445415%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4538945404%_
                                                      _%g4539045408%_))))
                                             (_%g4538945404%_
                                              _%g4539045408%_))))
                                     (_%g4538945404%_ _%g4539045408%_)))))
                         (_%g4538845449%_
                          (list (let ((__obj82225 _%meta45316%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj82225
                                         'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj82225
                                         '4
                                         '#f
                                         '#f))
                                      (class-slot-ref
                                       gerbil/core/contract~InterfaceInfo#interface-info::t
                                       __obj82225
                                       'instance-type)))
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                   _%stx45239%_
                                   _%L45297%_)))))
                       (gx#raise-syntax-error
                        '#f
                        '"not a class type or interface"
                        _%stx45239%_
                        _%L45297%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4524245260%_
                                                      _%g4524345264%_)))
                                               _%hd4525345291%_
                                               _%hd4525045281%_)
                                              (_%g4524245260%_
                                               _%g4524345264%_))))
                                      (_%g4524245260%_ _%g4524345264%_))))
                              (_%g4524245260%_ _%g4524345264%_))))
                      (_%g4524245260%_ _%g4524345264%_)))))
          (_%g4524145455%_ _%stx45239%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:?|
      (lambda (_%stx45459%_)
        (let* ((_%g4546245480%_
                (lambda (_%g4546345476%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4546345476%_)))
               (_%g4546145674%_
                (lambda (_%g4546345484%_)
                  (if (gx#stx-pair? _%g4546345484%_)
                      (let ((_%e4546645487%_ (gx#syntax-e _%g4546345484%_)))
                        (let ((_%hd4546745491%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4546645487%_)))
                              (_%tl4546845494%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4546645487%_))))
                          (if (gx#stx-pair? _%tl4546845494%_)
                              (let ((_%e4546945497%_
                                     (gx#syntax-e _%tl4546845494%_)))
                                (let ((_%hd4547045501%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4546945497%_)))
                                      (_%tl4547145504%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4546945497%_))))
                                  (if (gx#stx-pair? _%tl4547145504%_)
                                      (let ((_%e4547245507%_
                                             (gx#syntax-e _%tl4547145504%_)))
                                        (let ((_%hd4547345511%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4547245507%_)))
                                              (_%tl4547445514%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4547245507%_))))
                                          (if (gx#stx-null? _%tl4547445514%_)
                                              ((lambda (_%L45517%_ _%L45519%_)
                                                 (if (gx#identifier?
                                                      _%L45517%_)
                                                     (let ((_%meta45535%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                               _%stx45459%_
                                                               _%L45517%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (class-instance?
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              _%meta45535%_))
                                                           (let* ((_%g4554045555%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g4554145551%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g4554145551%_)))
                          (_%g4553945602%_
                           (lambda (_%g4554145559%_)
                             (if (gx#stx-pair? _%g4554145559%_)
                                 (let ((_%e4554445562%_
                                        (gx#syntax-e _%g4554145559%_)))
                                   (let ((_%hd4554545566%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4554445562%_)))
                                         (_%tl4554645569%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4554445562%_))))
                                     (if (gx#stx-pair? _%tl4554645569%_)
                                         (let ((_%e4554745572%_
                                                (gx#syntax-e
                                                 _%tl4554645569%_)))
                                           (let ((_%hd4554845576%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e4554745572%_)))
                                                 (_%tl4554945579%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e4554745572%_))))
                                             (if (gx#stx-null?
                                                  _%tl4554945579%_)
                                                 ((lambda (_%L45582%_
                                                           _%L45584%_)
                                                    (if (let ((__tmp82363
                                                               (let ((__obj82226
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%meta45535%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj82226
                                'gerbil.core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj82226
                                '1
                                '#f
                                '#f))
                             (class-slot-ref
                              gerbil/core/mop~MOP-2#class-type-info::t
                              __obj82226
                              'id)))))
                  (declare (not safe))
                  (##memq __tmp82363 '(t void)))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%L45584%_ '()))
                            (cons _%L45519%_ '())))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%L45584%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%L45519%_ '()))
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
                                    (cons (cons _%L45582%_
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
                                                (cons _%L45519%_
                                                      (cons _%L45582%_
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
                                                  _%hd4554845576%_
                                                  _%hd4554545566%_)
                                                 (_%g4554045555%_
                                                  _%g4554145559%_))))
                                         (_%g4554045555%_ _%g4554145559%_))))
                                 (_%g4554045555%_ _%g4554145559%_)))))
                     (_%g4553945602%_
                      (list (let ((__obj82227 _%meta45535%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj82227
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj82227
                                     '12
                                     '#f
                                     '#f))
                                  (class-slot-ref
                                   gerbil/core/mop~MOP-2#class-type-info::t
                                   __obj82227
                                   'type-descriptor)))
                            (let ((__obj82228 _%meta45535%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj82228
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj82228
                                     '14
                                     '#f
                                     '#f))
                                  (class-slot-ref
                                   gerbil/core/mop~MOP-2#class-type-info::t
                                   __obj82228
                                   'predicate))))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%meta45535%_))
                       (let* ((_%g4560845623%_
                               (lambda (_%g4560945619%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g4560945619%_)))
                              (_%g4560745668%_
                               (lambda (_%g4560945627%_)
                                 (if (gx#stx-pair? _%g4560945627%_)
                                     (let ((_%e4561245630%_
                                            (gx#syntax-e _%g4560945627%_)))
                                       (let ((_%hd4561345634%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4561245630%_)))
                                             (_%tl4561445637%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4561245630%_))))
                                         (if (gx#stx-pair? _%tl4561445637%_)
                                             (let ((_%e4561545640%_
                                                    (gx#syntax-e
                                                     _%tl4561445637%_)))
                                               (let ((_%hd4561645644%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4561545640%_)))
                                                     (_%tl4561745647%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4561545640%_))))
                                                 (if (gx#stx-null?
                                                      _%tl4561745647%_)
                                                     ((lambda (_%L45650%_
                                                               _%L45652%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@type)
                                  (cons _%L45652%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%L45519%_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'and)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'val)
                        (cons (cons _%L45650%_
                                    (cons (gx#datum->syntax '#f 'val) '()))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '()))))
              _%hd4561645644%_
              _%hd4561345634%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4560845623%_
                                                      _%g4560945627%_))))
                                             (_%g4560845623%_
                                              _%g4560945627%_))))
                                     (_%g4560845623%_ _%g4560945627%_)))))
                         (_%g4560745668%_
                          (list (let ((__obj82229 _%meta45535%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj82229
                                         'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj82229
                                         '4
                                         '#f
                                         '#f))
                                      (class-slot-ref
                                       gerbil/core/contract~InterfaceInfo#interface-info::t
                                       __obj82229
                                       'instance-type)))
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                   _%stx45459%_
                                   _%L45517%_)))))
                       (gx#raise-syntax-error
                        '#f
                        '"not a class type or interface"
                        _%stx45459%_
                        _%L45517%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4546245480%_
                                                      _%g4546345484%_)))
                                               _%hd4547345511%_
                                               _%hd4547045501%_)
                                              (_%g4546245480%_
                                               _%g4546345484%_))))
                                      (_%g4546245480%_ _%g4546345484%_))))
                              (_%g4546245480%_ _%g4546345484%_))))
                      (_%g4546245480%_ _%g4546345484%_)))))
          (_%g4546145674%_ _%stx45459%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:-|
      (lambda (_%stx45678%_)
        (let* ((_%g4568145699%_
                (lambda (_%g4568245695%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4568245695%_)))
               (_%g4568045785%_
                (lambda (_%g4568245703%_)
                  (if (gx#stx-pair? _%g4568245703%_)
                      (let ((_%e4568545706%_ (gx#syntax-e _%g4568245703%_)))
                        (let ((_%hd4568645710%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4568545706%_)))
                              (_%tl4568745713%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4568545706%_))))
                          (if (gx#stx-pair? _%tl4568745713%_)
                              (let ((_%e4568845716%_
                                     (gx#syntax-e _%tl4568745713%_)))
                                (let ((_%hd4568945720%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4568845716%_)))
                                      (_%tl4569045723%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4568845716%_))))
                                  (if (gx#stx-pair? _%tl4569045723%_)
                                      (let ((_%e4569145726%_
                                             (gx#syntax-e _%tl4569045723%_)))
                                        (let ((_%hd4569245730%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4569145726%_)))
                                              (_%tl4569345733%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4569145726%_))))
                                          (if (gx#stx-null? _%tl4569345733%_)
                                              ((lambda (_%L45736%_ _%L45738%_)
                                                 (if (gx#identifier?
                                                      _%L45736%_)
                                                     (let* ((_%g4575445762%_
                                                             (lambda (_%g4575545758%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g4575545758%_)))
                                                            (_%g4575345781%_
                                                             (lambda (_%g4575545766%_)
                                                               ((lambda (_%L45769%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'begin-annotation)
                                (cons (cons (gx#datum->syntax '#f '@type)
                                            (cons _%L45769%_ '()))
                                      (cons _%L45738%_ '()))))
                        _%g4575545766%_))))
               (_%g4575345781%_
                (let ()
                  (declare (not safe))
                  (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                   _%stx45678%_
                   _%L45736%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4568145699%_
                                                      _%g4568245703%_)))
                                               _%hd4569245730%_
                                               _%hd4568945720%_)
                                              (_%g4568145699%_
                                               _%g4568245703%_))))
                                      (_%g4568145699%_ _%g4568245703%_))))
                              (_%g4568145699%_ _%g4568245703%_))))
                      (_%g4568145699%_ _%g4568245703%_)))))
          (_%g4568045785%_ _%stx45678%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:~|
      (lambda (_%$stx45789%_)
        (let* ((_%__stx7698976990%_ _%$stx45789%_)
               (_%g4579445830%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7698976990%_))))
          (let ((_%__kont7699276993%_
                 (lambda (_%L45948%_ _%L45950%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f 'val)
                                     (cons _%L45950%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (cons _%L45948%_
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
                           (cons _%L45950%_
                                 (cons _%L45948%_
                                       (cons (gx#datum->syntax '#f 'val)
                                             '()))))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7699476995%_
                 (lambda (_%L45887%_ _%L45889%_ _%L45890%_)
                   (cons (gx#datum->syntax '#f ':-)
                         (cons (cons (gx#datum->syntax '#f ':~)
                                     (cons _%L45890%_ (cons _%L45889%_ '())))
                               (cons _%L45887%_ '()))))))
            (if (gx#stx-pair? _%__stx7698976990%_)
                (let ((_%e4579845918%_ (gx#syntax-e _%__stx7698976990%_)))
                  (let ((_%tl4580045925%_
                         (let () (declare (not safe)) (##cdr _%e4579845918%_)))
                        (_%hd4579945922%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4579845918%_))))
                    (if (gx#stx-pair? _%tl4580045925%_)
                        (let ((_%e4580145928%_ (gx#syntax-e _%tl4580045925%_)))
                          (let ((_%tl4580345935%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4580145928%_)))
                                (_%hd4580245932%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4580145928%_))))
                            (if (gx#stx-pair? _%tl4580345935%_)
                                (let ((_%e4580445938%_
                                       (gx#syntax-e _%tl4580345935%_)))
                                  (let ((_%tl4580645945%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4580445938%_)))
                                        (_%hd4580545942%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4580445938%_))))
                                    (if (gx#stx-null? _%tl4580645945%_)
                                        (_%__kont7699276993%_
                                         _%hd4580545942%_
                                         _%hd4580245932%_)
                                        (if (gx#stx-pair? _%tl4580645945%_)
                                            (let ((_%e4581945867%_
                                                   (gx#syntax-e
                                                    _%tl4580645945%_)))
                                              (let ((_%tl4582145874%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4581945867%_)))
                                                    (_%hd4582045871%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4581945867%_))))
                                                (if (gx#identifier?
                                                     _%hd4582045871%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~TypeCast[1]#_g82364_|
                                                         _%hd4582045871%_)
                                                        (if (gx#stx-pair?
                                                             _%tl4582145874%_)
                                                            (let ((_%e4582245877%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl4582145874%_)))
                      (let ((_%tl4582445884%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4582245877%_)))
                            (_%hd4582345881%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4582245877%_))))
                        (if (gx#stx-null? _%tl4582445884%_)
                            (_%__kont7699476995%_
                             _%hd4582345881%_
                             _%hd4580545942%_
                             _%hd4580245932%_)
                            (let () (declare (not safe)) (_%g4579445830%_)))))
                    (let () (declare (not safe)) (_%g4579445830%_)))
                (let () (declare (not safe)) (_%g4579445830%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4579445830%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4579445830%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4579445830%_)))))
                        (let () (declare (not safe)) (_%g4579445830%_)))))
                (let () (declare (not safe)) (_%g4579445830%_)))))))
    (define |gerbil/core/contract~TypeCast[:0:]#::-|
      (lambda (_%$stx45969%_)
        (let ((_%g4597245979%_
               (lambda (_%g4597345975%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4597345975%_))))
          (_%g4597245979%_ _%$stx45969%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:=|
      (lambda (_%$stx45983%_)
        (let ((_%g4598645993%_
               (lambda (_%g4598745989%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4598745989%_))))
          (_%g4598645993%_ _%$stx45983%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#check-nil!|
      (lambda (_%$stx45997%_)
        (let* ((_%g4600146015%_
                (lambda (_%g4600246011%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4600246011%_)))
               (_%g4600046056%_
                (lambda (_%g4600246019%_)
                  (if (gx#stx-pair? _%g4600246019%_)
                      (let ((_%e4600446022%_ (gx#syntax-e _%g4600246019%_)))
                        (let ((_%hd4600546026%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4600446022%_)))
                              (_%tl4600646029%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4600446022%_))))
                          (if (gx#stx-pair? _%tl4600646029%_)
                              (let ((_%e4600746032%_
                                     (gx#syntax-e _%tl4600646029%_)))
                                (let ((_%hd4600846036%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4600746032%_)))
                                      (_%tl4600946039%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4600746032%_))))
                                  (if (gx#stx-null? _%tl4600946039%_)
                                      ((lambda (_%L46042%_)
                                         (cons (gx#datum->syntax '#f 'or)
                                               (cons _%L46042%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'nil-dereference!)
                         (cons _%L46042%_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd4600846036%_)
                                      (_%g4600146015%_ _%g4600246019%_))))
                              (_%g4600146015%_ _%g4600246019%_))))
                      (_%g4600146015%_ _%g4600246019%_)))))
          (_%g4600046056%_ _%$stx45997%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#contract-violation!|
      (lambda (_%stx46060%_)
        (let* ((_%g4606346086%_
                (lambda (_%g4606446082%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4606446082%_)))
               (_%g4606246210%_
                (lambda (_%g4606446090%_)
                  (if (gx#stx-pair? _%g4606446090%_)
                      (let ((_%e4606946093%_ (gx#syntax-e _%g4606446090%_)))
                        (let ((_%hd4607046097%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4606946093%_)))
                              (_%tl4607146100%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4606946093%_))))
                          (if (gx#stx-pair? _%tl4607146100%_)
                              (let ((_%e4607246103%_
                                     (gx#syntax-e _%tl4607146100%_)))
                                (let ((_%hd4607346107%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4607246103%_)))
                                      (_%tl4607446110%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4607246103%_))))
                                  (if (gx#stx-pair? _%tl4607446110%_)
                                      (let ((_%e4607546113%_
                                             (gx#syntax-e _%tl4607446110%_)))
                                        (let ((_%hd4607646117%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4607546113%_)))
                                              (_%tl4607746120%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4607546113%_))))
                                          (if (gx#stx-pair? _%tl4607746120%_)
                                              (let ((_%e4607846123%_
                                                     (gx#syntax-e
                                                      _%tl4607746120%_)))
                                                (let ((_%hd4607946127%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4607846123%_)))
                                                      (_%tl4608046130%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4607846123%_))))
                                                  (if (gx#stx-null?
                                                       _%tl4608046130%_)
                                                      ((lambda (_%L46133%_
                                                                _%L46135%_
                                                                _%L46136%_
                                                                _%L46137%_)
                                                         (let* ((_%g4615746165%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g4615846161%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g4615846161%_)))
                        (_%g4615646184%_
                         (lambda (_%g4615846169%_)
                           ((lambda (_%L46172%_)
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
                                (cons _%L46172%_ '()))
                          (cons 'contract:
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%L46135%_ '()))
                                      (cons 'value:
                                            (cons _%L46133%_ '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                            _%g4615846169%_))))
                   (_%g4615646184%_
                    (let ((_%$e46196%_
                           (let ((_%$e46188%_ (gx#stx-source _%L46136%_)))
                             (if _%$e46188%_
                                 _%$e46188%_
                                 (let ((_%$e46192%_
                                        (gx#stx-source _%stx46060%_)))
                                   (if _%$e46192%_
                                       _%$e46192%_
                                       (gx#stx-source _%L46137%_)))))))
                      (if _%$e46196%_
                          ((lambda (_%locat46200%_)
                             (call-with-output-string
                              '""
                              (lambda (_%g4620246204%_)
                                (let ()
                                  (declare (not safe))
                                  (##display-locat
                                   _%locat46200%_
                                   '#t
                                   _%g4620246204%_)))))
                           _%$e46196%_)
                          (gx#expander-context-id (gx#core-context-top)))))))
               _%hd4607946127%_
               _%hd4607646117%_
               _%hd4607346107%_
               _%hd4607046097%_)
              (_%g4606346086%_ _%g4606446090%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4606346086%_
                                               _%g4606446090%_))))
                                      (_%g4606346086%_ _%g4606446090%_))))
                              (_%g4606346086%_ _%g4606446090%_))))
                      (_%g4606346086%_ _%g4606446090%_)))))
          (_%g4606246210%_ _%stx46060%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#nil-dereference!|
      (lambda (_%stx46214%_)
        (let* ((_%g4621746232%_
                (lambda (_%g4621846228%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4621846228%_)))
               (_%g4621646328%_
                (lambda (_%g4621846236%_)
                  (if (gx#stx-pair? _%g4621846236%_)
                      (let ((_%e4622146239%_ (gx#syntax-e _%g4621846236%_)))
                        (let ((_%hd4622246243%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4622146239%_)))
                              (_%tl4622346246%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4622146239%_))))
                          (if (gx#stx-pair? _%tl4622346246%_)
                              (let ((_%e4622446249%_
                                     (gx#syntax-e _%tl4622346246%_)))
                                (let ((_%hd4622546253%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4622446249%_)))
                                      (_%tl4622646256%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4622446249%_))))
                                  (if (gx#stx-null? _%tl4622646256%_)
                                      ((lambda (_%L46259%_ _%L46261%_)
                                         (let* ((_%g4627546283%_
                                                 (lambda (_%g4627646279%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g4627646279%_)))
                                                (_%g4627446302%_
                                                 (lambda (_%g4627646287%_)
                                                   ((lambda (_%L46290%_)
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
                                                        (cons _%L46290%_ '()))
                                                  (cons 'contract:
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                        (cons _%L46259%_ '()))
                                  '()))
                      (cons 'value: (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g4627646287%_))))
                                           (_%g4627446302%_
                                            (let ((_%$e46314%_
                                                   (let ((_%$e46306%_
                                                          (gx#stx-source
                                                           _%L46259%_)))
                                                     (if _%$e46306%_
                                                         _%$e46306%_
                                                         (let ((_%$e46310%_
                                                                (gx#stx-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx46214%_)))
                   (if _%$e46310%_ _%$e46310%_ (gx#stx-source _%L46261%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if _%$e46314%_
                                                  ((lambda (_%locat46318%_)
                                                     (call-with-output-string
                                                      '""
                                                      (lambda (_%g4632046322%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (##display-locat
                                                           _%locat46318%_
                                                           '#t
                                                           _%g4632046322%_)))))
                                                   _%$e46314%_)
                                                  (gx#expander-context-id
                                                   (gx#core-context-top)))))))
                                       _%hd4622546253%_
                                       _%hd4622246243%_)
                                      (_%g4621746232%_ _%g4621846236%_))))
                              (_%g4621746232%_ _%g4621846236%_))))
                      (_%g4621746232%_ _%g4621846236%_)))))
          (_%g4621646328%_ _%stx46214%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#abort!|
      (lambda (_%$stx46332%_)
        (let* ((_%g4633646350%_
                (lambda (_%g4633746346%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4633746346%_)))
               (_%g4633546391%_
                (lambda (_%g4633746354%_)
                  (if (gx#stx-pair? _%g4633746354%_)
                      (let ((_%e4633946357%_ (gx#syntax-e _%g4633746354%_)))
                        (let ((_%hd4634046361%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4633946357%_)))
                              (_%tl4634146364%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4633946357%_))))
                          (if (gx#stx-pair? _%tl4634146364%_)
                              (let ((_%e4634246367%_
                                     (gx#syntax-e _%tl4634146364%_)))
                                (let ((_%hd4634346371%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4634246367%_)))
                                      (_%tl4634446374%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4634246367%_))))
                                  (if (gx#stx-null? _%tl4634446374%_)
                                      ((lambda (_%L46377%_)
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
                         (cons _%L46377%_
                               (cons (cons (gx#datum->syntax '#f 'void) '())
                                     '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd4634346371%_)
                                      (_%g4633646350%_ _%g4633746354%_))))
                              (_%g4633646350%_ _%g4633746354%_))))
                      (_%g4633646350%_ _%g4633746354%_)))))
          (_%g4633546391%_ _%$stx46332%_))))))
