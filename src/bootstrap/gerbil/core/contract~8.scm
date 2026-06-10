(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~ClassMeta[1]#meta-object-methods!|
    (lambda (_%meta51393%_)
      (let ((_%$e51396%_
             (gerbil/core/mop~MOP-2#meta-object-methods _%meta51393%_)))
        (if _%$e51396%_
            _%$e51396%_
            (let ((_%tab51402%_ (make-hash-table-eq)))
              (gerbil/core/mop~MOP-2#meta-object-methods-set!
               _%meta51393%_
               _%tab51402%_)
              _%tab51402%_)))))
  (define |gerbil/core/contract~ClassMeta[:0:]#@call-meta-object|
    (lambda (_%stx51405%_)
      (let* ((_%$%g5140851439%_
              (lambda (_%$%g5140951435%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g5140951435%_)))
             (_%$%g5140751551%_
              (lambda (_%$%g5140951443%_)
                (if (gx#stx-pair? _%$%g5140951443%_)
                    (let ((_%$%e5141351446%_ (gx#syntax-e _%$%g5140951443%_)))
                      (let ((_%$%hd5141451450%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5141351446%_)))
                            (_%$%tl5141551453%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5141351446%_))))
                        (if (gx#stx-pair? _%$%tl5141551453%_)
                            (let ((_%$%e5141651456%_
                                   (gx#syntax-e _%$%tl5141551453%_)))
                              (let ((_%$%hd5141751460%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e5141651456%_)))
                                    (_%$%tl5141851463%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e5141651456%_))))
                                (if (gx#stx-pair? _%$%tl5141851463%_)
                                    (let ((_%$%e5141951466%_
                                           (gx#syntax-e _%$%tl5141851463%_)))
                                      (let ((_%$%hd5142051470%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5141951466%_)))
                                            (_%$%tl5142151473%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5141951466%_))))
                                        (if (gx#stx-pair? _%$%hd5142051470%_)
                                            (let ((_%$%e5142251476%_
                                                   (gx#syntax-e
                                                    _%$%hd5142051470%_)))
                                              (let ((_%$%hd5142351480%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e5142251476%_)))
                                                    (_%$%tl5142451483%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e5142251476%_))))
                                                (if (gx#stx-pair/null?
                                                     _%$%tl5142451483%_)
                                                    (let ((_g87712_
                                                           (gx#syntax-split-splice
                                                            _%$%tl5142451483%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g87713_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g87712_)
                             (##values-length _g87712_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g87713_ 2)))
                      (error "Context expects 2 values" _g87713_)))
                (let ((_%$%target5142551486%_
                       (let () (declare (not safe)) (##values-ref _g87712_ 0)))
                      (_%$%tl5142751489%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g87712_ 1))))
                  (if (gx#stx-null? _%$%tl5142751489%_)
                      (letrec ((_%$%loop5142851492%_
                                (lambda (_%$%hd5142651496%_
                                         _%$%arg5143251499%_)
                                  (if (gx#stx-pair? _%$%hd5142651496%_)
                                      (let ((_%$%e5142951501%_
                                             (gx#syntax-e _%$%hd5142651496%_)))
                                        (let ((_%$%lp-hd5143051505%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5142951501%_)))
                                              (_%$%lp-tl5143151508%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5142951501%_))))
                                          (_%$%loop5142851492%_
                                           _%$%lp-tl5143151508%_
                                           (cons _%$%lp-hd5143051505%_
                                                 _%$%arg5143251499%_))))
                                      (let ((_%$%arg5143351511%_
                                             (reverse _%$%arg5143251499%_)))
                                        (if (gx#stx-null? _%$%tl5142151473%_)
                                            ((lambda (_%$%g5141051514%_
                                                      _%$%g5141151516%_
                                                      _%$%g5141251517%_)
                                               (if (gx#identifier?
                                                    _%$%g5141151516%_)
                                                   (let ((_%meta51540%_
                                                          (gx#syntax-local-value
                                                           _%$%g5141251517%_
                                                           false)))
                                                     (if (gerbil/core/mop~MOP-2#meta-object?
                                                          _%meta51540%_)
                                                         '#!void
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"not a meta-object"
                                                          _%stx51405%_
                                                          _%$%g5141251517%_
                                                          _%meta51540%_))
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
                                                       (cons _%$%g5141251517%_
                                                             '()))
                                                 '()))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'call-meta-object)
                                     (cons (gx#datum->syntax '#f 'meta)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'quote)
                                                       (cons _%$%g5141151516%_
                                                             '()))
                                                 (foldr (lambda (_%$%g5154251545%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g5154351548%_)
                  (cons _%$%g5154251545%_ _%$%g5154351548%_))
                '()
                _%$%g5141051514%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g5140851439%_
                                                    _%$%g5140951443%_)))
                                             _%$%arg5143351511%_
                                             _%$%hd5142351480%_
                                             _%$%hd5141751460%_)
                                            (_%$%g5140851439%_
                                             _%$%g5140951443%_)))))))
                        (_%$%loop5142851492%_ _%$%target5142551486%_ '()))
                      (_%$%g5140851439%_ _%$%g5140951443%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g5140851439%_
                                                     _%$%g5140951443%_))))
                                            (_%$%g5140851439%_
                                             _%$%g5140951443%_))))
                                    (_%$%g5140851439%_ _%$%g5140951443%_))))
                            (_%$%g5140851439%_ _%$%g5140951443%_))))
                    (_%$%g5140851439%_ _%$%g5140951443%_)))))
        (_%$%g5140751551%_ _%stx51405%_))))
  (define |gerbil/core/contract~ClassMeta[:0:]#defmethod-for-meta|
    (lambda (_%stx51556%_)
      (let* ((_%$%g5155951604%_
              (lambda (_%$%g5156051600%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g5156051600%_)))
             (_%$%g5155851772%_
              (lambda (_%$%g5156051608%_)
                (if (gx#stx-pair? _%$%g5156051608%_)
                    (let ((_%$%e5156651611%_ (gx#syntax-e _%$%g5156051608%_)))
                      (let ((_%$%hd5156751615%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5156651611%_)))
                            (_%$%tl5156851618%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5156651611%_))))
                        (if (gx#stx-pair? _%$%tl5156851618%_)
                            (let ((_%$%e5156951621%_
                                   (gx#syntax-e _%$%tl5156851618%_)))
                              (let ((_%$%hd5157051625%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e5156951621%_)))
                                    (_%$%tl5157151628%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e5156951621%_))))
                                (if (gx#stx-pair? _%$%tl5157151628%_)
                                    (let ((_%$%e5157251631%_
                                           (gx#syntax-e _%$%tl5157151628%_)))
                                      (let ((_%$%hd5157351635%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5157251631%_)))
                                            (_%$%tl5157451638%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5157251631%_))))
                                        (if (gx#stx-pair? _%$%hd5157351635%_)
                                            (let ((_%$%e5157551641%_
                                                   (gx#syntax-e
                                                    _%$%hd5157351635%_)))
                                              (let ((_%$%hd5157651645%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e5157551641%_)))
                                                    (_%$%tl5157751648%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e5157551641%_))))
                                                (if (gx#stx-pair/null?
                                                     _%$%tl5157751648%_)
                                                    (let ((_g87714_
                                                           (gx#syntax-split-splice
                                                            _%$%tl5157751648%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g87715_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g87714_)
                             (##values-length _g87714_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g87715_ 2)))
                      (error "Context expects 2 values" _g87715_)))
                (let ((_%$%target5157851651%_
                       (let () (declare (not safe)) (##values-ref _g87714_ 0)))
                      (_%$%tl5158051654%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g87714_ 1))))
                  (if (gx#stx-null? _%$%tl5158051654%_)
                      (letrec ((_%$%loop5158151657%_
                                (lambda (_%$%hd5157951661%_
                                         _%$%arg5158551664%_)
                                  (if (gx#stx-pair? _%$%hd5157951661%_)
                                      (let ((_%$%e5158251666%_
                                             (gx#syntax-e _%$%hd5157951661%_)))
                                        (let ((_%$%lp-hd5158351670%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5158251666%_)))
                                              (_%$%lp-tl5158451673%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5158251666%_))))
                                          (_%$%loop5158151657%_
                                           _%$%lp-tl5158451673%_
                                           (cons _%$%lp-hd5158351670%_
                                                 _%$%arg5158551664%_))))
                                      (let ((_%$%arg5158651676%_
                                             (reverse _%$%arg5158551664%_)))
                                        (if (gx#stx-pair? _%$%tl5157451638%_)
                                            (let ((_%$%e5158751679%_
                                                   (gx#syntax-e
                                                    _%$%tl5157451638%_)))
                                              (let ((_%$%hd5158851683%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e5158751679%_)))
                                                    (_%$%tl5158951686%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e5158751679%_))))
                                                (if (gx#stx-pair/null?
                                                     _%$%tl5158951686%_)
                                                    (let ((_g87716_
                                                           (gx#syntax-split-splice
                                                            _%$%tl5158951686%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g87717_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g87716_)
                             (##values-length _g87716_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g87717_ 2)))
                      (error "Context expects 2 values" _g87717_)))
                (let ((_%$%target5159051689%_
                       (let () (declare (not safe)) (##values-ref _g87716_ 0)))
                      (_%$%tl5159251692%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g87716_ 1))))
                  (if (gx#stx-null? _%$%tl5159251692%_)
                      (letrec ((_%$%loop5159351695%_
                                (lambda (_%$%hd5159151699%_
                                         _%$%rest5159751702%_)
                                  (if (gx#stx-pair? _%$%hd5159151699%_)
                                      (let ((_%$%e5159451704%_
                                             (gx#syntax-e _%$%hd5159151699%_)))
                                        (let ((_%$%lp-hd5159551708%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5159451704%_)))
                                              (_%$%lp-tl5159651711%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5159451704%_))))
                                          (_%$%loop5159351695%_
                                           _%$%lp-tl5159651711%_
                                           (cons _%$%lp-hd5159551708%_
                                                 _%$%rest5159751702%_))))
                                      (let ((_%$%rest5159851714%_
                                             (reverse _%$%rest5159751702%_)))
                                        ((lambda (_%$%g5156151717%_
                                                  _%$%g5156251719%_
                                                  _%$%g5156351720%_
                                                  _%$%g5156451721%_
                                                  _%$%g5156551722%_)
                                           (if (gx#identifier?
                                                _%$%g5156451721%_)
                                               (let ((_%meta51753%_
                                                      (gx#syntax-local-value
                                                       _%$%g5156551722%_
                                                       false)))
                                                 (if (gerbil/core/mop~MOP-2#meta-object?
                                                      _%meta51753%_)
                                                     '#!void
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"not a meta-object"
                                                      _%stx51556%_
                                                      _%$%g5156551722%_
                                                      _%meta51753%_))
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
                                   (cons _%$%g5156551722%_ '()))
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'hash-put!)
                                             (cons (gx#datum->syntax '#f 'tab)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote)
                                                               (cons _%$%g5156451721%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'lambda)
                             (cons (foldr (lambda (_%$%g5175551760%_
                                                   _%$%g5175651763%_)
                                            (cons _%$%g5175551760%_
                                                  _%$%g5175651763%_))
                                          '()
                                          _%$%g5156351720%_)
                                   (cons _%$%g5156251719%_
                                         (foldr (lambda (_%$%g5175751766%_
                                                         _%$%g5175851769%_)
                                                  (cons _%$%g5175751766%_
                                                        _%$%g5175851769%_))
                                                '()
                                                _%$%g5156151717%_))))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g5155951604%_
                                                _%$%g5156051608%_)))
                                         _%$%rest5159851714%_
                                         _%$%hd5158851683%_
                                         _%$%arg5158651676%_
                                         _%$%hd5157651645%_
                                         _%$%hd5157051625%_))))))
                        (_%$%loop5159351695%_ _%$%target5159051689%_ '()))
                      (_%$%g5155951604%_ _%$%g5156051608%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g5155951604%_
                                                     _%$%g5156051608%_))))
                                            (_%$%g5155951604%_
                                             _%$%g5156051608%_)))))))
                        (_%$%loop5158151657%_ _%$%target5157851651%_ '()))
                      (_%$%g5155951604%_ _%$%g5156051608%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g5155951604%_
                                                     _%$%g5156051608%_))))
                                            (_%$%g5155951604%_
                                             _%$%g5156051608%_))))
                                    (_%$%g5155951604%_ _%$%g5156051608%_))))
                            (_%$%g5155951604%_ _%$%g5156051608%_))))
                    (_%$%g5155951604%_ _%$%g5156051608%_)))))
        (_%$%g5155851772%_ _%stx51556%_)))))
