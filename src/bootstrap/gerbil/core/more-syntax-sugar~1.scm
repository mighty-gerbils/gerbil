(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-syntax-sugar[1]#_g46345_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/more-syntax-sugar[:0:]#identifier-rules|
      (lambda (_%$stx45583%_)
        (let* ((_%g4558745598%_
                (lambda (_%g4558845594%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4558845594%_)))
               (_%g4558645628%_
                (lambda (_%g4558845602%_)
                  (if (gx#stx-pair? _%g4558845602%_)
                      (let ((_%e4559045605%_ (gx#syntax-e _%g4558845602%_)))
                        (let ((_%hd4559145609%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4559045605%_)))
                              (_%tl4559245612%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4559045605%_))))
                          (cons (gx#datum->syntax '#f 'make-setq-macro)
                                (cons 'macro:
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'syntax-rules)
                                                  _%tl4559245612%_)
                                            '())))))
                      (_%g4558745598%_ _%g4558845602%_)))))
          (_%g4558645628%_ _%$stx45583%_))))
    (define |gerbil/core/more-syntax-sugar[:0:]#with-identifiers|
      (lambda (_%stx45632%_)
        (let* ((_%g4563545668%_
                (lambda (_%g4563645664%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4563645664%_)))
               (_%g4563446070%_
                (lambda (_%g4563645672%_)
                  (if (gx#stx-pair? _%g4563645672%_)
                      (let ((_%e4563945675%_ (gx#syntax-e _%g4563645672%_)))
                        (let ((_%hd4564045679%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4563945675%_)))
                              (_%tl4564145682%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4563945675%_))))
                          (if (gx#stx-pair? _%tl4564145682%_)
                              (let ((_%e4564245685%_
                                     (gx#syntax-e _%tl4564145682%_)))
                                (let ((_%hd4564345689%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4564245685%_)))
                                      (_%tl4564445692%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4564245685%_))))
                                  (if (gx#stx-pair/null? _%hd4564345689%_)
                                      (let ((_g46339_
                                             (gx#syntax-split-splice
                                              _%hd4564345689%_
                                              '0)))
                                        (begin
                                          (let ((_g46340_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g46339_)
                                                       (##values-length
                                                        _g46339_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g46340_ 2)))
                                                (error "Context expects 2 values"
                                                       _g46340_)))
                                          (let ((_%target4564545695%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g46339_ 0)))
                                                (_%tl4564745698%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g46339_ 1))))
                                            (if (gx#stx-null? _%tl4564745698%_)
                                                (letrec ((_%loop4564845701%_
                                                          (lambda (_%hd4564645705%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause4565245708%_)
                    (if (gx#stx-pair? _%hd4564645705%_)
                        (let ((_%e4564945710%_ (gx#syntax-e _%hd4564645705%_)))
                          (let ((_%lp-hd4565045714%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4564945710%_)))
                                (_%lp-tl4565145717%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4564945710%_))))
                            (_%loop4564845701%_
                             _%lp-tl4565145717%_
                             (cons _%lp-hd4565045714%_ _%clause4565245708%_))))
                        (let ((_%clause4565345720%_
                               (reverse _%clause4565245708%_)))
                          (if (gx#stx-pair/null? _%tl4564445692%_)
                              (let ((_g46341_
                                     (gx#syntax-split-splice
                                      _%tl4564445692%_
                                      '0)))
                                (begin
                                  (let ((_g46342_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g46341_)
                                               (##values-length _g46341_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g46342_ 2)))
                                        (error "Context expects 2 values"
                                               _g46342_)))
                                  (let ((_%target4565445723%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g46341_ 0)))
                                        (_%tl4565645726%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g46341_ 1))))
                                    (if (gx#stx-null? _%tl4565645726%_)
                                        (letrec ((_%loop4565745729%_
                                                  (lambda (_%hd4565545733%_
                                                           _%body4566145736%_)
                                                    (if (gx#stx-pair?
                                                         _%hd4565545733%_)
                                                        (let ((_%e4565845738%_
                                                               (gx#syntax-e
                                                                _%hd4565545733%_)))
                                                          (let ((_%lp-hd4565945742%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4565845738%_)))
                        (_%lp-tl4566045745%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4565845738%_))))
                    (_%loop4565745729%_
                     _%lp-tl4566045745%_
                     (cons _%lp-hd4565945742%_ _%body4566145736%_))))
                (let* ((_%body4566245748%_ (reverse _%body4566145736%_))
                       (_%g4577545792%_
                        (lambda (_%g4577645788%_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g4577645788%_)))
                       (_%g4577445859%_
                        (lambda (_%g4577645796%_)
                          (if (gx#stx-pair/null? _%g4577645796%_)
                              (let ((_g46343_
                                     (gx#syntax-split-splice
                                      _%g4577645796%_
                                      '0)))
                                (begin
                                  (let ((_g46344_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g46343_)
                                               (##values-length _g46343_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g46344_ 2)))
                                        (error "Context expects 2 values"
                                               _g46344_)))
                                  (let ((_%target4577845799%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g46343_ 0)))
                                        (_%tl4578045802%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g46343_ 1))))
                                    (if (gx#stx-null? _%tl4578045802%_)
                                        (letrec ((_%loop4578145805%_
                                                  (lambda (_%hd4577945809%_
                                                           _%clause4578545812%_)
                                                    (if (gx#stx-pair?
                                                         _%hd4577945809%_)
                                                        (let ((_%e4578245814%_
                                                               (gx#syntax-e
                                                                _%hd4577945809%_)))
                                                          (let ((_%lp-hd4578345818%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4578245814%_)))
                        (_%lp-tl4578445821%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4578245814%_))))
                    (_%loop4578145805%_
                     _%lp-tl4578445821%_
                     (cons _%lp-hd4578345818%_ _%clause4578545812%_))))
                (let ((_%clause4578645824%_ (reverse _%clause4578545812%_)))
                  (cons (gx#datum->syntax '#f 'with-syntax*)
                        (cons (foldr (lambda (_%g4584245847%_ _%g4584345850%_)
                                       (cons _%g4584245847%_ _%g4584345850%_))
                                     '()
                                     _%clause4578645824%_)
                              (foldr (lambda (_%g4584445853%_ _%g4584545856%_)
                                       (cons _%g4584445853%_ _%g4584545856%_))
                                     '()
                                     _%body4566245748%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop4578145805%_
                                           _%target4577845799%_
                                           '()))
                                        (_%g4577545792%_ _%g4577645796%_)))))
                              (_%g4577545792%_ _%g4577645796%_)))))
                  (_%g4577445859%_
                   (map (lambda (_%clause45863%_)
                          (let* ((_%__stx4627646277%_ _%clause45863%_)
                                 (_%g4586745906%_
                                  (lambda ()
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx4627646277%_))))
                            (let ((_%__kont4627946280%_
                                   (lambda (_%g4586946039%_ _%g4587046041%_)
                                     (cons _%g4587046041%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'syntax-local-temp)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'quote)
                           (cons _%g4586946039%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                                  (_%__kont4628146282%_
                                   (lambda (_%g4588345961%_
                                            _%g4588445963%_
                                            _%g4588545964%_)
                                     (cons _%g4588545964%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'stx-identifier)
                                                       (cons _%g4588445963%_
                                                             (foldr (lambda (_%g4598345986%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g4598445989%_)
                              (cons _%g4598345986%_ _%g4598445989%_))
                            '()
                            _%g4588345961%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                              (let* ((_%__match4633746338%_
                                      (lambda (_%e4588645913%_
                                               _%hd4588745917%_
                                               _%tl4588845920%_
                                               _%e4588945923%_
                                               _%hd4589045927%_
                                               _%tl4589145930%_
                                               _%__splice4628346284%_
                                               _%target4589245933%_
                                               _%tl4589445936%_)
                                        (letrec ((_%loop4589545939%_
                                                  (lambda (_%hd4589345943%_
                                                           _%components4589945946%_)
                                                    (if (gx#stx-pair?
                                                         _%hd4589345943%_)
                                                        (let ((_%e4589645948%_
                                                               (gx#syntax-e
                                                                _%hd4589345943%_)))
                                                          (let ((_%lp-tl4589845955%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e4589645948%_)))
                        (_%lp-hd4589745952%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4589645948%_))))
                    (_%loop4589545939%_
                     _%lp-tl4589845955%_
                     (cons _%lp-hd4589745952%_ _%components4589945946%_))))
                (let ((_%components4590045958%_
                       (reverse _%components4589945946%_)))
                  (let ((_%g4588345961%_ _%components4590045958%_)
                        (_%g4588445963%_ _%hd4589045927%_)
                        (_%g4588545964%_ _%hd4588745917%_))
                    (if (gx#identifier? _%g4588545964%_)
                        (_%__kont4628146282%_
                         _%g4588345961%_
                         _%g4588445963%_
                         _%g4588545964%_)
                        (_%g4586745906%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop4589545939%_
                                           _%target4589245933%_
                                           '()))))
                                     (_%__match4631746318%_
                                      (lambda (_%e4587145999%_
                                               _%hd4587246003%_
                                               _%tl4587346006%_
                                               _%e4587446009%_
                                               _%hd4587546013%_
                                               _%tl4587646016%_
                                               _%e4587746019%_
                                               _%hd4587846023%_
                                               _%tl4587946026%_
                                               _%e4588046029%_
                                               _%hd4588146033%_
                                               _%tl4588246036%_)
                                        (let ((_%g4586946039%_
                                               _%hd4588146033%_)
                                              (_%g4587046041%_
                                               _%hd4587246003%_))
                                          (if (and (gx#identifier?
                                                    _%g4587046041%_)
                                                   (gx#identifier?
                                                    _%g4586946039%_))
                                              (_%__kont4627946280%_
                                               _%g4586946039%_
                                               _%g4587046041%_)
                                              (if (gx#stx-pair/null?
                                                   _%tl4587646016%_)
                                                  (let ((_%__splice4628346284%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl4587646016%_
                                                          '0)))
                                                    (let ((_%tl4589445936%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice4628346284%_
                                                              '1)))
                                                          (_%target4589245933%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice4628346284%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4589445936%_)
                                                          (_%__match4633746338%_
                                                           _%e4587145999%_
                                                           _%hd4587246003%_
                                                           _%tl4587346006%_
                                                           _%e4587446009%_
                                                           _%hd4587546013%_
                                                           _%tl4587646016%_
                                                           _%__splice4628346284%_
                                                           _%target4589245933%_
                                                           _%tl4589445936%_)
                                                          (_%g4586745906%_))))
                                                  (_%g4586745906%_)))))))
                                (if (gx#stx-pair? _%__stx4627646277%_)
                                    (let ((_%e4587145999%_
                                           (gx#syntax-e _%__stx4627646277%_)))
                                      (let ((_%tl4587346006%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4587145999%_)))
                                            (_%hd4587246003%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4587145999%_))))
                                        (if (gx#stx-pair? _%tl4587346006%_)
                                            (let ((_%e4587446009%_
                                                   (gx#syntax-e
                                                    _%tl4587346006%_)))
                                              (let ((_%tl4587646016%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4587446009%_)))
                                                    (_%hd4587546013%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4587446009%_))))
                                                (if (gx#stx-pair?
                                                     _%hd4587546013%_)
                                                    (let ((_%e4587746019%_
                                                           (gx#syntax-e
                                                            _%hd4587546013%_)))
                                                      (let ((_%tl4587946026%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4587746019%_)))
                    (_%hd4587846023%_
                     (let () (declare (not safe)) (##car _%e4587746019%_))))
                (if (gx#identifier? _%hd4587846023%_)
                    (if (gx#free-identifier=?
                         |gerbil/core/more-syntax-sugar[1]#_g46345_|
                         _%hd4587846023%_)
                        (if (gx#stx-pair? _%tl4587946026%_)
                            (let ((_%e4588046029%_
                                   (gx#syntax-e _%tl4587946026%_)))
                              (let ((_%tl4588246036%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4588046029%_)))
                                    (_%hd4588146033%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4588046029%_))))
                                (if (gx#stx-null? _%tl4588246036%_)
                                    (if (gx#stx-null? _%tl4587646016%_)
                                        (_%__match4631746318%_
                                         _%e4587145999%_
                                         _%hd4587246003%_
                                         _%tl4587346006%_
                                         _%e4587446009%_
                                         _%hd4587546013%_
                                         _%tl4587646016%_
                                         _%e4587746019%_
                                         _%hd4587846023%_
                                         _%tl4587946026%_
                                         _%e4588046029%_
                                         _%hd4588146033%_
                                         _%tl4588246036%_)
                                        (if (gx#stx-pair/null?
                                             _%tl4587646016%_)
                                            (let ((_%__splice4628346284%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4587646016%_
                                                    '0)))
                                              (let ((_%tl4589445936%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4628346284%_
                                                        '1)))
                                                    (_%target4589245933%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4628346284%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4589445936%_)
                                                    (_%__match4633746338%_
                                                     _%e4587145999%_
                                                     _%hd4587246003%_
                                                     _%tl4587346006%_
                                                     _%e4587446009%_
                                                     _%hd4587546013%_
                                                     _%tl4587646016%_
                                                     _%__splice4628346284%_
                                                     _%target4589245933%_
                                                     _%tl4589445936%_)
                                                    (_%g4586745906%_))))
                                            (_%g4586745906%_)))
                                    (if (gx#stx-pair/null? _%tl4587646016%_)
                                        (let ((_%__splice4628346284%_
                                               (gx#syntax-split-splice->vector
                                                _%tl4587646016%_
                                                '0)))
                                          (let ((_%tl4589445936%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4628346284%_
                                                    '1)))
                                                (_%target4589245933%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4628346284%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl4589445936%_)
                                                (_%__match4633746338%_
                                                 _%e4587145999%_
                                                 _%hd4587246003%_
                                                 _%tl4587346006%_
                                                 _%e4587446009%_
                                                 _%hd4587546013%_
                                                 _%tl4587646016%_
                                                 _%__splice4628346284%_
                                                 _%target4589245933%_
                                                 _%tl4589445936%_)
                                                (_%g4586745906%_))))
                                        (_%g4586745906%_)))))
                            (if (gx#stx-pair/null? _%tl4587646016%_)
                                (let ((_%__splice4628346284%_
                                       (gx#syntax-split-splice->vector
                                        _%tl4587646016%_
                                        '0)))
                                  (let ((_%tl4589445936%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice4628346284%_
                                            '1)))
                                        (_%target4589245933%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice4628346284%_
                                            '0))))
                                    (if (gx#stx-null? _%tl4589445936%_)
                                        (_%__match4633746338%_
                                         _%e4587145999%_
                                         _%hd4587246003%_
                                         _%tl4587346006%_
                                         _%e4587446009%_
                                         _%hd4587546013%_
                                         _%tl4587646016%_
                                         _%__splice4628346284%_
                                         _%target4589245933%_
                                         _%tl4589445936%_)
                                        (_%g4586745906%_))))
                                (_%g4586745906%_)))
                        (if (gx#stx-pair/null? _%tl4587646016%_)
                            (let ((_%__splice4628346284%_
                                   (gx#syntax-split-splice->vector
                                    _%tl4587646016%_
                                    '0)))
                              (let ((_%tl4589445936%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice4628346284%_
                                        '1)))
                                    (_%target4589245933%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice4628346284%_
                                        '0))))
                                (if (gx#stx-null? _%tl4589445936%_)
                                    (_%__match4633746338%_
                                     _%e4587145999%_
                                     _%hd4587246003%_
                                     _%tl4587346006%_
                                     _%e4587446009%_
                                     _%hd4587546013%_
                                     _%tl4587646016%_
                                     _%__splice4628346284%_
                                     _%target4589245933%_
                                     _%tl4589445936%_)
                                    (_%g4586745906%_))))
                            (_%g4586745906%_)))
                    (if (gx#stx-pair/null? _%tl4587646016%_)
                        (let ((_%__splice4628346284%_
                               (gx#syntax-split-splice->vector
                                _%tl4587646016%_
                                '0)))
                          (let ((_%tl4589445936%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice4628346284%_ '1)))
                                (_%target4589245933%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice4628346284%_ '0))))
                            (if (gx#stx-null? _%tl4589445936%_)
                                (_%__match4633746338%_
                                 _%e4587145999%_
                                 _%hd4587246003%_
                                 _%tl4587346006%_
                                 _%e4587446009%_
                                 _%hd4587546013%_
                                 _%tl4587646016%_
                                 _%__splice4628346284%_
                                 _%target4589245933%_
                                 _%tl4589445936%_)
                                (_%g4586745906%_))))
                        (_%g4586745906%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _%tl4587646016%_)
                                                        (let ((_%__splice4628346284%_
                                                               (gx#syntax-split-splice->vector
                                                                _%tl4587646016%_
                                                                '0)))
                                                          (let ((_%tl4589445936%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4628346284%_ '1)))
                        (_%target4589245933%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4628346284%_ '0))))
                    (if (gx#stx-null? _%tl4589445936%_)
                        (_%__match4633746338%_
                         _%e4587145999%_
                         _%hd4587246003%_
                         _%tl4587346006%_
                         _%e4587446009%_
                         _%hd4587546013%_
                         _%tl4587646016%_
                         _%__splice4628346284%_
                         _%target4589245933%_
                         _%tl4589445936%_)
                        (_%g4586745906%_))))
                (_%g4586745906%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g4586745906%_))))
                                    (_%g4586745906%_))))))
                        (foldr (lambda (_%g4606146064%_ _%g4606246067%_)
                                 (cons _%g4606146064%_ _%g4606246067%_))
                               '()
                               _%clause4565345720%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop4565745729%_
                                           _%target4565445723%_
                                           '()))
                                        (_%g4563545668%_ _%g4563645672%_)))))
                              (_%g4563545668%_ _%g4563645672%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4564845701%_
                                                   _%target4564545695%_
                                                   '()))
                                                (_%g4563545668%_
                                                 _%g4563645672%_)))))
                                      (_%g4563545668%_ _%g4563645672%_))))
                              (_%g4563545668%_ _%g4563645672%_))))
                      (_%g4563545668%_ _%g4563645672%_)))))
          (_%g4563446070%_ _%stx45632%_))))
    (define |gerbil/core/more-syntax-sugar[:0:]#with-identifier|
      (lambda (_%$stx46078%_)
        (let* ((_%g4608246119%_
                (lambda (_%g4608346115%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4608346115%_)))
               (_%g4608146256%_
                (lambda (_%g4608346123%_)
                  (if (gx#stx-pair? _%g4608346123%_)
                      (let ((_%e4608746126%_ (gx#syntax-e _%g4608346123%_)))
                        (let ((_%hd4608846130%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4608746126%_)))
                              (_%tl4608946133%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4608746126%_))))
                          (if (gx#stx-pair? _%tl4608946133%_)
                              (let ((_%e4609046136%_
                                     (gx#syntax-e _%tl4608946133%_)))
                                (let ((_%hd4609146140%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4609046136%_)))
                                      (_%tl4609246143%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4609046136%_))))
                                  (if (gx#stx-pair? _%hd4609146140%_)
                                      (let ((_%e4609346146%_
                                             (gx#syntax-e _%hd4609146140%_)))
                                        (let ((_%hd4609446150%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4609346146%_)))
                                              (_%tl4609546153%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4609346146%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4609546153%_)
                                              (let ((_g46346_
                                                     (gx#syntax-split-splice
                                                      _%tl4609546153%_
                                                      '0)))
                                                (begin
                                                  (let ((_g46347_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g46346_)
                                                               (##values-length
                                                                _g46346_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g46347_ 2)))
                (error "Context expects 2 values" _g46347_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target4609646156%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g46346_
                                                            0)))
                                                        (_%tl4609846159%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g46346_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl4609846159%_)
                                                        (letrec ((_%loop4609946162%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd4609746166%_ _%components4610346169%_)
                            (if (gx#stx-pair? _%hd4609746166%_)
                                (let ((_%e4610046171%_
                                       (gx#syntax-e _%hd4609746166%_)))
                                  (let ((_%lp-hd4610146175%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4610046171%_)))
                                        (_%lp-tl4610246178%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4610046171%_))))
                                    (_%loop4609946162%_
                                     _%lp-tl4610246178%_
                                     (cons _%lp-hd4610146175%_
                                           _%components4610346169%_))))
                                (let ((_%components4610446181%_
                                       (reverse _%components4610346169%_)))
                                  (if (gx#stx-pair/null? _%tl4609246143%_)
                                      (let ((_g46348_
                                             (gx#syntax-split-splice
                                              _%tl4609246143%_
                                              '0)))
                                        (begin
                                          (let ((_g46349_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g46348_)
                                                       (##values-length
                                                        _g46348_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g46349_ 2)))
                                                (error "Context expects 2 values"
                                                       _g46349_)))
                                          (let ((_%target4610546184%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g46348_ 0)))
                                                (_%tl4610746187%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g46348_ 1))))
                                            (if (gx#stx-null? _%tl4610746187%_)
                                                (letrec ((_%loop4610846190%_
                                                          (lambda (_%hd4610646194%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body4611246197%_)
                    (if (gx#stx-pair? _%hd4610646194%_)
                        (let ((_%e4610946199%_ (gx#syntax-e _%hd4610646194%_)))
                          (let ((_%lp-hd4611046203%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4610946199%_)))
                                (_%lp-tl4611146206%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4610946199%_))))
                            (_%loop4610846190%_
                             _%lp-tl4611146206%_
                             (cons _%lp-hd4611046203%_ _%body4611246197%_))))
                        (let ((_%body4611346209%_
                               (reverse _%body4611246197%_)))
                          (if (gx#identifier? _%hd4609446150%_)
                              (cons (gx#datum->syntax '#f 'with-identifiers)
                                    (cons (cons (cons _%hd4609446150%_
                                                      (foldr (lambda (_%g4623946244%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g4624046247%_)
                       (cons _%g4623946244%_ _%g4624046247%_))
                     '()
                     _%components4610446181%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (foldr (lambda (_%g4624146250%_
                                                          _%g4624246253%_)
                                                   (cons _%g4624146250%_
                                                         _%g4624246253%_))
                                                 '()
                                                 _%body4611346209%_)))
                              (_%g4608246119%_ _%g4608346123%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop4610846190%_
                                                   _%target4610546184%_
                                                   '()))
                                                (_%g4608246119%_
                                                 _%g4608346123%_)))))
                                      (_%g4608246119%_ _%g4608346123%_)))))))
                  (_%loop4609946162%_ _%target4609646156%_ '()))
                (_%g4608246119%_ _%g4608346123%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4608246119%_
                                               _%g4608346123%_))))
                                      (_%g4608246119%_ _%g4608346123%_))))
                              (_%g4608246119%_ _%g4608346123%_))))
                      (_%g4608246119%_ _%g4608346123%_)))))
          (_%g4608146256%_ _%$stx46078%_))))
    (define |gerbil/core/more-syntax-sugar[:0:]#quasisyntax|
      (lambda (_%$stx46262%_)
        (let ((_%g4626546272%_
               (lambda (_%g4626646268%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g4626646268%_))))
          (_%g4626546272%_ _%$stx46262%_))))))
