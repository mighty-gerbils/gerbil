(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g121861_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |[:0:]#defpred|
      (lambda (_%stx121435%_)
        (let* ((_%$%g121438121476%_
                (lambda (_%$%g121439121472%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g121439121472%_)))
               (_%$%g121437121643%_
                (lambda (_%$%g121439121480%_)
                  (if (gx#stx-pair? _%$%g121439121480%_)
                      (let ((_%$%e121444121483%_
                             (gx#syntax-e _%$%g121439121480%_)))
                        (let ((_%$%hd121445121487%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e121444121483%_)))
                              (_%$%tl121446121490%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e121444121483%_))))
                          (if (gx#stx-pair? _%$%tl121446121490%_)
                              (let ((_%$%e121447121493%_
                                     (gx#syntax-e _%$%tl121446121490%_)))
                                (let ((_%$%hd121448121497%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e121447121493%_)))
                                      (_%$%tl121449121500%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e121447121493%_))))
                                  (if (gx#stx-pair? _%$%hd121448121497%_)
                                      (let ((_%$%e121450121503%_
                                             (gx#syntax-e
                                              _%$%hd121448121497%_)))
                                        (let ((_%$%hd121451121507%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e121450121503%_)))
                                              (_%$%tl121452121510%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e121450121503%_))))
                                          (if (gx#stx-pair?
                                               _%$%tl121452121510%_)
                                              (let ((_%$%e121453121513%_
                                                     (gx#syntax-e
                                                      _%$%tl121452121510%_)))
                                                (let ((_%$%hd121454121517%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e121453121513%_)))
                                                      (_%$%tl121455121520%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e121453121513%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl121455121520%_)
                                                      (if (gx#stx-pair?
                                                           _%$%tl121449121500%_)
                                                          (let ((_%$%e121456121523%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl121449121500%_)))
                    (let ((_%$%hd121457121527%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e121456121523%_)))
                          (_%$%tl121458121530%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e121456121523%_))))
                      (if (gx#identifier? _%$%hd121457121527%_)
                          (if (gx#free-identifier=?
                               |[1]#_g121861_|
                               _%$%hd121457121527%_)
                              (if (gx#stx-pair? _%$%tl121458121530%_)
                                  (let ((_%$%e121459121533%_
                                         (gx#syntax-e _%$%tl121458121530%_)))
                                    (let ((_%$%hd121460121537%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e121459121533%_)))
                                          (_%$%tl121461121540%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e121459121533%_))))
                                      (if (gx#stx-pair/null?
                                           _%$%tl121461121540%_)
                                          (let ((_g121862_
                                                 (gx#syntax-split-splice
                                                  _%$%tl121461121540%_
                                                  '0)))
                                            (begin
                                              (let ((_g121863_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g121862_)
                                                           (##values-length
                                                            _g121862_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g121863_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g121863_)))
                                              (let ((_%$%target121462121543%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g121862_
                                                        0)))
                                                    (_%$%tl121464121546%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g121862_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%$%tl121464121546%_)
                                                    (letrec ((_%$%loop121465121549%_
                                                              (lambda (_%$%hd121463121553%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%body121469121556%_)
                        (if (gx#stx-pair? _%$%hd121463121553%_)
                            (let ((_%$%e121466121558%_
                                   (gx#syntax-e _%$%hd121463121553%_)))
                              (let ((_%$%lp-hd121467121562%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e121466121558%_)))
                                    (_%$%lp-tl121468121565%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e121466121558%_))))
                                (_%$%loop121465121549%_
                                 _%$%lp-tl121468121565%_
                                 (cons _%$%lp-hd121467121562%_
                                       _%$%body121469121556%_))))
                            (let ((_%$%body121470121568%_
                                   (reverse _%$%body121469121556%_)))
                              ((lambda (_%$%g121440121571%_
                                        _%$%g121441121573%_
                                        _%$%g121442121574%_
                                        _%$%g121443121575%_)
                                 (let* ((_%$%g121604121612%_
                                         (lambda (_%$%g121605121608%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%$%g121605121608%_)))
                                        (_%$%g121603121639%_
                                         (lambda (_%$%g121605121616%_)
                                           ((lambda (_%$%g121606121619%_)
                                              (cons (gx#datum->syntax '#f 'def)
                                                    (cons _%$%g121443121575%_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'begin-annotation)
                              (cons (cons (gx#datum->syntax '#f '@predicate)
                                          (cons _%$%g121606121619%_ '()))
                                    (cons (cons (gx#datum->syntax '#f 'lambda)
                                                (cons (cons _%$%g121442121574%_
                                                            '())
                                                      (foldr (lambda (_%$%g121630121633%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g121631121636%_)
                       (cons _%$%g121630121633%_ _%$%g121631121636%_))
                     '()
                     _%$%g121440121571%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%$%g121605121616%_))))
                                   (_%$%g121603121639%_
                                    (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                     _%stx121435%_
                                     _%$%g121441121573%_))))
                               _%$%body121470121568%_
                               _%$%hd121460121537%_
                               _%$%hd121454121517%_
                               _%$%hd121451121507%_))))))
              (_%$%loop121465121549%_ _%$%target121462121543%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g121438121476%_
                                                     _%$%g121439121480%_)))))
                                          (_%$%g121438121476%_
                                           _%$%g121439121480%_))))
                                  (_%$%g121438121476%_ _%$%g121439121480%_))
                              (_%$%g121438121476%_ _%$%g121439121480%_))
                          (_%$%g121438121476%_ _%$%g121439121480%_))))
                  (_%$%g121438121476%_ _%$%g121439121480%_))
              (_%$%g121438121476%_ _%$%g121439121480%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g121438121476%_
                                               _%$%g121439121480%_))))
                                      (_%$%g121438121476%_
                                       _%$%g121439121480%_))))
                              (_%$%g121438121476%_ _%$%g121439121480%_))))
                      (_%$%g121438121476%_ _%$%g121439121480%_)))))
          (_%$%g121437121643%_ _%stx121435%_))))
    (define |[:0:]#subtype-property-vector|
      (lambda (_%$stx121648%_)
        (let* ((_%$%g121652121672%_
                (lambda (_%$%g121653121668%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g121653121668%_)))
               (_%$%g121651121741%_
                (lambda (_%$%g121653121676%_)
                  (if (gx#stx-pair? _%$%g121653121676%_)
                      (let ((_%$%e121655121679%_
                             (gx#syntax-e _%$%g121653121676%_)))
                        (let ((_%$%hd121656121683%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e121655121679%_)))
                              (_%$%tl121657121686%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e121655121679%_))))
                          (if (gx#stx-pair/null? _%$%tl121657121686%_)
                              (let ((_g121864_
                                     (gx#syntax-split-splice
                                      _%$%tl121657121686%_
                                      '0)))
                                (begin
                                  (let ((_g121865_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g121864_)
                                               (##values-length _g121864_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g121865_ 2)))
                                        (error "Context expects 2 values"
                                               _g121865_)))
                                  (let ((_%$%target121658121689%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g121864_ 0)))
                                        (_%$%tl121660121692%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g121864_ 1))))
                                    (if (gx#stx-null? _%$%tl121660121692%_)
                                        (letrec ((_%$%loop121661121695%_
                                                  (lambda (_%$%hd121659121699%_
                                                           _%$%t121665121702%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd121659121699%_)
                                                        (let ((_%$%e121662121704%_
                                                               (gx#syntax-e
                                                                _%$%hd121659121699%_)))
                                                          (let ((_%$%lp-hd121663121708%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e121662121704%_)))
                        (_%$%lp-tl121664121711%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e121662121704%_))))
                    (_%$%loop121661121695%_
                     _%$%lp-tl121664121711%_
                     (cons _%$%lp-hd121663121708%_ _%$%t121665121702%_))))
                (let ((_%$%t121666121714%_ (reverse _%$%t121665121702%_)))
                  ((lambda (_%$%g121654121717%_)
                     (cons (gx#datum->syntax '#f 'let)
                           (cons (cons (gx#datum->syntax '#f 'vec)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'make-vector)
                                                   (cons '32 (cons '#f '())))
                                             '()))
                                 (foldr (lambda (_%$%g121732121735%_
                                                 _%$%g121733121738%_)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'vector-set!)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'vec)
                                                            (cons _%$%g121732121735%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '#t '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%$%g121733121738%_))
                                        (cons (gx#datum->syntax '#f 'vec) '())
                                        _%$%g121654121717%_))))
                   _%$%t121666121714%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop121661121695%_
                                           _%$%target121658121689%_
                                           '()))
                                        (_%$%g121652121672%_
                                         _%$%g121653121676%_)))))
                              (_%$%g121652121672%_ _%$%g121653121676%_))))
                      (_%$%g121652121672%_ _%$%g121653121676%_)))))
          (_%$%g121651121741%_ _%$stx121648%_))))))
