(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~ClassMeta[1]#meta-object-methods!|
    (lambda (_%meta59297%_)
      (let ((_%$e59300%_
             (let ((__obj102411 _%meta59297%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      __obj102411
                      'gerbil/core#meta-object::t))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref __obj102411 '1 '#f '#f))
                   (class-slot-ref
                    gerbil/core/mop~MOP-2#meta-object::t
                    __obj102411
                    'methods)))))
        (if _%$e59300%_
            _%$e59300%_
            (let ((_%tab59306%_ (make-hash-table-eq)))
              (let ((__obj102412 _%meta59297%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-direct-instance-of?
                       __obj102412
                       'gerbil/core#meta-object::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj102412
                       _%tab59306%_
                       '1
                       '#f
                       '#f))
                    (class-slot-set!
                     gerbil/core/mop~MOP-2#meta-object::t
                     __obj102412
                     'methods
                     _%tab59306%_)))
              _%tab59306%_)))))
  (define |gerbil/core/contract~ClassMeta[:0:]#@call-meta-object|
    (lambda (_%stx59309%_)
      (let* ((_%$%g5931259343%_
              (lambda (_%$%g5931359339%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g5931359339%_)))
             (_%$%g5931159455%_
              (lambda (_%$%g5931359347%_)
                (if (gx#stx-pair? _%$%g5931359347%_)
                    (let ((_%$%e5931759350%_ (gx#syntax-e _%$%g5931359347%_)))
                      (let ((_%$%hd5931859354%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5931759350%_)))
                            (_%$%tl5931959357%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5931759350%_))))
                        (if (gx#stx-pair? _%$%tl5931959357%_)
                            (let ((_%$%e5932059360%_
                                   (gx#syntax-e _%$%tl5931959357%_)))
                              (let ((_%$%hd5932159364%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e5932059360%_)))
                                    (_%$%tl5932259367%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e5932059360%_))))
                                (if (gx#stx-pair? _%$%tl5932259367%_)
                                    (let ((_%$%e5932359370%_
                                           (gx#syntax-e _%$%tl5932259367%_)))
                                      (let ((_%$%hd5932459374%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5932359370%_)))
                                            (_%$%tl5932559377%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5932359370%_))))
                                        (if (gx#stx-pair? _%$%hd5932459374%_)
                                            (let ((_%$%e5932659380%_
                                                   (gx#syntax-e
                                                    _%$%hd5932459374%_)))
                                              (let ((_%$%hd5932759384%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e5932659380%_)))
                                                    (_%$%tl5932859387%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e5932659380%_))))
                                                (if (gx#stx-pair/null?
                                                     _%$%tl5932859387%_)
                                                    (let ((_g102620_
                                                           (gx#syntax-split-splice
                                                            _%$%tl5932859387%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g102621_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g102620_)
                             (##values-length _g102620_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g102621_ 2)))
                      (error "Context expects 2 values" _g102621_)))
                (let ((_%$%target5932959390%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g102620_ 0)))
                      (_%$%tl5933159393%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g102620_ 1))))
                  (if (gx#stx-null? _%$%tl5933159393%_)
                      (letrec ((_%$%loop5933259396%_
                                (lambda (_%$%hd5933059400%_
                                         _%$%arg5933659403%_)
                                  (if (gx#stx-pair? _%$%hd5933059400%_)
                                      (let ((_%$%e5933359405%_
                                             (gx#syntax-e _%$%hd5933059400%_)))
                                        (let ((_%$%lp-hd5933459409%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5933359405%_)))
                                              (_%$%lp-tl5933559412%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5933359405%_))))
                                          (_%$%loop5933259396%_
                                           _%$%lp-tl5933559412%_
                                           (cons _%$%lp-hd5933459409%_
                                                 _%$%arg5933659403%_))))
                                      (let ((_%$%arg5933759415%_
                                             (reverse _%$%arg5933659403%_)))
                                        (if (gx#stx-null? _%$%tl5932559377%_)
                                            (if (gx#identifier?
                                                 _%$%hd5932759384%_)
                                                (let ((_%meta59444%_
                                                       (gx#syntax-local-value
                                                        _%$%hd5932159364%_
                                                        false)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (class-instance?
                                                         gerbil/core/mop~MOP-2#meta-object::t
                                                         _%meta59444%_))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"not a meta-object"
                                                       _%stx59309%_
                                                       _%$%hd5932159364%_
                                                       _%meta59444%_))
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
                                                    (cons _%$%hd5932159364%_
                                                          '()))
                                              '()))
                                  '()))
                      (cons (cons (gx#datum->syntax '#f 'call-meta-object)
                                  (cons (gx#datum->syntax '#f 'meta)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'quote)
                                                    (cons _%$%hd5932759384%_
                                                          '()))
                                              (foldr (lambda (_%$%g5944659449%_
                                                              _%$%g5944759452%_)
                                                       (cons _%$%g5944659449%_
                                                             _%$%g5944759452%_))
                                                     '()
                                                     _%$%arg5933759415%_))))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g5931259343%_
                                                 _%$%g5931359347%_))
                                            (_%$%g5931259343%_
                                             _%$%g5931359347%_)))))))
                        (_%$%loop5933259396%_ _%$%target5932959390%_ '()))
                      (_%$%g5931259343%_ _%$%g5931359347%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g5931259343%_
                                                     _%$%g5931359347%_))))
                                            (_%$%g5931259343%_
                                             _%$%g5931359347%_))))
                                    (_%$%g5931259343%_ _%$%g5931359347%_))))
                            (_%$%g5931259343%_ _%$%g5931359347%_))))
                    (_%$%g5931259343%_ _%$%g5931359347%_)))))
        (_%$%g5931159455%_ _%stx59309%_))))
  (define |gerbil/core/contract~ClassMeta[:0:]#defmethod-for-meta|
    (lambda (_%stx59460%_)
      (let* ((_%$%g5946359508%_
              (lambda (_%$%g5946459504%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g5946459504%_)))
             (_%$%g5946259676%_
              (lambda (_%$%g5946459512%_)
                (if (gx#stx-pair? _%$%g5946459512%_)
                    (let ((_%$%e5947059515%_ (gx#syntax-e _%$%g5946459512%_)))
                      (let ((_%$%hd5947159519%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5947059515%_)))
                            (_%$%tl5947259522%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5947059515%_))))
                        (if (gx#stx-pair? _%$%tl5947259522%_)
                            (let ((_%$%e5947359525%_
                                   (gx#syntax-e _%$%tl5947259522%_)))
                              (let ((_%$%hd5947459529%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e5947359525%_)))
                                    (_%$%tl5947559532%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e5947359525%_))))
                                (if (gx#stx-pair? _%$%tl5947559532%_)
                                    (let ((_%$%e5947659535%_
                                           (gx#syntax-e _%$%tl5947559532%_)))
                                      (let ((_%$%hd5947759539%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5947659535%_)))
                                            (_%$%tl5947859542%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5947659535%_))))
                                        (if (gx#stx-pair? _%$%hd5947759539%_)
                                            (let ((_%$%e5947959545%_
                                                   (gx#syntax-e
                                                    _%$%hd5947759539%_)))
                                              (let ((_%$%hd5948059549%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e5947959545%_)))
                                                    (_%$%tl5948159552%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e5947959545%_))))
                                                (if (gx#stx-pair/null?
                                                     _%$%tl5948159552%_)
                                                    (let ((_g102622_
                                                           (gx#syntax-split-splice
                                                            _%$%tl5948159552%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g102623_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g102622_)
                             (##values-length _g102622_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g102623_ 2)))
                      (error "Context expects 2 values" _g102623_)))
                (let ((_%$%target5948259555%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g102622_ 0)))
                      (_%$%tl5948459558%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g102622_ 1))))
                  (if (gx#stx-null? _%$%tl5948459558%_)
                      (letrec ((_%$%loop5948559561%_
                                (lambda (_%$%hd5948359565%_
                                         _%$%arg5948959568%_)
                                  (if (gx#stx-pair? _%$%hd5948359565%_)
                                      (let ((_%$%e5948659570%_
                                             (gx#syntax-e _%$%hd5948359565%_)))
                                        (let ((_%$%lp-hd5948759574%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5948659570%_)))
                                              (_%$%lp-tl5948859577%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5948659570%_))))
                                          (_%$%loop5948559561%_
                                           _%$%lp-tl5948859577%_
                                           (cons _%$%lp-hd5948759574%_
                                                 _%$%arg5948959568%_))))
                                      (let ((_%$%arg5949059580%_
                                             (reverse _%$%arg5948959568%_)))
                                        (if (gx#stx-pair? _%$%tl5947859542%_)
                                            (let ((_%$%e5949159583%_
                                                   (gx#syntax-e
                                                    _%$%tl5947859542%_)))
                                              (let ((_%$%hd5949259587%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e5949159583%_)))
                                                    (_%$%tl5949359590%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e5949159583%_))))
                                                (if (gx#stx-pair/null?
                                                     _%$%tl5949359590%_)
                                                    (let ((_g102624_
                                                           (gx#syntax-split-splice
                                                            _%$%tl5949359590%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g102625_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g102624_)
                             (##values-length _g102624_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g102625_ 2)))
                      (error "Context expects 2 values" _g102625_)))
                (let ((_%$%target5949459593%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g102624_ 0)))
                      (_%$%tl5949659596%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g102624_ 1))))
                  (if (gx#stx-null? _%$%tl5949659596%_)
                      (letrec ((_%$%loop5949759599%_
                                (lambda (_%$%hd5949559603%_
                                         _%$%rest5950159606%_)
                                  (if (gx#stx-pair? _%$%hd5949559603%_)
                                      (let ((_%$%e5949859608%_
                                             (gx#syntax-e _%$%hd5949559603%_)))
                                        (let ((_%$%lp-hd5949959612%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5949859608%_)))
                                              (_%$%lp-tl5950059615%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5949859608%_))))
                                          (_%$%loop5949759599%_
                                           _%$%lp-tl5950059615%_
                                           (cons _%$%lp-hd5949959612%_
                                                 _%$%rest5950159606%_))))
                                      (let ((_%$%rest5950259618%_
                                             (reverse _%$%rest5950159606%_)))
                                        (if (gx#identifier? _%$%hd5948059549%_)
                                            (let ((_%meta59657%_
                                                   (gx#syntax-local-value
                                                    _%$%hd5947459529%_
                                                    false)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (class-instance?
                                                     gerbil/core/mop~MOP-2#meta-object::t
                                                     _%meta59657%_))
                                                  '#!void
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"not a meta-object"
                                                   _%stx59460%_
                                                   _%$%hd5947459529%_
                                                   _%meta59657%_))
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
                                (cons _%$%hd5947459529%_ '()))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              (cons (cons (gx#datum->syntax '#f 'hash-put!)
                                          (cons (gx#datum->syntax '#f 'tab)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _%$%hd5948059549%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons (gx#datum->syntax '#f 'lambda)
                          (cons (foldr (lambda (_%$%g5965959664%_
                                                _%$%g5966059667%_)
                                         (cons _%$%g5965959664%_
                                               _%$%g5966059667%_))
                                       '()
                                       _%$%arg5949059580%_)
                                (cons _%$%hd5949259587%_
                                      (foldr (lambda (_%$%g5966159670%_
                                                      _%$%g5966259673%_)
                                               (cons _%$%g5966159670%_
                                                     _%$%g5966259673%_))
                                             '()
                                             _%$%rest5950259618%_))))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g5946359508%_
                                             _%$%g5946459512%_)))))))
                        (_%$%loop5949759599%_ _%$%target5949459593%_ '()))
                      (_%$%g5946359508%_ _%$%g5946459512%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g5946359508%_
                                                     _%$%g5946459512%_))))
                                            (_%$%g5946359508%_
                                             _%$%g5946459512%_)))))))
                        (_%$%loop5948559561%_ _%$%target5948259555%_ '()))
                      (_%$%g5946359508%_ _%$%g5946459512%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g5946359508%_
                                                     _%$%g5946459512%_))))
                                            (_%$%g5946359508%_
                                             _%$%g5946459512%_))))
                                    (_%$%g5946359508%_ _%$%g5946459512%_))))
                            (_%$%g5946359508%_ _%$%g5946459512%_))))
                    (_%$%g5946359508%_ _%$%g5946459512%_)))))
        (_%$%g5946259676%_ _%stx59460%_)))))
