(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeCast[1]#_g84037_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/contract~TypeCast[:0:]#:|
      (lambda (_%stx45194%_)
        (let* ((_%g4519745215%_
                (lambda (_%g4519845211%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4519845211%_)))
               (_%g4519645410%_
                (lambda (_%g4519845219%_)
                  (if (gx#stx-pair? _%g4519845219%_)
                      (let ((_%e4520145222%_ (gx#syntax-e _%g4519845219%_)))
                        (let ((_%hd4520245226%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4520145222%_)))
                              (_%tl4520345229%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4520145222%_))))
                          (if (gx#stx-pair? _%tl4520345229%_)
                              (let ((_%e4520445232%_
                                     (gx#syntax-e _%tl4520345229%_)))
                                (let ((_%hd4520545236%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4520445232%_)))
                                      (_%tl4520645239%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4520445232%_))))
                                  (if (gx#stx-pair? _%tl4520645239%_)
                                      (let ((_%e4520745242%_
                                             (gx#syntax-e _%tl4520645239%_)))
                                        (let ((_%hd4520845246%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4520745242%_)))
                                              (_%tl4520945249%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4520745242%_))))
                                          (if (gx#stx-null? _%tl4520945249%_)
                                              ((lambda (_%L45252%_ _%L45254%_)
                                                 (if (gx#identifier?
                                                      _%L45252%_)
                                                     (let ((_%meta45271%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                               _%stx45194%_
                                                               _%L45252%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (class-instance?
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              _%meta45271%_))
                                                           (let* ((_%g4527645291%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g4527745287%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g4527745287%_)))
                          (_%g4527545338%_
                           (lambda (_%g4527745295%_)
                             (if (gx#stx-pair? _%g4527745295%_)
                                 (let ((_%e4528045298%_
                                        (gx#syntax-e _%g4527745295%_)))
                                   (let ((_%hd4528145302%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4528045298%_)))
                                         (_%tl4528245305%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4528045298%_))))
                                     (if (gx#stx-pair? _%tl4528245305%_)
                                         (let ((_%e4528345308%_
                                                (gx#syntax-e
                                                 _%tl4528245305%_)))
                                           (let ((_%hd4528445312%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e4528345308%_)))
                                                 (_%tl4528545315%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e4528345308%_))))
                                             (if (gx#stx-null?
                                                  _%tl4528545315%_)
                                                 ((lambda (_%L45318%_
                                                           _%L45320%_)
                                                    (if (let ((__tmp84035
                                                               (let ((__obj83896
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%meta45271%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj83896
                                'gerbil.core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj83896
                                '1
                                '#f
                                '#f))
                             (unchecked-slot-ref __obj83896 'id)))))
                  (declare (not safe))
                  (##memq __tmp84035 '(t void)))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%L45320%_ '()))
                            (cons _%L45254%_ '())))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%L45320%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%L45254%_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons _%L45318%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f 'val) '()))
                        (cons (gx#datum->syntax '#f 'val)
                              (cons (cons (gx#datum->syntax '#f 'error)
                                          (cons '"bad cast"
                                                (cons _%L45320%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'val)
                                                            '()))))
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%hd4528445312%_
                                                  _%hd4528145302%_)
                                                 (_%g4527645291%_
                                                  _%g4527745295%_))))
                                         (_%g4527645291%_ _%g4527745295%_))))
                                 (_%g4527645291%_ _%g4527745295%_)))))
                     (_%g4527545338%_
                      (list (let ((__obj83897 _%meta45271%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj83897
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj83897
                                     '12
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj83897
                                   'type-descriptor)))
                            (let ((__obj83898 _%meta45271%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj83898
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj83898
                                     '14
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj83898
                                   'predicate))))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%meta45271%_))
                       (let* ((_%g4534445359%_
                               (lambda (_%g4534545355%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g4534545355%_)))
                              (_%g4534345404%_
                               (lambda (_%g4534545363%_)
                                 (if (gx#stx-pair? _%g4534545363%_)
                                     (let ((_%e4534845366%_
                                            (gx#syntax-e _%g4534545363%_)))
                                       (let ((_%hd4534945370%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4534845366%_)))
                                             (_%tl4535045373%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4534845366%_))))
                                         (if (gx#stx-pair? _%tl4535045373%_)
                                             (let ((_%e4535145376%_
                                                    (gx#syntax-e
                                                     _%tl4535045373%_)))
                                               (let ((_%hd4535245380%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4535145376%_)))
                                                     (_%tl4535345383%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4535145376%_))))
                                                 (if (gx#stx-null?
                                                      _%tl4535345383%_)
                                                     ((lambda (_%L45386%_
                                                               _%L45388%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@type)
                                  (cons _%L45388%_ '()))
                            (cons (cons _%L45386%_ (cons _%L45254%_ '()))
                                  '()))))
              _%hd4535245380%_
              _%hd4534945370%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4534445359%_
                                                      _%g4534545363%_))))
                                             (_%g4534445359%_
                                              _%g4534545363%_))))
                                     (_%g4534445359%_ _%g4534545363%_)))))
                         (_%g4534345404%_
                          (list (let ((__obj83895 _%meta45271%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj83895
                                         'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj83895
                                         '4
                                         '#f
                                         '#f))
                                      (unchecked-slot-ref
                                       __obj83895
                                       'instance-type)))
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                   _%stx45194%_
                                   _%L45252%_)))))
                       (gx#raise-syntax-error
                        '#f
                        '"not a class type or interface"
                        _%stx45194%_
                        _%L45252%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4519745215%_
                                                      _%g4519845219%_)))
                                               _%hd4520845246%_
                                               _%hd4520545236%_)
                                              (_%g4519745215%_
                                               _%g4519845219%_))))
                                      (_%g4519745215%_ _%g4519845219%_))))
                              (_%g4519745215%_ _%g4519845219%_))))
                      (_%g4519745215%_ _%g4519845219%_)))))
          (_%g4519645410%_ _%stx45194%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:?|
      (lambda (_%stx45414%_)
        (let* ((_%g4541745435%_
                (lambda (_%g4541845431%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4541845431%_)))
               (_%g4541645629%_
                (lambda (_%g4541845439%_)
                  (if (gx#stx-pair? _%g4541845439%_)
                      (let ((_%e4542145442%_ (gx#syntax-e _%g4541845439%_)))
                        (let ((_%hd4542245446%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4542145442%_)))
                              (_%tl4542345449%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4542145442%_))))
                          (if (gx#stx-pair? _%tl4542345449%_)
                              (let ((_%e4542445452%_
                                     (gx#syntax-e _%tl4542345449%_)))
                                (let ((_%hd4542545456%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4542445452%_)))
                                      (_%tl4542645459%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4542445452%_))))
                                  (if (gx#stx-pair? _%tl4542645459%_)
                                      (let ((_%e4542745462%_
                                             (gx#syntax-e _%tl4542645459%_)))
                                        (let ((_%hd4542845466%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4542745462%_)))
                                              (_%tl4542945469%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4542745462%_))))
                                          (if (gx#stx-null? _%tl4542945469%_)
                                              ((lambda (_%L45472%_ _%L45474%_)
                                                 (if (gx#identifier?
                                                      _%L45472%_)
                                                     (let ((_%meta45490%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                               _%stx45414%_
                                                               _%L45472%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (class-instance?
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              _%meta45490%_))
                                                           (let* ((_%g4549545510%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g4549645506%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g4549645506%_)))
                          (_%g4549445557%_
                           (lambda (_%g4549645514%_)
                             (if (gx#stx-pair? _%g4549645514%_)
                                 (let ((_%e4549945517%_
                                        (gx#syntax-e _%g4549645514%_)))
                                   (let ((_%hd4550045521%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4549945517%_)))
                                         (_%tl4550145524%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4549945517%_))))
                                     (if (gx#stx-pair? _%tl4550145524%_)
                                         (let ((_%e4550245527%_
                                                (gx#syntax-e
                                                 _%tl4550145524%_)))
                                           (let ((_%hd4550345531%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e4550245527%_)))
                                                 (_%tl4550445534%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e4550245527%_))))
                                             (if (gx#stx-null?
                                                  _%tl4550445534%_)
                                                 ((lambda (_%L45537%_
                                                           _%L45539%_)
                                                    (if (let ((__tmp84036
                                                               (let ((__obj83900
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%meta45490%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj83900
                                'gerbil.core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj83900
                                '1
                                '#f
                                '#f))
                             (unchecked-slot-ref __obj83900 'id)))))
                  (declare (not safe))
                  (##memq __tmp84036 '(t void)))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%L45539%_ '()))
                            (cons _%L45474%_ '())))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%L45539%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%L45474%_ '()))
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
                                    (cons (cons _%L45537%_
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
                                                (cons _%L45474%_
                                                      (cons _%L45537%_
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
                                                  _%hd4550345531%_
                                                  _%hd4550045521%_)
                                                 (_%g4549545510%_
                                                  _%g4549645514%_))))
                                         (_%g4549545510%_ _%g4549645514%_))))
                                 (_%g4549545510%_ _%g4549645514%_)))))
                     (_%g4549445557%_
                      (list (let ((__obj83901 _%meta45490%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj83901
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj83901
                                     '12
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj83901
                                   'type-descriptor)))
                            (let ((__obj83902 _%meta45490%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj83902
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj83902
                                     '14
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj83902
                                   'predicate))))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%meta45490%_))
                       (let* ((_%g4556345578%_
                               (lambda (_%g4556445574%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g4556445574%_)))
                              (_%g4556245623%_
                               (lambda (_%g4556445582%_)
                                 (if (gx#stx-pair? _%g4556445582%_)
                                     (let ((_%e4556745585%_
                                            (gx#syntax-e _%g4556445582%_)))
                                       (let ((_%hd4556845589%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4556745585%_)))
                                             (_%tl4556945592%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4556745585%_))))
                                         (if (gx#stx-pair? _%tl4556945592%_)
                                             (let ((_%e4557045595%_
                                                    (gx#syntax-e
                                                     _%tl4556945592%_)))
                                               (let ((_%hd4557145599%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4557045595%_)))
                                                     (_%tl4557245602%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4557045595%_))))
                                                 (if (gx#stx-null?
                                                      _%tl4557245602%_)
                                                     ((lambda (_%L45605%_
                                                               _%L45607%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@type)
                                  (cons _%L45607%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%L45474%_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'and)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'val)
                        (cons (cons _%L45605%_
                                    (cons (gx#datum->syntax '#f 'val) '()))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '()))))
              _%hd4557145599%_
              _%hd4556845589%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4556345578%_
                                                      _%g4556445582%_))))
                                             (_%g4556345578%_
                                              _%g4556445582%_))))
                                     (_%g4556345578%_ _%g4556445582%_)))))
                         (_%g4556245623%_
                          (list (let ((__obj83899 _%meta45490%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj83899
                                         'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj83899
                                         '4
                                         '#f
                                         '#f))
                                      (unchecked-slot-ref
                                       __obj83899
                                       'instance-type)))
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                   _%stx45414%_
                                   _%L45472%_)))))
                       (gx#raise-syntax-error
                        '#f
                        '"not a class type or interface"
                        _%stx45414%_
                        _%L45472%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4541745435%_
                                                      _%g4541845439%_)))
                                               _%hd4542845466%_
                                               _%hd4542545456%_)
                                              (_%g4541745435%_
                                               _%g4541845439%_))))
                                      (_%g4541745435%_ _%g4541845439%_))))
                              (_%g4541745435%_ _%g4541845439%_))))
                      (_%g4541745435%_ _%g4541845439%_)))))
          (_%g4541645629%_ _%stx45414%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:-|
      (lambda (_%stx45633%_)
        (let* ((_%g4563645654%_
                (lambda (_%g4563745650%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4563745650%_)))
               (_%g4563545740%_
                (lambda (_%g4563745658%_)
                  (if (gx#stx-pair? _%g4563745658%_)
                      (let ((_%e4564045661%_ (gx#syntax-e _%g4563745658%_)))
                        (let ((_%hd4564145665%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4564045661%_)))
                              (_%tl4564245668%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4564045661%_))))
                          (if (gx#stx-pair? _%tl4564245668%_)
                              (let ((_%e4564345671%_
                                     (gx#syntax-e _%tl4564245668%_)))
                                (let ((_%hd4564445675%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4564345671%_)))
                                      (_%tl4564545678%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4564345671%_))))
                                  (if (gx#stx-pair? _%tl4564545678%_)
                                      (let ((_%e4564645681%_
                                             (gx#syntax-e _%tl4564545678%_)))
                                        (let ((_%hd4564745685%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4564645681%_)))
                                              (_%tl4564845688%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4564645681%_))))
                                          (if (gx#stx-null? _%tl4564845688%_)
                                              ((lambda (_%L45691%_ _%L45693%_)
                                                 (if (gx#identifier?
                                                      _%L45691%_)
                                                     (let* ((_%g4570945717%_
                                                             (lambda (_%g4571045713%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g4571045713%_)))
                                                            (_%g4570845736%_
                                                             (lambda (_%g4571045721%_)
                                                               ((lambda (_%L45724%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'begin-annotation)
                                (cons (cons (gx#datum->syntax '#f '@type)
                                            (cons _%L45724%_ '()))
                                      (cons _%L45693%_ '()))))
                        _%g4571045721%_))))
               (_%g4570845736%_
                (let ()
                  (declare (not safe))
                  (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                   _%stx45633%_
                   _%L45691%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4563645654%_
                                                      _%g4563745658%_)))
                                               _%hd4564745685%_
                                               _%hd4564445675%_)
                                              (_%g4563645654%_
                                               _%g4563745658%_))))
                                      (_%g4563645654%_ _%g4563745658%_))))
                              (_%g4563645654%_ _%g4563745658%_))))
                      (_%g4563645654%_ _%g4563745658%_)))))
          (_%g4563545740%_ _%stx45633%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:~|
      (lambda (_%$stx45744%_)
        (let* ((_%__stx7842478425%_ _%$stx45744%_)
               (_%g4574945785%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7842478425%_))))
          (let ((_%__kont7842778428%_
                 (lambda (_%L45903%_ _%L45905%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f 'val)
                                     (cons _%L45905%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (cons _%L45903%_
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
                           (cons _%L45905%_
                                 (cons _%L45903%_
                                       (cons (gx#datum->syntax '#f 'val)
                                             '()))))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7842978430%_
                 (lambda (_%L45842%_ _%L45844%_ _%L45845%_)
                   (cons (gx#datum->syntax '#f ':-)
                         (cons (cons (gx#datum->syntax '#f ':~)
                                     (cons _%L45845%_ (cons _%L45844%_ '())))
                               (cons _%L45842%_ '()))))))
            (if (gx#stx-pair? _%__stx7842478425%_)
                (let ((_%e4575345873%_ (gx#syntax-e _%__stx7842478425%_)))
                  (let ((_%tl4575545880%_
                         (let () (declare (not safe)) (##cdr _%e4575345873%_)))
                        (_%hd4575445877%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4575345873%_))))
                    (if (gx#stx-pair? _%tl4575545880%_)
                        (let ((_%e4575645883%_ (gx#syntax-e _%tl4575545880%_)))
                          (let ((_%tl4575845890%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4575645883%_)))
                                (_%hd4575745887%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4575645883%_))))
                            (if (gx#stx-pair? _%tl4575845890%_)
                                (let ((_%e4575945893%_
                                       (gx#syntax-e _%tl4575845890%_)))
                                  (let ((_%tl4576145900%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4575945893%_)))
                                        (_%hd4576045897%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4575945893%_))))
                                    (if (gx#stx-null? _%tl4576145900%_)
                                        (_%__kont7842778428%_
                                         _%hd4576045897%_
                                         _%hd4575745887%_)
                                        (if (gx#stx-pair? _%tl4576145900%_)
                                            (let ((_%e4577445822%_
                                                   (gx#syntax-e
                                                    _%tl4576145900%_)))
                                              (let ((_%tl4577645829%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4577445822%_)))
                                                    (_%hd4577545826%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4577445822%_))))
                                                (if (gx#identifier?
                                                     _%hd4577545826%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~TypeCast[1]#_g84037_|
                                                         _%hd4577545826%_)
                                                        (if (gx#stx-pair?
                                                             _%tl4577645829%_)
                                                            (let ((_%e4577745832%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl4577645829%_)))
                      (let ((_%tl4577945839%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4577745832%_)))
                            (_%hd4577845836%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4577745832%_))))
                        (if (gx#stx-null? _%tl4577945839%_)
                            (_%__kont7842978430%_
                             _%hd4577845836%_
                             _%hd4576045897%_
                             _%hd4575745887%_)
                            (let () (declare (not safe)) (_%g4574945785%_)))))
                    (let () (declare (not safe)) (_%g4574945785%_)))
                (let () (declare (not safe)) (_%g4574945785%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4574945785%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4574945785%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4574945785%_)))))
                        (let () (declare (not safe)) (_%g4574945785%_)))))
                (let () (declare (not safe)) (_%g4574945785%_)))))))
    (define |gerbil/core/contract~TypeCast[:0:]#::-|
      (lambda (_%$stx45924%_)
        (let ((_%g4592745934%_
               (lambda (_%g4592845930%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4592845930%_))))
          (_%g4592745934%_ _%$stx45924%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:=|
      (lambda (_%$stx45938%_)
        (let ((_%g4594145948%_
               (lambda (_%g4594245944%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4594245944%_))))
          (_%g4594145948%_ _%$stx45938%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#check-nil!|
      (lambda (_%$stx45952%_)
        (let* ((_%g4595645970%_
                (lambda (_%g4595745966%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4595745966%_)))
               (_%g4595546011%_
                (lambda (_%g4595745974%_)
                  (if (gx#stx-pair? _%g4595745974%_)
                      (let ((_%e4595945977%_ (gx#syntax-e _%g4595745974%_)))
                        (let ((_%hd4596045981%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4595945977%_)))
                              (_%tl4596145984%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4595945977%_))))
                          (if (gx#stx-pair? _%tl4596145984%_)
                              (let ((_%e4596245987%_
                                     (gx#syntax-e _%tl4596145984%_)))
                                (let ((_%hd4596345991%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4596245987%_)))
                                      (_%tl4596445994%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4596245987%_))))
                                  (if (gx#stx-null? _%tl4596445994%_)
                                      ((lambda (_%L45997%_)
                                         (cons (gx#datum->syntax '#f 'or)
                                               (cons _%L45997%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'nil-dereference!)
                         (cons _%L45997%_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd4596345991%_)
                                      (_%g4595645970%_ _%g4595745974%_))))
                              (_%g4595645970%_ _%g4595745974%_))))
                      (_%g4595645970%_ _%g4595745974%_)))))
          (_%g4595546011%_ _%$stx45952%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#contract-violation!|
      (lambda (_%stx46015%_)
        (let* ((_%g4601846041%_
                (lambda (_%g4601946037%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4601946037%_)))
               (_%g4601746165%_
                (lambda (_%g4601946045%_)
                  (if (gx#stx-pair? _%g4601946045%_)
                      (let ((_%e4602446048%_ (gx#syntax-e _%g4601946045%_)))
                        (let ((_%hd4602546052%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4602446048%_)))
                              (_%tl4602646055%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4602446048%_))))
                          (if (gx#stx-pair? _%tl4602646055%_)
                              (let ((_%e4602746058%_
                                     (gx#syntax-e _%tl4602646055%_)))
                                (let ((_%hd4602846062%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4602746058%_)))
                                      (_%tl4602946065%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4602746058%_))))
                                  (if (gx#stx-pair? _%tl4602946065%_)
                                      (let ((_%e4603046068%_
                                             (gx#syntax-e _%tl4602946065%_)))
                                        (let ((_%hd4603146072%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4603046068%_)))
                                              (_%tl4603246075%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4603046068%_))))
                                          (if (gx#stx-pair? _%tl4603246075%_)
                                              (let ((_%e4603346078%_
                                                     (gx#syntax-e
                                                      _%tl4603246075%_)))
                                                (let ((_%hd4603446082%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4603346078%_)))
                                                      (_%tl4603546085%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4603346078%_))))
                                                  (if (gx#stx-null?
                                                       _%tl4603546085%_)
                                                      ((lambda (_%L46088%_
                                                                _%L46090%_
                                                                _%L46091%_
                                                                _%L46092%_)
                                                         (let* ((_%g4611246120%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g4611346116%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g4611346116%_)))
                        (_%g4611146139%_
                         (lambda (_%g4611346124%_)
                           ((lambda (_%L46127%_)
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
                                (cons _%L46127%_ '()))
                          (cons 'contract:
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%L46090%_ '()))
                                      (cons 'value:
                                            (cons _%L46088%_ '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                            _%g4611346124%_))))
                   (_%g4611146139%_
                    (let ((_%$e46151%_
                           (let ((_%$e46143%_ (gx#stx-source _%L46091%_)))
                             (if _%$e46143%_
                                 _%$e46143%_
                                 (let ((_%$e46147%_
                                        (gx#stx-source _%stx46015%_)))
                                   (if _%$e46147%_
                                       _%$e46147%_
                                       (gx#stx-source _%L46092%_)))))))
                      (if _%$e46151%_
                          ((lambda (_%locat46155%_)
                             (call-with-output-string
                              '""
                              (lambda (_%g4615746159%_)
                                (let ()
                                  (declare (not safe))
                                  (##display-locat
                                   _%locat46155%_
                                   '#t
                                   _%g4615746159%_)))))
                           _%$e46151%_)
                          (gx#expander-context-id (gx#core-context-top)))))))
               _%hd4603446082%_
               _%hd4603146072%_
               _%hd4602846062%_
               _%hd4602546052%_)
              (_%g4601846041%_ _%g4601946045%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4601846041%_
                                               _%g4601946045%_))))
                                      (_%g4601846041%_ _%g4601946045%_))))
                              (_%g4601846041%_ _%g4601946045%_))))
                      (_%g4601846041%_ _%g4601946045%_)))))
          (_%g4601746165%_ _%stx46015%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#nil-dereference!|
      (lambda (_%stx46169%_)
        (let* ((_%g4617246187%_
                (lambda (_%g4617346183%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4617346183%_)))
               (_%g4617146283%_
                (lambda (_%g4617346191%_)
                  (if (gx#stx-pair? _%g4617346191%_)
                      (let ((_%e4617646194%_ (gx#syntax-e _%g4617346191%_)))
                        (let ((_%hd4617746198%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4617646194%_)))
                              (_%tl4617846201%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4617646194%_))))
                          (if (gx#stx-pair? _%tl4617846201%_)
                              (let ((_%e4617946204%_
                                     (gx#syntax-e _%tl4617846201%_)))
                                (let ((_%hd4618046208%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4617946204%_)))
                                      (_%tl4618146211%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4617946204%_))))
                                  (if (gx#stx-null? _%tl4618146211%_)
                                      ((lambda (_%L46214%_ _%L46216%_)
                                         (let* ((_%g4623046238%_
                                                 (lambda (_%g4623146234%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g4623146234%_)))
                                                (_%g4622946257%_
                                                 (lambda (_%g4623146242%_)
                                                   ((lambda (_%L46245%_)
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
                                                        (cons _%L46245%_ '()))
                                                  (cons 'contract:
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                        (cons _%L46214%_ '()))
                                  '()))
                      (cons 'value: (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g4623146242%_))))
                                           (_%g4622946257%_
                                            (let ((_%$e46269%_
                                                   (let ((_%$e46261%_
                                                          (gx#stx-source
                                                           _%L46214%_)))
                                                     (if _%$e46261%_
                                                         _%$e46261%_
                                                         (let ((_%$e46265%_
                                                                (gx#stx-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx46169%_)))
                   (if _%$e46265%_ _%$e46265%_ (gx#stx-source _%L46216%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if _%$e46269%_
                                                  ((lambda (_%locat46273%_)
                                                     (call-with-output-string
                                                      '""
                                                      (lambda (_%g4627546277%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (##display-locat
                                                           _%locat46273%_
                                                           '#t
                                                           _%g4627546277%_)))))
                                                   _%$e46269%_)
                                                  (gx#expander-context-id
                                                   (gx#core-context-top)))))))
                                       _%hd4618046208%_
                                       _%hd4617746198%_)
                                      (_%g4617246187%_ _%g4617346191%_))))
                              (_%g4617246187%_ _%g4617346191%_))))
                      (_%g4617246187%_ _%g4617346191%_)))))
          (_%g4617146283%_ _%stx46169%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#abort!|
      (lambda (_%$stx46287%_)
        (let* ((_%g4629146305%_
                (lambda (_%g4629246301%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4629246301%_)))
               (_%g4629046346%_
                (lambda (_%g4629246309%_)
                  (if (gx#stx-pair? _%g4629246309%_)
                      (let ((_%e4629446312%_ (gx#syntax-e _%g4629246309%_)))
                        (let ((_%hd4629546316%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4629446312%_)))
                              (_%tl4629646319%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4629446312%_))))
                          (if (gx#stx-pair? _%tl4629646319%_)
                              (let ((_%e4629746322%_
                                     (gx#syntax-e _%tl4629646319%_)))
                                (let ((_%hd4629846326%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4629746322%_)))
                                      (_%tl4629946329%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4629746322%_))))
                                  (if (gx#stx-null? _%tl4629946329%_)
                                      ((lambda (_%L46332%_)
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
                         (cons _%L46332%_
                               (cons (cons (gx#datum->syntax '#f 'void) '())
                                     '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd4629846326%_)
                                      (_%g4629146305%_ _%g4629246309%_))))
                              (_%g4629146305%_ _%g4629246309%_))))
                      (_%g4629146305%_ _%g4629246309%_)))))
          (_%g4629046346%_ _%$stx46287%_))))))
