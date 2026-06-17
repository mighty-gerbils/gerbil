(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g143113_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |[:0:]#defpred|
      (lambda (_%stx142596%_)
        (let* ((_%$%g142599142637%_
                (lambda (_%$%g142600142633%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g142600142633%_)))
               (_%$%g142598142804%_
                (lambda (_%$%g142600142641%_)
                  (if (gx#stx-pair? _%$%g142600142641%_)
                      (let ((_%$%e142605142644%_
                             (gx#syntax-e _%$%g142600142641%_)))
                        (let ((_%$%hd142606142648%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e142605142644%_)))
                              (_%$%tl142607142651%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e142605142644%_))))
                          (if (gx#stx-pair? _%$%tl142607142651%_)
                              (let ((_%$%e142608142654%_
                                     (gx#syntax-e _%$%tl142607142651%_)))
                                (let ((_%$%hd142609142658%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e142608142654%_)))
                                      (_%$%tl142610142661%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e142608142654%_))))
                                  (if (gx#stx-pair? _%$%hd142609142658%_)
                                      (let ((_%$%e142611142664%_
                                             (gx#syntax-e
                                              _%$%hd142609142658%_)))
                                        (let ((_%$%hd142612142668%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e142611142664%_)))
                                              (_%$%tl142613142671%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e142611142664%_))))
                                          (if (gx#stx-pair?
                                               _%$%tl142613142671%_)
                                              (let ((_%$%e142614142674%_
                                                     (gx#syntax-e
                                                      _%$%tl142613142671%_)))
                                                (let ((_%$%hd142615142678%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e142614142674%_)))
                                                      (_%$%tl142616142681%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e142614142674%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl142616142681%_)
                                                      (if (gx#stx-pair?
                                                           _%$%tl142610142661%_)
                                                          (let ((_%$%e142617142684%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl142610142661%_)))
                    (let ((_%$%hd142618142688%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e142617142684%_)))
                          (_%$%tl142619142691%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e142617142684%_))))
                      (if (gx#identifier? _%$%hd142618142688%_)
                          (if (gx#free-identifier=?
                               |[1]#_g143113_|
                               _%$%hd142618142688%_)
                              (if (gx#stx-pair? _%$%tl142619142691%_)
                                  (let ((_%$%e142620142694%_
                                         (gx#syntax-e _%$%tl142619142691%_)))
                                    (let ((_%$%hd142621142698%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e142620142694%_)))
                                          (_%$%tl142622142701%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e142620142694%_))))
                                      (if (gx#stx-pair/null?
                                           _%$%tl142622142701%_)
                                          (let ((_g143114_
                                                 (gx#syntax-split-splice
                                                  _%$%tl142622142701%_
                                                  '0)))
                                            (begin
                                              (let ((_g143115_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g143114_)
                                                           (##values-length
                                                            _g143114_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g143115_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g143115_)))
                                              (let ((_%$%target142623142704%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g143114_
                                                        0)))
                                                    (_%$%tl142625142707%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g143114_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%$%tl142625142707%_)
                                                    (letrec ((_%$%loop142626142710%_
                                                              (lambda (_%$%hd142624142714%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%body142630142717%_)
                        (if (gx#stx-pair? _%$%hd142624142714%_)
                            (let ((_%$%e142627142719%_
                                   (gx#syntax-e _%$%hd142624142714%_)))
                              (let ((_%$%lp-hd142628142723%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e142627142719%_)))
                                    (_%$%lp-tl142629142726%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e142627142719%_))))
                                (_%$%loop142626142710%_
                                 _%$%lp-tl142629142726%_
                                 (cons _%$%lp-hd142628142723%_
                                       _%$%body142630142717%_))))
                            (let* ((_%$%body142631142729%_
                                    (reverse _%$%body142630142717%_))
                                   (_%$%g142765142773%_
                                    (lambda (_%$%g142766142769%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%$%g142766142769%_)))
                                   (_%$%g142764142800%_
                                    (lambda (_%$%g142766142777%_)
                                      (cons (gx#datum->syntax '#f 'def)
                                            (cons _%$%hd142612142668%_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@predicate)
                                  (cons _%$%g142766142777%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'lambda)
                                        (cons (cons _%$%hd142615142678%_ '())
                                              (let ((__tmp143116
                                                     (lambda (_%$%g142791142794%_
                                                              _%$%g142792142797%_)
                                                       (cons _%$%g142791142794%_
                                                             _%$%g142792142797%_))))
                                                (declare (not safe))
                                                (foldr__0
                                                 __tmp143116
                                                 '()
                                                 _%$%body142631142729%_))))
                                  '())))
                '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%$%g142764142800%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                  _%stx142596%_
                                  _%$%hd142621142698%_))))))))
              (_%$%loop142626142710%_ _%$%target142623142704%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g142599142637%_
                                                     _%$%g142600142641%_)))))
                                          (_%$%g142599142637%_
                                           _%$%g142600142641%_))))
                                  (_%$%g142599142637%_ _%$%g142600142641%_))
                              (_%$%g142599142637%_ _%$%g142600142641%_))
                          (_%$%g142599142637%_ _%$%g142600142641%_))))
                  (_%$%g142599142637%_ _%$%g142600142641%_))
              (_%$%g142599142637%_ _%$%g142600142641%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g142599142637%_
                                               _%$%g142600142641%_))))
                                      (_%$%g142599142637%_
                                       _%$%g142600142641%_))))
                              (_%$%g142599142637%_ _%$%g142600142641%_))))
                      (_%$%g142599142637%_ _%$%g142600142641%_)))))
          (_%$%g142598142804%_ _%stx142596%_))))
    (define |[:0:]#subtype-property-vector|
      (lambda (_%$stx142809%_)
        (let* ((_%$%g142813142833%_
                (lambda (_%$%g142814142829%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g142814142829%_)))
               (_%$%g142812142902%_
                (lambda (_%$%g142814142837%_)
                  (if (gx#stx-pair? _%$%g142814142837%_)
                      (let ((_%$%e142816142840%_
                             (gx#syntax-e _%$%g142814142837%_)))
                        (let ((_%$%hd142817142844%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e142816142840%_)))
                              (_%$%tl142818142847%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e142816142840%_))))
                          (if (gx#stx-pair/null? _%$%tl142818142847%_)
                              (let ((_g143117_
                                     (gx#syntax-split-splice
                                      _%$%tl142818142847%_
                                      '0)))
                                (begin
                                  (let ((_g143118_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g143117_)
                                               (##values-length _g143117_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g143118_ 2)))
                                        (error "Context expects 2 values"
                                               _g143118_)))
                                  (let ((_%$%target142819142850%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g143117_ 0)))
                                        (_%$%tl142821142853%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g143117_ 1))))
                                    (if (gx#stx-null? _%$%tl142821142853%_)
                                        (letrec ((_%$%loop142822142856%_
                                                  (lambda (_%$%hd142820142860%_
                                                           _%$%t142826142863%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd142820142860%_)
                                                        (let ((_%$%e142823142865%_
                                                               (gx#syntax-e
                                                                _%$%hd142820142860%_)))
                                                          (let ((_%$%lp-hd142824142869%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e142823142865%_)))
                        (_%$%lp-tl142825142872%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e142823142865%_))))
                    (_%$%loop142822142856%_
                     _%$%lp-tl142825142872%_
                     (cons _%$%lp-hd142824142869%_ _%$%t142826142863%_))))
                (let ((_%$%t142827142875%_ (reverse _%$%t142826142863%_)))
                  (cons (gx#datum->syntax '#f 'let)
                        (cons (cons (gx#datum->syntax '#f 'vec)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'make-vector)
                                                (cons '32 (cons '#f '())))
                                          '()))
                              (let ((__tmp143120
                                     (lambda (_%$%g142893142896%_
                                              _%$%g142894142899%_)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'vector-set!)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'vec)
                                                         (cons _%$%g142893142896%_
                                                               (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%$%g142894142899%_)))
                                    (__tmp143119
                                     (cons (gx#datum->syntax '#f 'vec) '())))
                                (declare (not safe))
                                (foldr__0
                                 __tmp143120
                                 __tmp143119
                                 _%$%t142827142875%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop142822142856%_
                                           _%$%target142819142850%_
                                           '()))
                                        (_%$%g142813142833%_
                                         _%$%g142814142837%_)))))
                              (_%$%g142813142833%_ _%$%g142814142837%_))))
                      (_%$%g142813142833%_ _%$%g142814142837%_)))))
          (_%$%g142812142902%_ _%$stx142809%_))))))
