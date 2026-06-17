(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~ClassMeta[1]#meta-object-methods!|
    (lambda (_%meta59323%_)
      (let ((_%$e59326%_
             (let ((__obj102241 _%meta59323%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      __obj102241
                      'gerbil/core#meta-object::t))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref __obj102241 '1 '#f '#f))
                   (class-slot-ref
                    gerbil/core/mop~MOP-2#meta-object::t
                    __obj102241
                    'methods)))))
        (if _%$e59326%_
            _%$e59326%_
            (let ((_%tab59332%_ (make-hash-table-eq)))
              (let ((__obj102242 _%meta59323%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-direct-instance-of?
                       __obj102242
                       'gerbil/core#meta-object::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj102242
                       _%tab59332%_
                       '1
                       '#f
                       '#f))
                    (class-slot-set!
                     gerbil/core/mop~MOP-2#meta-object::t
                     __obj102242
                     'methods
                     _%tab59332%_)))
              _%tab59332%_)))))
  (define |gerbil/core/contract~ClassMeta[:0:]#@call-meta-object|
    (lambda (_%stx59335%_)
      (let* ((_%$%g5933859369%_
              (lambda (_%$%g5933959365%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g5933959365%_)))
             (_%$%g5933759481%_
              (lambda (_%$%g5933959373%_)
                (if (gx#stx-pair? _%$%g5933959373%_)
                    (let ((_%$%e5934359376%_ (gx#syntax-e _%$%g5933959373%_)))
                      (let ((_%$%hd5934459380%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5934359376%_)))
                            (_%$%tl5934559383%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5934359376%_))))
                        (if (gx#stx-pair? _%$%tl5934559383%_)
                            (let ((_%$%e5934659386%_
                                   (gx#syntax-e _%$%tl5934559383%_)))
                              (let ((_%$%hd5934759390%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e5934659386%_)))
                                    (_%$%tl5934859393%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e5934659386%_))))
                                (if (gx#stx-pair? _%$%tl5934859393%_)
                                    (let ((_%$%e5934959396%_
                                           (gx#syntax-e _%$%tl5934859393%_)))
                                      (let ((_%$%hd5935059400%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5934959396%_)))
                                            (_%$%tl5935159403%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5934959396%_))))
                                        (if (gx#stx-pair? _%$%hd5935059400%_)
                                            (let ((_%$%e5935259406%_
                                                   (gx#syntax-e
                                                    _%$%hd5935059400%_)))
                                              (let ((_%$%hd5935359410%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e5935259406%_)))
                                                    (_%$%tl5935459413%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e5935259406%_))))
                                                (if (gx#stx-pair/null?
                                                     _%$%tl5935459413%_)
                                                    (let ((_g102451_
                                                           (gx#syntax-split-splice
                                                            _%$%tl5935459413%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g102452_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g102451_)
                             (##values-length _g102451_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g102452_ 2)))
                      (error "Context expects 2 values" _g102452_)))
                (let ((_%$%target5935559416%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g102451_ 0)))
                      (_%$%tl5935759419%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g102451_ 1))))
                  (if (gx#stx-null? _%$%tl5935759419%_)
                      (letrec ((_%$%loop5935859422%_
                                (lambda (_%$%hd5935659426%_
                                         _%$%arg5936259429%_)
                                  (if (gx#stx-pair? _%$%hd5935659426%_)
                                      (let ((_%$%e5935959431%_
                                             (gx#syntax-e _%$%hd5935659426%_)))
                                        (let ((_%$%lp-hd5936059435%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5935959431%_)))
                                              (_%$%lp-tl5936159438%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5935959431%_))))
                                          (_%$%loop5935859422%_
                                           _%$%lp-tl5936159438%_
                                           (cons _%$%lp-hd5936059435%_
                                                 _%$%arg5936259429%_))))
                                      (let ((_%$%arg5936359441%_
                                             (reverse _%$%arg5936259429%_)))
                                        (if (gx#stx-null? _%$%tl5935159403%_)
                                            (if (gx#identifier?
                                                 _%$%hd5935359410%_)
                                                (let ((_%meta59470%_
                                                       (gx#syntax-local-value
                                                        _%$%hd5934759390%_
                                                        false)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (class-instance?
                                                         gerbil/core/mop~MOP-2#meta-object::t
                                                         _%meta59470%_))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"not a meta-object"
                                                       _%stx59335%_
                                                       _%$%hd5934759390%_
                                                       _%meta59470%_))
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
                                                    (cons _%$%hd5934759390%_
                                                          '()))
                                              '()))
                                  '()))
                      (cons (cons (gx#datum->syntax '#f 'call-meta-object)
                                  (cons (gx#datum->syntax '#f 'meta)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'quote)
                                                    (cons _%$%hd5935359410%_
                                                          '()))
                                              (foldr (lambda (_%$%g5947259475%_
                                                              _%$%g5947359478%_)
                                                       (cons _%$%g5947259475%_
                                                             _%$%g5947359478%_))
                                                     '()
                                                     _%$%arg5936359441%_))))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g5933859369%_
                                                 _%$%g5933959373%_))
                                            (_%$%g5933859369%_
                                             _%$%g5933959373%_)))))))
                        (_%$%loop5935859422%_ _%$%target5935559416%_ '()))
                      (_%$%g5933859369%_ _%$%g5933959373%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g5933859369%_
                                                     _%$%g5933959373%_))))
                                            (_%$%g5933859369%_
                                             _%$%g5933959373%_))))
                                    (_%$%g5933859369%_ _%$%g5933959373%_))))
                            (_%$%g5933859369%_ _%$%g5933959373%_))))
                    (_%$%g5933859369%_ _%$%g5933959373%_)))))
        (_%$%g5933759481%_ _%stx59335%_))))
  (define |gerbil/core/contract~ClassMeta[:0:]#defmethod-for-meta|
    (lambda (_%stx59486%_)
      (let* ((_%$%g5948959534%_
              (lambda (_%$%g5949059530%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g5949059530%_)))
             (_%$%g5948859702%_
              (lambda (_%$%g5949059538%_)
                (if (gx#stx-pair? _%$%g5949059538%_)
                    (let ((_%$%e5949659541%_ (gx#syntax-e _%$%g5949059538%_)))
                      (let ((_%$%hd5949759545%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5949659541%_)))
                            (_%$%tl5949859548%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5949659541%_))))
                        (if (gx#stx-pair? _%$%tl5949859548%_)
                            (let ((_%$%e5949959551%_
                                   (gx#syntax-e _%$%tl5949859548%_)))
                              (let ((_%$%hd5950059555%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e5949959551%_)))
                                    (_%$%tl5950159558%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e5949959551%_))))
                                (if (gx#stx-pair? _%$%tl5950159558%_)
                                    (let ((_%$%e5950259561%_
                                           (gx#syntax-e _%$%tl5950159558%_)))
                                      (let ((_%$%hd5950359565%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5950259561%_)))
                                            (_%$%tl5950459568%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5950259561%_))))
                                        (if (gx#stx-pair? _%$%hd5950359565%_)
                                            (let ((_%$%e5950559571%_
                                                   (gx#syntax-e
                                                    _%$%hd5950359565%_)))
                                              (let ((_%$%hd5950659575%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e5950559571%_)))
                                                    (_%$%tl5950759578%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e5950559571%_))))
                                                (if (gx#stx-pair/null?
                                                     _%$%tl5950759578%_)
                                                    (let ((_g102453_
                                                           (gx#syntax-split-splice
                                                            _%$%tl5950759578%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g102454_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g102453_)
                             (##values-length _g102453_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g102454_ 2)))
                      (error "Context expects 2 values" _g102454_)))
                (let ((_%$%target5950859581%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g102453_ 0)))
                      (_%$%tl5951059584%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g102453_ 1))))
                  (if (gx#stx-null? _%$%tl5951059584%_)
                      (letrec ((_%$%loop5951159587%_
                                (lambda (_%$%hd5950959591%_
                                         _%$%arg5951559594%_)
                                  (if (gx#stx-pair? _%$%hd5950959591%_)
                                      (let ((_%$%e5951259596%_
                                             (gx#syntax-e _%$%hd5950959591%_)))
                                        (let ((_%$%lp-hd5951359600%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5951259596%_)))
                                              (_%$%lp-tl5951459603%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5951259596%_))))
                                          (_%$%loop5951159587%_
                                           _%$%lp-tl5951459603%_
                                           (cons _%$%lp-hd5951359600%_
                                                 _%$%arg5951559594%_))))
                                      (let ((_%$%arg5951659606%_
                                             (reverse _%$%arg5951559594%_)))
                                        (if (gx#stx-pair? _%$%tl5950459568%_)
                                            (let ((_%$%e5951759609%_
                                                   (gx#syntax-e
                                                    _%$%tl5950459568%_)))
                                              (let ((_%$%hd5951859613%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e5951759609%_)))
                                                    (_%$%tl5951959616%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e5951759609%_))))
                                                (if (gx#stx-pair/null?
                                                     _%$%tl5951959616%_)
                                                    (let ((_g102455_
                                                           (gx#syntax-split-splice
                                                            _%$%tl5951959616%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g102456_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g102455_)
                             (##values-length _g102455_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g102456_ 2)))
                      (error "Context expects 2 values" _g102456_)))
                (let ((_%$%target5952059619%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g102455_ 0)))
                      (_%$%tl5952259622%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g102455_ 1))))
                  (if (gx#stx-null? _%$%tl5952259622%_)
                      (letrec ((_%$%loop5952359625%_
                                (lambda (_%$%hd5952159629%_
                                         _%$%rest5952759632%_)
                                  (if (gx#stx-pair? _%$%hd5952159629%_)
                                      (let ((_%$%e5952459634%_
                                             (gx#syntax-e _%$%hd5952159629%_)))
                                        (let ((_%$%lp-hd5952559638%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5952459634%_)))
                                              (_%$%lp-tl5952659641%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5952459634%_))))
                                          (_%$%loop5952359625%_
                                           _%$%lp-tl5952659641%_
                                           (cons _%$%lp-hd5952559638%_
                                                 _%$%rest5952759632%_))))
                                      (let ((_%$%rest5952859644%_
                                             (reverse _%$%rest5952759632%_)))
                                        (if (gx#identifier? _%$%hd5950659575%_)
                                            (let ((_%meta59683%_
                                                   (gx#syntax-local-value
                                                    _%$%hd5950059555%_
                                                    false)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (class-instance?
                                                     gerbil/core/mop~MOP-2#meta-object::t
                                                     _%meta59683%_))
                                                  '#!void
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"not a meta-object"
                                                   _%stx59486%_
                                                   _%$%hd5950059555%_
                                                   _%meta59683%_))
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
                                (cons _%$%hd5950059555%_ '()))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              (cons (cons (gx#datum->syntax '#f 'hash-put!)
                                          (cons (gx#datum->syntax '#f 'tab)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _%$%hd5950659575%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons (gx#datum->syntax '#f 'lambda)
                          (cons (foldr (lambda (_%$%g5968559690%_
                                                _%$%g5968659693%_)
                                         (cons _%$%g5968559690%_
                                               _%$%g5968659693%_))
                                       '()
                                       _%$%arg5951659606%_)
                                (cons _%$%hd5951859613%_
                                      (foldr (lambda (_%$%g5968759696%_
                                                      _%$%g5968859699%_)
                                               (cons _%$%g5968759696%_
                                                     _%$%g5968859699%_))
                                             '()
                                             _%$%rest5952859644%_))))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g5948959534%_
                                             _%$%g5949059538%_)))))))
                        (_%$%loop5952359625%_ _%$%target5952059619%_ '()))
                      (_%$%g5948959534%_ _%$%g5949059538%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g5948959534%_
                                                     _%$%g5949059538%_))))
                                            (_%$%g5948959534%_
                                             _%$%g5949059538%_)))))))
                        (_%$%loop5951159587%_ _%$%target5950859581%_ '()))
                      (_%$%g5948959534%_ _%$%g5949059538%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g5948959534%_
                                                     _%$%g5949059538%_))))
                                            (_%$%g5948959534%_
                                             _%$%g5949059538%_))))
                                    (_%$%g5948959534%_ _%$%g5949059538%_))))
                            (_%$%g5948959534%_ _%$%g5949059538%_))))
                    (_%$%g5948959534%_ _%$%g5949059538%_)))))
        (_%$%g5948859702%_ _%stx59486%_)))))
