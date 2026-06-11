(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeCast[1]#_g101415_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypeCast[1]#_g101416_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypeCast[1]#_g101417_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/contract~TypeCast[:0:]#:|
      (lambda (_%stx50116%_)
        (let* ((_%__stx9451494515%_ _%stx50116%_)
               (_%$%g5012050153%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9451494515%_))))
          (let ((_%__kont9451794518%_
                 (lambda (_%$%g5012250402%_ _%$%g5012350404%_)
                   (let ((_%meta50419%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                             _%stx50116%_
                             _%$%g5012250402%_))))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/mop~MOP-2#class-type-info::t
                            _%meta50419%_))
                         (let* ((_%$%g5042450439%_
                                 (lambda (_%$%g5042550435%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%$%g5042550435%_)))
                                (_%$%g5042350486%_
                                 (lambda (_%$%g5042550443%_)
                                   (if (gx#stx-pair? _%$%g5042550443%_)
                                       (let ((_%$%e5042850446%_
                                              (gx#syntax-e _%$%g5042550443%_)))
                                         (let ((_%$%hd5042950450%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e5042850446%_)))
                                               (_%$%tl5043050453%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e5042850446%_))))
                                           (if (gx#stx-pair?
                                                _%$%tl5043050453%_)
                                               (let ((_%$%e5043150456%_
                                                      (gx#syntax-e
                                                       _%$%tl5043050453%_)))
                                                 (let ((_%$%hd5043250460%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e5043150456%_)))
                                                       (_%$%tl5043350463%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e5043150456%_))))
                                                   (if (gx#stx-null?
                                                        _%$%tl5043350463%_)
                                                       (if (let ((__tmp101412
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__obj101230 _%meta50419%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-direct-instance-of?
                                   __obj101230
                                   'gerbil/core#class-type-info::t))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   __obj101230
                                   '2
                                   '#f
                                   '#f))
                                (unchecked-slot-ref __obj101230 'id)))))
                     (declare (not safe))
                     (##memq __tmp101412 '(t void)))
                   (cons (gx#datum->syntax '#f 'begin-annotation)
                         (cons (cons (gx#datum->syntax '#f '@type)
                                     (cons _%$%hd5042950450%_ '()))
                               (cons _%$%g5012350404%_ '())))
                   (cons (gx#datum->syntax '#f 'begin-annotation)
                         (cons (cons (gx#datum->syntax '#f '@type)
                                     (cons _%$%hd5042950450%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'val)
                                                       (cons _%$%g5012350404%_
                                                             '()))
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'if)
                                                             (cons (cons _%$%hd5043250460%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (gx#datum->syntax '#f 'val) '()))
                           (cons (gx#datum->syntax '#f 'val)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'contract-violation!)
                                             (cons _%$%g5012350404%_
                                                   (cons (cons _%$%hd5043250460%_
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
               (_%$%g5042450439%_ _%$%g5042550443%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g5042450439%_
                                                _%$%g5042550443%_))))
                                       (_%$%g5042450439%_
                                        _%$%g5042550443%_)))))
                           (_%$%g5042350486%_
                            (list (let ((__obj101231 _%meta50419%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-direct-instance-of?
                                           __obj101231
                                           'gerbil/core#class-type-info::t))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __obj101231
                                           '4
                                           '#f
                                           '#f))
                                        (unchecked-slot-ref
                                         __obj101231
                                         'type-descriptor)))
                                  (let ((__obj101232 _%meta50419%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-direct-instance-of?
                                           __obj101232
                                           'gerbil/core#class-type-info::t))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __obj101232
                                           '15
                                           '#f
                                           '#f))
                                        (unchecked-slot-ref
                                         __obj101232
                                         'predicate))))))
                         (if (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/contract~InterfaceInfo#interface-info::t
                                _%meta50419%_))
                             (let* ((_%$%g5049250507%_
                                     (lambda (_%$%g5049350503%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%$%g5049350503%_)))
                                    (_%$%g5049150552%_
                                     (lambda (_%$%g5049350511%_)
                                       (if (gx#stx-pair? _%$%g5049350511%_)
                                           (let ((_%$%e5049650514%_
                                                  (gx#syntax-e
                                                   _%$%g5049350511%_)))
                                             (let ((_%$%hd5049750518%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e5049650514%_)))
                                                   (_%$%tl5049850521%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e5049650514%_))))
                                               (if (gx#stx-pair?
                                                    _%$%tl5049850521%_)
                                                   (let ((_%$%e5049950524%_
                                                          (gx#syntax-e
                                                           _%$%tl5049850521%_)))
                                                     (let ((_%$%hd5050050528%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e5049950524%_)))
                                                           (_%$%tl5050150531%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e5049950524%_))))
                                                       (if (gx#stx-null?
                                                            _%$%tl5050150531%_)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'begin-annotation)
                         (cons (cons (gx#datum->syntax '#f '@type)
                                     (cons _%$%hd5049750518%_ '()))
                               (cons (cons _%$%hd5050050528%_
                                           (cons _%$%g5012350404%_ '()))
                                     '())))
                   (_%$%g5049250507%_ _%$%g5049350511%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g5049250507%_
                                                    _%$%g5049350511%_))))
                                           (_%$%g5049250507%_
                                            _%$%g5049350511%_)))))
                               (_%$%g5049150552%_
                                (list (let ((__obj101229 _%meta50419%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj101229
                                               'gerbil/core#runtime-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj101229
                                               '3
                                               '#f
                                               '#f))
                                            (unchecked-slot-ref
                                             __obj101229
                                             'type-descriptor)))
                                      (let ()
                                        (declare (not safe))
                                        (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                         _%stx50116%_
                                         _%$%g5012250402%_)))))
                             (gx#raise-syntax-error
                              '#f
                              '"not a class type or interface"
                              _%stx50116%_
                              _%$%g5012250402%_))))))
                (_%__kont9451994520%_
                 (lambda (_%$%g5013350204%_ _%$%g5013450206%_)
                   (let ((_%meta50226%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                             _%stx50116%_
                             _%$%g5013350204%_))))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/mop~MOP-2#class-type-info::t
                            _%meta50226%_))
                         (let* ((_%$%g5023150246%_
                                 (lambda (_%$%g5023250242%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%$%g5023250242%_)))
                                (_%$%g5023050293%_
                                 (lambda (_%$%g5023250250%_)
                                   (if (gx#stx-pair? _%$%g5023250250%_)
                                       (let ((_%$%e5023550253%_
                                              (gx#syntax-e _%$%g5023250250%_)))
                                         (let ((_%$%hd5023650257%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e5023550253%_)))
                                               (_%$%tl5023750260%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e5023550253%_))))
                                           (if (gx#stx-pair?
                                                _%$%tl5023750260%_)
                                               (let ((_%$%e5023850263%_
                                                      (gx#syntax-e
                                                       _%$%tl5023750260%_)))
                                                 (let ((_%$%hd5023950267%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e5023850263%_)))
                                                       (_%$%tl5024050270%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e5023850263%_))))
                                                   (if (gx#stx-null?
                                                        _%$%tl5024050270%_)
                                                       (if (let ((__tmp101413
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__obj101234 _%meta50226%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-direct-instance-of?
                                   __obj101234
                                   'gerbil/core#class-type-info::t))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   __obj101234
                                   '2
                                   '#f
                                   '#f))
                                (unchecked-slot-ref __obj101234 'id)))))
                     (declare (not safe))
                     (##memq __tmp101413 '(t void)))
                   (cons (gx#datum->syntax '#f 'begin-annotation)
                         (cons (cons (gx#datum->syntax '#f '@type)
                                     (cons _%$%hd5023650257%_ '()))
                               (cons _%$%g5013450206%_ '())))
                   (cons (gx#datum->syntax '#f 'begin-annotation)
                         (cons (cons (gx#datum->syntax '#f '@type)
                                     (cons _%$%hd5023650257%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'val)
                                                       (cons _%$%g5013450206%_
                                                             '()))
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'if)
                                                             (cons (cons _%$%hd5023950267%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (gx#datum->syntax '#f 'val) '()))
                           (cons (gx#datum->syntax '#f 'val)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'runtime-contract-violation!)
                                             (cons _%$%g5013450206%_
                                                   (cons (cons _%$%hd5023950267%_
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
               (_%$%g5023150246%_ _%$%g5023250250%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g5023150246%_
                                                _%$%g5023250250%_))))
                                       (_%$%g5023150246%_
                                        _%$%g5023250250%_)))))
                           (_%$%g5023050293%_
                            (list (let ((__obj101235 _%meta50226%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-direct-instance-of?
                                           __obj101235
                                           'gerbil/core#class-type-info::t))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __obj101235
                                           '4
                                           '#f
                                           '#f))
                                        (unchecked-slot-ref
                                         __obj101235
                                         'type-descriptor)))
                                  (let ((__obj101236 _%meta50226%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-direct-instance-of?
                                           __obj101236
                                           'gerbil/core#class-type-info::t))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __obj101236
                                           '15
                                           '#f
                                           '#f))
                                        (unchecked-slot-ref
                                         __obj101236
                                         'predicate))))))
                         (if (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/contract~InterfaceInfo#interface-info::t
                                _%meta50226%_))
                             (let* ((_%$%g5029950314%_
                                     (lambda (_%$%g5030050310%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%$%g5030050310%_)))
                                    (_%$%g5029850359%_
                                     (lambda (_%$%g5030050318%_)
                                       (if (gx#stx-pair? _%$%g5030050318%_)
                                           (let ((_%$%e5030350321%_
                                                  (gx#syntax-e
                                                   _%$%g5030050318%_)))
                                             (let ((_%$%hd5030450325%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e5030350321%_)))
                                                   (_%$%tl5030550328%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e5030350321%_))))
                                               (if (gx#stx-pair?
                                                    _%$%tl5030550328%_)
                                                   (let ((_%$%e5030650331%_
                                                          (gx#syntax-e
                                                           _%$%tl5030550328%_)))
                                                     (let ((_%$%hd5030750335%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e5030650331%_)))
                                                           (_%$%tl5030850338%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e5030650331%_))))
                                                       (if (gx#stx-null?
                                                            _%$%tl5030850338%_)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'begin-annotation)
                         (cons (cons (gx#datum->syntax '#f '@type)
                                     (cons _%$%hd5030450325%_ '()))
                               (cons (cons _%$%hd5030750335%_
                                           (cons _%$%g5013450206%_ '()))
                                     '())))
                   (_%$%g5029950314%_ _%$%g5030050318%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g5029950314%_
                                                    _%$%g5030050318%_))))
                                           (_%$%g5029950314%_
                                            _%$%g5030050318%_)))))
                               (_%$%g5029850359%_
                                (list (let ((__obj101233 _%meta50226%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj101233
                                               'gerbil/core#runtime-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj101233
                                               '3
                                               '#f
                                               '#f))
                                            (unchecked-slot-ref
                                             __obj101233
                                             'type-descriptor)))
                                      (let ()
                                        (declare (not safe))
                                        (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                         _%stx50116%_
                                         _%$%g5013350204%_)))))
                             (gx#raise-syntax-error
                              '#f
                              '"not a class type or interface"
                              _%stx50116%_
                              _%$%g5013350204%_)))))))
            (let* ((_%__match9457394574%_
                    (lambda (_%$%e5013550160%_
                             _%$%hd5013650164%_
                             _%$%tl5013750167%_
                             _%$%e5013850170%_
                             _%$%hd5013950174%_
                             _%$%tl5014050177%_
                             _%$%e5014150180%_
                             _%$%hd5014250184%_
                             _%$%tl5014350187%_
                             _%$%e5014450190%_
                             _%$%e5014550194%_
                             _%$%hd5014650198%_
                             _%$%tl5014750201%_)
                      (let ((_%$%g5013350204%_ _%$%hd5014650198%_)
                            (_%$%g5013450206%_ _%$%hd5013950174%_))
                        (if (gx#identifier? _%$%g5013350204%_)
                            (_%__kont9451994520%_
                             _%$%g5013350204%_
                             _%$%g5013450206%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g5012050153%_))))))
                   (_%__match9454194542%_
                    (lambda (_%$%e5012450372%_
                             _%$%hd5012550376%_
                             _%$%tl5012650379%_
                             _%$%e5012750382%_
                             _%$%hd5012850386%_
                             _%$%tl5012950389%_
                             _%$%e5013050392%_
                             _%$%hd5013150396%_
                             _%$%tl5013250399%_)
                      (let ((_%$%g5012250402%_ _%$%hd5013150396%_)
                            (_%$%g5012350404%_ _%$%hd5012850386%_))
                        (if (gx#identifier? _%$%g5012250402%_)
                            (_%__kont9451794518%_
                             _%$%g5012250402%_
                             _%$%g5012350404%_)
                            (if (gx#stx-datum? _%$%hd5013150396%_)
                                (let ((_%$%e5014450190%_
                                       (gx#stx-e _%$%hd5013150396%_)))
                                  (declare (not safe))
                                  (_%$%g5012050153%_))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g5012050153%_))))))))
              (if (gx#stx-pair? _%__stx9451494515%_)
                  (let ((_%$%e5012450372%_ (gx#syntax-e _%__stx9451494515%_)))
                    (let ((_%$%tl5012650379%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5012450372%_)))
                          (_%$%hd5012550376%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5012450372%_))))
                      (if (gx#stx-pair? _%$%tl5012650379%_)
                          (let ((_%$%e5012750382%_
                                 (gx#syntax-e _%$%tl5012650379%_)))
                            (let ((_%$%tl5012950389%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5012750382%_)))
                                  (_%$%hd5012850386%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5012750382%_))))
                              (if (gx#stx-pair? _%$%tl5012950389%_)
                                  (let ((_%$%e5013050392%_
                                         (gx#syntax-e _%$%tl5012950389%_)))
                                    (let ((_%$%tl5013250399%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5013050392%_)))
                                          (_%$%hd5013150396%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5013050392%_))))
                                      (if (gx#stx-null? _%$%tl5013250399%_)
                                          (_%__match9454194542%_
                                           _%$%e5012450372%_
                                           _%$%hd5012550376%_
                                           _%$%tl5012650379%_
                                           _%$%e5012750382%_
                                           _%$%hd5012850386%_
                                           _%$%tl5012950389%_
                                           _%$%e5013050392%_
                                           _%$%hd5013150396%_
                                           _%$%tl5013250399%_)
                                          (if (gx#stx-datum?
                                               _%$%hd5013150396%_)
                                              (let ((_%$%e5014450190%_
                                                     (gx#stx-e
                                                      _%$%hd5013150396%_)))
                                                (if (equal? _%$%e5014450190%_
                                                            'runtime:)
                                                    (if (gx#stx-pair?
                                                         _%$%tl5013250399%_)
                                                        (let ((_%$%e5014550194%_
                                                               (gx#syntax-e
                                                                _%$%tl5013250399%_)))
                                                          (let ((_%$%tl5014750201%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e5014550194%_)))
                        (_%$%hd5014650198%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e5014550194%_))))
                    (if (gx#stx-null? _%$%tl5014750201%_)
                        (_%__match9457394574%_
                         _%$%e5012450372%_
                         _%$%hd5012550376%_
                         _%$%tl5012650379%_
                         _%$%e5012750382%_
                         _%$%hd5012850386%_
                         _%$%tl5012950389%_
                         _%$%e5013050392%_
                         _%$%hd5013150396%_
                         _%$%tl5013250399%_
                         _%$%e5014450190%_
                         _%$%e5014550194%_
                         _%$%hd5014650198%_
                         _%$%tl5014750201%_)
                        (let () (declare (not safe)) (_%$%g5012050153%_)))))
                (let () (declare (not safe)) (_%$%g5012050153%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5012050153%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5012050153%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5012050153%_)))))
                          (let () (declare (not safe)) (_%$%g5012050153%_)))))
                  (let () (declare (not safe)) (_%$%g5012050153%_))))))))
    (define |gerbil/core/contract~TypeCast[:0:]#:?|
      (lambda (_%stx50562%_)
        (let* ((_%$%g5056550583%_
                (lambda (_%$%g5056650579%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g5056650579%_)))
               (_%$%g5056450777%_
                (lambda (_%$%g5056650587%_)
                  (if (gx#stx-pair? _%$%g5056650587%_)
                      (let ((_%$%e5056950590%_
                             (gx#syntax-e _%$%g5056650587%_)))
                        (let ((_%$%hd5057050594%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5056950590%_)))
                              (_%$%tl5057150597%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5056950590%_))))
                          (if (gx#stx-pair? _%$%tl5057150597%_)
                              (let ((_%$%e5057250600%_
                                     (gx#syntax-e _%$%tl5057150597%_)))
                                (let ((_%$%hd5057350604%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5057250600%_)))
                                      (_%$%tl5057450607%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5057250600%_))))
                                  (if (gx#stx-pair? _%$%tl5057450607%_)
                                      (let ((_%$%e5057550610%_
                                             (gx#syntax-e _%$%tl5057450607%_)))
                                        (let ((_%$%hd5057650614%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5057550610%_)))
                                              (_%$%tl5057750617%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5057550610%_))))
                                          (if (gx#stx-null? _%$%tl5057750617%_)
                                              (if (gx#identifier?
                                                   _%$%hd5057650614%_)
                                                  (let ((_%meta50638%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                            _%stx50562%_
                                                            _%$%hd5057650614%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (class-instance?
                                                           gerbil/core/mop~MOP-2#class-type-info::t
                                                           _%meta50638%_))
                                                        (let* ((_%$%g5064350658%_
                                                                (lambda (_%$%g5064450654%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%$%g5064450654%_)))
                       (_%$%g5064250705%_
                        (lambda (_%$%g5064450662%_)
                          (if (gx#stx-pair? _%$%g5064450662%_)
                              (let ((_%$%e5064750665%_
                                     (gx#syntax-e _%$%g5064450662%_)))
                                (let ((_%$%hd5064850669%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5064750665%_)))
                                      (_%$%tl5064950672%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5064750665%_))))
                                  (if (gx#stx-pair? _%$%tl5064950672%_)
                                      (let ((_%$%e5065050675%_
                                             (gx#syntax-e _%$%tl5064950672%_)))
                                        (let ((_%$%hd5065150679%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5065050675%_)))
                                              (_%$%tl5065250682%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5065050675%_))))
                                          (if (gx#stx-null? _%$%tl5065250682%_)
                                              (if (let ((__tmp101414
                                                         (let ((__obj101238
                                                                _%meta50638%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##structure-direct-instance-of?
                          __obj101238
                          'gerbil/core#class-type-info::t))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref __obj101238 '2 '#f '#f))
                       (unchecked-slot-ref __obj101238 'id)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (##memq __tmp101414
                                                            '(t void)))
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'begin-annotation)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '@type)
                            (cons _%$%hd5064850669%_ '()))
                      (cons _%$%hd5057350604%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'begin-annotation)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '@type)
                            (cons _%$%hd5064850669%_ '()))
                      (cons (cons (gx#datum->syntax '#f 'let)
                                  (cons (cons (gx#datum->syntax '#f 'val)
                                              (cons _%$%hd5057350604%_ '()))
                                        (cons (cons (gx#datum->syntax '#f 'if)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'or)
                        (cons (cons (gx#datum->syntax '#f 'not)
                                    (cons (gx#datum->syntax '#f 'val) '()))
                              (cons (cons _%$%hd5065150679%_
                                          (cons (gx#datum->syntax '#f 'val)
                                                '()))
                                    '())))
                  (cons (gx#datum->syntax '#f 'val)
                        (cons (cons (gx#datum->syntax '#f 'contract-violation!)
                                    (cons _%$%hd5057350604%_
                                          (cons (cons _%$%hd5065150679%_
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
                                              (_%$%g5064350658%_
                                               _%$%g5064450662%_))))
                                      (_%$%g5064350658%_ _%$%g5064450662%_))))
                              (_%$%g5064350658%_ _%$%g5064450662%_)))))
                  (_%$%g5064250705%_
                   (list (let ((__obj101239 _%meta50638%_))
                           (if (let ()
                                 (declare (not safe))
                                 (##structure-direct-instance-of?
                                  __obj101239
                                  'gerbil/core#class-type-info::t))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  __obj101239
                                  '4
                                  '#f
                                  '#f))
                               (unchecked-slot-ref
                                __obj101239
                                'type-descriptor)))
                         (let ((__obj101240 _%meta50638%_))
                           (if (let ()
                                 (declare (not safe))
                                 (##structure-direct-instance-of?
                                  __obj101240
                                  'gerbil/core#class-type-info::t))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  __obj101240
                                  '15
                                  '#f
                                  '#f))
                               (unchecked-slot-ref __obj101240 'predicate))))))
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       gerbil/core/contract~InterfaceInfo#interface-info::t
                       _%meta50638%_))
                    (let* ((_%$%g5071150726%_
                            (lambda (_%$%g5071250722%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g5071250722%_)))
                           (_%$%g5071050771%_
                            (lambda (_%$%g5071250730%_)
                              (if (gx#stx-pair? _%$%g5071250730%_)
                                  (let ((_%$%e5071550733%_
                                         (gx#syntax-e _%$%g5071250730%_)))
                                    (let ((_%$%hd5071650737%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5071550733%_)))
                                          (_%$%tl5071750740%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5071550733%_))))
                                      (if (gx#stx-pair? _%$%tl5071750740%_)
                                          (let ((_%$%e5071850743%_
                                                 (gx#syntax-e
                                                  _%$%tl5071750740%_)))
                                            (let ((_%$%hd5071950747%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5071850743%_)))
                                                  (_%$%tl5072050750%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5071850743%_))))
                                              (if (gx#stx-null?
                                                   _%$%tl5072050750%_)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'begin-annotation)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '@type)
                            (cons _%$%hd5071650737%_ '()))
                      (cons (cons (gx#datum->syntax '#f 'let)
                                  (cons (cons (gx#datum->syntax '#f 'val)
                                              (cons _%$%hd5057350604%_ '()))
                                        (cons (cons (gx#datum->syntax '#f 'and)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'val)
                                                          (cons (cons _%$%hd5071950747%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f 'val) '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g5071150726%_
                                                   _%$%g5071250730%_))))
                                          (_%$%g5071150726%_
                                           _%$%g5071250730%_))))
                                  (_%$%g5071150726%_ _%$%g5071250730%_)))))
                      (_%$%g5071050771%_
                       (list (let ((__obj101237 _%meta50638%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj101237
                                      'gerbil/core#runtime-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj101237
                                      '3
                                      '#f
                                      '#f))
                                   (unchecked-slot-ref
                                    __obj101237
                                    'type-descriptor)))
                             (let ()
                               (declare (not safe))
                               (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                _%stx50562%_
                                _%$%hd5057650614%_)))))
                    (gx#raise-syntax-error
                     '#f
                     '"not a class type or interface"
                     _%stx50562%_
                     _%$%hd5057650614%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g5056550583%_
                                                   _%$%g5056650587%_))
                                              (_%$%g5056550583%_
                                               _%$%g5056650587%_))))
                                      (_%$%g5056550583%_ _%$%g5056650587%_))))
                              (_%$%g5056550583%_ _%$%g5056650587%_))))
                      (_%$%g5056550583%_ _%$%g5056650587%_)))))
          (_%$%g5056450777%_ _%stx50562%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:-|
      (lambda (_%stx50781%_)
        (let* ((_%$%g5078450802%_
                (lambda (_%$%g5078550798%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g5078550798%_)))
               (_%$%g5078350888%_
                (lambda (_%$%g5078550806%_)
                  (if (gx#stx-pair? _%$%g5078550806%_)
                      (let ((_%$%e5078850809%_
                             (gx#syntax-e _%$%g5078550806%_)))
                        (let ((_%$%hd5078950813%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5078850809%_)))
                              (_%$%tl5079050816%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5078850809%_))))
                          (if (gx#stx-pair? _%$%tl5079050816%_)
                              (let ((_%$%e5079150819%_
                                     (gx#syntax-e _%$%tl5079050816%_)))
                                (let ((_%$%hd5079250823%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5079150819%_)))
                                      (_%$%tl5079350826%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5079150819%_))))
                                  (if (gx#stx-pair? _%$%tl5079350826%_)
                                      (let ((_%$%e5079450829%_
                                             (gx#syntax-e _%$%tl5079350826%_)))
                                        (let ((_%$%hd5079550833%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5079450829%_)))
                                              (_%$%tl5079650836%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5079450829%_))))
                                          (if (gx#stx-null? _%$%tl5079650836%_)
                                              (if (gx#identifier?
                                                   _%$%hd5079550833%_)
                                                  (let* ((_%$%g5085750865%_
                                                          (lambda (_%$%g5085850861%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%$%g5085850861%_)))
                                                         (_%$%g5085650884%_
                                                          (lambda (_%$%g5085850869%_)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@type)
                                      (cons _%$%g5085850869%_ '()))
                                (cons _%$%hd5079250823%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g5085650884%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                                        _%stx50781%_
                                                        _%$%hd5079550833%_))))
                                                  (_%$%g5078450802%_
                                                   _%$%g5078550806%_))
                                              (_%$%g5078450802%_
                                               _%$%g5078550806%_))))
                                      (_%$%g5078450802%_ _%$%g5078550806%_))))
                              (_%$%g5078450802%_ _%$%g5078550806%_))))
                      (_%$%g5078450802%_ _%$%g5078550806%_)))))
          (_%$%g5078350888%_ _%stx50781%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#do-with-lock|
      (lambda (_%$stx50892%_)
        (let* ((_%__stx9457694577%_ _%$stx50892%_)
               (_%$%g5089850982%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9457694577%_))))
          (let ((_%__kont9457994580%_
                 (lambda (_%$%g5090051286%_
                          _%$%g5090151288%_
                          _%$%g5090251289%_
                          _%$%g5090351290%_)
                   (cons (gx#datum->syntax '#f ':-)
                         (cons (cons (gx#datum->syntax '#f 'do-with-lock)
                                     (cons _%$%g5090351290%_
                                           (cons _%$%g5090151288%_
                                                 (foldr (lambda (_%$%g5131451317%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g5131551320%_)
                  (cons _%$%g5131451317%_ _%$%g5131551320%_))
                '()
                _%$%g5090051286%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%$%g5090251289%_ '())))))
                (_%__kont9458394584%_
                 (lambda (_%$%g5092851164%_
                          _%$%g5092951166%_
                          _%$%g5093051167%_
                          _%$%g5093151168%_)
                   (cons (gx#datum->syntax '#f ':)
                         (cons (cons (gx#datum->syntax '#f 'do-with-lock)
                                     (cons _%$%g5093151168%_
                                           (cons _%$%g5092951166%_
                                                 (foldr (lambda (_%$%g5119251195%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g5119351198%_)
                  (cons _%$%g5119251195%_ _%$%g5119351198%_))
                '()
                _%$%g5092851164%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%$%g5093051167%_ '())))))
                (_%__kont9458794588%_
                 (lambda (_%$%g5095651047%_
                          _%$%g5095751049%_
                          _%$%g5095851050%_)
                   (cons (gx#datum->syntax '#f 'with-lock)
                         (cons _%$%g5095851050%_
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons '()
                                                 (cons _%$%g5095751049%_
                                                       (foldr (lambda (_%$%g5107051073%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%g5107151076%_)
                        (cons _%$%g5107051073%_ _%$%g5107151076%_))
                      '()
                      _%$%g5095651047%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match9470194702%_
                    (lambda (_%$%e5095950989%_
                             _%$%hd5096050993%_
                             _%$%tl5096150996%_
                             _%$%e5096250999%_
                             _%$%hd5096351003%_
                             _%$%tl5096451006%_
                             _%$%e5096551009%_
                             _%$%hd5096651013%_
                             _%$%tl5096751016%_
                             _%__splice9458994590%_
                             _%$%target5096851019%_
                             _%$%tl5097051022%_)
                      (letrec ((_%$%loop5097151025%_
                                (lambda (_%$%hd5096951029%_
                                         _%$%rest5097551032%_)
                                  (if (gx#stx-pair? _%$%hd5096951029%_)
                                      (let ((_%$%e5097251034%_
                                             (gx#syntax-e _%$%hd5096951029%_)))
                                        (let ((_%$%lp-tl5097451041%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5097251034%_)))
                                              (_%$%lp-hd5097351038%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5097251034%_))))
                                          (_%$%loop5097151025%_
                                           _%$%lp-tl5097451041%_
                                           (cons _%$%lp-hd5097351038%_
                                                 _%$%rest5097551032%_))))
                                      (let ((_%$%rest5097651044%_
                                             (reverse _%$%rest5097551032%_)))
                                        (_%__kont9458794588%_
                                         _%$%rest5097651044%_
                                         _%$%hd5096651013%_
                                         _%$%hd5096351003%_))))))
                        (_%$%loop5097151025%_ _%$%target5096851019%_ '()))))
                   (_%__match9467594676%_
                    (lambda (_%$%e5093251086%_
                             _%$%hd5093351090%_
                             _%$%tl5093451093%_
                             _%$%e5093551096%_
                             _%$%hd5093651100%_
                             _%$%tl5093751103%_
                             _%$%e5093851106%_
                             _%$%hd5093951110%_
                             _%$%tl5094051113%_
                             _%$%e5094151116%_
                             _%$%hd5094251120%_
                             _%$%tl5094351123%_
                             _%$%e5094451126%_
                             _%$%hd5094551130%_
                             _%$%tl5094651133%_
                             _%__splice9458594586%_
                             _%$%target5094751136%_
                             _%$%tl5094951139%_)
                      (letrec ((_%$%loop5095051142%_
                                (lambda (_%$%hd5094851146%_
                                         _%$%rest5095451149%_)
                                  (if (gx#stx-pair? _%$%hd5094851146%_)
                                      (let ((_%$%e5095151151%_
                                             (gx#syntax-e _%$%hd5094851146%_)))
                                        (let ((_%$%lp-tl5095351158%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5095151151%_)))
                                              (_%$%lp-hd5095251155%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5095151151%_))))
                                          (_%$%loop5095051142%_
                                           _%$%lp-tl5095351158%_
                                           (cons _%$%lp-hd5095251155%_
                                                 _%$%rest5095451149%_))))
                                      (let ((_%$%rest5095551161%_
                                             (reverse _%$%rest5095451149%_)))
                                        (_%__kont9458394584%_
                                         _%$%rest5095551161%_
                                         _%$%hd5094551130%_
                                         _%$%hd5094251120%_
                                         _%$%hd5093651100%_))))))
                        (_%$%loop5095051142%_ _%$%target5094751136%_ '()))))
                   (_%__match9463394634%_
                    (lambda (_%$%e5090451208%_
                             _%$%hd5090551212%_
                             _%$%tl5090651215%_
                             _%$%e5090751218%_
                             _%$%hd5090851222%_
                             _%$%tl5090951225%_
                             _%$%e5091051228%_
                             _%$%hd5091151232%_
                             _%$%tl5091251235%_
                             _%$%e5091351238%_
                             _%$%hd5091451242%_
                             _%$%tl5091551245%_
                             _%$%e5091651248%_
                             _%$%hd5091751252%_
                             _%$%tl5091851255%_
                             _%__splice9458194582%_
                             _%$%target5091951258%_
                             _%$%tl5092151261%_)
                      (letrec ((_%$%loop5092251264%_
                                (lambda (_%$%hd5092051268%_
                                         _%$%rest5092651271%_)
                                  (if (gx#stx-pair? _%$%hd5092051268%_)
                                      (let ((_%$%e5092351273%_
                                             (gx#syntax-e _%$%hd5092051268%_)))
                                        (let ((_%$%lp-tl5092551280%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5092351273%_)))
                                              (_%$%lp-hd5092451277%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5092351273%_))))
                                          (_%$%loop5092251264%_
                                           _%$%lp-tl5092551280%_
                                           (cons _%$%lp-hd5092451277%_
                                                 _%$%rest5092651271%_))))
                                      (let ((_%$%rest5092751283%_
                                             (reverse _%$%rest5092651271%_)))
                                        (_%__kont9457994580%_
                                         _%$%rest5092751283%_
                                         _%$%hd5091751252%_
                                         _%$%hd5091451242%_
                                         _%$%hd5090851222%_))))))
                        (_%$%loop5092251264%_ _%$%target5091951258%_ '())))))
              (if (gx#stx-pair? _%__stx9457694577%_)
                  (let ((_%$%e5090451208%_ (gx#syntax-e _%__stx9457694577%_)))
                    (let ((_%$%tl5090651215%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5090451208%_)))
                          (_%$%hd5090551212%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5090451208%_))))
                      (if (gx#stx-pair? _%$%tl5090651215%_)
                          (let ((_%$%e5090751218%_
                                 (gx#syntax-e _%$%tl5090651215%_)))
                            (let ((_%$%tl5090951225%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5090751218%_)))
                                  (_%$%hd5090851222%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5090751218%_))))
                              (if (gx#stx-pair? _%$%tl5090951225%_)
                                  (let ((_%$%e5091051228%_
                                         (gx#syntax-e _%$%tl5090951225%_)))
                                    (let ((_%$%tl5091251235%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5091051228%_)))
                                          (_%$%hd5091151232%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5091051228%_))))
                                      (if (gx#identifier? _%$%hd5091151232%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/contract~TypeCast[1]#_g101415_|
                                               _%$%hd5091151232%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl5091251235%_)
                                                  (let ((_%$%e5091351238%_
                                                         (gx#syntax-e
                                                          _%$%tl5091251235%_)))
                                                    (let ((_%$%tl5091551245%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5091351238%_)))
                                                          (_%$%hd5091451242%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5091351238%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl5091551245%_)
                                                          (let ((_%$%e5091651248%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl5091551245%_)))
                    (let ((_%$%tl5091851255%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5091651248%_)))
                          (_%$%hd5091751252%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5091651248%_))))
                      (if (gx#stx-pair/null? _%$%tl5091851255%_)
                          (let ((_%__splice9458194582%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5091851255%_
                                  '0)))
                            (let ((_%$%tl5092151261%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9458194582%_ '1)))
                                  (_%$%target5091951258%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9458194582%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5092151261%_)
                                  (_%__match9463394634%_
                                   _%$%e5090451208%_
                                   _%$%hd5090551212%_
                                   _%$%tl5090651215%_
                                   _%$%e5090751218%_
                                   _%$%hd5090851222%_
                                   _%$%tl5090951225%_
                                   _%$%e5091051228%_
                                   _%$%hd5091151232%_
                                   _%$%tl5091251235%_
                                   _%$%e5091351238%_
                                   _%$%hd5091451242%_
                                   _%$%tl5091551245%_
                                   _%$%e5091651248%_
                                   _%$%hd5091751252%_
                                   _%$%tl5091851255%_
                                   _%__splice9458194582%_
                                   _%$%target5091951258%_
                                   _%$%tl5092151261%_)
                                  (if (gx#stx-pair/null? _%$%tl5091251235%_)
                                      (let ((_%__splice9458994590%_
                                             (gx#syntax-split-splice->vector
                                              _%$%tl5091251235%_
                                              '0)))
                                        (let ((_%$%tl5097051022%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9458994590%_
                                                  '1)))
                                              (_%$%target5096851019%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9458994590%_
                                                  '0))))
                                          (if (gx#stx-null? _%$%tl5097051022%_)
                                              (_%__match9470194702%_
                                               _%$%e5090451208%_
                                               _%$%hd5090551212%_
                                               _%$%tl5090651215%_
                                               _%$%e5090751218%_
                                               _%$%hd5090851222%_
                                               _%$%tl5090951225%_
                                               _%$%e5091051228%_
                                               _%$%hd5091151232%_
                                               _%$%tl5091251235%_
                                               _%__splice9458994590%_
                                               _%$%target5096851019%_
                                               _%$%tl5097051022%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5089850982%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5089850982%_))))))
                          (if (gx#stx-pair/null? _%$%tl5091251235%_)
                              (let ((_%__splice9458994590%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl5091251235%_
                                      '0)))
                                (let ((_%$%tl5097051022%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9458994590%_
                                          '1)))
                                      (_%$%target5096851019%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9458994590%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl5097051022%_)
                                      (_%__match9470194702%_
                                       _%$%e5090451208%_
                                       _%$%hd5090551212%_
                                       _%$%tl5090651215%_
                                       _%$%e5090751218%_
                                       _%$%hd5090851222%_
                                       _%$%tl5090951225%_
                                       _%$%e5091051228%_
                                       _%$%hd5091151232%_
                                       _%$%tl5091251235%_
                                       _%__splice9458994590%_
                                       _%$%target5096851019%_
                                       _%$%tl5097051022%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5089850982%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5089850982%_))))))
                  (if (gx#stx-pair/null? _%$%tl5091251235%_)
                      (let ((_%__splice9458994590%_
                             (gx#syntax-split-splice->vector
                              _%$%tl5091251235%_
                              '0)))
                        (let ((_%$%tl5097051022%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9458994590%_ '1)))
                              (_%$%target5096851019%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9458994590%_ '0))))
                          (if (gx#stx-null? _%$%tl5097051022%_)
                              (_%__match9470194702%_
                               _%$%e5090451208%_
                               _%$%hd5090551212%_
                               _%$%tl5090651215%_
                               _%$%e5090751218%_
                               _%$%hd5090851222%_
                               _%$%tl5090951225%_
                               _%$%e5091051228%_
                               _%$%hd5091151232%_
                               _%$%tl5091251235%_
                               _%__splice9458994590%_
                               _%$%target5096851019%_
                               _%$%tl5097051022%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g5089850982%_)))))
                      (let () (declare (not safe)) (_%$%g5089850982%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5091251235%_)
                                                      (let ((_%__splice9458994590%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5091251235%_
                                                              '0)))
                                                        (let ((_%$%tl5097051022%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9458994590%_ '1)))
                      (_%$%target5096851019%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9458994590%_ '0))))
                  (if (gx#stx-null? _%$%tl5097051022%_)
                      (_%__match9470194702%_
                       _%$%e5090451208%_
                       _%$%hd5090551212%_
                       _%$%tl5090651215%_
                       _%$%e5090751218%_
                       _%$%hd5090851222%_
                       _%$%tl5090951225%_
                       _%$%e5091051228%_
                       _%$%hd5091151232%_
                       _%$%tl5091251235%_
                       _%__splice9458994590%_
                       _%$%target5096851019%_
                       _%$%tl5097051022%_)
                      (let () (declare (not safe)) (_%$%g5089850982%_)))))
              (let () (declare (not safe)) (_%$%g5089850982%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~TypeCast[1]#_g101416_|
                                                   _%$%hd5091151232%_)
                                                  (if (gx#stx-pair?
                                                       _%$%tl5091251235%_)
                                                      (let ((_%$%e5094151116%_
                                                             (gx#syntax-e
                                                              _%$%tl5091251235%_)))
                                                        (let ((_%$%tl5094351123%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e5094151116%_)))
                      (_%$%hd5094251120%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e5094151116%_))))
                  (if (gx#stx-pair? _%$%tl5094351123%_)
                      (let ((_%$%e5094451126%_
                             (gx#syntax-e _%$%tl5094351123%_)))
                        (let ((_%$%tl5094651133%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5094451126%_)))
                              (_%$%hd5094551130%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5094451126%_))))
                          (if (gx#stx-pair/null? _%$%tl5094651133%_)
                              (let ((_%__splice9458594586%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl5094651133%_
                                      '0)))
                                (let ((_%$%tl5094951139%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9458594586%_
                                          '1)))
                                      (_%$%target5094751136%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9458594586%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl5094951139%_)
                                      (_%__match9467594676%_
                                       _%$%e5090451208%_
                                       _%$%hd5090551212%_
                                       _%$%tl5090651215%_
                                       _%$%e5090751218%_
                                       _%$%hd5090851222%_
                                       _%$%tl5090951225%_
                                       _%$%e5091051228%_
                                       _%$%hd5091151232%_
                                       _%$%tl5091251235%_
                                       _%$%e5094151116%_
                                       _%$%hd5094251120%_
                                       _%$%tl5094351123%_
                                       _%$%e5094451126%_
                                       _%$%hd5094551130%_
                                       _%$%tl5094651133%_
                                       _%__splice9458594586%_
                                       _%$%target5094751136%_
                                       _%$%tl5094951139%_)
                                      (if (gx#stx-pair/null?
                                           _%$%tl5091251235%_)
                                          (let ((_%__splice9458994590%_
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl5091251235%_
                                                  '0)))
                                            (let ((_%$%tl5097051022%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9458994590%_
                                                      '1)))
                                                  (_%$%target5096851019%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9458994590%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%$%tl5097051022%_)
                                                  (_%__match9470194702%_
                                                   _%$%e5090451208%_
                                                   _%$%hd5090551212%_
                                                   _%$%tl5090651215%_
                                                   _%$%e5090751218%_
                                                   _%$%hd5090851222%_
                                                   _%$%tl5090951225%_
                                                   _%$%e5091051228%_
                                                   _%$%hd5091151232%_
                                                   _%$%tl5091251235%_
                                                   _%__splice9458994590%_
                                                   _%$%target5096851019%_
                                                   _%$%tl5097051022%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5089850982%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5089850982%_))))))
                              (if (gx#stx-pair/null? _%$%tl5091251235%_)
                                  (let ((_%__splice9458994590%_
                                         (gx#syntax-split-splice->vector
                                          _%$%tl5091251235%_
                                          '0)))
                                    (let ((_%$%tl5097051022%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9458994590%_
                                              '1)))
                                          (_%$%target5096851019%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9458994590%_
                                              '0))))
                                      (if (gx#stx-null? _%$%tl5097051022%_)
                                          (_%__match9470194702%_
                                           _%$%e5090451208%_
                                           _%$%hd5090551212%_
                                           _%$%tl5090651215%_
                                           _%$%e5090751218%_
                                           _%$%hd5090851222%_
                                           _%$%tl5090951225%_
                                           _%$%e5091051228%_
                                           _%$%hd5091151232%_
                                           _%$%tl5091251235%_
                                           _%__splice9458994590%_
                                           _%$%target5096851019%_
                                           _%$%tl5097051022%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5089850982%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5089850982%_))))))
                      (if (gx#stx-pair/null? _%$%tl5091251235%_)
                          (let ((_%__splice9458994590%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5091251235%_
                                  '0)))
                            (let ((_%$%tl5097051022%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9458994590%_ '1)))
                                  (_%$%target5096851019%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9458994590%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5097051022%_)
                                  (_%__match9470194702%_
                                   _%$%e5090451208%_
                                   _%$%hd5090551212%_
                                   _%$%tl5090651215%_
                                   _%$%e5090751218%_
                                   _%$%hd5090851222%_
                                   _%$%tl5090951225%_
                                   _%$%e5091051228%_
                                   _%$%hd5091151232%_
                                   _%$%tl5091251235%_
                                   _%__splice9458994590%_
                                   _%$%target5096851019%_
                                   _%$%tl5097051022%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5089850982%_)))))
                          (let () (declare (not safe)) (_%$%g5089850982%_))))))
              (if (gx#stx-pair/null? _%$%tl5091251235%_)
                  (let ((_%__splice9458994590%_
                         (gx#syntax-split-splice->vector
                          _%$%tl5091251235%_
                          '0)))
                    (let ((_%$%tl5097051022%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9458994590%_ '1)))
                          (_%$%target5096851019%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9458994590%_ '0))))
                      (if (gx#stx-null? _%$%tl5097051022%_)
                          (_%__match9470194702%_
                           _%$%e5090451208%_
                           _%$%hd5090551212%_
                           _%$%tl5090651215%_
                           _%$%e5090751218%_
                           _%$%hd5090851222%_
                           _%$%tl5090951225%_
                           _%$%e5091051228%_
                           _%$%hd5091151232%_
                           _%$%tl5091251235%_
                           _%__splice9458994590%_
                           _%$%target5096851019%_
                           _%$%tl5097051022%_)
                          (let () (declare (not safe)) (_%$%g5089850982%_)))))
                  (let () (declare (not safe)) (_%$%g5089850982%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5091251235%_)
                                                      (let ((_%__splice9458994590%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5091251235%_
                                                              '0)))
                                                        (let ((_%$%tl5097051022%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9458994590%_ '1)))
                      (_%$%target5096851019%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9458994590%_ '0))))
                  (if (gx#stx-null? _%$%tl5097051022%_)
                      (_%__match9470194702%_
                       _%$%e5090451208%_
                       _%$%hd5090551212%_
                       _%$%tl5090651215%_
                       _%$%e5090751218%_
                       _%$%hd5090851222%_
                       _%$%tl5090951225%_
                       _%$%e5091051228%_
                       _%$%hd5091151232%_
                       _%$%tl5091251235%_
                       _%__splice9458994590%_
                       _%$%target5096851019%_
                       _%$%tl5097051022%_)
                      (let () (declare (not safe)) (_%$%g5089850982%_)))))
              (let () (declare (not safe)) (_%$%g5089850982%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%$%tl5091251235%_)
                                              (let ((_%__splice9458994590%_
                                                     (gx#syntax-split-splice->vector
                                                      _%$%tl5091251235%_
                                                      '0)))
                                                (let ((_%$%tl5097051022%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9458994590%_
                                                          '1)))
                                                      (_%$%target5096851019%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9458994590%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%$%tl5097051022%_)
                                                      (_%__match9470194702%_
                                                       _%$%e5090451208%_
                                                       _%$%hd5090551212%_
                                                       _%$%tl5090651215%_
                                                       _%$%e5090751218%_
                                                       _%$%hd5090851222%_
                                                       _%$%tl5090951225%_
                                                       _%$%e5091051228%_
                                                       _%$%hd5091151232%_
                                                       _%$%tl5091251235%_
                                                       _%__splice9458994590%_
                                                       _%$%target5096851019%_
                                                       _%$%tl5097051022%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g5089850982%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5089850982%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5089850982%_)))))
                          (let () (declare (not safe)) (_%$%g5089850982%_)))))
                  (let () (declare (not safe)) (_%$%g5089850982%_))))))))
    (define |gerbil/core/contract~TypeCast[:0:]#:~|
      (lambda (_%$stx51330%_)
        (let* ((_%__stx9470494705%_ _%$stx51330%_)
               (_%$%g5133551371%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9470494705%_))))
          (let ((_%__kont9470794708%_
                 (lambda (_%$%g5133751489%_ _%$%g5133851491%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f 'val)
                                     (cons _%$%g5133851491%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (cons _%$%g5133751489%_
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
                           (cons _%$%g5133851491%_
                                 (cons _%$%g5133751489%_
                                       (cons (gx#datum->syntax '#f 'val)
                                             '()))))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9470994710%_
                 (lambda (_%$%g5134851428%_
                          _%$%g5134951430%_
                          _%$%g5135051431%_)
                   (cons (gx#datum->syntax '#f ':-)
                         (cons (cons (gx#datum->syntax '#f ':~)
                                     (cons _%$%g5135051431%_
                                           (cons _%$%g5134951430%_ '())))
                               (cons _%$%g5134851428%_ '()))))))
            (if (gx#stx-pair? _%__stx9470494705%_)
                (let ((_%$%e5133951459%_ (gx#syntax-e _%__stx9470494705%_)))
                  (let ((_%$%tl5134151466%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e5133951459%_)))
                        (_%$%hd5134051463%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e5133951459%_))))
                    (if (gx#stx-pair? _%$%tl5134151466%_)
                        (let ((_%$%e5134251469%_
                               (gx#syntax-e _%$%tl5134151466%_)))
                          (let ((_%$%tl5134451476%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e5134251469%_)))
                                (_%$%hd5134351473%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e5134251469%_))))
                            (if (gx#stx-pair? _%$%tl5134451476%_)
                                (let ((_%$%e5134551479%_
                                       (gx#syntax-e _%$%tl5134451476%_)))
                                  (let ((_%$%tl5134751486%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e5134551479%_)))
                                        (_%$%hd5134651483%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e5134551479%_))))
                                    (if (gx#stx-null? _%$%tl5134751486%_)
                                        (_%__kont9470794708%_
                                         _%$%hd5134651483%_
                                         _%$%hd5134351473%_)
                                        (if (gx#stx-pair? _%$%tl5134751486%_)
                                            (let ((_%$%e5136051408%_
                                                   (gx#syntax-e
                                                    _%$%tl5134751486%_)))
                                              (let ((_%$%tl5136251415%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e5136051408%_)))
                                                    (_%$%hd5136151412%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e5136051408%_))))
                                                (if (gx#identifier?
                                                     _%$%hd5136151412%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~TypeCast[1]#_g101417_|
                                                         _%$%hd5136151412%_)
                                                        (if (gx#stx-pair?
                                                             _%$%tl5136251415%_)
                                                            (let ((_%$%e5136351418%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%tl5136251415%_)))
                      (let ((_%$%tl5136551425%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5136351418%_)))
                            (_%$%hd5136451422%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5136351418%_))))
                        (if (gx#stx-null? _%$%tl5136551425%_)
                            (_%__kont9470994710%_
                             _%$%hd5136451422%_
                             _%$%hd5134651483%_
                             _%$%hd5134351473%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g5133551371%_)))))
                    (let () (declare (not safe)) (_%$%g5133551371%_)))
                (let () (declare (not safe)) (_%$%g5133551371%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5133551371%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5133551371%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g5133551371%_)))))
                        (let () (declare (not safe)) (_%$%g5133551371%_)))))
                (let () (declare (not safe)) (_%$%g5133551371%_)))))))
    (define |gerbil/core/contract~TypeCast[:0:]#::-|
      (lambda (_%$stx51510%_)
        (let ((_%$%g5151351520%_
               (lambda (_%$%g5151451516%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g5151451516%_))))
          (_%$%g5151351520%_ _%$stx51510%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:=|
      (lambda (_%$stx51524%_)
        (let ((_%$%g5152751534%_
               (lambda (_%$%g5152851530%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g5152851530%_))))
          (_%$%g5152751534%_ _%$stx51524%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#check-nil!|
      (lambda (_%$stx51538%_)
        (let* ((_%$%g5154251556%_
                (lambda (_%$%g5154351552%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g5154351552%_)))
               (_%$%g5154151597%_
                (lambda (_%$%g5154351560%_)
                  (if (gx#stx-pair? _%$%g5154351560%_)
                      (let ((_%$%e5154551563%_
                             (gx#syntax-e _%$%g5154351560%_)))
                        (let ((_%$%hd5154651567%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5154551563%_)))
                              (_%$%tl5154751570%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5154551563%_))))
                          (if (gx#stx-pair? _%$%tl5154751570%_)
                              (let ((_%$%e5154851573%_
                                     (gx#syntax-e _%$%tl5154751570%_)))
                                (let ((_%$%hd5154951577%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5154851573%_)))
                                      (_%$%tl5155051580%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5154851573%_))))
                                  (if (gx#stx-null? _%$%tl5155051580%_)
                                      (cons (gx#datum->syntax '#f 'or)
                                            (cons _%$%hd5154951577%_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'nil-dereference!)
                                                              (cons _%$%hd5154951577%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%g5154251556%_ _%$%g5154351560%_))))
                              (_%$%g5154251556%_ _%$%g5154351560%_))))
                      (_%$%g5154251556%_ _%$%g5154351560%_)))))
          (_%$%g5154151597%_ _%$stx51538%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#contract-violation!|
      (lambda (_%stx51601%_)
        (let* ((_%$%g5160451627%_
                (lambda (_%$%g5160551623%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g5160551623%_)))
               (_%$%g5160351751%_
                (lambda (_%$%g5160551631%_)
                  (if (gx#stx-pair? _%$%g5160551631%_)
                      (let ((_%$%e5161051634%_
                             (gx#syntax-e _%$%g5160551631%_)))
                        (let ((_%$%hd5161151638%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5161051634%_)))
                              (_%$%tl5161251641%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5161051634%_))))
                          (if (gx#stx-pair? _%$%tl5161251641%_)
                              (let ((_%$%e5161351644%_
                                     (gx#syntax-e _%$%tl5161251641%_)))
                                (let ((_%$%hd5161451648%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5161351644%_)))
                                      (_%$%tl5161551651%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5161351644%_))))
                                  (if (gx#stx-pair? _%$%tl5161551651%_)
                                      (let ((_%$%e5161651654%_
                                             (gx#syntax-e _%$%tl5161551651%_)))
                                        (let ((_%$%hd5161751658%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5161651654%_)))
                                              (_%$%tl5161851661%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5161651654%_))))
                                          (if (gx#stx-pair? _%$%tl5161851661%_)
                                              (let ((_%$%e5161951664%_
                                                     (gx#syntax-e
                                                      _%$%tl5161851661%_)))
                                                (let ((_%$%hd5162051668%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5161951664%_)))
                                                      (_%$%tl5162151671%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5161951664%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl5162151671%_)
                                                      (let* ((_%$%g5169851706%_
                                                              (lambda (_%$%g5169951702%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%$%g5169951702%_)))
                     (_%$%g5169751725%_
                      (lambda (_%$%g5169951710%_)
                        (cons (gx#datum->syntax '#f 'begin-annotation)
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           '@contract-violation)
                                          (cons _%$%g5169951710%_
                                                (cons _%$%hd5161751658%_
                                                      (cons _%$%hd5162051668%_
                                                            '()))))
                                    (cons (cons (gx#datum->syntax '#f 'abort!)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'raise-contract-violation-error)
                                                            (cons '"contract violation"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'context:
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%$%g5169951710%_ '()))
                                      (cons 'contract:
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'quote)
                                                        (cons _%$%hd5161751658%_
                                                              '()))
                                                  (cons 'value:
                                                        (cons _%$%hd5162051668%_
                                                              '()))))))))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))))))
                (_%$%g5169751725%_
                 (let ((_%$e51737%_
                        (let ((_%$e51729%_ (gx#stx-source _%$%hd5161451648%_)))
                          (if _%$e51729%_
                              _%$e51729%_
                              (let ((_%$e51733%_ (gx#stx-source _%stx51601%_)))
                                (if _%$e51733%_
                                    _%$e51733%_
                                    (gx#stx-source _%$%hd5161151638%_)))))))
                   (if _%$e51737%_
                       (call-with-output-string
                        '""
                        (lambda (_%$%g5174351745%_)
                          (let ()
                            (declare (not safe))
                            (##display-locat
                             _%$e51737%_
                             '#t
                             _%$%g5174351745%_))))
                       (gx#expander-context-id (gx#core-context-top))))))
              (_%$%g5160451627%_ _%$%g5160551631%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g5160451627%_
                                               _%$%g5160551631%_))))
                                      (_%$%g5160451627%_ _%$%g5160551631%_))))
                              (_%$%g5160451627%_ _%$%g5160551631%_))))
                      (_%$%g5160451627%_ _%$%g5160551631%_)))))
          (_%$%g5160351751%_ _%stx51601%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#runtime-contract-violation!|
      (lambda (_%stx51755%_)
        (let* ((_%$%g5175851781%_
                (lambda (_%$%g5175951777%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g5175951777%_)))
               (_%$%g5175751905%_
                (lambda (_%$%g5175951785%_)
                  (if (gx#stx-pair? _%$%g5175951785%_)
                      (let ((_%$%e5176451788%_
                             (gx#syntax-e _%$%g5175951785%_)))
                        (let ((_%$%hd5176551792%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5176451788%_)))
                              (_%$%tl5176651795%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5176451788%_))))
                          (if (gx#stx-pair? _%$%tl5176651795%_)
                              (let ((_%$%e5176751798%_
                                     (gx#syntax-e _%$%tl5176651795%_)))
                                (let ((_%$%hd5176851802%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5176751798%_)))
                                      (_%$%tl5176951805%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5176751798%_))))
                                  (if (gx#stx-pair? _%$%tl5176951805%_)
                                      (let ((_%$%e5177051808%_
                                             (gx#syntax-e _%$%tl5176951805%_)))
                                        (let ((_%$%hd5177151812%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5177051808%_)))
                                              (_%$%tl5177251815%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5177051808%_))))
                                          (if (gx#stx-pair? _%$%tl5177251815%_)
                                              (let ((_%$%e5177351818%_
                                                     (gx#syntax-e
                                                      _%$%tl5177251815%_)))
                                                (let ((_%$%hd5177451822%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5177351818%_)))
                                                      (_%$%tl5177551825%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5177351818%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl5177551825%_)
                                                      (let* ((_%$%g5185251860%_
                                                              (lambda (_%$%g5185351856%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%$%g5185351856%_)))
                     (_%$%g5185151879%_
                      (lambda (_%$%g5185351864%_)
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
                          (cons _%$%g5185351864%_ '()))
                    (cons 'contract:
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _%$%hd5177151812%_ '()))
                                (cons 'value:
                                      (cons _%$%hd5177451822%_ '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))))
                (_%$%g5185151879%_
                 (let ((_%$e51891%_
                        (let ((_%$e51883%_ (gx#stx-source _%$%hd5176851802%_)))
                          (if _%$e51883%_
                              _%$e51883%_
                              (let ((_%$e51887%_ (gx#stx-source _%stx51755%_)))
                                (if _%$e51887%_
                                    _%$e51887%_
                                    (gx#stx-source _%$%hd5176551792%_)))))))
                   (if _%$e51891%_
                       (call-with-output-string
                        '""
                        (lambda (_%$%g5189751899%_)
                          (let ()
                            (declare (not safe))
                            (##display-locat
                             _%$e51891%_
                             '#t
                             _%$%g5189751899%_))))
                       (gx#expander-context-id (gx#core-context-top))))))
              (_%$%g5175851781%_ _%$%g5175951785%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g5175851781%_
                                               _%$%g5175951785%_))))
                                      (_%$%g5175851781%_ _%$%g5175951785%_))))
                              (_%$%g5175851781%_ _%$%g5175951785%_))))
                      (_%$%g5175851781%_ _%$%g5175951785%_)))))
          (_%$%g5175751905%_ _%stx51755%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#nil-dereference!|
      (lambda (_%stx51909%_)
        (let* ((_%$%g5191251927%_
                (lambda (_%$%g5191351923%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g5191351923%_)))
               (_%$%g5191152023%_
                (lambda (_%$%g5191351931%_)
                  (if (gx#stx-pair? _%$%g5191351931%_)
                      (let ((_%$%e5191651934%_
                             (gx#syntax-e _%$%g5191351931%_)))
                        (let ((_%$%hd5191751938%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5191651934%_)))
                              (_%$%tl5191851941%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5191651934%_))))
                          (if (gx#stx-pair? _%$%tl5191851941%_)
                              (let ((_%$%e5191951944%_
                                     (gx#syntax-e _%$%tl5191851941%_)))
                                (let ((_%$%hd5192051948%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5191951944%_)))
                                      (_%$%tl5192151951%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5191951944%_))))
                                  (if (gx#stx-null? _%$%tl5192151951%_)
                                      (let* ((_%$%g5197051978%_
                                              (lambda (_%$%g5197151974%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%$%g5197151974%_)))
                                             (_%$%g5196951997%_
                                              (lambda (_%$%g5197151982%_)
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
                                                  (cons _%$%g5197151982%_ '()))
                                            (cons 'contract:
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'check-nil!)
                                  (cons _%$%hd5192051948%_ '()))
                            '()))
                (cons 'value: (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%$%g5196951997%_
                                         (let ((_%$e52009%_
                                                (let ((_%$e52001%_
                                                       (gx#stx-source
                                                        _%$%hd5192051948%_)))
                                                  (if _%$e52001%_
                                                      _%$e52001%_
                                                      (let ((_%$e52005%_
                                                             (gx#stx-source
                                                              _%stx51909%_)))
                                                        (if _%$e52005%_
                                                            _%$e52005%_
                                                            (gx#stx-source
                                                             _%$%hd5191751938%_)))))))
                                           (if _%$e52009%_
                                               (call-with-output-string
                                                '""
                                                (lambda (_%$%g5201552017%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (##display-locat
                                                     _%$e52009%_
                                                     '#t
                                                     _%$%g5201552017%_))))
                                               (gx#expander-context-id
                                                (gx#core-context-top))))))
                                      (_%$%g5191251927%_ _%$%g5191351931%_))))
                              (_%$%g5191251927%_ _%$%g5191351931%_))))
                      (_%$%g5191251927%_ _%$%g5191351931%_)))))
          (_%$%g5191152023%_ _%stx51909%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#abort!|
      (lambda (_%$stx52027%_)
        (let* ((_%$%g5203152045%_
                (lambda (_%$%g5203252041%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g5203252041%_)))
               (_%$%g5203052086%_
                (lambda (_%$%g5203252049%_)
                  (if (gx#stx-pair? _%$%g5203252049%_)
                      (let ((_%$%e5203452052%_
                             (gx#syntax-e _%$%g5203252049%_)))
                        (let ((_%$%hd5203552056%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5203452052%_)))
                              (_%$%tl5203652059%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5203452052%_))))
                          (if (gx#stx-pair? _%$%tl5203652059%_)
                              (let ((_%$%e5203752062%_
                                     (gx#syntax-e _%$%tl5203652059%_)))
                                (let ((_%$%hd5203852066%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5203752062%_)))
                                      (_%$%tl5203952069%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5203752062%_))))
                                  (if (gx#stx-null? _%$%tl5203952069%_)
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
                                                              (cons _%$%hd5203852066%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'void) '())
                                  '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%g5203152045%_ _%$%g5203252049%_))))
                              (_%$%g5203152045%_ _%$%g5203252049%_))))
                      (_%$%g5203152045%_ _%$%g5203252049%_)))))
          (_%$%g5203052086%_ _%$stx52027%_))))))
