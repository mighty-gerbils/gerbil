(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~ClassMeta[1]#meta-object-methods!|
    (lambda (_%meta58346%_)
      (let ((_%$e58349%_
             (let ((__obj101264 _%meta58346%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      __obj101264
                      'gerbil/core#meta-object::t))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref __obj101264 '1 '#f '#f))
                   (class-slot-ref
                    gerbil/core/mop~MOP-2#meta-object::t
                    __obj101264
                    'methods)))))
        (if _%$e58349%_
            _%$e58349%_
            (let ((_%tab58355%_ (make-hash-table-eq)))
              (let ((__obj101265 _%meta58346%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-direct-instance-of?
                       __obj101265
                       'gerbil/core#meta-object::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj101265
                       _%tab58355%_
                       '1
                       '#f
                       '#f))
                    (class-slot-set!
                     gerbil/core/mop~MOP-2#meta-object::t
                     __obj101265
                     'methods
                     _%tab58355%_)))
              _%tab58355%_)))))
  (define |gerbil/core/contract~ClassMeta[:0:]#@call-meta-object|
    (lambda (_%stx58358%_)
      (let* ((_%$%g5836158392%_
              (lambda (_%$%g5836258388%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g5836258388%_)))
             (_%$%g5836058504%_
              (lambda (_%$%g5836258396%_)
                (if (gx#stx-pair? _%$%g5836258396%_)
                    (let ((_%$%e5836658399%_ (gx#syntax-e _%$%g5836258396%_)))
                      (let ((_%$%hd5836758403%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5836658399%_)))
                            (_%$%tl5836858406%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5836658399%_))))
                        (if (gx#stx-pair? _%$%tl5836858406%_)
                            (let ((_%$%e5836958409%_
                                   (gx#syntax-e _%$%tl5836858406%_)))
                              (let ((_%$%hd5837058413%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e5836958409%_)))
                                    (_%$%tl5837158416%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e5836958409%_))))
                                (if (gx#stx-pair? _%$%tl5837158416%_)
                                    (let ((_%$%e5837258419%_
                                           (gx#syntax-e _%$%tl5837158416%_)))
                                      (let ((_%$%hd5837358423%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5837258419%_)))
                                            (_%$%tl5837458426%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5837258419%_))))
                                        (if (gx#stx-pair? _%$%hd5837358423%_)
                                            (let ((_%$%e5837558429%_
                                                   (gx#syntax-e
                                                    _%$%hd5837358423%_)))
                                              (let ((_%$%hd5837658433%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e5837558429%_)))
                                                    (_%$%tl5837758436%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e5837558429%_))))
                                                (if (gx#stx-pair/null?
                                                     _%$%tl5837758436%_)
                                                    (let ((_g101474_
                                                           (gx#syntax-split-splice
                                                            _%$%tl5837758436%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g101475_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g101474_)
                             (##values-length _g101474_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g101475_ 2)))
                      (error "Context expects 2 values" _g101475_)))
                (let ((_%$%target5837858439%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g101474_ 0)))
                      (_%$%tl5838058442%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g101474_ 1))))
                  (if (gx#stx-null? _%$%tl5838058442%_)
                      (letrec ((_%$%loop5838158445%_
                                (lambda (_%$%hd5837958449%_
                                         _%$%arg5838558452%_)
                                  (if (gx#stx-pair? _%$%hd5837958449%_)
                                      (let ((_%$%e5838258454%_
                                             (gx#syntax-e _%$%hd5837958449%_)))
                                        (let ((_%$%lp-hd5838358458%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5838258454%_)))
                                              (_%$%lp-tl5838458461%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5838258454%_))))
                                          (_%$%loop5838158445%_
                                           _%$%lp-tl5838458461%_
                                           (cons _%$%lp-hd5838358458%_
                                                 _%$%arg5838558452%_))))
                                      (let ((_%$%arg5838658464%_
                                             (reverse _%$%arg5838558452%_)))
                                        (if (gx#stx-null? _%$%tl5837458426%_)
                                            (if (gx#identifier?
                                                 _%$%hd5837658433%_)
                                                (let ((_%meta58493%_
                                                       (gx#syntax-local-value
                                                        _%$%hd5837058413%_
                                                        false)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (class-instance?
                                                         gerbil/core/mop~MOP-2#meta-object::t
                                                         _%meta58493%_))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"not a meta-object"
                                                       _%stx58358%_
                                                       _%$%hd5837058413%_
                                                       _%meta58493%_))
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'let)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'meta)
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         'syntax-local-value)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'syntax)
                                                    (cons _%$%hd5837058413%_
                                                          '()))
                                              '()))
                                  '()))
                      (cons (cons (gx#datum->syntax '#f 'call-meta-object)
                                  (cons (gx#datum->syntax '#f 'meta)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'quote)
                                                    (cons _%$%hd5837658433%_
                                                          '()))
                                              (foldr (lambda (_%$%g5849558498%_
                                                              _%$%g5849658501%_)
                                                       (cons _%$%g5849558498%_
                                                             _%$%g5849658501%_))
                                                     '()
                                                     _%$%arg5838658464%_))))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g5836158392%_
                                                 _%$%g5836258396%_))
                                            (_%$%g5836158392%_
                                             _%$%g5836258396%_)))))))
                        (_%$%loop5838158445%_ _%$%target5837858439%_ '()))
                      (_%$%g5836158392%_ _%$%g5836258396%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g5836158392%_
                                                     _%$%g5836258396%_))))
                                            (_%$%g5836158392%_
                                             _%$%g5836258396%_))))
                                    (_%$%g5836158392%_ _%$%g5836258396%_))))
                            (_%$%g5836158392%_ _%$%g5836258396%_))))
                    (_%$%g5836158392%_ _%$%g5836258396%_)))))
        (_%$%g5836058504%_ _%stx58358%_))))
  (define |gerbil/core/contract~ClassMeta[:0:]#defmethod-for-meta|
    (lambda (_%stx58509%_)
      (let* ((_%$%g5851258557%_
              (lambda (_%$%g5851358553%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g5851358553%_)))
             (_%$%g5851158725%_
              (lambda (_%$%g5851358561%_)
                (if (gx#stx-pair? _%$%g5851358561%_)
                    (let ((_%$%e5851958564%_ (gx#syntax-e _%$%g5851358561%_)))
                      (let ((_%$%hd5852058568%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5851958564%_)))
                            (_%$%tl5852158571%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5851958564%_))))
                        (if (gx#stx-pair? _%$%tl5852158571%_)
                            (let ((_%$%e5852258574%_
                                   (gx#syntax-e _%$%tl5852158571%_)))
                              (let ((_%$%hd5852358578%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e5852258574%_)))
                                    (_%$%tl5852458581%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e5852258574%_))))
                                (if (gx#stx-pair? _%$%tl5852458581%_)
                                    (let ((_%$%e5852558584%_
                                           (gx#syntax-e _%$%tl5852458581%_)))
                                      (let ((_%$%hd5852658588%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5852558584%_)))
                                            (_%$%tl5852758591%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5852558584%_))))
                                        (if (gx#stx-pair? _%$%hd5852658588%_)
                                            (let ((_%$%e5852858594%_
                                                   (gx#syntax-e
                                                    _%$%hd5852658588%_)))
                                              (let ((_%$%hd5852958598%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e5852858594%_)))
                                                    (_%$%tl5853058601%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e5852858594%_))))
                                                (if (gx#stx-pair/null?
                                                     _%$%tl5853058601%_)
                                                    (let ((_g101476_
                                                           (gx#syntax-split-splice
                                                            _%$%tl5853058601%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g101477_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g101476_)
                             (##values-length _g101476_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g101477_ 2)))
                      (error "Context expects 2 values" _g101477_)))
                (let ((_%$%target5853158604%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g101476_ 0)))
                      (_%$%tl5853358607%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g101476_ 1))))
                  (if (gx#stx-null? _%$%tl5853358607%_)
                      (letrec ((_%$%loop5853458610%_
                                (lambda (_%$%hd5853258614%_
                                         _%$%arg5853858617%_)
                                  (if (gx#stx-pair? _%$%hd5853258614%_)
                                      (let ((_%$%e5853558619%_
                                             (gx#syntax-e _%$%hd5853258614%_)))
                                        (let ((_%$%lp-hd5853658623%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5853558619%_)))
                                              (_%$%lp-tl5853758626%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5853558619%_))))
                                          (_%$%loop5853458610%_
                                           _%$%lp-tl5853758626%_
                                           (cons _%$%lp-hd5853658623%_
                                                 _%$%arg5853858617%_))))
                                      (let ((_%$%arg5853958629%_
                                             (reverse _%$%arg5853858617%_)))
                                        (if (gx#stx-pair? _%$%tl5852758591%_)
                                            (let ((_%$%e5854058632%_
                                                   (gx#syntax-e
                                                    _%$%tl5852758591%_)))
                                              (let ((_%$%hd5854158636%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e5854058632%_)))
                                                    (_%$%tl5854258639%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e5854058632%_))))
                                                (if (gx#stx-pair/null?
                                                     _%$%tl5854258639%_)
                                                    (let ((_g101478_
                                                           (gx#syntax-split-splice
                                                            _%$%tl5854258639%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g101479_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g101478_)
                             (##values-length _g101478_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g101479_ 2)))
                      (error "Context expects 2 values" _g101479_)))
                (let ((_%$%target5854358642%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g101478_ 0)))
                      (_%$%tl5854558645%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g101478_ 1))))
                  (if (gx#stx-null? _%$%tl5854558645%_)
                      (letrec ((_%$%loop5854658648%_
                                (lambda (_%$%hd5854458652%_
                                         _%$%rest5855058655%_)
                                  (if (gx#stx-pair? _%$%hd5854458652%_)
                                      (let ((_%$%e5854758657%_
                                             (gx#syntax-e _%$%hd5854458652%_)))
                                        (let ((_%$%lp-hd5854858661%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5854758657%_)))
                                              (_%$%lp-tl5854958664%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5854758657%_))))
                                          (_%$%loop5854658648%_
                                           _%$%lp-tl5854958664%_
                                           (cons _%$%lp-hd5854858661%_
                                                 _%$%rest5855058655%_))))
                                      (let ((_%$%rest5855158667%_
                                             (reverse _%$%rest5855058655%_)))
                                        (if (gx#identifier? _%$%hd5852958598%_)
                                            (let ((_%meta58706%_
                                                   (gx#syntax-local-value
                                                    _%$%hd5852358578%_
                                                    false)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (class-instance?
                                                     gerbil/core/mop~MOP-2#meta-object::t
                                                     _%meta58706%_))
                                                  '#!void
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"not a meta-object"
                                                   _%stx58509%_
                                                   _%$%hd5852358578%_
                                                   _%meta58706%_))
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'begin-syntax)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'let)
                        (cons (cons (gx#datum->syntax '#f 'tab)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'meta-object-methods!)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'syntax-local-value)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'syntax)
                                (cons _%$%hd5852358578%_ '()))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              (cons (cons (gx#datum->syntax '#f 'hash-put!)
                                          (cons (gx#datum->syntax '#f 'tab)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _%$%hd5852958598%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons (gx#datum->syntax '#f 'lambda)
                          (cons (foldr (lambda (_%$%g5870858713%_
                                                _%$%g5870958716%_)
                                         (cons _%$%g5870858713%_
                                               _%$%g5870958716%_))
                                       '()
                                       _%$%arg5853958629%_)
                                (cons _%$%hd5854158636%_
                                      (foldr (lambda (_%$%g5871058719%_
                                                      _%$%g5871158722%_)
                                               (cons _%$%g5871058719%_
                                                     _%$%g5871158722%_))
                                             '()
                                             _%$%rest5855158667%_))))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g5851258557%_
                                             _%$%g5851358561%_)))))))
                        (_%$%loop5854658648%_ _%$%target5854358642%_ '()))
                      (_%$%g5851258557%_ _%$%g5851358561%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g5851258557%_
                                                     _%$%g5851358561%_))))
                                            (_%$%g5851258557%_
                                             _%$%g5851358561%_)))))))
                        (_%$%loop5853458610%_ _%$%target5853158604%_ '()))
                      (_%$%g5851258557%_ _%$%g5851358561%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g5851258557%_
                                                     _%$%g5851358561%_))))
                                            (_%$%g5851258557%_
                                             _%$%g5851358561%_))))
                                    (_%$%g5851258557%_ _%$%g5851358561%_))))
                            (_%$%g5851258557%_ _%$%g5851358561%_))))
                    (_%$%g5851258557%_ _%$%g5851358561%_)))))
        (_%$%g5851158725%_ _%stx58509%_)))))
