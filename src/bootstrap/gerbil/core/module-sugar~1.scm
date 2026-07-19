(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/module-sugar[:0:]#require|
    (lambda (_%$stx50201%_)
      (let* ((_%__stx5298552986%_ _%$stx50201%_)
             (_%$%g5020650225%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx5298552986%_))))
        (let ((_%__kont5298852989%_
               (lambda () (cons (gx#datum->syntax '#f 'begin) '())))
              (_%__kont5299052991%_
               (lambda (_%$%g5021150252%_ _%$%g5021250254%_ _%$%g5021350255%_)
                 (cons (gx#datum->syntax '#f 'cond-expand)
                       (cons (cons _%$%g5021250254%_
                                   (cons (cons _%$%g5021350255%_
                                               _%$%g5021150252%_)
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'else)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'syntax-error)
                                                     (cons '"Missing required feature"
                                                           (cons _%$%g5021250254%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '()))))))
          (if (gx#stx-pair? _%__stx5298552986%_)
              (let ((_%$%e5020850277%_ (gx#syntax-e _%__stx5298552986%_)))
                (let ((_%$%tl5021050284%_
                       (let () (declare (not safe)) (##cdr _%$%e5020850277%_)))
                      (_%$%hd5020950281%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e5020850277%_))))
                  (if (gx#stx-null? _%$%tl5021050284%_)
                      (_%__kont5298852989%_)
                      (if (gx#stx-pair? _%$%tl5021050284%_)
                          (let ((_%$%e5021750242%_
                                 (gx#syntax-e _%$%tl5021050284%_)))
                            (let ((_%$%tl5021950249%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5021750242%_)))
                                  (_%$%hd5021850246%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5021750242%_))))
                              (_%__kont5299052991%_
                               _%$%tl5021950249%_
                               _%$%hd5021850246%_
                               _%$%hd5020950281%_)))
                          (let () (declare (not safe)) (_%$%g5020650225%_))))))
              (let () (declare (not safe)) (_%$%g5020650225%_)))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import|
    (lambda (_%$stx50295%_)
      (let* ((_%__stx5301553016%_ _%$stx50295%_)
             (_%$%g5030050340%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx5301553016%_))))
        (let ((_%__kont5301853019%_
               (lambda (_%$%g5030250476%_ _%$%g5030350478%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%$%g5030350478%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-expander)
                                         (cons _%$%g5030250476%_ '()))
                                   '())))))
              (_%__kont5302053021%_
               (lambda (_%$%g5031350405%_
                        _%$%g5031450407%_
                        _%$%g5031550408%_
                        _%$%g5031650409%_)
                 (cons _%$%g5031650409%_
                       (cons _%$%g5031550408%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%$%g5031450407%_
                                               (foldr (lambda (_%$%g5043050433%_
                                                               _%$%g5043150436%_)
                                                        (cons _%$%g5043050433%_
                                                              _%$%g5043150436%_))
                                                      '()
                                                      _%$%g5031350405%_)))
                                   '()))))))
          (let* ((_%__match5307053071%_
                  (lambda (_%$%e5031750347%_
                           _%$%hd5031850351%_
                           _%$%tl5031950354%_
                           _%$%e5032050357%_
                           _%$%hd5032150361%_
                           _%$%tl5032250364%_
                           _%$%e5032350367%_
                           _%$%hd5032450371%_
                           _%$%tl5032550374%_
                           _%__splice5302253023%_
                           _%$%target5032650377%_
                           _%$%tl5032850380%_)
                    (letrec ((_%$%loop5032950383%_
                              (lambda (_%$%hd5032750387%_ _%$%body5033350390%_)
                                (if (gx#stx-pair? _%$%hd5032750387%_)
                                    (let ((_%$%e5033050392%_
                                           (gx#syntax-e _%$%hd5032750387%_)))
                                      (let ((_%$%lp-tl5033250399%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5033050392%_)))
                                            (_%$%lp-hd5033150396%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5033050392%_))))
                                        (_%$%loop5032950383%_
                                         _%$%lp-tl5033250399%_
                                         (cons _%$%lp-hd5033150396%_
                                               _%$%body5033350390%_))))
                                    (let ((_%$%body5033450402%_
                                           (reverse _%$%body5033350390%_)))
                                      (let ((_%$%g5031350405%_
                                             _%$%body5033450402%_)
                                            (_%$%g5031450407%_
                                             _%$%tl5032550374%_)
                                            (_%$%g5031550408%_
                                             _%$%hd5032450371%_)
                                            (_%$%g5031650409%_
                                             _%$%hd5031850351%_))
                                        (if (gx#identifier? _%$%g5031550408%_)
                                            (_%__kont5302053021%_
                                             _%$%g5031350405%_
                                             _%$%g5031450407%_
                                             _%$%g5031550408%_
                                             _%$%g5031650409%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5030050340%_)))))))))
                      (_%$%loop5032950383%_ _%$%target5032650377%_ '()))))
                 (_%__match5304453045%_
                  (lambda (_%$%e5030450446%_
                           _%$%hd5030550450%_
                           _%$%tl5030650453%_
                           _%$%e5030750456%_
                           _%$%hd5030850460%_
                           _%$%tl5030950463%_
                           _%$%e5031050466%_
                           _%$%hd5031150470%_
                           _%$%tl5031250473%_)
                    (let ((_%$%g5030250476%_ _%$%hd5031150470%_)
                          (_%$%g5030350478%_ _%$%hd5030850460%_))
                      (if (gx#identifier? _%$%g5030350478%_)
                          (_%__kont5301853019%_
                           _%$%g5030250476%_
                           _%$%g5030350478%_)
                          (if (gx#stx-pair? _%$%hd5030850460%_)
                              (let ((_%$%e5032350367%_
                                     (gx#syntax-e _%$%hd5030850460%_)))
                                (let ((_%$%tl5032550374%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5032350367%_)))
                                      (_%$%hd5032450371%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5032350367%_))))
                                  (if (gx#stx-pair/null? _%$%tl5030950463%_)
                                      (let ((_%__splice5302253023%_
                                             (gx#syntax-split-splice->vector
                                              _%$%tl5030950463%_
                                              '0)))
                                        (let ((_%$%tl5032850380%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice5302253023%_
                                                  '1)))
                                              (_%$%target5032650377%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice5302253023%_
                                                  '0))))
                                          (if (gx#stx-null? _%$%tl5032850380%_)
                                              (_%__match5307053071%_
                                               _%$%e5030450446%_
                                               _%$%hd5030550450%_
                                               _%$%tl5030650453%_
                                               _%$%e5030750456%_
                                               _%$%hd5030850460%_
                                               _%$%tl5030950463%_
                                               _%$%e5032350367%_
                                               _%$%hd5032450371%_
                                               _%$%tl5032550374%_
                                               _%__splice5302253023%_
                                               _%$%target5032650377%_
                                               _%$%tl5032850380%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5030050340%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5030050340%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5030050340%_))))))))
            (if (gx#stx-pair? _%__stx5301553016%_)
                (let ((_%$%e5030450446%_ (gx#syntax-e _%__stx5301553016%_)))
                  (let ((_%$%tl5030650453%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e5030450446%_)))
                        (_%$%hd5030550450%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e5030450446%_))))
                    (if (gx#stx-pair? _%$%tl5030650453%_)
                        (let ((_%$%e5030750456%_
                               (gx#syntax-e _%$%tl5030650453%_)))
                          (let ((_%$%tl5030950463%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e5030750456%_)))
                                (_%$%hd5030850460%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e5030750456%_))))
                            (if (gx#stx-pair? _%$%tl5030950463%_)
                                (let ((_%$%e5031050466%_
                                       (gx#syntax-e _%$%tl5030950463%_)))
                                  (let ((_%$%tl5031250473%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e5031050466%_)))
                                        (_%$%hd5031150470%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e5031050466%_))))
                                    (if (gx#stx-null? _%$%tl5031250473%_)
                                        (_%__match5304453045%_
                                         _%$%e5030450446%_
                                         _%$%hd5030550450%_
                                         _%$%tl5030650453%_
                                         _%$%e5030750456%_
                                         _%$%hd5030850460%_
                                         _%$%tl5030950463%_
                                         _%$%e5031050466%_
                                         _%$%hd5031150470%_
                                         _%$%tl5031250473%_)
                                        (if (gx#stx-pair? _%$%hd5030850460%_)
                                            (let ((_%$%e5032350367%_
                                                   (gx#syntax-e
                                                    _%$%hd5030850460%_)))
                                              (let ((_%$%tl5032550374%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e5032350367%_)))
                                                    (_%$%hd5032450371%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e5032350367%_))))
                                                (if (gx#stx-pair/null?
                                                     _%$%tl5030950463%_)
                                                    (let ((_%__splice5302253023%_
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl5030950463%_
                                                            '0)))
                                                      (let ((_%$%tl5032850380%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice5302253023%_ '1)))
                    (_%$%target5032650377%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice5302253023%_ '0))))
                (if (gx#stx-null? _%$%tl5032850380%_)
                    (_%__match5307053071%_
                     _%$%e5030450446%_
                     _%$%hd5030550450%_
                     _%$%tl5030650453%_
                     _%$%e5030750456%_
                     _%$%hd5030850460%_
                     _%$%tl5030950463%_
                     _%$%e5032350367%_
                     _%$%hd5032450371%_
                     _%$%tl5032550374%_
                     _%__splice5302253023%_
                     _%$%target5032650377%_
                     _%$%tl5032850380%_)
                    (let () (declare (not safe)) (_%$%g5030050340%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5030050340%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5030050340%_))))))
                                (if (gx#stx-pair? _%$%hd5030850460%_)
                                    (let ((_%$%e5032350367%_
                                           (gx#syntax-e _%$%hd5030850460%_)))
                                      (let ((_%$%tl5032550374%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5032350367%_)))
                                            (_%$%hd5032450371%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5032350367%_))))
                                        (if (gx#stx-pair/null?
                                             _%$%tl5030950463%_)
                                            (let ((_%__splice5302253023%_
                                                   (gx#syntax-split-splice->vector
                                                    _%$%tl5030950463%_
                                                    '0)))
                                              (let ((_%$%tl5032850380%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice5302253023%_
                                                        '1)))
                                                    (_%$%target5032650377%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice5302253023%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%$%tl5032850380%_)
                                                    (_%__match5307053071%_
                                                     _%$%e5030450446%_
                                                     _%$%hd5030550450%_
                                                     _%$%tl5030650453%_
                                                     _%$%e5030750456%_
                                                     _%$%hd5030850460%_
                                                     _%$%tl5030950463%_
                                                     _%$%e5032350367%_
                                                     _%$%hd5032450371%_
                                                     _%$%tl5032550374%_
                                                     _%__splice5302253023%_
                                                     _%$%target5032650377%_
                                                     _%$%tl5032850380%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5030050340%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5030050340%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g5030050340%_))))))
                        (let () (declare (not safe)) (_%$%g5030050340%_)))))
                (let () (declare (not safe)) (_%$%g5030050340%_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-export|
    (lambda (_%$stx50498%_)
      (let* ((_%__stx5307353074%_ _%$stx50498%_)
             (_%$%g5050350543%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx5307353074%_))))
        (let ((_%__kont5307653077%_
               (lambda (_%$%g5050550679%_ _%$%g5050650681%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%$%g5050650681%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-export-expander)
                                         (cons _%$%g5050550679%_ '()))
                                   '())))))
              (_%__kont5307853079%_
               (lambda (_%$%g5051650608%_
                        _%$%g5051750610%_
                        _%$%g5051850611%_
                        _%$%g5051950612%_)
                 (cons _%$%g5051950612%_
                       (cons _%$%g5051850611%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%$%g5051750610%_
                                               (foldr (lambda (_%$%g5063350636%_
                                                               _%$%g5063450639%_)
                                                        (cons _%$%g5063350636%_
                                                              _%$%g5063450639%_))
                                                      '()
                                                      _%$%g5051650608%_)))
                                   '()))))))
          (let* ((_%__match5312853129%_
                  (lambda (_%$%e5052050550%_
                           _%$%hd5052150554%_
                           _%$%tl5052250557%_
                           _%$%e5052350560%_
                           _%$%hd5052450564%_
                           _%$%tl5052550567%_
                           _%$%e5052650570%_
                           _%$%hd5052750574%_
                           _%$%tl5052850577%_
                           _%__splice5308053081%_
                           _%$%target5052950580%_
                           _%$%tl5053150583%_)
                    (letrec ((_%$%loop5053250586%_
                              (lambda (_%$%hd5053050590%_ _%$%body5053650593%_)
                                (if (gx#stx-pair? _%$%hd5053050590%_)
                                    (let ((_%$%e5053350595%_
                                           (gx#syntax-e _%$%hd5053050590%_)))
                                      (let ((_%$%lp-tl5053550602%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5053350595%_)))
                                            (_%$%lp-hd5053450599%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5053350595%_))))
                                        (_%$%loop5053250586%_
                                         _%$%lp-tl5053550602%_
                                         (cons _%$%lp-hd5053450599%_
                                               _%$%body5053650593%_))))
                                    (let ((_%$%body5053750605%_
                                           (reverse _%$%body5053650593%_)))
                                      (let ((_%$%g5051650608%_
                                             _%$%body5053750605%_)
                                            (_%$%g5051750610%_
                                             _%$%tl5052850577%_)
                                            (_%$%g5051850611%_
                                             _%$%hd5052750574%_)
                                            (_%$%g5051950612%_
                                             _%$%hd5052150554%_))
                                        (if (gx#identifier? _%$%g5051850611%_)
                                            (_%__kont5307853079%_
                                             _%$%g5051650608%_
                                             _%$%g5051750610%_
                                             _%$%g5051850611%_
                                             _%$%g5051950612%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5050350543%_)))))))))
                      (_%$%loop5053250586%_ _%$%target5052950580%_ '()))))
                 (_%__match5310253103%_
                  (lambda (_%$%e5050750649%_
                           _%$%hd5050850653%_
                           _%$%tl5050950656%_
                           _%$%e5051050659%_
                           _%$%hd5051150663%_
                           _%$%tl5051250666%_
                           _%$%e5051350669%_
                           _%$%hd5051450673%_
                           _%$%tl5051550676%_)
                    (let ((_%$%g5050550679%_ _%$%hd5051450673%_)
                          (_%$%g5050650681%_ _%$%hd5051150663%_))
                      (if (gx#identifier? _%$%g5050650681%_)
                          (_%__kont5307653077%_
                           _%$%g5050550679%_
                           _%$%g5050650681%_)
                          (if (gx#stx-pair? _%$%hd5051150663%_)
                              (let ((_%$%e5052650570%_
                                     (gx#syntax-e _%$%hd5051150663%_)))
                                (let ((_%$%tl5052850577%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5052650570%_)))
                                      (_%$%hd5052750574%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5052650570%_))))
                                  (if (gx#stx-pair/null? _%$%tl5051250666%_)
                                      (let ((_%__splice5308053081%_
                                             (gx#syntax-split-splice->vector
                                              _%$%tl5051250666%_
                                              '0)))
                                        (let ((_%$%tl5053150583%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice5308053081%_
                                                  '1)))
                                              (_%$%target5052950580%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice5308053081%_
                                                  '0))))
                                          (if (gx#stx-null? _%$%tl5053150583%_)
                                              (_%__match5312853129%_
                                               _%$%e5050750649%_
                                               _%$%hd5050850653%_
                                               _%$%tl5050950656%_
                                               _%$%e5051050659%_
                                               _%$%hd5051150663%_
                                               _%$%tl5051250666%_
                                               _%$%e5052650570%_
                                               _%$%hd5052750574%_
                                               _%$%tl5052850577%_
                                               _%__splice5308053081%_
                                               _%$%target5052950580%_
                                               _%$%tl5053150583%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5050350543%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5050350543%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5050350543%_))))))))
            (if (gx#stx-pair? _%__stx5307353074%_)
                (let ((_%$%e5050750649%_ (gx#syntax-e _%__stx5307353074%_)))
                  (let ((_%$%tl5050950656%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e5050750649%_)))
                        (_%$%hd5050850653%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e5050750649%_))))
                    (if (gx#stx-pair? _%$%tl5050950656%_)
                        (let ((_%$%e5051050659%_
                               (gx#syntax-e _%$%tl5050950656%_)))
                          (let ((_%$%tl5051250666%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e5051050659%_)))
                                (_%$%hd5051150663%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e5051050659%_))))
                            (if (gx#stx-pair? _%$%tl5051250666%_)
                                (let ((_%$%e5051350669%_
                                       (gx#syntax-e _%$%tl5051250666%_)))
                                  (let ((_%$%tl5051550676%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e5051350669%_)))
                                        (_%$%hd5051450673%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e5051350669%_))))
                                    (if (gx#stx-null? _%$%tl5051550676%_)
                                        (_%__match5310253103%_
                                         _%$%e5050750649%_
                                         _%$%hd5050850653%_
                                         _%$%tl5050950656%_
                                         _%$%e5051050659%_
                                         _%$%hd5051150663%_
                                         _%$%tl5051250666%_
                                         _%$%e5051350669%_
                                         _%$%hd5051450673%_
                                         _%$%tl5051550676%_)
                                        (if (gx#stx-pair? _%$%hd5051150663%_)
                                            (let ((_%$%e5052650570%_
                                                   (gx#syntax-e
                                                    _%$%hd5051150663%_)))
                                              (let ((_%$%tl5052850577%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e5052650570%_)))
                                                    (_%$%hd5052750574%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e5052650570%_))))
                                                (if (gx#stx-pair/null?
                                                     _%$%tl5051250666%_)
                                                    (let ((_%__splice5308053081%_
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl5051250666%_
                                                            '0)))
                                                      (let ((_%$%tl5053150583%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice5308053081%_ '1)))
                    (_%$%target5052950580%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice5308053081%_ '0))))
                (if (gx#stx-null? _%$%tl5053150583%_)
                    (_%__match5312853129%_
                     _%$%e5050750649%_
                     _%$%hd5050850653%_
                     _%$%tl5050950656%_
                     _%$%e5051050659%_
                     _%$%hd5051150663%_
                     _%$%tl5051250666%_
                     _%$%e5052650570%_
                     _%$%hd5052750574%_
                     _%$%tl5052850577%_
                     _%__splice5308053081%_
                     _%$%target5052950580%_
                     _%$%tl5053150583%_)
                    (let () (declare (not safe)) (_%$%g5050350543%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5050350543%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5050350543%_))))))
                                (if (gx#stx-pair? _%$%hd5051150663%_)
                                    (let ((_%$%e5052650570%_
                                           (gx#syntax-e _%$%hd5051150663%_)))
                                      (let ((_%$%tl5052850577%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5052650570%_)))
                                            (_%$%hd5052750574%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5052650570%_))))
                                        (if (gx#stx-pair/null?
                                             _%$%tl5051250666%_)
                                            (let ((_%__splice5308053081%_
                                                   (gx#syntax-split-splice->vector
                                                    _%$%tl5051250666%_
                                                    '0)))
                                              (let ((_%$%tl5053150583%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice5308053081%_
                                                        '1)))
                                                    (_%$%target5052950580%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice5308053081%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%$%tl5053150583%_)
                                                    (_%__match5312853129%_
                                                     _%$%e5050750649%_
                                                     _%$%hd5050850653%_
                                                     _%$%tl5050950656%_
                                                     _%$%e5051050659%_
                                                     _%$%hd5051150663%_
                                                     _%$%tl5051250666%_
                                                     _%$%e5052650570%_
                                                     _%$%hd5052750574%_
                                                     _%$%tl5052850577%_
                                                     _%__splice5308053081%_
                                                     _%$%target5052950580%_
                                                     _%$%tl5053150583%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5050350543%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5050350543%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g5050350543%_))))))
                        (let () (declare (not safe)) (_%$%g5050350543%_)))))
                (let () (declare (not safe)) (_%$%g5050350543%_))))))))
  (define |gerbil/core/module-sugar[:0:]#defsyntax-for-import-export|
    (lambda (_%$stx50701%_)
      (let* ((_%__stx5313153132%_ _%$stx50701%_)
             (_%$%g5070650746%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx5313153132%_))))
        (let ((_%__kont5313453135%_
               (lambda (_%$%g5070850882%_ _%$%g5070950884%_)
                 (cons (gx#datum->syntax '#f 'defsyntax)
                       (cons _%$%g5070950884%_
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          'make-import-export-expander)
                                         (cons _%$%g5070850882%_ '()))
                                   '())))))
              (_%__kont5313653137%_
               (lambda (_%$%g5071950811%_
                        _%$%g5072050813%_
                        _%$%g5072150814%_
                        _%$%g5072250815%_)
                 (cons _%$%g5072250815%_
                       (cons _%$%g5072150814%_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%$%g5072050813%_
                                               (foldr (lambda (_%$%g5083650839%_
                                                               _%$%g5083750842%_)
                                                        (cons _%$%g5083650839%_
                                                              _%$%g5083750842%_))
                                                      '()
                                                      _%$%g5071950811%_)))
                                   '()))))))
          (let* ((_%__match5318653187%_
                  (lambda (_%$%e5072350753%_
                           _%$%hd5072450757%_
                           _%$%tl5072550760%_
                           _%$%e5072650763%_
                           _%$%hd5072750767%_
                           _%$%tl5072850770%_
                           _%$%e5072950773%_
                           _%$%hd5073050777%_
                           _%$%tl5073150780%_
                           _%__splice5313853139%_
                           _%$%target5073250783%_
                           _%$%tl5073450786%_)
                    (letrec ((_%$%loop5073550789%_
                              (lambda (_%$%hd5073350793%_ _%$%body5073950796%_)
                                (if (gx#stx-pair? _%$%hd5073350793%_)
                                    (let ((_%$%e5073650798%_
                                           (gx#syntax-e _%$%hd5073350793%_)))
                                      (let ((_%$%lp-tl5073850805%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5073650798%_)))
                                            (_%$%lp-hd5073750802%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5073650798%_))))
                                        (_%$%loop5073550789%_
                                         _%$%lp-tl5073850805%_
                                         (cons _%$%lp-hd5073750802%_
                                               _%$%body5073950796%_))))
                                    (let ((_%$%body5074050808%_
                                           (reverse _%$%body5073950796%_)))
                                      (let ((_%$%g5071950811%_
                                             _%$%body5074050808%_)
                                            (_%$%g5072050813%_
                                             _%$%tl5073150780%_)
                                            (_%$%g5072150814%_
                                             _%$%hd5073050777%_)
                                            (_%$%g5072250815%_
                                             _%$%hd5072450757%_))
                                        (if (gx#identifier? _%$%g5072150814%_)
                                            (_%__kont5313653137%_
                                             _%$%g5071950811%_
                                             _%$%g5072050813%_
                                             _%$%g5072150814%_
                                             _%$%g5072250815%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5070650746%_)))))))))
                      (_%$%loop5073550789%_ _%$%target5073250783%_ '()))))
                 (_%__match5316053161%_
                  (lambda (_%$%e5071050852%_
                           _%$%hd5071150856%_
                           _%$%tl5071250859%_
                           _%$%e5071350862%_
                           _%$%hd5071450866%_
                           _%$%tl5071550869%_
                           _%$%e5071650872%_
                           _%$%hd5071750876%_
                           _%$%tl5071850879%_)
                    (let ((_%$%g5070850882%_ _%$%hd5071750876%_)
                          (_%$%g5070950884%_ _%$%hd5071450866%_))
                      (if (gx#identifier? _%$%g5070950884%_)
                          (_%__kont5313453135%_
                           _%$%g5070850882%_
                           _%$%g5070950884%_)
                          (if (gx#stx-pair? _%$%hd5071450866%_)
                              (let ((_%$%e5072950773%_
                                     (gx#syntax-e _%$%hd5071450866%_)))
                                (let ((_%$%tl5073150780%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5072950773%_)))
                                      (_%$%hd5073050777%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5072950773%_))))
                                  (if (gx#stx-pair/null? _%$%tl5071550869%_)
                                      (let ((_%__splice5313853139%_
                                             (gx#syntax-split-splice->vector
                                              _%$%tl5071550869%_
                                              '0)))
                                        (let ((_%$%tl5073450786%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice5313853139%_
                                                  '1)))
                                              (_%$%target5073250783%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice5313853139%_
                                                  '0))))
                                          (if (gx#stx-null? _%$%tl5073450786%_)
                                              (_%__match5318653187%_
                                               _%$%e5071050852%_
                                               _%$%hd5071150856%_
                                               _%$%tl5071250859%_
                                               _%$%e5071350862%_
                                               _%$%hd5071450866%_
                                               _%$%tl5071550869%_
                                               _%$%e5072950773%_
                                               _%$%hd5073050777%_
                                               _%$%tl5073150780%_
                                               _%__splice5313853139%_
                                               _%$%target5073250783%_
                                               _%$%tl5073450786%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5070650746%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5070650746%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5070650746%_))))))))
            (if (gx#stx-pair? _%__stx5313153132%_)
                (let ((_%$%e5071050852%_ (gx#syntax-e _%__stx5313153132%_)))
                  (let ((_%$%tl5071250859%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e5071050852%_)))
                        (_%$%hd5071150856%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e5071050852%_))))
                    (if (gx#stx-pair? _%$%tl5071250859%_)
                        (let ((_%$%e5071350862%_
                               (gx#syntax-e _%$%tl5071250859%_)))
                          (let ((_%$%tl5071550869%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e5071350862%_)))
                                (_%$%hd5071450866%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e5071350862%_))))
                            (if (gx#stx-pair? _%$%tl5071550869%_)
                                (let ((_%$%e5071650872%_
                                       (gx#syntax-e _%$%tl5071550869%_)))
                                  (let ((_%$%tl5071850879%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e5071650872%_)))
                                        (_%$%hd5071750876%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e5071650872%_))))
                                    (if (gx#stx-null? _%$%tl5071850879%_)
                                        (_%__match5316053161%_
                                         _%$%e5071050852%_
                                         _%$%hd5071150856%_
                                         _%$%tl5071250859%_
                                         _%$%e5071350862%_
                                         _%$%hd5071450866%_
                                         _%$%tl5071550869%_
                                         _%$%e5071650872%_
                                         _%$%hd5071750876%_
                                         _%$%tl5071850879%_)
                                        (if (gx#stx-pair? _%$%hd5071450866%_)
                                            (let ((_%$%e5072950773%_
                                                   (gx#syntax-e
                                                    _%$%hd5071450866%_)))
                                              (let ((_%$%tl5073150780%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e5072950773%_)))
                                                    (_%$%hd5073050777%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e5072950773%_))))
                                                (if (gx#stx-pair/null?
                                                     _%$%tl5071550869%_)
                                                    (let ((_%__splice5313853139%_
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl5071550869%_
                                                            '0)))
                                                      (let ((_%$%tl5073450786%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice5313853139%_ '1)))
                    (_%$%target5073250783%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice5313853139%_ '0))))
                (if (gx#stx-null? _%$%tl5073450786%_)
                    (_%__match5318653187%_
                     _%$%e5071050852%_
                     _%$%hd5071150856%_
                     _%$%tl5071250859%_
                     _%$%e5071350862%_
                     _%$%hd5071450866%_
                     _%$%tl5071550869%_
                     _%$%e5072950773%_
                     _%$%hd5073050777%_
                     _%$%tl5073150780%_
                     _%__splice5313853139%_
                     _%$%target5073250783%_
                     _%$%tl5073450786%_)
                    (let () (declare (not safe)) (_%$%g5070650746%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5070650746%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5070650746%_))))))
                                (if (gx#stx-pair? _%$%hd5071450866%_)
                                    (let ((_%$%e5072950773%_
                                           (gx#syntax-e _%$%hd5071450866%_)))
                                      (let ((_%$%tl5073150780%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5072950773%_)))
                                            (_%$%hd5073050777%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5072950773%_))))
                                        (if (gx#stx-pair/null?
                                             _%$%tl5071550869%_)
                                            (let ((_%__splice5313853139%_
                                                   (gx#syntax-split-splice->vector
                                                    _%$%tl5071550869%_
                                                    '0)))
                                              (let ((_%$%tl5073450786%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice5313853139%_
                                                        '1)))
                                                    (_%$%target5073250783%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice5313853139%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%$%tl5073450786%_)
                                                    (_%__match5318653187%_
                                                     _%$%e5071050852%_
                                                     _%$%hd5071150856%_
                                                     _%$%tl5071250859%_
                                                     _%$%e5071350862%_
                                                     _%$%hd5071450866%_
                                                     _%$%tl5071550869%_
                                                     _%$%e5072950773%_
                                                     _%$%hd5073050777%_
                                                     _%$%tl5073150780%_
                                                     _%__splice5313853139%_
                                                     _%$%target5073250783%_
                                                     _%$%tl5073450786%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5070650746%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5070650746%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g5070650746%_))))))
                        (let () (declare (not safe)) (_%$%g5070650746%_)))))
                (let () (declare (not safe)) (_%$%g5070650746%_))))))))
  (define |gerbil/core/module-sugar[:0:]#for-syntax|
    (gx#make-import-export-expander
     (lambda (_%stx50904%_)
       (let* ((_%$%g5090750927%_
               (lambda (_%$%g5090850923%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g5090850923%_)))
              (_%$%g5090650996%_
               (lambda (_%$%g5090850931%_)
                 (if (gx#stx-pair? _%$%g5090850931%_)
                     (let ((_%$%e5091050934%_ (gx#syntax-e _%$%g5090850931%_)))
                       (let ((_%$%hd5091150938%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e5091050934%_)))
                             (_%$%tl5091250941%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e5091050934%_))))
                         (if (gx#stx-pair/null? _%$%tl5091250941%_)
                             (let ((_g53281_
                                    (gx#syntax-split-splice
                                     _%$%tl5091250941%_
                                     '0)))
                               (begin
                                 (let ((_g53282_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g53281_)
                                              (##values-length _g53281_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g53282_ 2)))
                                       (error "Context expects 2 values"
                                              _g53282_)))
                                 (let ((_%$%target5091350944%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g53281_ 0)))
                                       (_%$%tl5091550947%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g53281_ 1))))
                                   (if (gx#stx-null? _%$%tl5091550947%_)
                                       (letrec ((_%$%loop5091650950%_
                                                 (lambda (_%$%hd5091450954%_
                                                          _%$%body5092050957%_)
                                                   (if (gx#stx-pair?
                                                        _%$%hd5091450954%_)
                                                       (let ((_%$%e5091750959%_
                                                              (gx#syntax-e
                                                               _%$%hd5091450954%_)))
                                                         (let ((_%$%lp-hd5091850963%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%e5091750959%_)))
                       (_%$%lp-tl5091950966%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e5091750959%_))))
                   (_%$%loop5091650950%_
                    _%$%lp-tl5091950966%_
                    (cons _%$%lp-hd5091850963%_ _%$%body5092050957%_))))
               (let ((_%$%body5092150969%_ (reverse _%$%body5092050957%_)))
                 (cons 'phi:
                       (cons '1
                             (foldr (lambda (_%$%g5098750990%_
                                             _%$%g5098850993%_)
                                      (cons _%$%g5098750990%_
                                            _%$%g5098850993%_))
                                    '()
                                    _%$%body5092150969%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%$%loop5091650950%_
                                          _%$%target5091350944%_
                                          '()))
                                       (_%$%g5090750927%_
                                        _%$%g5090850931%_)))))
                             (_%$%g5090750927%_ _%$%g5090850931%_))))
                     (_%$%g5090750927%_ _%$%g5090850931%_)))))
         (_%$%g5090650996%_ _%stx50904%_)))))
  (define |gerbil/core/module-sugar[:0:]#for-template|
    (gx#make-import-export-expander
     (lambda (_%stx51001%_)
       (let* ((_%$%g5100451024%_
               (lambda (_%$%g5100551020%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g5100551020%_)))
              (_%$%g5100351093%_
               (lambda (_%$%g5100551028%_)
                 (if (gx#stx-pair? _%$%g5100551028%_)
                     (let ((_%$%e5100751031%_ (gx#syntax-e _%$%g5100551028%_)))
                       (let ((_%$%hd5100851035%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e5100751031%_)))
                             (_%$%tl5100951038%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e5100751031%_))))
                         (if (gx#stx-pair/null? _%$%tl5100951038%_)
                             (let ((_g53283_
                                    (gx#syntax-split-splice
                                     _%$%tl5100951038%_
                                     '0)))
                               (begin
                                 (let ((_g53284_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g53283_)
                                              (##values-length _g53283_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g53284_ 2)))
                                       (error "Context expects 2 values"
                                              _g53284_)))
                                 (let ((_%$%target5101051041%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g53283_ 0)))
                                       (_%$%tl5101251044%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g53283_ 1))))
                                   (if (gx#stx-null? _%$%tl5101251044%_)
                                       (letrec ((_%$%loop5101351047%_
                                                 (lambda (_%$%hd5101151051%_
                                                          _%$%body5101751054%_)
                                                   (if (gx#stx-pair?
                                                        _%$%hd5101151051%_)
                                                       (let ((_%$%e5101451056%_
                                                              (gx#syntax-e
                                                               _%$%hd5101151051%_)))
                                                         (let ((_%$%lp-hd5101551060%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%e5101451056%_)))
                       (_%$%lp-tl5101651063%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e5101451056%_))))
                   (_%$%loop5101351047%_
                    _%$%lp-tl5101651063%_
                    (cons _%$%lp-hd5101551060%_ _%$%body5101751054%_))))
               (let ((_%$%body5101851066%_ (reverse _%$%body5101751054%_)))
                 (cons 'phi:
                       (cons '-1
                             (foldr (lambda (_%$%g5108451087%_
                                             _%$%g5108551090%_)
                                      (cons _%$%g5108451087%_
                                            _%$%g5108551090%_))
                                    '()
                                    _%$%body5101851066%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%$%loop5101351047%_
                                          _%$%target5101051041%_
                                          '()))
                                       (_%$%g5100451024%_
                                        _%$%g5100551028%_)))))
                             (_%$%g5100451024%_ _%$%g5100551028%_))))
                     (_%$%g5100451024%_ _%$%g5100551028%_)))))
         (_%$%g5100351093%_ _%stx51001%_)))))
  (define |gerbil/core/module-sugar[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_%stx51098%_)
       (let* ((_%$%g5110151125%_
               (lambda (_%$%g5110251121%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g5110251121%_)))
              (_%$%g5110051251%_
               (lambda (_%$%g5110251129%_)
                 (if (gx#stx-pair? _%$%g5110251129%_)
                     (let ((_%$%e5110551132%_ (gx#syntax-e _%$%g5110251129%_)))
                       (let ((_%$%hd5110651136%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e5110551132%_)))
                             (_%$%tl5110751139%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e5110551132%_))))
                         (if (gx#stx-pair? _%$%tl5110751139%_)
                             (let ((_%$%e5110851142%_
                                    (gx#syntax-e _%$%tl5110751139%_)))
                               (let ((_%$%hd5110951146%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e5110851142%_)))
                                     (_%$%tl5111051149%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e5110851142%_))))
                                 (if (gx#stx-pair/null? _%$%tl5111051149%_)
                                     (let ((_g53285_
                                            (gx#syntax-split-splice
                                             _%$%tl5111051149%_
                                             '0)))
                                       (begin
                                         (let ((_g53286_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g53285_)
                                                      (##values-length
                                                       _g53285_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g53286_ 2)))
                                               (error "Context expects 2 values"
                                                      _g53286_)))
                                         (let ((_%$%target5111151152%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g53285_ 0)))
                                               (_%$%tl5111351155%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g53285_ 1))))
                                           (if (gx#stx-null?
                                                _%$%tl5111351155%_)
                                               (letrec ((_%$%loop5111451158%_
                                                         (lambda (_%$%hd5111251162%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%id5111851165%_)
                   (if (gx#stx-pair? _%$%hd5111251162%_)
                       (let ((_%$%e5111551167%_
                              (gx#syntax-e _%$%hd5111251162%_)))
                         (let ((_%$%lp-hd5111651171%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e5111551167%_)))
                               (_%$%lp-tl5111751174%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e5111551167%_))))
                           (_%$%loop5111451158%_
                            _%$%lp-tl5111751174%_
                            (cons _%$%lp-hd5111651171%_ _%$%id5111851165%_))))
                       (let ((_%$%id5111951177%_ (reverse _%$%id5111851165%_)))
                         (if (gx#identifier-list?
                              (foldr (lambda (_%$%g5119951202%_
                                              _%$%g5120051205%_)
                                       (cons _%$%g5119951202%_
                                             _%$%g5120051205%_))
                                     '()
                                     _%$%id5111951177%_))
                             (let* ((_%keys51216%_
                                     (gx#stx-map
                                      gx#core-identifier-key
                                      (foldr (lambda (_%$%g5120751210%_
                                                      _%$%g5120851213%_)
                                               (cons _%$%g5120751210%_
                                                     _%$%g5120851213%_))
                                             '()
                                             _%$%id5111951177%_)))
                                    (_%keytab51227%_
                                     (let ((_%ht51219%_ (make-hash-table)))
                                       (for-each
                                        (lambda (_%$%g5122151223%_)
                                          (hash-put!
                                           _%ht51219%_
                                           _%$%g5122151223%_
                                           '#t))
                                        _%keys51216%_)
                                       _%ht51219%_))
                                    (_%imports51230%_
                                     (gx#core-expand-import-source
                                      _%$%hd5110951146%_))
                                    (_%fold-e51246%_
                                     (letrec ((_%fold-e51233%_
                                               (lambda (_%in51236%_ _%r51238%_)
                                                 (if (gx#module-import?
                                                      _%in51236%_)
                                                     (if (hash-get
                                                          _%keytab51227%_
                                                          (gx#module-import-name
                                                           _%in51236%_))
                                                         (cons _%in51236%_
                                                               _%r51238%_)
                                                         _%r51238%_)
                                                     (if (gx#import-set?
                                                          _%in51236%_)
                                                         (foldl _%fold-e51233%_
                                                                _%r51238%_
                                                                (gx#import-set-imports
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in51236%_))
                 _%r51238%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%fold-e51233%_)))
                               (cons 'begin:
                                     (foldl _%fold-e51246%_
                                            '()
                                            _%imports51230%_)))
                             (_%$%g5110151125%_ _%$%g5110251129%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%loop5111451158%_
                                                  _%$%target5111151152%_
                                                  '()))
                                               (_%$%g5110151125%_
                                                _%$%g5110251129%_)))))
                                     (_%$%g5110151125%_ _%$%g5110251129%_))))
                             (_%$%g5110151125%_ _%$%g5110251129%_))))
                     (_%$%g5110151125%_ _%$%g5110251129%_)))))
         (_%$%g5110051251%_ _%stx51098%_)))))
  (define |gerbil/core/module-sugar[:0:]#except-in|
    (gx#make-import-expander
     (lambda (_%stx51256%_)
       (let* ((_%$%g5125951283%_
               (lambda (_%$%g5126051279%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g5126051279%_)))
              (_%$%g5125851409%_
               (lambda (_%$%g5126051287%_)
                 (if (gx#stx-pair? _%$%g5126051287%_)
                     (let ((_%$%e5126351290%_ (gx#syntax-e _%$%g5126051287%_)))
                       (let ((_%$%hd5126451294%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e5126351290%_)))
                             (_%$%tl5126551297%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e5126351290%_))))
                         (if (gx#stx-pair? _%$%tl5126551297%_)
                             (let ((_%$%e5126651300%_
                                    (gx#syntax-e _%$%tl5126551297%_)))
                               (let ((_%$%hd5126751304%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e5126651300%_)))
                                     (_%$%tl5126851307%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e5126651300%_))))
                                 (if (gx#stx-pair/null? _%$%tl5126851307%_)
                                     (let ((_g53287_
                                            (gx#syntax-split-splice
                                             _%$%tl5126851307%_
                                             '0)))
                                       (begin
                                         (let ((_g53288_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g53287_)
                                                      (##values-length
                                                       _g53287_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g53288_ 2)))
                                               (error "Context expects 2 values"
                                                      _g53288_)))
                                         (let ((_%$%target5126951310%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g53287_ 0)))
                                               (_%$%tl5127151313%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g53287_ 1))))
                                           (if (gx#stx-null?
                                                _%$%tl5127151313%_)
                                               (letrec ((_%$%loop5127251316%_
                                                         (lambda (_%$%hd5127051320%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%id5127651323%_)
                   (if (gx#stx-pair? _%$%hd5127051320%_)
                       (let ((_%$%e5127351325%_
                              (gx#syntax-e _%$%hd5127051320%_)))
                         (let ((_%$%lp-hd5127451329%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e5127351325%_)))
                               (_%$%lp-tl5127551332%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e5127351325%_))))
                           (_%$%loop5127251316%_
                            _%$%lp-tl5127551332%_
                            (cons _%$%lp-hd5127451329%_ _%$%id5127651323%_))))
                       (let ((_%$%id5127751335%_ (reverse _%$%id5127651323%_)))
                         (if (gx#identifier-list?
                              (foldr (lambda (_%$%g5135751360%_
                                              _%$%g5135851363%_)
                                       (cons _%$%g5135751360%_
                                             _%$%g5135851363%_))
                                     '()
                                     _%$%id5127751335%_))
                             (let* ((_%keys51374%_
                                     (gx#stx-map
                                      gx#core-identifier-key
                                      (foldr (lambda (_%$%g5136551368%_
                                                      _%$%g5136651371%_)
                                               (cons _%$%g5136551368%_
                                                     _%$%g5136651371%_))
                                             '()
                                             _%$%id5127751335%_)))
                                    (_%keytab51385%_
                                     (let ((_%ht51377%_ (make-hash-table)))
                                       (for-each
                                        (lambda (_%$%g5137951381%_)
                                          (hash-put!
                                           _%ht51377%_
                                           _%$%g5137951381%_
                                           '#t))
                                        _%keys51374%_)
                                       _%ht51377%_))
                                    (_%imports51388%_
                                     (gx#core-expand-import-source
                                      _%$%hd5126751304%_))
                                    (_%fold-e51404%_
                                     (letrec ((_%fold-e51391%_
                                               (lambda (_%in51394%_ _%r51396%_)
                                                 (if (gx#module-import?
                                                      _%in51394%_)
                                                     (if (hash-get
                                                          _%keytab51385%_
                                                          (gx#module-import-name
                                                           _%in51394%_))
                                                         _%r51396%_
                                                         (cons _%in51394%_
                                                               _%r51396%_))
                                                     (if (gx#import-set?
                                                          _%in51394%_)
                                                         (foldl _%fold-e51391%_
                                                                _%r51396%_
                                                                (gx#import-set-imports
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in51394%_))
                 (cons _%in51394%_ _%r51396%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%fold-e51391%_)))
                               (cons 'begin:
                                     (foldl _%fold-e51404%_
                                            '()
                                            _%imports51388%_)))
                             (_%$%g5125951283%_ _%$%g5126051287%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%loop5127251316%_
                                                  _%$%target5126951310%_
                                                  '()))
                                               (_%$%g5125951283%_
                                                _%$%g5126051287%_)))))
                                     (_%$%g5125951283%_ _%$%g5126051287%_))))
                             (_%$%g5125951283%_ _%$%g5126051287%_))))
                     (_%$%g5125951283%_ _%$%g5126051287%_)))))
         (_%$%g5125851409%_ _%stx51256%_)))))
  (define |gerbil/core/module-sugar[1]#module-import-rename|
    (lambda (_%in51461%_ _%rename51463%_)
      (gx#make-module-import
       (gx#module-import-source _%in51461%_)
       _%rename51463%_
       (gx#module-import-phi _%in51461%_)
       (gx#module-import-weak? _%in51461%_))))
  (define |gerbil/core/module-sugar[1]#prefix-identifier-key|
    (lambda (_%name51414%_ _%pre51416%_)
      (let* ((_%$%name5141751425%_ _%name51414%_)
             (_%$%else5141951437%_
              (lambda () (make-symbol _%pre51416%_ _%name51414%_)))
             (_%$%K5142151445%_
              (lambda (_%mark51441%_ _%id51443%_)
                (cons (make-symbol _%pre51416%_ _%id51443%_) _%mark51441%_))))
        (if (pair? _%$%name5141751425%_)
            (let ((_%$%hd5142251449%_
                   (let () (declare (not safe)) (##car _%$%name5141751425%_)))
                  (_%$%tl5142351452%_
                   (let () (declare (not safe)) (##cdr _%$%name5141751425%_))))
              (let* ((_%id51455%_ _%$%hd5142251449%_)
                     (_%mark51458%_ _%$%tl5142351452%_))
                (_%$%K5142151445%_ _%mark51458%_ _%id51455%_)))
            (_%$%else5141951437%_)))))
  (define |gerbil/core/module-sugar[:0:]#rename-in|
    (gx#make-import-expander
     (lambda (_%stx51465%_)
       (let* ((_%$%g5146851501%_
               (lambda (_%$%g5146951497%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g5146951497%_)))
              (_%$%g5146751692%_
               (lambda (_%$%g5146951505%_)
                 (if (gx#stx-pair? _%$%g5146951505%_)
                     (let ((_%$%e5147351508%_ (gx#syntax-e _%$%g5146951505%_)))
                       (let ((_%$%hd5147451512%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e5147351508%_)))
                             (_%$%tl5147551515%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e5147351508%_))))
                         (if (gx#stx-pair? _%$%tl5147551515%_)
                             (let ((_%$%e5147651518%_
                                    (gx#syntax-e _%$%tl5147551515%_)))
                               (let ((_%$%hd5147751522%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e5147651518%_)))
                                     (_%$%tl5147851525%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e5147651518%_))))
                                 (if (gx#stx-pair/null? _%$%tl5147851525%_)
                                     (let ((_g53289_
                                            (gx#syntax-split-splice
                                             _%$%tl5147851525%_
                                             '0)))
                                       (begin
                                         (let ((_g53290_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g53289_)
                                                      (##values-length
                                                       _g53289_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g53290_ 2)))
                                               (error "Context expects 2 values"
                                                      _g53290_)))
                                         (let ((_%$%target5147951528%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g53289_ 0)))
                                               (_%$%tl5148151531%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g53289_ 1))))
                                           (if (gx#stx-null?
                                                _%$%tl5148151531%_)
                                               (letrec ((_%$%loop5148251534%_
                                                         (lambda (_%$%hd5148051538%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%new-id5148651541%_
                          _%$%id5148751542%_)
                   (if (gx#stx-pair? _%$%hd5148051538%_)
                       (let ((_%$%e5148351544%_
                              (gx#syntax-e _%$%hd5148051538%_)))
                         (let ((_%$%lp-hd5148451548%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e5148351544%_)))
                               (_%$%lp-tl5148551551%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e5148351544%_))))
                           (if (gx#stx-pair? _%$%lp-hd5148451548%_)
                               (let ((_%$%e5149051554%_
                                      (gx#syntax-e _%$%lp-hd5148451548%_)))
                                 (let ((_%$%hd5149151558%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e5149051554%_)))
                                       (_%$%tl5149251561%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e5149051554%_))))
                                   (if (gx#stx-pair? _%$%tl5149251561%_)
                                       (let ((_%$%e5149351564%_
                                              (gx#syntax-e
                                               _%$%tl5149251561%_)))
                                         (let ((_%$%hd5149451568%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e5149351564%_)))
                                               (_%$%tl5149551571%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e5149351564%_))))
                                           (if (gx#stx-null?
                                                _%$%tl5149551571%_)
                                               (_%$%loop5148251534%_
                                                _%$%lp-tl5148551551%_
                                                (cons _%$%hd5149451568%_
                                                      _%$%new-id5148651541%_)
                                                (cons _%$%hd5149151558%_
                                                      _%$%id5148751542%_))
                                               (_%$%g5146851501%_
                                                _%$%g5146951505%_))))
                                       (_%$%g5146851501%_ _%$%g5146951505%_))))
                               (_%$%g5146851501%_ _%$%g5146951505%_))))
                       (let ((_%$%new-id5148851574%_
                              (reverse _%$%new-id5148651541%_))
                             (_%$%id5148951576%_ (reverse _%$%id5148751542%_)))
                         (if (and (gx#identifier-list?
                                   (foldr (lambda (_%$%g5159951602%_
                                                   _%$%g5160051605%_)
                                            (cons _%$%g5159951602%_
                                                  _%$%g5160051605%_))
                                          '()
                                          _%$%id5148951576%_))
                                  (gx#identifier-list?
                                   (foldr (lambda (_%$%g5160751610%_
                                                   _%$%g5160851613%_)
                                            (cons _%$%g5160751610%_
                                                  _%$%g5160851613%_))
                                          '()
                                          _%$%new-id5148851574%_)))
                             (let* ((_%keytab51616%_ (make-hash-table))
                                    (_%found51619%_ (make-hash-table))
                                    (_%_51642%_
                                     (for-each
                                      (lambda (_%id51622%_ _%new-id51624%_)
                                        (hash-put!
                                         _%keytab51616%_
                                         (gx#core-identifier-key _%id51622%_)
                                         (gx#core-identifier-key
                                          _%new-id51624%_)))
                                      (foldr (lambda (_%$%g5162551628%_
                                                      _%$%g5162651631%_)
                                               (cons _%$%g5162551628%_
                                                     _%$%g5162651631%_))
                                             '()
                                             _%$%id5148951576%_)
                                      (foldr (lambda (_%$%g5163351636%_
                                                      _%$%g5163451639%_)
                                               (cons _%$%g5163351636%_
                                                     _%$%g5163451639%_))
                                             '()
                                             _%$%new-id5148851574%_)))
                                    (_%imports51645%_
                                     (gx#core-expand-import-source
                                      _%$%hd5147751522%_))
                                    (_%fold-e51673%_
                                     (letrec ((_%fold-e51648%_
                                               (lambda (_%in51651%_ _%r51653%_)
                                                 (if (gx#module-import?
                                                      _%in51651%_)
                                                     (let* ((_%name51657%_
                                                             (gx#module-import-name
                                                              _%in51651%_))
                                                            (_%$e51660%_
                                                             (hash-get
                                                              _%keytab51616%_
                                                              _%name51657%_)))
                                                       (if _%$e51660%_
                                                           (let ()
                                                             (hash-put!
                                                              _%found51619%_
                                                              _%name51657%_
                                                              '#t)
                                                             (cons (|gerbil/core/module-sugar[1]#module-import-rename|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%in51651%_
                            _%$e51660%_)
                           _%r51653%_))
                   (cons _%in51651%_ _%r51653%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#import-set?
                                                          _%in51651%_)
                                                         (foldl _%fold-e51648%_
                                                                _%r51653%_
                                                                (gx#import-set-imports
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in51651%_))
                 (cons _%in51651%_ _%r51653%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%fold-e51648%_))
                                    (_%new-imports51676%_
                                     (foldl _%fold-e51673%_
                                            '()
                                            _%imports51645%_)))
                               (for-each
                                (lambda (_%id51681%_)
                                  (if (hash-get
                                       _%found51619%_
                                       (gx#core-identifier-key _%id51681%_))
                                      '#!void
                                      (gx#raise-syntax-error
                                       '#f
                                       '"bad syntax; identifier is not in the import set"
                                       _%stx51465%_
                                       _%id51681%_)))
                                (foldr (lambda (_%$%g5168351686%_
                                                _%$%g5168451689%_)
                                         (cons _%$%g5168351686%_
                                               _%$%g5168451689%_))
                                       '()
                                       _%$%id5148951576%_))
                               (cons 'begin: _%new-imports51676%_))
                             (_%$%g5146851501%_ _%$%g5146951505%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%loop5148251534%_
                                                  _%$%target5147951528%_
                                                  '()
                                                  '()))
                                               (_%$%g5146851501%_
                                                _%$%g5146951505%_)))))
                                     (_%$%g5146851501%_ _%$%g5146951505%_))))
                             (_%$%g5146851501%_ _%$%g5146951505%_))))
                     (_%$%g5146851501%_ _%$%g5146951505%_)))))
         (_%$%g5146751692%_ _%stx51465%_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-in|
    (gx#make-import-expander
     (lambda (_%stx51697%_)
       (let* ((_%$%g5170051718%_
               (lambda (_%$%g5170151714%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g5170151714%_)))
              (_%$%g5169951803%_
               (lambda (_%$%g5170151722%_)
                 (if (gx#stx-pair? _%$%g5170151722%_)
                     (let ((_%$%e5170451725%_ (gx#syntax-e _%$%g5170151722%_)))
                       (let ((_%$%hd5170551729%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e5170451725%_)))
                             (_%$%tl5170651732%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e5170451725%_))))
                         (if (gx#stx-pair? _%$%tl5170651732%_)
                             (let ((_%$%e5170751735%_
                                    (gx#syntax-e _%$%tl5170651732%_)))
                               (let ((_%$%hd5170851739%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e5170751735%_)))
                                     (_%$%tl5170951742%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e5170751735%_))))
                                 (if (gx#stx-pair? _%$%tl5170951742%_)
                                     (let ((_%$%e5171051745%_
                                            (gx#syntax-e _%$%tl5170951742%_)))
                                       (let ((_%$%hd5171151749%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e5171051745%_)))
                                             (_%$%tl5171251752%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e5171051745%_))))
                                         (if (gx#stx-null? _%$%tl5171251752%_)
                                             (if (gx#identifier?
                                                  _%$%hd5171151749%_)
                                                 (let* ((_%pre51773%_
                                                         (gx#stx-e
                                                          _%$%hd5171151749%_))
                                                        (_%imports51776%_
                                                         (gx#core-expand-import-source
                                                          _%$%hd5170851739%_))
                                                        (_%rename-e51782%_
                                                         (lambda (_%name51779%_)
                                                           (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                                                            _%name51779%_
                                                            _%pre51773%_)))
                                                        (_%fold-e51798%_
                                                         (letrec ((_%fold-e51785%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%in51788%_ _%r51790%_)
                             (if (gx#module-import? _%in51788%_)
                                 (cons (|gerbil/core/module-sugar[1]#module-import-rename|
                                        _%in51788%_
                                        (_%rename-e51782%_
                                         (gx#module-import-name _%in51788%_)))
                                       _%r51790%_)
                                 (if (gx#import-set? _%in51788%_)
                                     (foldl _%fold-e51785%_
                                            _%r51790%_
                                            (gx#import-set-imports
                                             _%in51788%_))
                                     (cons _%in51788%_ _%r51790%_))))))
                   _%fold-e51785%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons 'begin:
                                                         (foldl _%fold-e51798%_
                                                                '()
                                                                _%imports51776%_)))
                                                 (_%$%g5170051718%_
                                                  _%$%g5170151722%_))
                                             (_%$%g5170051718%_
                                              _%$%g5170151722%_))))
                                     (_%$%g5170051718%_ _%$%g5170151722%_))))
                             (_%$%g5170051718%_ _%$%g5170151722%_))))
                     (_%$%g5170051718%_ _%$%g5170151722%_)))))
         (_%$%g5169951803%_ _%stx51697%_)))))
  (define |gerbil/core/module-sugar[:0:]#group-in|
    (gx#make-import-expander
     (lambda (_%stx51807%_)
       (letrec ((_%flatten51810%_
                 (lambda (_%list-of-lists52061%_)
                   (foldr (lambda (_%v52064%_ _%acc52066%_)
                            (if (null? _%v52064%_)
                                _%acc52066%_
                                (if (pair? _%v52064%_)
                                    (append (_%flatten51810%_ _%v52064%_)
                                            _%acc52066%_)
                                    (cons _%v52064%_ _%acc52066%_))))
                          '()
                          _%list-of-lists52061%_)))
                (_%expand-path51812%_
                 (lambda (_%top51931%_ _%mod51933%_)
                   (let* ((_%__stx5318953190%_ _%mod51933%_)
                          (_%$%g5193651958%_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%__stx5318953190%_))))
                     (let ((_%__kont5319253193%_
                            (lambda (_%$%g5193852024%_ _%$%g5193952026%_)
                              (map (lambda (_%mod52041%_)
                                     (gx#stx-identifier
                                      _%top51931%_
                                      _%top51931%_
                                      '"/"
                                      _%mod52041%_))
                                   (_%flatten51810%_
                                    (map (lambda (_%$%g5204352045%_)
                                           (_%expand-path51812%_
                                            _%$%g5193952026%_
                                            _%$%g5204352045%_))
                                         (foldr (lambda (_%$%g5204852051%_
                                                         _%$%g5204952054%_)
                                                  (cons _%$%g5204852051%_
                                                        _%$%g5204952054%_))
                                                '()
                                                _%$%g5193852024%_))))))
                           (_%__kont5319653197%_
                            (lambda (_%$%g5195251965%_)
                              (gx#stx-identifier
                               _%top51931%_
                               _%top51931%_
                               '"/"
                               _%$%g5195251965%_))))
                       (let* ((_%$%g5193551979%_
                               (lambda ()
                                 (let ((_%$%g5195251965%_ _%__stx5318953190%_))
                                   (if (or (gx#identifier? _%$%g5195251965%_)
                                           (gx#stx-fixnum? _%$%g5195251965%_))
                                       (_%__kont5319653197%_ _%$%g5195251965%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g5193651958%_))))))
                              (_%__match5321253213%_
                               (lambda (_%$%e5194051986%_
                                        _%$%hd5194151990%_
                                        _%$%tl5194251993%_
                                        _%__splice5319453195%_
                                        _%$%target5194351996%_
                                        _%$%tl5194551999%_)
                                 (letrec ((_%$%loop5194652002%_
                                           (lambda (_%$%hd5194452006%_
                                                    _%$%mod5195052009%_)
                                             (if (gx#stx-pair?
                                                  _%$%hd5194452006%_)
                                                 (let ((_%$%e5194752011%_
                                                        (gx#syntax-e
                                                         _%$%hd5194452006%_)))
                                                   (let ((_%$%lp-tl5194952018%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e5194752011%_)))
                                                         (_%$%lp-hd5194852015%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e5194752011%_))))
                                                     (_%$%loop5194652002%_
                                                      _%$%lp-tl5194952018%_
                                                      (cons _%$%lp-hd5194852015%_
                                                            _%$%mod5195052009%_))))
                                                 (let ((_%$%mod5195152021%_
                                                        (reverse _%$%mod5195052009%_)))
                                                   (_%__kont5319253193%_
                                                    _%$%mod5195152021%_
                                                    _%$%hd5194151990%_))))))
                                   (_%$%loop5194652002%_
                                    _%$%target5194351996%_
                                    '())))))
                         (if (gx#stx-pair? _%__stx5318953190%_)
                             (let ((_%$%e5194051986%_
                                    (gx#syntax-e _%__stx5318953190%_)))
                               (let ((_%$%tl5194251993%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e5194051986%_)))
                                     (_%$%hd5194151990%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e5194051986%_))))
                                 (if (gx#stx-pair/null? _%$%tl5194251993%_)
                                     (let ((_%__splice5319453195%_
                                            (gx#syntax-split-splice->vector
                                             _%$%tl5194251993%_
                                             '0)))
                                       (let ((_%$%tl5194551999%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice5319453195%_
                                                 '1)))
                                             (_%$%target5194351996%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice5319453195%_
                                                 '0))))
                                         (if (gx#stx-null? _%$%tl5194551999%_)
                                             (_%__match5321253213%_
                                              _%$%e5194051986%_
                                              _%$%hd5194151990%_
                                              _%$%tl5194251993%_
                                              _%__splice5319453195%_
                                              _%$%target5194351996%_
                                              _%$%tl5194551999%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%$%g5193551979%_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_%$%g5193551979%_)))))
                             (let ()
                               (declare (not safe))
                               (_%$%g5193551979%_)))))))))
         (let* ((_%$%g5181451838%_
                 (lambda (_%$%g5181551834%_)
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _%$%g5181551834%_)))
                (_%$%g5181351927%_
                 (lambda (_%$%g5181551842%_)
                   (if (gx#stx-pair? _%$%g5181551842%_)
                       (let ((_%$%e5181851845%_
                              (gx#syntax-e _%$%g5181551842%_)))
                         (let ((_%$%hd5181951849%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e5181851845%_)))
                               (_%$%tl5182051852%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e5181851845%_))))
                           (if (gx#stx-pair? _%$%tl5182051852%_)
                               (let ((_%$%e5182151855%_
                                      (gx#syntax-e _%$%tl5182051852%_)))
                                 (let ((_%$%hd5182251859%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e5182151855%_)))
                                       (_%$%tl5182351862%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e5182151855%_))))
                                   (if (gx#stx-pair/null? _%$%tl5182351862%_)
                                       (let ((_g53291_
                                              (gx#syntax-split-splice
                                               _%$%tl5182351862%_
                                               '0)))
                                         (begin
                                           (let ((_g53292_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g53291_)
                                                        (##values-length
                                                         _g53291_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g53292_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g53292_)))
                                           (let ((_%$%target5182451865%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g53291_ 0)))
                                                 (_%$%tl5182651868%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g53291_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%$%tl5182651868%_)
                                                 (letrec ((_%$%loop5182751871%_
                                                           (lambda (_%$%hd5182551875%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%mod5183151878%_)
                     (if (gx#stx-pair? _%$%hd5182551875%_)
                         (let ((_%$%e5182851880%_
                                (gx#syntax-e _%$%hd5182551875%_)))
                           (let ((_%$%lp-hd5182951884%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e5182851880%_)))
                                 (_%$%lp-tl5183051887%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e5182851880%_))))
                             (_%$%loop5182751871%_
                              _%$%lp-tl5183051887%_
                              (cons _%$%lp-hd5182951884%_
                                    _%$%mod5183151878%_))))
                         (let ((_%$%mod5183251890%_
                                (reverse _%$%mod5183151878%_)))
                           (cons 'begin:
                                 (_%flatten51810%_
                                  (map (lambda (_%$%g5191351915%_)
                                         (_%expand-path51812%_
                                          _%$%hd5182251859%_
                                          _%$%g5191351915%_))
                                       (foldr (lambda (_%$%g5191851921%_
                                                       _%$%g5191951924%_)
                                                (cons _%$%g5191851921%_
                                                      _%$%g5191951924%_))
                                              '()
                                              _%$%mod5183251890%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%loop5182751871%_
                                                    _%$%target5182451865%_
                                                    '()))
                                                 (_%$%g5181451838%_
                                                  _%$%g5181551842%_)))))
                                       (_%$%g5181451838%_ _%$%g5181551842%_))))
                               (_%$%g5181451838%_ _%$%g5181551842%_))))
                       (_%$%g5181451838%_ _%$%g5181551842%_)))))
           (_%$%g5181351927%_ _%stx51807%_))))))
  (define |gerbil/core/module-sugar[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_%stx52076%_)
       (let* ((_%$%g5207952103%_
               (lambda (_%$%g5208052099%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g5208052099%_)))
              (_%$%g5207852229%_
               (lambda (_%$%g5208052107%_)
                 (if (gx#stx-pair? _%$%g5208052107%_)
                     (let ((_%$%e5208352110%_ (gx#syntax-e _%$%g5208052107%_)))
                       (let ((_%$%hd5208452114%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e5208352110%_)))
                             (_%$%tl5208552117%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e5208352110%_))))
                         (if (gx#stx-pair? _%$%tl5208552117%_)
                             (let ((_%$%e5208652120%_
                                    (gx#syntax-e _%$%tl5208552117%_)))
                               (let ((_%$%hd5208752124%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e5208652120%_)))
                                     (_%$%tl5208852127%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e5208652120%_))))
                                 (if (gx#stx-pair/null? _%$%tl5208852127%_)
                                     (let ((_g53293_
                                            (gx#syntax-split-splice
                                             _%$%tl5208852127%_
                                             '0)))
                                       (begin
                                         (let ((_g53294_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g53293_)
                                                      (##values-length
                                                       _g53293_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g53294_ 2)))
                                               (error "Context expects 2 values"
                                                      _g53294_)))
                                         (let ((_%$%target5208952130%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g53293_ 0)))
                                               (_%$%tl5209152133%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g53293_ 1))))
                                           (if (gx#stx-null?
                                                _%$%tl5209152133%_)
                                               (letrec ((_%$%loop5209252136%_
                                                         (lambda (_%$%hd5209052140%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%id5209652143%_)
                   (if (gx#stx-pair? _%$%hd5209052140%_)
                       (let ((_%$%e5209352145%_
                              (gx#syntax-e _%$%hd5209052140%_)))
                         (let ((_%$%lp-hd5209452149%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e5209352145%_)))
                               (_%$%lp-tl5209552152%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e5209352145%_))))
                           (_%$%loop5209252136%_
                            _%$%lp-tl5209552152%_
                            (cons _%$%lp-hd5209452149%_ _%$%id5209652143%_))))
                       (let ((_%$%id5209752155%_ (reverse _%$%id5209652143%_)))
                         (if (gx#identifier-list?
                              (foldr (lambda (_%$%g5217752180%_
                                              _%$%g5217852183%_)
                                       (cons _%$%g5217752180%_
                                             _%$%g5217852183%_))
                                     '()
                                     _%$%id5209752155%_))
                             (let* ((_%keys52194%_
                                     (gx#stx-map
                                      gx#core-identifier-key
                                      (foldr (lambda (_%$%g5218552188%_
                                                      _%$%g5218652191%_)
                                               (cons _%$%g5218552188%_
                                                     _%$%g5218652191%_))
                                             '()
                                             _%$%id5209752155%_)))
                                    (_%keytab52205%_
                                     (let ((_%ht52197%_ (make-hash-table)))
                                       (for-each
                                        (lambda (_%$%g5219952201%_)
                                          (hash-put!
                                           _%ht52197%_
                                           _%$%g5219952201%_
                                           '#t))
                                        _%keys52194%_)
                                       _%ht52197%_))
                                    (_%exports52208%_
                                     (gx#core-expand-export-source
                                      _%$%hd5208752124%_))
                                    (_%fold-e52224%_
                                     (letrec ((_%fold-e52211%_
                                               (lambda (_%out52214%_
                                                        _%r52216%_)
                                                 (if (gx#module-export?
                                                      _%out52214%_)
                                                     (if (hash-get
                                                          _%keytab52205%_
                                                          (gx#module-export-name
                                                           _%out52214%_))
                                                         _%r52216%_
                                                         (cons _%out52214%_
                                                               _%r52216%_))
                                                     (if (gx#export-set?
                                                          _%out52214%_)
                                                         (foldl _%fold-e52211%_
                                                                _%r52216%_
                                                                (gx#export-set-exports
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%out52214%_))
                 _%r52216%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%fold-e52211%_)))
                               (cons 'begin:
                                     (foldl _%fold-e52224%_
                                            '()
                                            _%exports52208%_)))
                             (_%$%g5207952103%_ _%$%g5208052107%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%loop5209252136%_
                                                  _%$%target5208952130%_
                                                  '()))
                                               (_%$%g5207952103%_
                                                _%$%g5208052107%_)))))
                                     (_%$%g5207952103%_ _%$%g5208052107%_))))
                             (_%$%g5207952103%_ _%$%g5208052107%_))))
                     (_%$%g5207952103%_ _%$%g5208052107%_)))))
         (_%$%g5207852229%_ _%stx52076%_)))))
  (define |gerbil/core/module-sugar[:0:]#except-from-out|
    (gx#make-export-expander
     (lambda (_%stx52234%_)
       (let* ((_%$%g5223752261%_
               (lambda (_%$%g5223852257%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g5223852257%_)))
              (_%$%g5223652391%_
               (lambda (_%$%g5223852265%_)
                 (if (gx#stx-pair? _%$%g5223852265%_)
                     (let ((_%$%e5224152268%_ (gx#syntax-e _%$%g5223852265%_)))
                       (let ((_%$%hd5224252272%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e5224152268%_)))
                             (_%$%tl5224352275%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e5224152268%_))))
                         (if (gx#stx-pair? _%$%tl5224352275%_)
                             (let ((_%$%e5224452278%_
                                    (gx#syntax-e _%$%tl5224352275%_)))
                               (let ((_%$%hd5224552282%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e5224452278%_)))
                                     (_%$%tl5224652285%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e5224452278%_))))
                                 (if (gx#stx-pair/null? _%$%tl5224652285%_)
                                     (let ((_g53295_
                                            (gx#syntax-split-splice
                                             _%$%tl5224652285%_
                                             '0)))
                                       (begin
                                         (let ((_g53296_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g53295_)
                                                      (##values-length
                                                       _g53295_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g53296_ 2)))
                                               (error "Context expects 2 values"
                                                      _g53296_)))
                                         (let ((_%$%target5224752288%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g53295_ 0)))
                                               (_%$%tl5224952291%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g53295_ 1))))
                                           (if (gx#stx-null?
                                                _%$%tl5224952291%_)
                                               (letrec ((_%$%loop5225052294%_
                                                         (lambda (_%$%hd5224852298%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%filter-out5225452301%_)
                   (if (gx#stx-pair? _%$%hd5224852298%_)
                       (let ((_%$%e5225152303%_
                              (gx#syntax-e _%$%hd5224852298%_)))
                         (let ((_%$%lp-hd5225252307%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e5225152303%_)))
                               (_%$%lp-tl5225352310%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e5225152303%_))))
                           (_%$%loop5225052294%_
                            _%$%lp-tl5225352310%_
                            (cons _%$%lp-hd5225252307%_
                                  _%$%filter-out5225452301%_))))
                       (let* ((_%$%filter-out5225552313%_
                               (reverse _%$%filter-out5225452301%_))
                              (_%filtered52336%_ (make-hash-table)))
                         (letrec ((_%fold-out52339%_
                                   (lambda (_%out52381%_ _%r52383%_)
                                     (if (gx#module-export? _%out52381%_)
                                         (cons _%out52381%_ _%r52383%_)
                                         (if (gx#export-set? _%out52381%_)
                                             (foldl _%fold-out52339%_
                                                    _%r52383%_
                                                    (gx#export-set-exports
                                                     _%out52381%_))
                                             _%r52383%_)))))
                           (for-each
                            (lambda (_%src52342%_)
                              (let* ((_%exports52348%_
                                      (if (gx#identifier? _%src52342%_)
                                          (let ((_%mod52345%_
                                                 (gx#syntax-local-value
                                                  _%src52342%_)))
                                            (if (gx#module-context?
                                                 _%mod52345%_)
                                                '#!void
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"not a module context"
                                                 _%src52342%_))
                                            (gx#module-context-export
                                             _%mod52345%_))
                                          (gx#core-expand-export-source
                                           _%src52342%_)))
                                     (_%exports52351%_
                                      (foldl _%fold-out52339%_
                                             '()
                                             _%exports52348%_)))
                                (for-each
                                 (lambda (_%out52356%_)
                                   (hash-put!
                                    _%filtered52336%_
                                    (gx#module-export-name _%out52356%_)
                                    '#t))
                                 _%exports52351%_)))
                            (foldr (lambda (_%$%g5235852361%_
                                            _%$%g5235952364%_)
                                     (cons _%$%g5235852361%_
                                           _%$%g5235952364%_))
                                   '()
                                   _%$%filter-out5225552313%_))
                           (let* ((_%exports52367%_
                                   (gx#core-expand-export-source
                                    _%$%hd5224552282%_))
                                  (_%exports52370%_
                                   (foldl _%fold-out52339%_
                                          '()
                                          _%exports52367%_))
                                  (_%exports52376%_
                                   (filter (lambda (_%out52373%_)
                                             (not (hash-get
                                                   _%filtered52336%_
                                                   (gx#module-export-name
                                                    _%out52373%_))))
                                           _%exports52370%_)))
                             (cons 'begin: _%exports52376%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%loop5225052294%_
                                                  _%$%target5224752288%_
                                                  '()))
                                               (_%$%g5223752261%_
                                                _%$%g5223852265%_)))))
                                     (_%$%g5223752261%_ _%$%g5223852265%_))))
                             (_%$%g5223752261%_ _%$%g5223852265%_))))
                     (_%$%g5223752261%_ _%$%g5223852265%_)))))
         (_%$%g5223652391%_ _%stx52234%_)))))
  (define |gerbil/core/module-sugar[1]#module-export-rename|
    (lambda (_%out52396%_ _%rename52398%_)
      (gx#make-module-export
       (gx#module-export-context _%out52396%_)
       (gx#module-export-key _%out52396%_)
       (gx#module-export-phi _%out52396%_)
       _%rename52398%_
       (gx#module-export-weak? _%out52396%_))))
  (define |gerbil/core/module-sugar[:0:]#rename-out|
    (gx#make-export-expander
     (lambda (_%stx52400%_)
       (let* ((_%$%g5240352436%_
               (lambda (_%$%g5240452432%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g5240452432%_)))
              (_%$%g5240252627%_
               (lambda (_%$%g5240452440%_)
                 (if (gx#stx-pair? _%$%g5240452440%_)
                     (let ((_%$%e5240852443%_ (gx#syntax-e _%$%g5240452440%_)))
                       (let ((_%$%hd5240952447%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e5240852443%_)))
                             (_%$%tl5241052450%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e5240852443%_))))
                         (if (gx#stx-pair? _%$%tl5241052450%_)
                             (let ((_%$%e5241152453%_
                                    (gx#syntax-e _%$%tl5241052450%_)))
                               (let ((_%$%hd5241252457%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e5241152453%_)))
                                     (_%$%tl5241352460%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e5241152453%_))))
                                 (if (gx#stx-pair/null? _%$%tl5241352460%_)
                                     (let ((_g53297_
                                            (gx#syntax-split-splice
                                             _%$%tl5241352460%_
                                             '0)))
                                       (begin
                                         (let ((_g53298_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g53297_)
                                                      (##values-length
                                                       _g53297_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g53298_ 2)))
                                               (error "Context expects 2 values"
                                                      _g53298_)))
                                         (let ((_%$%target5241452463%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g53297_ 0)))
                                               (_%$%tl5241652466%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##values-ref _g53297_ 1))))
                                           (if (gx#stx-null?
                                                _%$%tl5241652466%_)
                                               (letrec ((_%$%loop5241752469%_
                                                         (lambda (_%$%hd5241552473%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%new-id5242152476%_
                          _%$%id5242252477%_)
                   (if (gx#stx-pair? _%$%hd5241552473%_)
                       (let ((_%$%e5241852479%_
                              (gx#syntax-e _%$%hd5241552473%_)))
                         (let ((_%$%lp-hd5241952483%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e5241852479%_)))
                               (_%$%lp-tl5242052486%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e5241852479%_))))
                           (if (gx#stx-pair? _%$%lp-hd5241952483%_)
                               (let ((_%$%e5242552489%_
                                      (gx#syntax-e _%$%lp-hd5241952483%_)))
                                 (let ((_%$%hd5242652493%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e5242552489%_)))
                                       (_%$%tl5242752496%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e5242552489%_))))
                                   (if (gx#stx-pair? _%$%tl5242752496%_)
                                       (let ((_%$%e5242852499%_
                                              (gx#syntax-e
                                               _%$%tl5242752496%_)))
                                         (let ((_%$%hd5242952503%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e5242852499%_)))
                                               (_%$%tl5243052506%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e5242852499%_))))
                                           (if (gx#stx-null?
                                                _%$%tl5243052506%_)
                                               (_%$%loop5241752469%_
                                                _%$%lp-tl5242052486%_
                                                (cons _%$%hd5242952503%_
                                                      _%$%new-id5242152476%_)
                                                (cons _%$%hd5242652493%_
                                                      _%$%id5242252477%_))
                                               (_%$%g5240352436%_
                                                _%$%g5240452440%_))))
                                       (_%$%g5240352436%_ _%$%g5240452440%_))))
                               (_%$%g5240352436%_ _%$%g5240452440%_))))
                       (let ((_%$%new-id5242352509%_
                              (reverse _%$%new-id5242152476%_))
                             (_%$%id5242452511%_ (reverse _%$%id5242252477%_)))
                         (if (and (gx#identifier-list?
                                   (foldr (lambda (_%$%g5253452537%_
                                                   _%$%g5253552540%_)
                                            (cons _%$%g5253452537%_
                                                  _%$%g5253552540%_))
                                          '()
                                          _%$%id5242452511%_))
                                  (gx#identifier-list?
                                   (foldr (lambda (_%$%g5254252545%_
                                                   _%$%g5254352548%_)
                                            (cons _%$%g5254252545%_
                                                  _%$%g5254352548%_))
                                          '()
                                          _%$%new-id5242352509%_)))
                             (let* ((_%keytab52551%_ (make-hash-table))
                                    (_%found52554%_ (make-hash-table))
                                    (_%_52577%_
                                     (for-each
                                      (lambda (_%id52557%_ _%new-id52559%_)
                                        (hash-put!
                                         _%keytab52551%_
                                         (gx#core-identifier-key _%id52557%_)
                                         (gx#core-identifier-key
                                          _%new-id52559%_)))
                                      (foldr (lambda (_%$%g5256052563%_
                                                      _%$%g5256152566%_)
                                               (cons _%$%g5256052563%_
                                                     _%$%g5256152566%_))
                                             '()
                                             _%$%id5242452511%_)
                                      (foldr (lambda (_%$%g5256852571%_
                                                      _%$%g5256952574%_)
                                               (cons _%$%g5256852571%_
                                                     _%$%g5256952574%_))
                                             '()
                                             _%$%new-id5242352509%_)))
                                    (_%exports52580%_
                                     (gx#core-expand-export-source
                                      _%$%hd5241252457%_))
                                    (_%fold-e52608%_
                                     (letrec ((_%fold-e52583%_
                                               (lambda (_%out52586%_
                                                        _%r52588%_)
                                                 (if (gx#module-export?
                                                      _%out52586%_)
                                                     (let* ((_%name52592%_
                                                             (gx#module-export-name
                                                              _%out52586%_))
                                                            (_%$e52595%_
                                                             (hash-get
                                                              _%keytab52551%_
                                                              _%name52592%_)))
                                                       (if _%$e52595%_
                                                           (let ()
                                                             (hash-put!
                                                              _%found52554%_
                                                              _%name52592%_
                                                              '#t)
                                                             (cons (|gerbil/core/module-sugar[1]#module-export-rename|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%out52586%_
                            _%$e52595%_)
                           _%r52588%_))
                   (cons _%out52586%_ _%r52588%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#export-set?
                                                          _%out52586%_)
                                                         (foldl _%fold-e52583%_
                                                                _%r52588%_
                                                                (gx#export-set-exports
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%out52586%_))
                 (cons _%out52586%_ _%r52588%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%fold-e52583%_))
                                    (_%new-exports52611%_
                                     (foldl _%fold-e52608%_
                                            '()
                                            _%exports52580%_)))
                               (for-each
                                (lambda (_%id52616%_)
                                  (if (hash-get
                                       _%found52554%_
                                       (gx#core-identifier-key _%id52616%_))
                                      '#!void
                                      (gx#raise-syntax-error
                                       '#f
                                       '"bad syntax; identifier is not in the export set"
                                       _%stx52400%_
                                       _%id52616%_)))
                                (foldr (lambda (_%$%g5261852621%_
                                                _%$%g5261952624%_)
                                         (cons _%$%g5261852621%_
                                               _%$%g5261952624%_))
                                       '()
                                       _%$%id5242452511%_))
                               (cons 'begin: _%new-exports52611%_))
                             (_%$%g5240352436%_ _%$%g5240452440%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%loop5241752469%_
                                                  _%$%target5241452463%_
                                                  '()
                                                  '()))
                                               (_%$%g5240352436%_
                                                _%$%g5240452440%_)))))
                                     (_%$%g5240352436%_ _%$%g5240452440%_))))
                             (_%$%g5240352436%_ _%$%g5240452440%_))))
                     (_%$%g5240352436%_ _%$%g5240452440%_)))))
         (_%$%g5240252627%_ _%stx52400%_)))))
  (define |gerbil/core/module-sugar[:0:]#prefix-out|
    (gx#make-export-expander
     (lambda (_%stx52632%_)
       (let* ((_%$%g5263552653%_
               (lambda (_%$%g5263652649%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g5263652649%_)))
              (_%$%g5263452738%_
               (lambda (_%$%g5263652657%_)
                 (if (gx#stx-pair? _%$%g5263652657%_)
                     (let ((_%$%e5263952660%_ (gx#syntax-e _%$%g5263652657%_)))
                       (let ((_%$%hd5264052664%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e5263952660%_)))
                             (_%$%tl5264152667%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e5263952660%_))))
                         (if (gx#stx-pair? _%$%tl5264152667%_)
                             (let ((_%$%e5264252670%_
                                    (gx#syntax-e _%$%tl5264152667%_)))
                               (let ((_%$%hd5264352674%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e5264252670%_)))
                                     (_%$%tl5264452677%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e5264252670%_))))
                                 (if (gx#stx-pair? _%$%tl5264452677%_)
                                     (let ((_%$%e5264552680%_
                                            (gx#syntax-e _%$%tl5264452677%_)))
                                       (let ((_%$%hd5264652684%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e5264552680%_)))
                                             (_%$%tl5264752687%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e5264552680%_))))
                                         (if (gx#stx-null? _%$%tl5264752687%_)
                                             (if (gx#identifier?
                                                  _%$%hd5264652684%_)
                                                 (let* ((_%pre52708%_
                                                         (gx#stx-e
                                                          _%$%hd5264652684%_))
                                                        (_%exports52711%_
                                                         (gx#core-expand-export-source
                                                          _%$%hd5264352674%_))
                                                        (_%rename-e52717%_
                                                         (lambda (_%name52714%_)
                                                           (|gerbil/core/module-sugar[1]#prefix-identifier-key|
                                                            _%name52714%_
                                                            _%pre52708%_)))
                                                        (_%fold-e52733%_
                                                         (letrec ((_%fold-e52720%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%out52723%_ _%r52725%_)
                             (if (gx#module-export? _%out52723%_)
                                 (cons (|gerbil/core/module-sugar[1]#module-export-rename|
                                        _%out52723%_
                                        (_%rename-e52717%_
                                         (gx#module-export-name _%out52723%_)))
                                       _%r52725%_)
                                 (if (gx#export-set? _%out52723%_)
                                     (foldl _%fold-e52720%_
                                            _%r52725%_
                                            (gx#export-set-exports
                                             _%out52723%_))
                                     (cons _%out52723%_ _%r52725%_))))))
                   _%fold-e52720%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons 'begin:
                                                         (foldl _%fold-e52733%_
                                                                '()
                                                                _%exports52711%_)))
                                                 (_%$%g5263552653%_
                                                  _%$%g5263652657%_))
                                             (_%$%g5263552653%_
                                              _%$%g5263652657%_))))
                                     (_%$%g5263552653%_ _%$%g5263652657%_))))
                             (_%$%g5263552653%_ _%$%g5263652657%_))))
                     (_%$%g5263552653%_ _%$%g5263652657%_)))))
         (_%$%g5263452738%_ _%stx52632%_)))))
  (define |gerbil/core/module-sugar[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_%stx52742%_)
       (letrec ((_%identifiers52745%_
                 (lambda (_%id52973%_ _%unchecked?52975%_)
                   (let ((_%info52977%_
                          (gx#syntax-local-value _%id52973%_ false)))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/mop~MOP-2#class-type-info::t
                            _%info52977%_))
                         (cons _%id52973%_
                               (cons (let ((__obj53274 _%info52977%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj53274
                                              'gerbil/core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj53274
                                              '4
                                              '#f
                                              '#f))
                                           (unchecked-slot-ref
                                            __obj53274
                                            'type-descriptor)))
                                     (let ((__tmp53306
                                            (let ((_%ctor52980%_
                                                   (let ((__obj53275
                                                          _%info52977%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj53275
                                                            'gerbil/core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj53275
                                                            '14
                                                            '#f
                                                            '#f))
                                                         (unchecked-slot-ref
                                                          __obj53275
                                                          'constructor)))))
                                              (if _%ctor52980%_
                                                  (cons _%ctor52980%_ '())
                                                  '())))
                                           (__tmp53299
                                            (cons (let ((__obj53276
                                                         _%info52977%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj53276
                                                           'gerbil/core#class-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj53276
                                                           '15
                                                           '#f
                                                           '#f))
                                                        (unchecked-slot-ref
                                                         __obj53276
                                                         'predicate)))
                                                  (let ((__tmp53305
                                                         (map cdr
                                                              (let ((__obj53277
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%info52977%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj53277
                               'gerbil/core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj53277
                               '16
                               '#f
                               '#f))
                            (unchecked-slot-ref __obj53277 'accessors)))))
                (__tmp53300
                 (let ((__tmp53304
                        (map cdr
                             (let ((__obj53278 _%info52977%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj53278
                                      'gerbil/core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj53278
                                      '17
                                      '#f
                                      '#f))
                                   (unchecked-slot-ref
                                    __obj53278
                                    'mutators)))))
                       (__tmp53301
                        (if _%unchecked?52975%_
                            (let ((__tmp53303
                                   (map cdr
                                        (let ((__obj53279 _%info52977%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj53279
                                                 'gerbil/core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj53279
                                                 '18
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj53279
                                               'unchecked-accessors)))))
                                  (__tmp53302
                                   (map cdr
                                        (let ((__obj53280 _%info52977%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj53280
                                                 'gerbil/core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj53280
                                                 '19
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj53280
                                               'unchecked-mutators))))))
                              (declare (not safe))
                              (##append __tmp53303 __tmp53302))
                            '())))
                   (declare (not safe))
                   (##append __tmp53304 __tmp53301))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (##append
                                                     __tmp53305
                                                     __tmp53300)))))
                                       (declare (not safe))
                                       (##append __tmp53306 __tmp53299))))
                         (gx#raise-syntax-error
                          '#f
                          '"no class type info"
                          _%stx52742%_
                          _%id52973%_))))))
         (let* ((_%__stx5321553216%_ _%stx52742%_)
                (_%$%g5274952790%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; invalid match target"
                    _%__stx5321553216%_))))
           (let ((_%__kont5321853219%_
                  (lambda (_%$%g5275152934%_ _%$%g5275252936%_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_%$%g5295552957%_)
                              (_%identifiers52745%_
                               _%$%g5295552957%_
                               (gx#stx-e _%$%g5275252936%_)))
                            (foldr (lambda (_%$%g5296052963%_
                                            _%$%g5296152966%_)
                                     (cons _%$%g5296052963%_
                                           _%$%g5296152966%_))
                                   '()
                                   _%$%g5275152934%_))))))
                 (_%__kont5322253223%_
                  (lambda (_%$%g5277252835%_)
                    (cons 'begin:
                          (concatenate
                           (gx#stx-map
                            (lambda (_%$%g5285152853%_)
                              (_%identifiers52745%_ _%$%g5285152853%_ '#f))
                            (foldr (lambda (_%$%g5285652859%_
                                            _%$%g5285752862%_)
                                     (cons _%$%g5285652859%_
                                           _%$%g5285752862%_))
                                   '()
                                   _%$%g5277252835%_)))))))
             (let* ((_%__match5327253273%_
                     (lambda (_%$%e5277352797%_
                              _%$%hd5277452801%_
                              _%$%tl5277552804%_
                              _%__splice5322453225%_
                              _%$%target5277652807%_
                              _%$%tl5277852810%_)
                       (letrec ((_%$%loop5277952813%_
                                 (lambda (_%$%hd5277752817%_
                                          _%$%id5278352820%_)
                                   (if (gx#stx-pair? _%$%hd5277752817%_)
                                       (let ((_%$%e5278052822%_
                                              (gx#syntax-e
                                               _%$%hd5277752817%_)))
                                         (let ((_%$%lp-tl5278252829%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e5278052822%_)))
                                               (_%$%lp-hd5278152826%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e5278052822%_))))
                                           (_%$%loop5277952813%_
                                            _%$%lp-tl5278252829%_
                                            (cons _%$%lp-hd5278152826%_
                                                  _%$%id5278352820%_))))
                                       (let ((_%$%id5278452832%_
                                              (reverse _%$%id5278352820%_)))
                                         (_%__kont5322253223%_
                                          _%$%id5278452832%_))))))
                         (_%$%loop5277952813%_ _%$%target5277652807%_ '()))))
                    (_%__match5325853259%_
                     (lambda (_%$%e5275352872%_
                              _%$%hd5275452876%_
                              _%$%tl5275552879%_
                              _%$%e5275652882%_
                              _%$%hd5275752886%_
                              _%$%tl5275852889%_
                              _%$%e5275952892%_
                              _%$%e5276052896%_
                              _%$%hd5276152900%_
                              _%$%tl5276252903%_
                              _%__splice5322053221%_
                              _%$%target5276352906%_
                              _%$%tl5276552909%_)
                       (letrec ((_%$%loop5276652912%_
                                 (lambda (_%$%hd5276452916%_
                                          _%$%id5277052919%_)
                                   (if (gx#stx-pair? _%$%hd5276452916%_)
                                       (let ((_%$%e5276752921%_
                                              (gx#syntax-e
                                               _%$%hd5276452916%_)))
                                         (let ((_%$%lp-tl5276952928%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e5276752921%_)))
                                               (_%$%lp-hd5276852925%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e5276752921%_))))
                                           (_%$%loop5276652912%_
                                            _%$%lp-tl5276952928%_
                                            (cons _%$%lp-hd5276852925%_
                                                  _%$%id5277052919%_))))
                                       (let ((_%$%id5277152931%_
                                              (reverse _%$%id5277052919%_)))
                                         (_%__kont5321853219%_
                                          _%$%id5277152931%_
                                          _%$%hd5276152900%_))))))
                         (_%$%loop5276652912%_ _%$%target5276352906%_ '())))))
               (if (gx#stx-pair? _%__stx5321553216%_)
                   (let ((_%$%e5275352872%_ (gx#syntax-e _%__stx5321553216%_)))
                     (let ((_%$%tl5275552879%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e5275352872%_)))
                           (_%$%hd5275452876%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e5275352872%_))))
                       (if (gx#stx-pair? _%$%tl5275552879%_)
                           (let ((_%$%e5275652882%_
                                  (gx#syntax-e _%$%tl5275552879%_)))
                             (let ((_%$%tl5275852889%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e5275652882%_)))
                                   (_%$%hd5275752886%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e5275652882%_))))
                               (if (gx#stx-datum? _%$%hd5275752886%_)
                                   (let ((_%$%e5275952892%_
                                          (gx#stx-e _%$%hd5275752886%_)))
                                     (if (equal? _%$%e5275952892%_ 'unchecked:)
                                         (if (gx#stx-pair? _%$%tl5275852889%_)
                                             (let ((_%$%e5276052896%_
                                                    (gx#syntax-e
                                                     _%$%tl5275852889%_)))
                                               (let ((_%$%tl5276252903%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e5276052896%_)))
                                                     (_%$%hd5276152900%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e5276052896%_))))
                                                 (if (gx#stx-pair/null?
                                                      _%$%tl5276252903%_)
                                                     (let ((_%__splice5322053221%_
                                                            (gx#syntax-split-splice->vector
                                                             _%$%tl5276252903%_
                                                             '0)))
                                                       (let ((_%$%tl5276552909%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice5322053221%_ '1)))
                     (_%$%target5276352906%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice5322053221%_ '0))))
                 (if (gx#stx-null? _%$%tl5276552909%_)
                     (_%__match5325853259%_
                      _%$%e5275352872%_
                      _%$%hd5275452876%_
                      _%$%tl5275552879%_
                      _%$%e5275652882%_
                      _%$%hd5275752886%_
                      _%$%tl5275852889%_
                      _%$%e5275952892%_
                      _%$%e5276052896%_
                      _%$%hd5276152900%_
                      _%$%tl5276252903%_
                      _%__splice5322053221%_
                      _%$%target5276352906%_
                      _%$%tl5276552909%_)
                     (if (gx#stx-pair/null? _%$%tl5275552879%_)
                         (let ((_%__splice5322453225%_
                                (gx#syntax-split-splice->vector
                                 _%$%tl5275552879%_
                                 '0)))
                           (let ((_%$%tl5277852810%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice5322453225%_ '1)))
                                 (_%$%target5277652807%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice5322453225%_ '0))))
                             (if (gx#stx-null? _%$%tl5277852810%_)
                                 (_%__match5327253273%_
                                  _%$%e5275352872%_
                                  _%$%hd5275452876%_
                                  _%$%tl5275552879%_
                                  _%__splice5322453225%_
                                  _%$%target5277652807%_
                                  _%$%tl5277852810%_)
                                 (let ()
                                   (declare (not safe))
                                   (_%$%g5274952790%_)))))
                         (let () (declare (not safe)) (_%$%g5274952790%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-pair/null?
                                                          _%$%tl5275552879%_)
                                                         (let ((_%__splice5322453225%_
                                                                (gx#syntax-split-splice->vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl5275552879%_
                         '0)))
                   (let ((_%$%tl5277852810%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice5322453225%_ '1)))
                         (_%$%target5277652807%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice5322453225%_ '0))))
                     (if (gx#stx-null? _%$%tl5277852810%_)
                         (_%__match5327253273%_
                          _%$%e5275352872%_
                          _%$%hd5275452876%_
                          _%$%tl5275552879%_
                          _%__splice5322453225%_
                          _%$%target5277652807%_
                          _%$%tl5277852810%_)
                         (let () (declare (not safe)) (_%$%g5274952790%_)))))
                 (let () (declare (not safe)) (_%$%g5274952790%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-pair/null?
                                                  _%$%tl5275552879%_)
                                                 (let ((_%__splice5322453225%_
                                                        (gx#syntax-split-splice->vector
                                                         _%$%tl5275552879%_
                                                         '0)))
                                                   (let ((_%$%tl5277852810%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice5322453225%_
                                                             '1)))
                                                         (_%$%target5277652807%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice5322453225%_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _%$%tl5277852810%_)
                                                         (_%__match5327253273%_
                                                          _%$%e5275352872%_
                                                          _%$%hd5275452876%_
                                                          _%$%tl5275552879%_
                                                          _%__splice5322453225%_
                                                          _%$%target5277652807%_
                                                          _%$%tl5277852810%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_%$%g5274952790%_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%$%g5274952790%_))))
                                         (if (gx#stx-pair/null?
                                              _%$%tl5275552879%_)
                                             (let ((_%__splice5322453225%_
                                                    (gx#syntax-split-splice->vector
                                                     _%$%tl5275552879%_
                                                     '0)))
                                               (let ((_%$%tl5277852810%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice5322453225%_
                                                         '1)))
                                                     (_%$%target5277652807%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice5322453225%_
                                                         '0))))
                                                 (if (gx#stx-null?
                                                      _%$%tl5277852810%_)
                                                     (_%__match5327253273%_
                                                      _%$%e5275352872%_
                                                      _%$%hd5275452876%_
                                                      _%$%tl5275552879%_
                                                      _%__splice5322453225%_
                                                      _%$%target5277652807%_
                                                      _%$%tl5277852810%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%$%g5274952790%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%$%g5274952790%_)))))
                                   (if (gx#stx-pair/null? _%$%tl5275552879%_)
                                       (let ((_%__splice5322453225%_
                                              (gx#syntax-split-splice->vector
                                               _%$%tl5275552879%_
                                               '0)))
                                         (let ((_%$%tl5277852810%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice5322453225%_
                                                   '1)))
                                               (_%$%target5277652807%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice5322453225%_
                                                   '0))))
                                           (if (gx#stx-null?
                                                _%$%tl5277852810%_)
                                               (_%__match5327253273%_
                                                _%$%e5275352872%_
                                                _%$%hd5275452876%_
                                                _%$%tl5275552879%_
                                                _%__splice5322453225%_
                                                _%$%target5277652807%_
                                                _%$%tl5277852810%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%$%g5274952790%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g5274952790%_))))))
                           (if (gx#stx-pair/null? _%$%tl5275552879%_)
                               (let ((_%__splice5322453225%_
                                      (gx#syntax-split-splice->vector
                                       _%$%tl5275552879%_
                                       '0)))
                                 (let ((_%$%tl5277852810%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice5322453225%_
                                           '1)))
                                       (_%$%target5277652807%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice5322453225%_
                                           '0))))
                                   (if (gx#stx-null? _%$%tl5277852810%_)
                                       (_%__match5327253273%_
                                        _%$%e5275352872%_
                                        _%$%hd5275452876%_
                                        _%$%tl5275552879%_
                                        _%__splice5322453225%_
                                        _%$%target5277652807%_
                                        _%$%tl5277852810%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%$%g5274952790%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%$%g5274952790%_))))))
                   (let () (declare (not safe)) (_%$%g5274952790%_)))))))))))
