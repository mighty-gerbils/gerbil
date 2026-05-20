(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~ClassMeta[1]#meta-object-methods!|
    (lambda (_%meta58247%_)
      (let ((_%$e58250%_
             (let ((__obj101121 _%meta58247%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      __obj101121
                      'gerbil.core#meta-object::t))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref __obj101121 '1 '#f '#f))
                   (class-slot-ref
                    gerbil/core/mop~MOP-2#meta-object::t
                    __obj101121
                    'methods)))))
        (if _%$e58250%_
            _%$e58250%_
            (let ((_%tab58256%_ (make-hash-table-eq)))
              (let ((__obj101122 _%meta58247%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-direct-instance-of?
                       __obj101122
                       'gerbil.core#meta-object::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj101122
                       _%tab58256%_
                       '1
                       '#f
                       '#f))
                    (class-slot-set!
                     gerbil/core/mop~MOP-2#meta-object::t
                     __obj101122
                     'methods
                     _%tab58256%_)))
              _%tab58256%_)))))
  (define |gerbil/core/contract~ClassMeta[:0:]#@call-meta-object|
    (lambda (_%stx58259%_)
      (let* ((_%g5826258293%_
              (lambda (_%g5826358289%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5826358289%_)))
             (_%g5826158405%_
              (lambda (_%g5826358297%_)
                (if (gx#stx-pair? _%g5826358297%_)
                    (let ((_%e5826758300%_ (gx#syntax-e _%g5826358297%_)))
                      (let ((_%hd5826858304%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5826758300%_)))
                            (_%tl5826958307%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5826758300%_))))
                        (if (gx#stx-pair? _%tl5826958307%_)
                            (let ((_%e5827058310%_
                                   (gx#syntax-e _%tl5826958307%_)))
                              (let ((_%hd5827158314%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5827058310%_)))
                                    (_%tl5827258317%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5827058310%_))))
                                (if (gx#stx-pair? _%tl5827258317%_)
                                    (let ((_%e5827358320%_
                                           (gx#syntax-e _%tl5827258317%_)))
                                      (let ((_%hd5827458324%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5827358320%_)))
                                            (_%tl5827558327%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5827358320%_))))
                                        (if (gx#stx-pair? _%hd5827458324%_)
                                            (let ((_%e5827658330%_
                                                   (gx#syntax-e
                                                    _%hd5827458324%_)))
                                              (let ((_%hd5827758334%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5827658330%_)))
                                                    (_%tl5827858337%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5827658330%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl5827858337%_)
                                                    (let ((_g101331_
                                                           (gx#syntax-split-splice
                                                            _%tl5827858337%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g101332_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g101331_)
                             (##values-length _g101331_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g101332_ 2)))
                      (error "Context expects 2 values" _g101332_)))
                (let ((_%target5827958340%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g101331_ 0)))
                      (_%tl5828158343%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g101331_ 1))))
                  (if (gx#stx-null? _%tl5828158343%_)
                      (letrec ((_%loop5828258346%_
                                (lambda (_%hd5828058350%_ _%arg5828658353%_)
                                  (if (gx#stx-pair? _%hd5828058350%_)
                                      (let ((_%e5828358355%_
                                             (gx#syntax-e _%hd5828058350%_)))
                                        (let ((_%lp-hd5828458359%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5828358355%_)))
                                              (_%lp-tl5828558362%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5828358355%_))))
                                          (_%loop5828258346%_
                                           _%lp-tl5828558362%_
                                           (cons _%lp-hd5828458359%_
                                                 _%arg5828658353%_))))
                                      (let ((_%arg5828758365%_
                                             (reverse _%arg5828658353%_)))
                                        (if (gx#stx-null? _%tl5827558327%_)
                                            (if (gx#identifier?
                                                 _%hd5827758334%_)
                                                (let ((_%meta58394%_
                                                       (gx#syntax-local-value
                                                        _%hd5827158314%_
                                                        false)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (class-instance?
                                                         gerbil/core/mop~MOP-2#meta-object::t
                                                         _%meta58394%_))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"not a meta-object"
                                                       _%stx58259%_
                                                       _%hd5827158314%_
                                                       _%meta58394%_))
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
                                                    (cons _%hd5827158314%_
                                                          '()))
                                              '()))
                                  '()))
                      (cons (cons (gx#datum->syntax '#f 'call-meta-object)
                                  (cons (gx#datum->syntax '#f 'meta)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'quote)
                                                    (cons _%hd5827758334%_
                                                          '()))
                                              (foldr (lambda (_%g5839658399%_
                                                              _%g5839758402%_)
                                                       (cons _%g5839658399%_
                                                             _%g5839758402%_))
                                                     '()
                                                     _%arg5828758365%_))))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g5826258293%_
                                                 _%g5826358297%_))
                                            (_%g5826258293%_
                                             _%g5826358297%_)))))))
                        (_%loop5828258346%_ _%target5827958340%_ '()))
                      (_%g5826258293%_ _%g5826358297%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g5826258293%_
                                                     _%g5826358297%_))))
                                            (_%g5826258293%_
                                             _%g5826358297%_))))
                                    (_%g5826258293%_ _%g5826358297%_))))
                            (_%g5826258293%_ _%g5826358297%_))))
                    (_%g5826258293%_ _%g5826358297%_)))))
        (_%g5826158405%_ _%stx58259%_))))
  (define |gerbil/core/contract~ClassMeta[:0:]#defmethod-for-meta|
    (lambda (_%stx58410%_)
      (let* ((_%g5841358458%_
              (lambda (_%g5841458454%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5841458454%_)))
             (_%g5841258626%_
              (lambda (_%g5841458462%_)
                (if (gx#stx-pair? _%g5841458462%_)
                    (let ((_%e5842058465%_ (gx#syntax-e _%g5841458462%_)))
                      (let ((_%hd5842158469%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5842058465%_)))
                            (_%tl5842258472%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5842058465%_))))
                        (if (gx#stx-pair? _%tl5842258472%_)
                            (let ((_%e5842358475%_
                                   (gx#syntax-e _%tl5842258472%_)))
                              (let ((_%hd5842458479%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5842358475%_)))
                                    (_%tl5842558482%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5842358475%_))))
                                (if (gx#stx-pair? _%tl5842558482%_)
                                    (let ((_%e5842658485%_
                                           (gx#syntax-e _%tl5842558482%_)))
                                      (let ((_%hd5842758489%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5842658485%_)))
                                            (_%tl5842858492%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5842658485%_))))
                                        (if (gx#stx-pair? _%hd5842758489%_)
                                            (let ((_%e5842958495%_
                                                   (gx#syntax-e
                                                    _%hd5842758489%_)))
                                              (let ((_%hd5843058499%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5842958495%_)))
                                                    (_%tl5843158502%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5842958495%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl5843158502%_)
                                                    (let ((_g101333_
                                                           (gx#syntax-split-splice
                                                            _%tl5843158502%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g101334_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g101333_)
                             (##values-length _g101333_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g101334_ 2)))
                      (error "Context expects 2 values" _g101334_)))
                (let ((_%target5843258505%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g101333_ 0)))
                      (_%tl5843458508%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g101333_ 1))))
                  (if (gx#stx-null? _%tl5843458508%_)
                      (letrec ((_%loop5843558511%_
                                (lambda (_%hd5843358515%_ _%arg5843958518%_)
                                  (if (gx#stx-pair? _%hd5843358515%_)
                                      (let ((_%e5843658520%_
                                             (gx#syntax-e _%hd5843358515%_)))
                                        (let ((_%lp-hd5843758524%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5843658520%_)))
                                              (_%lp-tl5843858527%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5843658520%_))))
                                          (_%loop5843558511%_
                                           _%lp-tl5843858527%_
                                           (cons _%lp-hd5843758524%_
                                                 _%arg5843958518%_))))
                                      (let ((_%arg5844058530%_
                                             (reverse _%arg5843958518%_)))
                                        (if (gx#stx-pair? _%tl5842858492%_)
                                            (let ((_%e5844158533%_
                                                   (gx#syntax-e
                                                    _%tl5842858492%_)))
                                              (let ((_%hd5844258537%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5844158533%_)))
                                                    (_%tl5844358540%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5844158533%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl5844358540%_)
                                                    (let ((_g101335_
                                                           (gx#syntax-split-splice
                                                            _%tl5844358540%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g101336_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g101335_)
                             (##values-length _g101335_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g101336_ 2)))
                      (error "Context expects 2 values" _g101336_)))
                (let ((_%target5844458543%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g101335_ 0)))
                      (_%tl5844658546%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g101335_ 1))))
                  (if (gx#stx-null? _%tl5844658546%_)
                      (letrec ((_%loop5844758549%_
                                (lambda (_%hd5844558553%_ _%rest5845158556%_)
                                  (if (gx#stx-pair? _%hd5844558553%_)
                                      (let ((_%e5844858558%_
                                             (gx#syntax-e _%hd5844558553%_)))
                                        (let ((_%lp-hd5844958562%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5844858558%_)))
                                              (_%lp-tl5845058565%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5844858558%_))))
                                          (_%loop5844758549%_
                                           _%lp-tl5845058565%_
                                           (cons _%lp-hd5844958562%_
                                                 _%rest5845158556%_))))
                                      (let ((_%rest5845258568%_
                                             (reverse _%rest5845158556%_)))
                                        (if (gx#identifier? _%hd5843058499%_)
                                            (let ((_%meta58607%_
                                                   (gx#syntax-local-value
                                                    _%hd5842458479%_
                                                    false)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (class-instance?
                                                     gerbil/core/mop~MOP-2#meta-object::t
                                                     _%meta58607%_))
                                                  '#!void
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"not a meta-object"
                                                   _%stx58410%_
                                                   _%hd5842458479%_
                                                   _%meta58607%_))
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
                                (cons _%hd5842458479%_ '()))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              (cons (cons (gx#datum->syntax '#f 'hash-put!)
                                          (cons (gx#datum->syntax '#f 'tab)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _%hd5843058499%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons (gx#datum->syntax '#f 'lambda)
                          (cons (foldr (lambda (_%g5860958614%_
                                                _%g5861058617%_)
                                         (cons _%g5860958614%_
                                               _%g5861058617%_))
                                       '()
                                       _%arg5844058530%_)
                                (cons _%hd5844258537%_
                                      (foldr (lambda (_%g5861158620%_
                                                      _%g5861258623%_)
                                               (cons _%g5861158620%_
                                                     _%g5861258623%_))
                                             '()
                                             _%rest5845258568%_))))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g5841358458%_
                                             _%g5841458462%_)))))))
                        (_%loop5844758549%_ _%target5844458543%_ '()))
                      (_%g5841358458%_ _%g5841458462%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g5841358458%_
                                                     _%g5841458462%_))))
                                            (_%g5841358458%_
                                             _%g5841458462%_)))))))
                        (_%loop5843558511%_ _%target5843258505%_ '()))
                      (_%g5841358458%_ _%g5841458462%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g5841358458%_
                                                     _%g5841458462%_))))
                                            (_%g5841358458%_
                                             _%g5841458462%_))))
                                    (_%g5841358458%_ _%g5841458462%_))))
                            (_%g5841358458%_ _%g5841458462%_))))
                    (_%g5841358458%_ _%g5841458462%_)))))
        (_%g5841258626%_ _%stx58410%_)))))
